import "SomeContract"

access(all) fun main() {
  /**************/
  /*** AREA 4 ***/

// Read variable 'a' (public access)
let readA = SomeContract.testStruct.a

// Read variable 'b' (public access)
let readB = SomeContract.testStruct.b

// Cannot read variable 'c' (public access)
let readC = SomeContract.testStruct.c

// Cannot read variable 'd' (public access)
let readD = SomeContract.testStruct.d


// Change variable 'a' (public set access)
SomeContract.testStruct.a = "new A"

// Cannot change 'b' (only pub, not pub(set))
SomeContract.testStruct.b = "new B"

// Cannot change 'c' (contract access)
SomeContract.testStruct.c = "new C"

// Cannot change 'd' (private access)
SomeContract.testStruct.d = "new D"


/* Call functions*/
// Call function PublicFunction
SomeContract.testStruct.publicFunc()

// Cannot call function contractFunc
SomeContract.testStruct.contractFunc()

// Cannot call function privateFunc
SomeContract.testStruct.privateFunc()

}


   
    

