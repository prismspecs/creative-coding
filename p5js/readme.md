# Introduction to Creative Coding with P5.js

## Overview

+ What is P5.js?
	+ P5.js is a JavaScript library for artists and game designer. It's a community-driven open source project with good politics and a helpful community.

+ What will we learn?
	+ This short 2-hour workshop will introduce you to basic concepts in programming and interaction for the web. By the end of today's workshop, you will be able to draw shapes and colors to the screen using JavaScript, and have a better understanding of how programming works.

## Examples of p5.js projects

+ [Breakout](https://molleindustria.github.io/p5.play/examples/index.html?fileName=breakout.js)
+ [Snake](https://p5js.org/examples/interaction-snake-game.html)
+ [Fireworks](https://happycoding.io/examples/p5js/creating-classes/fireworks)
+ [3d graphics](https://p5js.org/examples/3d-geometries.html)

## Examples of JavaScript projects in other frameworks

+ [A-Frame](https://aframe.io/aframe/examples/)
+ [Three.js](https://threejs.org/examples/#webgl_animation_keyframes)

## Further watching/reading for self learning

+ The best resource for learning P5.js in my opinion is definitely the wonderful Dan Shiffman's YouTube channel [The Coding Train](https://www.youtube.com/channel/UCvjgXvBlbQiydffZU7m1_aw). I also like [Happy Coding](https://happycoding.io/tutorials/p5js/)


## Introduction

+ [Click here to load the P5.js web editor](https://editor.p5js.org)

+ [setup()](https://p5js.org/reference/#/p5/setup) and [draw()](https://p5js.org/reference/#/p5/draw)
	+ Remember, "void setup()" happens once when the program launches, and "void draw()" happens over and over again forever in a loop after that

+ [createCanvas()](https://p5js.org/reference/#/p5/createCanvas)
	+ Something to draw to!

+ [background()](https://p5js.org/reference/#/p5/background)
	+ Sets the background color of the sketch

+ [RGB Color](https://p5js.org/learn/color.html)

+ [Comments](https://p5js.org/examples/structure-comments-and-statements.html)

+ [fill()](https://p5js.org/reference/#/p5/fill)
	+ Sets the "fill" color of the next drawn shapes

+ [stroke()](https://p5js.org/reference/#/p5/stroke)
	+ Sets the outline color of the next drawn shapes

+ [noStroke()](https://p5js.org/reference/#/p5/noStroke)
	+ Tells the computer to *not* draw an outline for the next shapes

+ [width](https://p5js.org/reference/#/p5/width), [height](https://p5js.org/reference/#/p5/height)
	+ Variables that store the width and height of the canvas

+ [mouseX](https://p5js.org/reference/#/p5/mousex), [mouseY](https://p5js.org/reference/#/p5/mousey)
	+ Variables that store the mouse's X and Y position

+ [rect()](https://p5js.org/reference/#/p5/rect) and [rectMode()](https://p5js.org/reference/#/p5/rectMode)
	+ Draw a rectangle

+ [ellipse()](https://p5js.org/reference/#/p5/ellipse)
	+ Draw an ellipse

+ [random()](https://p5js.org/reference/#/p5/random)
	+ Generate a random number


## Example 1
```
function setup() {

  // the createCanvas function needs a
  // width and a height (in pixels)
  createCanvas(400, 400);

  // change the outline color
  //stroke(255, 255, 255);

  // remove outlines entirely
  noStroke();

}

function draw() {

  // set the background color in RGB
  // 0 -> 255 ... 0% -> 100%
  background(100, 20, 100);

  // fill the next shape red
  fill(255, 0, 0);

  // draw a rectangle
  rect(200, 200, 200, 200);

  // fill the second rectangle
  fill(0, 0, 255, 127);

  // draw another rectangle on top
  rect(150, 220, 100, 100);

}
```

## Example 2
```
function setup() {

  createCanvas(400, 400);

  // one number for grayscale
  background(0);

  //noStroke();

}

function draw() {

  // semi-transparent background
  background(0, 5);

  // semi-transparent outline
  stroke(0, 20);

  // random outline thickness!
  strokeWeight(random(20));

  // randomish color!
  fill(255,0,random(255));

  // draw a circle at the mouse's position
  ellipse(mouseX, mouseY, 40, 40);

  // draw a mirrored circle?
  ellipse(width-mouseX, mouseY, 40, 40);


}
```