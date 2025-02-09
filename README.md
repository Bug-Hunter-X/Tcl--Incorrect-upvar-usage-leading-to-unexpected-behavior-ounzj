# Tcl: Incorrect upvar usage leading to unexpected behavior

This repository demonstrates a common error in Tcl programming involving the incorrect usage of the `upvar` command. The `upvar` command is used to create an alias for a variable in a different scope, but if not used correctly, it can lead to unexpected behavior and errors.

## Bug Description:
The `badproc` procedure attempts to modify the variable `x` passed as an argument. However, it does not use the `upvar` command correctly, leading to a modification of a local variable instead of the intended variable in the calling scope. As a result, the value of x in the calling scope remains unchanged.
The `goodproc` procedure demonstrates the correct use of `upvar`, explicitly specifying that it needs to modify the variable in the calling scope which fixes the issue. 

## Solution:
The solution involves using `upvar 1` correctly as shown in `goodproc` to explicitly modify the variable in the calling scope. This ensures that the intended variable is modified.