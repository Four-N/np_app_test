class AppRoute {
  final String name;
  final String path;

  const AppRoute({
    required this.name,
    required this.path,
  });

  static const splash = AppRoute(
    name: 'splash',
    path: '/splash',
  );

  static const home = AppRoute(
    name: 'home',
    path: '/',
  );
}
