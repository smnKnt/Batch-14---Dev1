string crn = '0 0 9,23 1W * ? *';

AccountsSchedule acs = new AccountsSchedule();
system.schedule('turkceDersSchedule', crn, acs);
