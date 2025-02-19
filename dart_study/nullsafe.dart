
// import 'dart:ffi';

int i = -1;

int? a;

// Float abc = (4.4).toDouble();

// int ?linecount =0;

int? lineCount;
bool weLikeToCount =false;

late String description;
late String temperature = readThermometer(); // Lazily initialized.


String readThermometer()
{
  print("initialzie the temperature!!!!!------");

  return "hight temperaturre!!!";
}

void main()
{
  print("Hello word\r\n");

  print(i.abs());
  print(i.hashCode);
  print(i.toString());

  print(a.hashCode);
  print(a.toString());

  //assert(linecount == null);


  if (weLikeToCount) {
  lineCount = 429402;
} else {
  lineCount = 0;
}

print(lineCount);


description = 'Feijoada!';
print(description);


print(temperature);


}