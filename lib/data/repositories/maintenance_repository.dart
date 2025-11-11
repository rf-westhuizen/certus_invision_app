
/// classes can implement this to provide data access for maintenance-related operations
abstract class MaintenanceRepository {
  // Future<List<Machine>> fetchMachines();
  // Future<int> countEventsFor(String machineId);
  // Future<List<EventItem>> fetchEventsFor(String machineId);
}



class CertusMainPlantMaintenanceRepository implements MaintenanceRepository {

}

class FakeMaintenanceRepository implements MaintenanceRepository {

}