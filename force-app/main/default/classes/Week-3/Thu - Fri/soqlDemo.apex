SoqlDemo.accountFilter_SOQL();
SoqlDemo.accountFilter_SOQL('Gen');
SoqlDemo.accountFilter_SOQL('sfdc');
SoqlDemo.accountFilter_SOQL('sForce');
SoqlDemo.childToParent_SOQL1();
SoqlDemo.parentToChild_SOQL1();
SoqlDemo.parentToChild_SOQL2();

SELECT Id, lastName, Account.Name, Account.AnnualRevenue  FROM Contact;

SELECT Id, Name, Subject__c, Priority__c, Salesforce_Project__r.Project_Name__c,Salesforce_Project__r.Status__c FROM Salesforce_Ticket__c;

SELECT Id, Name, (SELECT Id, lastName FROM Contacts) FROM Account;
SELECT Id, Name, (SELECT Id, Name FROM Salesforce_Tickets__r) FROM Salesforce_Project__c;



SELECT COUNT() FROM Contact;
SELECT COUNT(Id) FROM Contact;
SELECT COUNT(MailingCity) FROM Contact;
SELECT LeadSource, COUNT(Name) FROM Lead GROUP BY LeadSource;
SELECT SUM(Amount), StageName FROM Opportunity GROUP BY StageName;
SELECT SUM(Amount), AVG(Amount), StageName FROM Opportunity GROUP BY StageName;
SELECT COUNT(Id), Name FROM Account GROUP BY Name;
SELECT COUNT(Id), Name FROM Account GROUP BY Name HAVING COUNT(Id) > 1;
SELECT SUM(Amount), StageName FROM Opportunity GROUP BY StageName HAVING SUM(Amount) > 500000;


List<AggregateResult> x = [SELECT SUM(Amount), StageName FROM Opportunity GROUP BY StageName];
system.debug(x);
integer a = 0;
for(AggregateResult ar: x){
    system.debug(ar.get('StageName') + '==> ' + ar.get('expr0'));
}







SoqlDemo.accountSOQL_3();
SoqlDemo.accountSOQL_2();
SoqlDemo.accounSOQL_11();
SoqlDemo.accounSOQL_1();








SELECT Id, Name, Phone FROM Account;
SELECT Id, Name, Project_Name__c, Status__c FROM Salesforce_Project__c;
SELECT Id, Name, Subject__c, Priority__c FROM Salesforce_Ticket__c;
SELECT Name, Id, Type, BillingCity FROM Account;

SELECT Id, Name, Mailingcity FROM Contact WHERE mailingcity != null and lastname LIKE '%a';
SELECT Id, Name, Mailingcity FROM Contact WHERE Name LIKE 'a%';
SELECT Id, Name, Mailingcity FROM Contact WHERE Name LIKE '%a%';
SELECT Id, Name, Type, BillingCity FROM Account ORDER BY Name DESC;
SELECT Id, Name, Type, BillingCity, CreatedDate FROM Account ORDER BY CreatedDate DESC;
SELECT Id, Name, Type, BillingCity, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 5;
SELECT Id, Name, Industry FROM Account WHERE Industry = 'energy' LIMIT 1;
SELECT Id, Name, Industry,Phone FROM account WHERE Phone !='';
SELECT Id, Name, Project_Name__c, Status__c FROM Salesforce_Project__c WHERE Status__c != 'new';
SELECT Id, Name, Industry, Phone, AccountNumber FROM account WHERE (Phone !='' OR website !='') AND AccountNumber!=null; 
SELECT Id, Name, Industry, Phone, AccountNumber, AnnualRevenue FROM Account WHERE AnnualRevenue > 100000;

SELECT Id, Name, Industry, Phone, AccountNumber, AnnualRevenue FROM Account WHERE CreatedDate > LAST_WEEK; 
SELECT Id, Name, Industry, Phone, AccountNumber, AnnualRevenue FROM Account WHERE CreatedDate = LAST_N_DAYS:365;

SELECT Id, Name, Mailingcity FROM Contact WHERE Mailingcity = 'paris' or Mailingcity = 'lawrence' or Mailingcity = 'burlington';
SELECT Id, Name, Mailingcity FROM Contact WHERE Mailingcity IN ('paris','lawrence','burlington');
SELECT Id, Name, Mailingcity FROM Contact WHERE Mailingcity NOT IN ('paris','lawrence','burlington');



for (SObjectField field : SObjectType.Salesforce_Project__c.fields.getMap().values()) //case yerine istedi??imiz objecti yazabiliriz.
{
    if (!field.getDescribe().isNillable())
    {
        system.debug(field);
    }

}