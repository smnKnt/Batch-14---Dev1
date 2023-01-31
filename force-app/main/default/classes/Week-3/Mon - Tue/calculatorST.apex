
List<integer> listInteger = new List<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);
CalculatorSt.add(listInteger);

integer sum = 0;

integer length =listInteger.size();
for (Integer i = 0; i < 5; i++) {
  sum += listInteger[i];
}
system.debug('Genel Toplam :' + sum);



integer sum = 0;

for (integer e : listInteger) {
  system.debug( 'Ara Toplam :' + sum);
  sum += e;
  //sum = sum + eachInt;
}
system.debug('Genel Toplam :' + sum);





