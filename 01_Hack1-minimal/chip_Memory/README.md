# Memory

## Memory.v

Memory mapped I/O

Set of Multiplexer/De-multiplexer to map I/O-modules to address memory.

```text
if (load==1) and (address[13]==0) loadRAM=1
if (load==1) and (address[13]==1 and address[3:0]==0000) load0000=1
if (load==1) and (address[13]==1 and address[3:0]==0001) load0001=1
if (load==1) and (address[13]==1 and address[3:0]==0010) load0010=1
...
if (address[13]==0) data = dataRAM
if (address[13]==1 and address[3:0]=0000) data = data0000
if (address[13]==1 and address[3:0]=0001) data = data0001
if (address[13]==1 and address[3:0]=0010) data = data0010
...
```

![Memory chip](figs/Memory.png)

## Memory_tb.v

Test bench to generate load signals for every Memory mapped module.

![Memory test bench](figs/Memory_tb.png)

## Project

* Implement the module `Memory.v` and all needed submodules.
(**Note:** `DFF` and `NAND` are considered primitive and thus there is no need to implement them.)
* Simulate your implementation with the supplied test bench `Memory.v`.
* Verify by comparing with screenshot of `Memory_tb.png`.
