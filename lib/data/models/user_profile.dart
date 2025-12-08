class UserProfile{
  final String id;
  final String name;
  final Map<String, bool> permissions;

  UserProfile({
    required this.id,
    required this.name,
    required this.permissions,
  });

  bool get isAdmin => permissions['admin'] == true;
  bool get canEditEngineering => isAdmin || permissions['engineering'] == true;

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    final permissions = Map<String, bool>.from(
      json..remove('sub')..remove('name'),
    );

    return UserProfile(
      id: json['sub'] as String? ?? 'anonymous',
      name: json['name'] as String? ?? 'Guest',
      permissions: permissions,
    );
  }

}