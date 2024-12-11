# Unexpected Process Termination in Elixir Enum.each

This example demonstrates a common pitfall when using `Enum.each` in Elixir and attempting to handle exceptional cases using `Process.exit`.

The code iterates through a list and is intended to stop when it encounters the number 3. However, the `Process.exit` call terminates the entire process, rather than just the current iteration.

The solution shows how to use a more appropriate technique for exiting the loop gracefully.

## Bug

The bug is caused by calling `Process.exit` within an `Enum.each` callback.  This terminates the entire process instead of just stopping the enumeration.

## Solution

The solution replaces `Enum.each` with `Enum.reduce` to provide more control. This allows exiting gracefully, demonstrating a better approach to handling conditional exits.