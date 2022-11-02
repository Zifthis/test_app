class TestJsonResponse {
  final Menu? menu;

  TestJsonResponse({this.menu});

  static TestJsonResponse fromJson(Map<String, dynamic> testJsonResponse) =>
      TestJsonResponse(
        menu: Menu.fromJson(testJsonResponse['menu']),
      );

  Map<String, dynamic> toJson(TestJsonResponse testToJson) => <String, dynamic>{
        'menu': testToJson.menu,
      };
}

class Menu {
  final String? id;
  final String? value;
  final Popup? popup;

  Menu({this.id, this.value, this.popup});

  static Menu fromJson(Map<String, dynamic> menuResponse) => Menu(
        id: menuResponse['id'],
        popup: Popup.fromJson(menuResponse['popup']),
        value: menuResponse['value'],
      );

  Map<String, dynamic> toJson(Menu menuToJson) => <String, dynamic>{
        'id': menuToJson.id,
        'value': menuToJson.value,
        'popup': menuToJson.popup,
      };
}

class Popup {
  final List<MenuItems>? menuItem;

  Popup({this.menuItem});

  static Popup fromJson(Map<String, dynamic> popupResponse) => Popup(
        menuItem: (popupResponse['menuitem'] as List<dynamic>)
            .map((e) => MenuItems.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson(Popup popupToJson) => <String, dynamic>{
        'menuitem': popupToJson.menuItem,
      };
}

class MenuItems {
  final String? value;
  final String? onclick;

  MenuItems({this.value, this.onclick});

  static MenuItems fromJson(Map<String, dynamic> menuItemResponse) => MenuItems(
        onclick: menuItemResponse['onclick'],
        value: menuItemResponse['value'],
      );

  Map<String, dynamic> toJson(MenuItems menuItemsToJson) => <String, dynamic>{
        'value': menuItemsToJson.value,
        'onclick': menuItemsToJson.onclick,
      };
}
