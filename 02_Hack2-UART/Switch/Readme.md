## Switch.v
![](Switch.png)

A 1-bit Register with two control lines: on/off.

Similar to a J-K-Master-Slave Flip-Flop.

```
if ((out[t] == 0) and (on[t] == 1)) out[t+1] = 1
else if ((out[t] == 1) and (off[t] == 1)) out[t+1] = 0
```
## Switch_tb.v
Test bench toggles switch on/off.

![](Switch_tb.png)

## Project
* Implement the module `Switch.v` and all needed submodules (Bit, ...).
**Note:** DFF and Nand are considered primitive and thus there is no need to implement them.
* Simulate your implementation with the supplied test bench `Switch_tb.v`.
* Verify by comparing with screenshot of `Switch_tb.png`.
