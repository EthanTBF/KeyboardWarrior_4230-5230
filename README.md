# Keyboard Warriors

**Team Name:** Dragons  
**Names:** Amman Kamili, Ethan-Bradley-Foo, Nathan Pereira, Hayes Bridges

---

## How to Play
* Watch out for any incoming enemies
* In order to defeat enemies, type out the designated words
* The game will automatically highlight which enemies you must type (oldest spawned enemy)
* By killing enemies, you gain more XP which you can use to evolve your keys.
* Type “Firewall” when the firewall powerup is visible to increase health.
* Survive as long as you can to beat the high score.

---

## Cheats Implemented
To activate click `~`, while in the menu you can repeatedly press the cheat code to activate them.
* Instant Evolution
* Increase HP by 50 points
* Increase Score by 1000 points
* Decrease Game Speed
* Increase Game Speed
* Unpause and Exit Cheat Menu. Clicking the `~` button also exits and unpauses the cheat menu.

---

## How theme was implemented
The goal of the game is to last as long as you can while typing out various words to defeat the enemies. Players can just type out the words plainly but the game speeds up over time making this progressively difficult. The theme was “evolution” and we implemented this genre by creating multiple different upgrades that you can use progressively to make playing the game easier. For instance, one of the upgrades is the “explosive key” which provides a faster way to kill enemies. We also have the “key to a good defense” which helps you better block enemies.

---

## Graduate requirements fulfilled: Particle Effects, Pathing, "*Save Files*".

### Particle Effects
When an upgraded key affects an enemy, a corresponding particle effect is displayed as feedback for the player.
* **Ice:** Slow effect; Blue pixels are emitted.
* **Dance Key Dance:** Stun effect; Colorful stars are emitted.
* **Explosive:** A bomb-like explosion effect is emitted.

### Pathing
A 'firewall' heal powerup follows a path across the screen. This powerup can be claimed by typing the word 'FIREWALL'. The player must be quick as if an enemy runs into the powerup it will be destroyed. The powerup spawns off screen to the left and follows the path zig-zagging across the screen to the right.

### "*Save Files*" (File-Saving)
Players can submit their scores after losing, with their initials, to be saved in a JSON and displayed on an arcade-style leaderboard viewable on the lose-screen.

### Shader used: bktGlitch shader
* When enemies are hit (from typing correct letters), they will ‘glitch’ as feedback to the player.
* When the player drops to 70hp and 30hp an intensifying glitch effect will cover the game until heals above said thresholds.
