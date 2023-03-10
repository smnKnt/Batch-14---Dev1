@isTest
public class ContactTriggerHandlerTest {
   @isTest
   private static void testValidation2() {
        contact c = new contact();
        c.lastname = 'test contact';
        c.LeadSource = 'Web';
        insert c;

        //update lead source field
        c.LeadSource = 'Phone';
        update c;
   }

   @isTest
   private static void testValidation2_1() {
      contact c = new contact();
      c.lastname = 'test contact';
      c.LeadSource = 'Web';
      insert c;

      try {
         //update lead source field
         c.LeadSource = 'Phone';
         update c;
      } catch (Exception ex) {
         system.debug('ex message: ' + ex.getMessage());
         //assert
         assert.isTrue(ex.getMessage().containsIgnoreCase('CANNOT UPDATE LEAD SOURCE. PLEASE USER!!!!'));
      }
   }

   @isTest
   private static void testValidation1() {

      List<Contact> conList = new List<Contact>();

      for (Integer i = 0; i < 200; i++) {
         contact con = new contact();
         con.lastName = 'Test ' + i;
         if (i < 100) {
            con.leadSource = 'Web';
         } else {
            con.leadSource = 'Partner Referral';
         }
         conlist.add(con);
      }
      insert conList;

      for (contact con : conList) {
         con.leadsource = 'Other';
      }
      Test.startTest();
      Database.SaveResult[] srList = Database.update(conList, false);
      system.debug(srlist);
      Test.stopTest();
      // Iterate through each returned result
      for (Database.SaveResult sr : srList) {
         if (sr.isSuccess()) {
            // Operation was successful, so get the ID of the record that was processed
            System.debug('Successfully inserted account. Account ID: ' + sr.getId());
         }
         else {
            // Operation failed, so get all errors                
            for(Database.Error err : sr.getErrors()) {
               assert.isTrue('Cannot update Partner Referral contact.' == err.getMessage());
               System.debug('The following error has occurred.');                    
               System.debug(err.getStatusCode() + ': ' + err.getMessage());
               System.debug('Account fields that affected this error: ' + err.getFields());
            }
         }
      }
   }
}