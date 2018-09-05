1- Implement a class `Contact` that can be initialized with a name and a number
2- Change the class to have a numbers array instead
3- Add the instance method `add_number` that takes a string and adds it to the numbers array of the contact
4- Add the instance method `valid?` that returns true if the contact is valid and false if not, The definition of valid that we covered is:
• Name is not nil, not empty string and not just a string of spaces
• Numbers array has items
5- Add a `ContactList` class with contacts array as an instance variable
6- Add the instance method `add_contact` to `ContactList` that takes in a contact object as a parameter and adds it to the contacts array of the ContactList




Next exercises are:
• Add the instance method `search` to `ContactList` that takes `key` as an argument and returns the first contact that has this key as a name in the contact list and `nil` in case nothing was found
• Extend the `search` method to also return results based on phone numbers not just names
• Extend the `valid?` method on the `Contact` object to have more validations like if any of the numbers in the numbers array is empty string, nil or bunch of spaces it should fail
• Change the method `add_contact` on `ContactList` object to put out an error to the terminal and not add the contact when it is invalid
• Change the method `add_contact` on `ContactList` object to not add two contacts with the same name to the contact list but instead merge them. So if the contact with name Amr exists and I try to add another contact Amr just merge their phone numbers into one Amr and store it