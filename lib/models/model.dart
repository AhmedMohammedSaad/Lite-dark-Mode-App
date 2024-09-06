class Model_Lite_mode {}

class Lite extends Model_Lite_mode {
  String Light;
  Lite({
    required this.Light,
  });
}  

class Dark extends Model_Lite_mode {
  String dark;
  Dark({
    required this.dark,
  });
}
