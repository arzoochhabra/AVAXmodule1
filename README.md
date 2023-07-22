# Errorhandling Contract

This is a Solidity smart contract that demonstrates different error handling techniques using `assert`, `revert`, and `require` statements.

## Description of Contract

The `ErrorHandling` contract provides the following functions:

### `add(uint256 a,unit256 b)`

- This function demonstrates the usage of the `assert` statement.
- It checks that the result of addition of a and b should be greater than or equal to a using the `assert` statement.
- If the condition fails, it triggers an "Internal error" and aborts the execution.

### `multiply(uint256 a, uint256 b)`

- This function demonstrates the usage of the error handling statements.
- It takes `a` and `b` parameters and performs multiplication.
- The require statement ensures that both a and b should be non zero so it passes a condition and checks that,if the condition fails it shows an error message.
- If the condition is met, it returns the result of the multiplication.
- Then it ensures that the result doesn't overflow so it uses assert statement.
- After that it uses revert statement to handle the overflow and passes a condition,if the condition fails then the function is reverted to its initial state.

## Deploy

Now deploy the contract and checks it by passing different values. Try giving different values that causes an error and then see how the error is handled.

## License

This contract is using the MIT License.

