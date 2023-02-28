@isTest
public class DmlDemoAgainTest {
    @isTest
    private static void testInsertStndObj() {
        //call method
        DmlDemoAgain.dmlDemoInsert_stndObj1();
        //verify
        //soql
        account acc = [SELECT Id, Name FROM Account LIMIT 1];
        //assert
        //system.assertEquals(1, accs.size());
        system.assertEquals('Softinnovas',acc.Name);
    }

    @isTest
    private static void testInsertCustmObj() {
        DmlDemoAgain.dmlDemoInsert_cstmObj(); //it will insert record in test world

        //verify. to verify, we do SOQL and get the record here.
        List<Salesforce_Project__c> listSP = [SELECT Id, Name, Project_Name__c, Description__c FROM Salesforce_Project__c];
        system.assertEquals('Learn dml', listSP[0].project_name__c);
        system.assertEquals('learn dml batch14', listSP[0].Description__c);
    }
}