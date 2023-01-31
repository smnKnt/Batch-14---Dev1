RankHandler rh = new RankHandler();
string p1 = rh.rankPrize(1);
system.debug('p1 is => ' + p1);
string p3 = rh.rankPrize(2);
system.debug('p3 is => ' + p3);
string p5 = rh.rankPrize(3);
system.debug('p5 is => ' + p5);
string p11 = rh.rankPrize(11);
system.debug('p11 is => ' + p11);

RankHandler rh2 = new RankHandler();
string ps1 = rh2.rankPrizeSwitch(1);
system.debug('ps1 is => ' + ps1);
string ps3 = rh2.rankPrizeSwitch(3);
system.debug('ps3 is => ' + ps3);
string ps5 = rh2.rankPrizeSwitch(5);
system.debug('ps5 is => ' + ps5);
string ps11 = rh2.rankPrizeSwitch(11);

system.debug('ps11 is => ' + ps11);
string ps111 = rh2.rankPrizeSwitch(-5);
system.debug('ps111 is => ' + ps111);








// integer x = 10;

// if (x > 3) {
//     system.debug('a) bu kısım çalışır');
// }else if (x > 6) {
//     system.debug('b) bu kısım çalışır');
// }else if (x > 9) {
//     system.debug('c) bu kısım çalışır');
// } else {
//     system.debug('** Hiçbiri **');
// }







// // Ternary Operator
// Integer x = 50;
// Integer y = 100;
// Integer result1 = x > y ? x - y : y - x;
// System.debug('Result1 ==>' + result1);

// integer result2 = 0;
// if( x > y){
//     result2 = x - y;
// }else {
//     result2 = y - x;
// }
// System.debug('Result2 ==>' + result2);








