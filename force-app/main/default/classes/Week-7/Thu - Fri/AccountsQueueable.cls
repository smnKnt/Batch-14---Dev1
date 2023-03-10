public class AccountsQueueable implements Queueable{
    list<account> listaccount = new list<account>();

    //this is a parameterized constructor.
    public AccountsQueueable(List<account> accs) {
        listaccount = accs;
    }

    public void execute(QueueableContext qc){
        system.debug('inside execute method listaccount => ' + listaccount);
        //update name of all accounts in listaccount.
            //append --SI in account name
        for (account eachAcc : listaccount) {
            eachAcc.Name += '--SI';
        }
        update listaccount;

        list<account> listAcc2 = [select id, name from account where name like '%--SI'];
        
        AccountsQueueable2 aq2 = new AccountsQueueable2(listAcc2);
        id jobId2 = system.enqueueJob(aq2);//we can enqueue the class which implements queueable.
    }
}