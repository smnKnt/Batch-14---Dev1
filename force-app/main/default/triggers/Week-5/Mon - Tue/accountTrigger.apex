List<account> listAccount = new list<account>();

      account acc1 = new account();
      acc1.Name = 'turkce ders 1';
      acc1.ShippingCity = 'New York';
      acc1.Active__c = 'No';
      listAccount.add(acc1);

      account acc2 = new account();
      acc2.Name = 'turkce ders 2';
      acc2.ShippingCity = 'DC';
      acc2.Active__c = 'Yes';
      listAccount.add(acc2);

      account acc3 = new account();
      acc3.Name = 'turkce ders 3';
      acc3.ShippingCity = 'DC';
      acc3.Active__c = 'Yes';
      listAccount.add(acc3);

      //insert list
      insert listAccount;

      //for loop dml


      account acc1 = new account();
      acc1.Name = 'turkce ders';
      acc1.ShippingCity = 'Antalya';


      insert acc1;

      acc1.name = 'turkce ders update';
      update acc1;
