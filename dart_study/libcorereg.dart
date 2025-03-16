

void main()
{
var numbers=RegExp(r'\d+');
var allCharacters = 'llamas live fifteen to twenty years';
var someDigits = 'llamas live 15 to 20 years';

print(allCharacters.contains(numbers).runtimeType);
print(someDigits.contains(numbers));


var exeOut = numbers.allMatches(someDigits);
// print(exeOut.runtimeType);
for(var s in exeOut)
{
  print(s[0]);
  print(s[0].runtimeType);
  print(s.group(0));
}
}