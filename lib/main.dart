import 'package:certus_invision_app/src/app_state.dart';
import 'package:certus_invision_app/ui/views/landing_screen.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:certus_invision_app/router.dart' as rt;
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'data/certus_invision_database.dart';
import 'data/repositories/maintenance_repository.dart';

void main() async {

  // Initialize Flutter bindings first to ensure proper zone handling
  WidgetsFlutterBinding.ensureInitialized();

  var status = await Permission.storage.status;
  if (!status.isGranted) {
    await Permission.storage.request();
  }

  runApp(
    MultiProvider(
      providers: [
        Provider<MaintenanceRepository>(
          create: (_) => FakeMaintenanceRepository(),
        ),
        ChangeNotifierProvider<AppState>(
          create: (ctx) => AppState(ctx.read<MaintenanceRepository>()),
        ),
      ],
      child: const CertusApp(),
    ),
  );
}

class CertusApp extends StatelessWidget {
  const CertusApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Certus Maintenance App',
      debugShowCheckedModeBanner: false,
      initialRoute: LandingScreen.id,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (settings) =>
          rt.Router.generateRoute(settings: settings),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late CertusInvisionDatabase localDb;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Future<bool> checkConnection() async {
    try{
      final result = await localDb.certusInvisionDao.isConnected();
      return result;
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }

  Future<int> insertRecord() async {
    try{
        final newRecord = DriftDatabaseType(
          id: UuidValue.fromString(Uuid().v4()),
          json: {"hello":"world"},
          date: DateTime.now(),
          number: 10114.550,
          timestamp: PgDateTime(DateTime.now()),
          boolValue: false,
          xml: '<root><element>Test 55</element></root>',
        );

        final localResult = await localDb.certusInvisionDao.insertType(newRecord.toCompanion(true));
      return localResult;
    } catch (e) {
      print('Error: $e');
      return 0;
    }
  }

  void initialiseDatabase() {
    localDb = CertusInvisionDatabase.local();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: initialiseDatabase,
              child: Text('1. create local DB'),
            ),
            ElevatedButton(
              onPressed: checkConnection,
              child: Text('2/4. create local DB connection'),
            ),
            ElevatedButton(
              onPressed: insertRecord,
              child: Text('3. insert record into DB'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
