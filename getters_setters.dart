void main() {
  var rectangle = Rectangle(10, 20);
  rectangle.widthValue = 100;
  rectangle.heightValue = -250;
  print(rectangle.area);
}

class Rectangle {
  int _width;
  int _height;

  Rectangle(this._height, this._width);

  get width => _width;
  get height => _height;

  set widthValue(int width) {
    if (width < 0) {
      print("You can't set width as negative");
      return;
    }
    _width = width;
  }

  set heightValue(int height) {
    if (height < 0) {
      print("You can't set height as negative");
      return;
    }
    _height = height;
  }

  get area => width * height;
}
