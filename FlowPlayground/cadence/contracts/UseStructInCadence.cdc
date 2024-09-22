access(all) contract Authentication {

    access(all) var profiles: {Address: Profile}
    
    access(all) struct Profile {
        access(all) let firstName: String
        access(all) let lastName: String
        access(all) let birthday: String
        access(all) let account: Address

        // You have to pass in 4 arguments when creating this Struct.
        init(_firstName: String, _lastName: String, _birthday: String, _account: Address) {
            self.firstName = _firstName
            self.lastName = _lastName
            self.birthday = _birthday
            self.account = _account
        }
    }

    access(all) fun addProfile(firstName: String, lastName: String, birthday: String, account: Address) {
        let newProfile = Profile(_firstName: firstName, _lastName: lastName, _birthday: birthday, _account: account)
        self.profiles[account] = newProfile
    }

    init() {
        self.profiles = {}
    }

}
