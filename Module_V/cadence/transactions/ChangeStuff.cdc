import Stuff from 0x01
transaction(address: Address) {

  prepare(signer: AuthAccount) {

  }

  execute {
    let publicCapability: Capability<&Stuff.Test> =
      getAccount(address).getCapability<&Stuff.Test>(/public/MyTestResource)

    let testResource: &Stuff.Test = publicCapability.borrow() ?? panic("The capability doesn't exist or you did not specify the right type when you got the capability.")

    testResource.changeName(newName: "Sarah") // THIS IS A SECURITY PROBLEM!!!!!!!!!
  }
}

/**
There's a problem. Because we linked our resource to the public, anyone can call changeName and change our name! That's not fair.

The way to solve this is to:

Define a new resource interface that only exposes the name field, and NOT changeName
When we .link() the resource to the /public/ path, we restrict the reference to use that resource interface in step 1).
Let's add a resource interface to our contract:
 */