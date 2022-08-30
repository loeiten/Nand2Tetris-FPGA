## Sound.jack
`Sound.jack` handels low level communication with modules `Sound.v` and `Timer.v`.

Objects of Sound.jack store and play a soundtrack on the sound card. The soundtrack is stored as String objects with the following chars
* First Octave: C,D,E,F,G,A,H
* Second Octave: c,d,e,f,g,a,h

#### function void init()
do some init stuff.

#### constructor Sound new(String song, int speed)
constructs a new Sound object with:
* String song containing the notes stored as chars
* int speed is the time in 0.1ms at which the next note  of the song has to be played

#### function int getTime()

returns the time of the Timer module in 0.1ms after reset. Overflows are ignored.

#### method void start()

starts to play the first tone in the Song. Store the Timer value and the index of the played tone in some field variables to know when to play the next tone.

#### method void stop()

stops to play the song and mutes the speaker.

#### method void dispose()

dispose the Sound object.

#### method void setSpeed(pSpeed)

set speed of the Song to new value pSpeed.

#### method int getIndex()

returns index of next tone to play.

#### method int getSpeed()

returns  speed value of song.

#### method boolean update()

check if time to next tone has passed. If so play the next tone and return true. Else return false.

#### function void play(char tone)

Play the tone represented by char t on sound card:
* t=0 mute (0 to soundcard)
* t=65 represents A (send -4735 to soundcard)
* t=66 represents B (send -4471 to soundcard)
* t=67 represents C (send -7952 to soundcard)
* t=68 represents D (send -7086 to soundcard)
* t=69 represents E (send -6313 to soundcard)
* t=70 represents F (send -5969 to soundcard)
* t=71 represents G (send -5315 to soundcard)
* t=72 represents H (send -4217 to soundcard)
* t=97 represents a (send -4735/2 to soundcard)
* t=98 represents b (send -4471/2 to soundcard)
* t=99 represents c (send -7952/2 to soundcard)
* t=100 represents d (send -7086/2 to soundcard)
* t=101 represents e (send -6313/2 to soundcard)
* t=102 represents f (send -5969/2 to soundcard)
* t=103 represents g (send -5315/2 to soundcard)
* t=104 represents h (send -4217/2 to soundcard)
* else Sys.error()

## Project
* Implement `Sound.jack` with suggested API.
* compile `SoundTest`
* run `Hack8.v` in real hardware with `asm/boot` preloaded to `ROM.v`
* upload to `SoundTest` to Hack8
* Connect speaker and check if tetris theme is played.
