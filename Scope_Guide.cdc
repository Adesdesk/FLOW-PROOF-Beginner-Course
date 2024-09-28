// pub(set)
// pub(set) only applies to variables, constants, and fields. Functions cannot be publically settable. 
// It is also the most dangerous and easily accessible modifier.

// Example
// ```
// 1 pub(set) var x: String
// ```
// Write Scope - All Scope
// Read Scope - All Scope


// pub/access(all)
// pub is the same thing as access(all). This is the next layer down from pub(set).

// Example
// ```
// 1 pub var x: String
// 2 access(all) var y: String
// 3
// 4 pub fun testFuncOne() {}
// 5 access(all) fun testFuncTwo() {}
// ```
// Write Scope - Current & Inner
// Read Scope - All Scope



// access(account)
// access(account) is a little more restrictive than pub due to its read scope.

// Example
// ```
// 1 access(account) var x: String
// 2
// 3 access(account) fun testFunc() {}
// ```
// Write Scope - Current & Inner
// Read Scope - All Contracts in the Account



// access(contract)
// access(contract) is a little more restrictive than access(account) due to its read scope.

// Example

// ```
// 1 access(contract) var x: String
// 2
// 3 access(contract) fun testFunc() {}
// ```
// Write Scope - Current & Inner
// Read Scope - Containing Contract




// priv/access(self)
// priv is the same thing as access(self). This is the most restrictive (and safe) access modifier.

// Example
// ```
// 1 priv var x: String
// 2 access(self) var y: String
// 3
// 4 priv fun testFuncOne() {}
// 5 access(self) fun testFuncTwo() {}
// ```
// Write Scope - Current & Inner
// Read Scope - Current & Inner