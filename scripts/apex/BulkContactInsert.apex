
List<Contact> con = new List<Contact>();

con.add(new Contact(LastName = 'Kumar'));
con.add(new Contact(LastName = 'Gupta'));

// Will fail as required field is not initialized
con.add(new Contact(FirstName = 'Narendra'));

// Normal DML will fail:
// insert con;
// DMLException: Required field missing: LastName

Database.insert(con, false);
