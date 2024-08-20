class MenuModel {
  final int id;
  final String name;
  final String icon;

  MenuModel({
    required this.id,
    required this.name,
    required this.icon,
  });
}

final List<MenuModel> list = [
  MenuModel(id: 1, name: "Counter", icon: "asset/image/countdown.png"),
  MenuModel(id: 2, name:  "API", icon: "asset/image/api.pngss")
];
