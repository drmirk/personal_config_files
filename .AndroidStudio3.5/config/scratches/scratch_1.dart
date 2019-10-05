


// Set a random destination. If any character can be initialized
// on that location, then any character can move/go there too.
Offset targetLocation;

void setTargetLocation() {
  double x, y;
  x = rand.nextDouble() * (scrnSize.width - (tileSize * 2));
  y = rand.nextDouble() * (scrnSize.height - (tileSize * 2));
  targetLocation = Offset(x, y);
}

------------------------------------------------------------------

// Specify character speed in which the character would go from
// one place to another place in a single second.
double speed = 2.0;

------------------------------------------------------------------

// Find the step size of the character. How much should the
// character move in each update. So, if speed is how much a
// character can move in one second, then multiply it with time
// delta, which gives us the amount of distance the character
// should have moved in each update.
double stepSize = speed * t;

------------------------------------------------------------------


// Set a new offset, which represents the offset from the
// character's current location to it's target location.
// Simply how far it still needs to go. If the fly is
// currently at 50, 50, and the target location is 120, 70,
// this distant would have a value of (120 - 50), (70 - 50)
// or 70, 20. So saying, go 70 point left, 20 point down.
Offset distant;
distant = targetLocation - Offset(charRect.left, charRect.top);

------------------------------------------------------------------

// Offset.distance returns magnitude or size or extent or dimension
// of an offset. So, if distance is high, magnitude is high. As the
// character comes closer to target location, magnitude becomes
// smaller. So, check if next step would takes the character to
// very near of target location. If true, means fly is far away
// from the target location, so proceed with moving the fly.
if (stepSize < distant.distance) {
// add current offset with step size to find next step.
// move to next step.
Offset stepToTarget;
stepToTarget = Offset.fromDirection(distant.direction, stepSize);
charRect = charRect.shift(stepToTarget);

// if false, means fly is very near the target location and we can
// assume it reached its goal. So, just shift the fly to the target
// using the value in distant. Then give char a new target.
} else {
charRect = charRect.shift(distant);
setTargetLocation();
}
------------------------------------------------------------------