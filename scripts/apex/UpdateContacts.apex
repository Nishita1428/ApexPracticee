
List<Contact> cons = [
    SELECT Id, FirstName, LastName
    FROM Contact
    WHERE CreatedDate = TODAY
];

for (Contact c : cons)
{
    c.Description = 'Contact updated by Apex';
}

update cons;
