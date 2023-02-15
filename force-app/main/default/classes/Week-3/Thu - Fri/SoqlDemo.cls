public class SoqlDemo {
    public static void accounSOQL_1() {
        list<account> listAcc = [SELECT id, name, phone FROM account order by createddate desc];
        system.debug('list of accounts ' + listAcc);
    }

    public static void accounSOQL_11() {
        account acc = [SELECT id, name, phone FROM account order by createddate desc limit 1];
        system.debug('accounts acc ' + acc);
    }

    public static void accountSOQL_2() {
        account acc = [SELECT id, name, phone, AccountNumber FROM account order by createddate desc limit 1];
        system.debug('accounts acc ' + acc);
        string aName = acc.name;
        string aPhone = acc.Phone;
        system.debug('account name is ' + aName + ', phone is ' + aPhone + ', account number is ' + acc.AccountNumber);
    }

    public static void accountSOQL_3() {
        list<account> listAccount = [SELECT id, name, phone, accountnumber FROM account order by createddate];

        for (account eachAccount : listAccount) {
            system.debug('---eachaccount loop start---');
            system.debug('each account record : ' + eachAccount);
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            system.debug('account name is ' + accName + ', account phone is ' + accPhone + ', acc number is '+ eachAccount.accountnumber);
            system.debug('---eachaccount loop END---');
        }

    }
    public static void accountFilter_SOQL() {
        string accountNameFilter = 'sForce';
        list<account> listAcc = [SELECT id, name FROM account WHERE name = :accountNameFilter];
        system.debug('list acc ' + listAcc);
    }
    public static void accountFilter_SOQL(string accountNameFilter) {
        accountNameFilter = '%' + accountNameFilter + '%';
        list<account> listAcc = [SELECT Id, Name FROM account WHERE name LIKE : accountNameFilter];
        system.debug('list acc ' + listAcc);
    }
    public static void childToParent_SOQL1() {
        list<contact> listContact = [SELECT Id, Name, Phone, Account.Name, Account.Industry FROM Contact WHERE Account.Industry = 'energy'];
        for (contact eachContact : listContact) {
            string accName = eachContact.Account.Name;
            system.debug('contact name is ' + eachContact.Name + ', its account is ' + accName);
            //system.debug(eachContact.account.Type);
        }
    }
    public static void parentToChild_SOQL1() {
        list<account> listAcc = [SELECT Name, AnnualRevenue, 
                            (SELECT Name, Amount FROM Opportunities WHERE Stagename = 'Closed won') 
                            FROM Account WHERE Type = 'Customer - Direct'];
        for (account eachAcc : listAcc) {
            system.debug('account name is ' + eachAcc.Name + ', acc annual revenue ' + eachAcc.AnnualRevenue);
            list<Opportunity> eachAccOpp = eachAcc.Opportunities;
            system.debug('-------');
            for (Opportunity eachOpp : eachAccOpp) {
                system.debug('opp name ' + eachopp.Name + ', amount is ' + eachOpp.Amount);
            }
            system.debug('_______');  
        }
    }
    //projects, and its tickets.
    //2 req
    //1. total tickets for each PROJECT.
    //2. high priority ticket for each PROJECT.
    public static void parentToChild_SOQL2() {
        list<salesforce_project__c> listSP = [SELECT Name, Project_Name__c, 
                    (SELECT Subject__c, Priority__c FROM Salesforce_Tickets__r) 
                    FROM Salesforce_Project__c];
        //for each loop on project
        for (Salesforce_Project__c eachSP : listSP) {
            System.debug('************************');
            //1. total tickets.
            List<Salesforce_Ticket__c> listST = eachSP.Salesforce_Tickets__r;
            integer totalTickets = listST.size();
            integer highPriorityST = 0;
            //check each ticket's priority field. if it is 'high' then increment
            for (salesforce_ticket__c eachST : eachSP.Salesforce_Tickets__r) {
                System.debug('-------------------');
                //check if priority == 'High'
                if (eachST.Priority__c == 'High') {
                    highPriorityST++;
                }
            }
            system.debug('Project name ' + eachSP.Name + ', total tickets ' + totalTickets + ' high priority tickets are ' + highPriorityST);
        }
    }
}