// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecureModule {
    
    function checkMinimumAge(uint age) public pure{
        require(age >= 21, "Minimum Age should be 21");
        // Ensure that the individual is of legal age before proceeding.
    }

    function divideSafely(int numerator, int denominator) public pure returns (int) {
        assert(denominator != 0);
        // Ensure the denominator is not zero to prevent division by zero.
        return numerator / denominator;
    }

    function validateGroupSize(uint groupMembers) public pure{
        if (groupMembers > 7) {
            revert("Group size should not exceed 7 members");
        }
    }
}
