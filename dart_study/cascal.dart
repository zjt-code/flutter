




void main()
{
  var button = querySelector('#confirm');
  button.text = 'Confirm';
  button.classes.add('important');
  button.onClick.listen((e) => window.alert('Confirmed!'));

}