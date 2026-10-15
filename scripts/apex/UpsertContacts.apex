
List<Contact> cons = [
    SELECT Id, FirstName, LastName
    FROM Contact
    WHERE CreatedDate = TODAY
];

cons.add(new Contact(LastName = 'Aggarwal')); // New record

for (Contact c : cons)
{
    c.Description = 'Contact updated by Apex on ' + System.now();
}

upsert cons;
