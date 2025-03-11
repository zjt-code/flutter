
enum color{red, green, blue}


void main()
{
  

  print("enum class");

  print("red index= ${color.red.index}");
  print("green index= ${color.green.index}");

  print("Blue index= ${color.blue.index}");

  List<color> colors = color.values;
  assert(colors[2] == color.blue);

  print(color.green);

}