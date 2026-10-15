
public class RecordFactory {
    public static sObject createRecord(String recordType, String recordName) {
        if (recordType == 'Account') {
            return new Account(
                Name = recordName,
                Rating = 'Hot'
            );
        } else if (recordType == 'Contact') {
            return new Contact(
                LastName = recordName,
                Department = 'Sales'
            );
        } else {
            return null;
        }
    }
}
