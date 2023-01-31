List<string> listStr = new list<string>();
listStr.add('Batch');
listStr.add(' 14 öğrencileri');
listStr.add(' apex');
listStr.add(' öğreniyor.');
listStr.add('🙌');

// || our of bound || yes || alright

string concateStr = '';

//for each loop
//left: create (or define) a new variable to be used inside the for loop
//right: list variable nama
for (string eachStr : listStr) {
    concateStr += eachStr;
}
system.debug(concateStr);