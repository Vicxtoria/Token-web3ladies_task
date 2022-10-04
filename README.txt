THE DIFFERENCE IN THE FOLLOWING SOLIDITY DATA TYPES

VIEW FUNCTION AND PURE FUNCTION
A function can be declared as view or pure.
Both view and Pure functions cannot modify the state of the blockchain.
The only difference is that Pure function can read data from the blockchain while view function cannot read the state of the blockchain.

PAYABLE AND NON PAYABLE
Payable modifier is used to send token to a contract and run code to account for its deposit while the non-payable modifier cannot.

CONSTANT AND IMMUTABLE 
Constant and Immutable data type can both be used on state variables to restrict modification to their state.
The difference between them is that constant variable can never be changed after compilation, while immutable variables can be set within the constructor.

READ FUNCTIOM AND WRITE FUNCTION
Read function can read from a state variable but cannot modify it; while write function can modify a state variable.
