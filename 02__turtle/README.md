# Turtle

Draw some graphics with a turtle.
For example draw a rectangle, a square, a triangle or a star.
Can you draw some more complex shapes?

## Variables

This accepts two variables

* SPEED: The drawing speed of the turtle between 0 and 10 (default: 0), where 0 is fast and 10 is slow.
* SCREEN: Show the screen after the test. Otherwise the result is just logged and can be checked in the `html` outputs.

For example you could run
```
robot --variable SPEED:5 --variable SCREEN:True turtle.robot
```

## Why?

This is an example of using a python library with robot without any modification to the library.
Any python library can be a test library for robot.