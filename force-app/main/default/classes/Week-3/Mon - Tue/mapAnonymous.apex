map<string, string> mapCountryCurrency = new map<string, string>();
                //put(datatype_of_key, datatype_of_value)
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('Poland', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country and its currency ===> ' + mapCountryCurrency);

//get value using KEY from a map. 
string IndiaCurrency = mapCountryCurrency.get('India');
string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkiye currency is ' + TurkiyeCurrency);

//get all keys using keyset method
set<string> countrySet = mapCountryCurrency.keySet();
system.debug('countries are ' + countrySet);

list<string> currencies = mapCountryCurrency.values();
system.debug('currencies are ' + currencies);

//--for each loop of map start here

set<string> countries = mapCountryCurrency.keySet();

//for each loop on country set

for(string eachKey: countrySet){
    string printString = 'Country is ' + eachKey;
    //value from key from a map
    string eachValue = mapCountryCurrency.get(eachKey);
    printString += ', its currency is ' + eachValue;
    system.debug(printString);
}





List<string> colors = new list<string>();
String[] colors = new List<String>();

String[] colors = new list<string>();
colors.add('black');
system.debug(colors);

String[] colors = new String[3];
colors.add('blue');
colors[0] = 'Green';
system.debug(colors);

List<Integer> list1 = new List<Integer>();
list1.add(1);
list1.add(2);

List<Integer> list2 = new List<Integer>(list1);

System.debug(list2);

String[] declareList;

List<String> list1 = new List<String> {'alpha', 'beta', 'alpha', 'beta'};
declareList = list1;
System.debug(declareList);

set<String> set1 = new set<String>(list1);
System.debug(set1);

map<string, string> havaDurumu = new map<string, string>{'Antalya' => 'Güneşli',
                                                         'Newyork' => 'Parçalı Bulutlu',
                                                         'Paris' => 'Sağanak Yağışlı'
};
havaDurumu.put('ankara', 'karlı');
system.debug(havaDurumu);



SELECT id, Name FROM Account