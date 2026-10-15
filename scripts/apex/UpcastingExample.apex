sObject obj = RecordFactory.createRecord('Account', 'Upcasting Example');

switch on obj
{
    when Account acc
    {
        System.debug('Account Name: ' + acc.Name);
        System.debug('Account Rating: ' + acc.Rating);
    }
    when Contact con
    {
        System.debug('Contact Last Name: ' + con.LastName);
        System.debug('Contact Department: ' + con.Department);
    }
    when null
    {
        System.debug('No record created');
    }
    when else
    {
        System.debug('Unknown object type');
    }
}