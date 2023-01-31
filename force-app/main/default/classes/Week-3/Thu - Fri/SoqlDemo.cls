public class SoqlDemo {
    public static void accounSOQL_1() {
        list<Account> listAcc = [SELECT Id, Name, Phone FROM Account ORDER BY CreatedDate DESC];
        system.debug('list of Accounts ' + listAcc);
    }

    public static void accounSOQL_11() {
        Account acc = [SELECT Id, Name, Phone FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('Accounts acc ' + acc);
    }

    public static void AccountSOQL_2() {
        Account acc = [SELECT Id, Name, Phone, AccountNumber, annualRevenue FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('Accounts acc ' + acc);
        string aName = acc.Name;
        string aPhone = acc.Phone;
        system.debug('Account Name is ' + aName + ', Phone is ' + aPhone + ', Account number is ' + acc.AccountNumber + ' ' + acc.annualRevenue);
    }

    public static void AccountSOQL_3() {
        list<Account> listAccount = [SELECT Id, Name, Phone, Accountnumber FROM Account ORDER BY CreatedDate LIMIT 3];

        System.debug(listAccount[0]);
        System.debug(listAccount[0].Name);

        System.debug(listAccount[1]);
        System.debug(listAccount[1].Name);

        for (Account eachAccount : listAccount) {
            system.debug('---eachAccount loop start---');
            system.debug('each Account record : ' + eachAccount);
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            system.debug('Account Name is ' + accName + ', Account Phone is ' + accPhone + ', acc number is '+ eachAccount.Accountnumber);
            system.debug('---eachAccount loop END---');
        }
    }

    public static void AccountFilter_SOQL(string AccountNameFilter) {
        // string AccountNameFilter = 'sonda_TEST';
        list<Account> listAcc = [SELECT Id, Name FROM Account WHERE Name =: accNameFilter];

        System.debug('list acc ' + listAcc);
    }
}