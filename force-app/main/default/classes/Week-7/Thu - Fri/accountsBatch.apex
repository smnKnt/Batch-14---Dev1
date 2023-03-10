AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab,3);
//Database.executeBatch(ab); //default number of record is 200.




AccountsBatch ab = new AccountsBatch();
//AccountTriggerHandler ab = new AccountTriggerHandler();
//we can pass the new instance of only those class, which IMPLEMENTS batchable.
Database.executeBatch(ab, 50);
//Database.executeBatch(ab); //default number of record is 200.

