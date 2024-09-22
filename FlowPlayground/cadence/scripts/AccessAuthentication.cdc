import Authentication from 0x06

/* Boilerplate

import Authentication from 0x01

pub fun main() {

}
*/

access(all) fun main(account: Address): &Authentication.Profile {
    return Authentication.profiles[account]!
}