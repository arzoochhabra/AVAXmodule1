// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract errorhandling {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b;

        // Ensure that the result does not overflow (assert)
        assert(result >= a);

        return result;
    }

    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a * b;

        // Ensure that neither 'a' nor 'b' is zero (require)
        require(a != 0 && b != 0, "Both 'a' and 'b' must be non-zero");

        // Ensure that the result does not overflow (assert)
        assert(result / a == b);

        // Use revert statement to handle overflow
        if (a != 0 && result / a != b) {
            revert("Multiplication overflow");
        }
        return result;
    }
}
