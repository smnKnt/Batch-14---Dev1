list<case> newCAses = new list<case>();
for (Integer i = 0; i < 210; i++) {
    case c = new case();
    c.Subject = 'trigger case';
    c.Status = 'New';
    c.Origin = 'Web';
    c.Description = 'Resolve it now';
    newCAses.add(c);
}
insert newCAses;


list<case> updateCAses = [SELECT id, status FROM case WHERE status='New'];
for (case eachCase : updateCases) {
    eachCase.Status = 'Working';
}
update updateCAses;




delete [select id from case where createddate = today];

