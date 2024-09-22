
import Authentication from 0x06

/* Boilerplate
transaction() {

    prepare(signer: &Account) {}

    execute {
        log("We're done.")
    }
}*/


transaction(firstName: String, lastName: String, birthday: String, account: Address) {

    prepare(signer: &Account) {}

    execute {
        Authentication.addProfile(firstName: firstName, lastName: lastName, birthday: birthday, account: account)
        log("We're done.")
    }
}
