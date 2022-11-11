# Jumping Game

A set row of wooden posts on a lake, where a person/player jumps from one to another. To which one the player jumps is indicated by a number on the post he is currently on.
The player can either stay dry or end up wet based on where he jumps.

### Example

```
|P2|  |x|  |-1|  |3|  |1|  |-1|
After jump
|2|  |x|  |P-1|  |3|  |1|  |-1|
After jump
|2|  |P x|  |-1|  |3|  |1|  |-1|
```

* | n | - post where n represents the jump number
* P - represents the current player position
* x - represents a number which will cover the possible scenarios
    * for x = -2 the player will jump into the lake and end up wet
    * for x = 0 the player will stop jumping and stay dry
    * for x = 3 the player wil enter a loop, keep on jumping staying dry

## Solution description

* `jumping_game.rb` contains the class
* `test.rb` creates the object and runs a couple of examples (including those in `game.txt`)

The `start` method takes in numbers as parameters (representing the wooden posts with their jump value), checks them to make sure they contain a numeric value and calls a recursive method `game_loop` which handles the game logic.

The game loop ends based on one of three conditions:
* the player jumps outside of the row scope ( which happens when the jump value is greater than the remaining posts in the direction of the jump ), resulting in the player falling in the lake and getting wet
* the player lands on a post that has the value `0`, which ends with the player staying still on that post and remains dry
* the player entering a loop and keeps infinitely jumping ( with limitless energy ), unable to fall in water or land on a post with a `0` value, resulting in the player staying dry
    * the player enters the loop the moment he lands on a post he has already been on

*Space/memory*: only one object is needed, which will take less space than solutions based on creating many of them, per the desired input, and keeping track of their own private data.

*Runtime*: the conditions are ordered in a way that ensures the most time consuming ones are checked last (time for calculations increases with the number of parameters). In case where a lot of parameters would be entered, to significantly decrease the speed and using again the same parameters, a memoization technique could be used to increase the speed.