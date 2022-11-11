**Jumping Game**
Think of a simple game, where the player jumps within a row of 
wooden posts on a lake. Each post has a number on it that indicates
where the player should jump to:
The number itself describes the number of posts to jump over, the
(algebraic) sign indicates the direction. On positive numbers the player
jumps to the right, on negative numbers to the left.  

The number of posts is limited, thus it may happen to the player that
he jumps into the water. The always happens, when there not enough posts
in the direction the player jumps to.

**The challenge**
Attached you will find the file *"games.txt"*. Each line in it 
corresponds to the posts in a game round. The numbers on the posts are
represented separated by comma.

Write an object oriented Ruby program, that indicates line by line whether
the player will fall into the water or not. A console output is
sufficient.

The output might look like that:

```
The player stays dry.
The player gets wet!
The player gets wet!
The player stays dry.
The player stays dry.
``` 

Also give a short description of your solution including the space and
time complexity of it.