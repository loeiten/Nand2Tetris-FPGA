## AverageUART

Jack implementation of Average over UART. Final test of Jack-OS.

### Main.jack
```
class Main {
   function void main() {
      var Array a; 
      var int length;
      var int i, sum;

	  do UART.printString("How many numbers? ");
      let length = UART.readInt();
      let a = Array.new(length); // constructs the array
     
      let i = 0;
      while (i < length) {
		 do UART.printString("Enter a number: ");
         let a[i] = UART.readInt();
         let sum = sum + a[i];
         let i = i + 1;
      }

      do UART.printString("The average is ");
      do UART.printInt(sum / length);
      return;
   }
}
```

## Project
* Copy all needed Jack-OS-classes to project folder.
* Compile and translate to hack machine code (use `$ make`).
* Use a terminal programm to upload hack code and to interact with `Average.jack`

