/* **************************************
	OLIMEXINO-32U4 Button Example

	Pressing the hardware button toggles
	the LEDs on the board.

	Note that it is recommended to set the power jumper
	to 5V supply.

	If you have any questions, email
	support@olimex.com

	https://www.olimex.com
	OLIMEX, Jan 2013

   ************************************** */

/* ******** Definitions ***************** */

	// We define the button here, because the original Leonardo
	// board doesn't have a button by default and there is no
	// pin definition for port E2 in the pins_arduino.h header

	#define BBIT (PINE & B00000100)!=0		// Check if the button has been pressed
	#define BUTTONINPUT DDRE &= B11111011	// Initialize the port

	// Useful definitions for the two LEDs on the board
	#define GLED 7		// The GREEN  LED is on Pin 7
	#define YLED 9		// The YELLOW LED is on Pin 9

/* ******** Main Body ******************* */

void setup(){

	// Initialize the Button and LEDs
	BUTTONINPUT;

	pinMode(GLED, OUTPUT);
	pinMode(YLED, OUTPUT);

	// Turn ON the LEDs to indicate that the program has started running
	digitalWrite(YLED, HIGH);
	digitalWrite(GLED, HIGH);

	}

void loop(){

	// Prssing the hardware button repeatedly will toggle the LEDs

	while(BBIT){}
	digitalWrite(GLED, digitalRead(GLED)^1); //Toggle the Green LED

	delay(500);	//Wait for a bit or the button check won't be accurate

	while(BBIT){}
	digitalWrite(YLED, digitalRead(YLED)^1); //Toggle the Yellow LED

	delay(500);	//Wait for a bit or the button check won't be accurate
}
