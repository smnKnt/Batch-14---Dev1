Calculator c = new Calculator();
string message = 'Batch 14 öğrencileri bir harika 😇';
string messageResult = c.printAndReturnMessage(message);
system.debug(messageResult);
system.debug(c.printAndReturnMessage('Merhaba'));

Calculator c1 = new Calculator();
integer sum = c1.add(10,15,25);//when we pass 3 integer -> it calls line 27 method
system.debug('sum11 is ' + sum);

integer x = 10;
integer y = 15;
integer sum1 = c1.add(x, y);//when we pass 2 integers -> it calls line 22 method
system.debug('sum1 is ' + sum1);

Calculator c = new Calculator();
date dtt = date.newInstance(1982, 04, 01);
system.debug(dtt);
boolean dttCheck = c.leapYearCheck(dtt);
system.debug('today date is in LEAP year ?? ' + dttCheck);

string m = 'print this now.';
c.printNewMessage(m); //will this work?
string msg = 'print this now too.';
c.printNewMessage(msg);
c.printNewMessage('print this too buddy');
c.printNewMessage('55');


