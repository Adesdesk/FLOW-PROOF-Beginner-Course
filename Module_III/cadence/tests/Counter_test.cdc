import Test

access(all) let account = Test.createAccount()

access(all) fun testContract() {
    let err = Test.deployContract(
        name: "FactoryData",
        path: "../contracts/FactoryData.cdc",
        arguments: [],
    )

    Test.expect(err, Test.beNil())
}