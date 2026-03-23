# README.md

# Keyboard Warriors
**Team Name:** Dragons  
**Developers:** Amman Kamili, Ethan-Bradley-Foo, Nathan Pereira, Hayes Bridges

---

## Gameplay Overview
Keyboard Warriors is a survival typing game where players must defend against incoming enemies by accurately typing designated words. 

* **Combat Mechanics:** Players must type words associated with enemies to defeat them. The game automatically highlights the oldest spawned enemy to assist with targeting priority.
* **Progression System:** Defeating enemies grants XP, which is used to evolve keys and unlock advanced capabilities.
* **Health Management:** The "Firewall" powerup allows players to restore health by typing the command when it appears on screen.
* **Objective:** Survive the increasing difficulty curve to achieve the highest possible score.

---

## Evolution Theme Implementation
The core theme of "Evolution" is integrated through a progressive upgrade system designed to counter the game's natural speed scaling. As the pace becomes more difficult, players must evolve their keyboard abilities:
* **Explosive Key:** Enhances offensive capabilities by providing a faster method for enemy elimination.
* **Key to a Good Defense:** Improves defensive utility to better block incoming threats.
* **Strategic Growth:** Players are required to utilize multiple upgrades progressively to maintain pace with the game's acceleration.

---

## Graduate Requirements and Technical Specifications

### Particle Effects
Custom particle systems provide visual feedback for upgraded key effects:
* **Ice (Slow Effect):** Emits blue pixel bursts.
* **Dance Key Dance (Stun Effect):** Emits colorful star patterns.
* **Explosive:** Generates a bomb-like explosion effect upon impact.

### Pathing
Advanced pathing logic has been implemented to govern enemy movement and engagement patterns throughout the play area.

### Shader Implementation (bktGlitch)
The **bktGlitch** shader is utilized for both tactical feedback and environmental storytelling:
* **Hit Registration:** Enemies momentarily glitch when the player types the correct letters.
* **Status Indicators:** When player health drops below **70 HP** and **30 HP**, an intensifying glitch effect covers the screen. This effect persists as a visual warning until health is restored above these thresholds.

---

## Development & Cheat Menu
The cheat menu is accessible by pressing the `~` key. Within this menu, the following functions can be activated:
* **Instant Evolution**
* **Increase HP:** Adds 50 points to current health.
* **Increase Score:** Adds 1000 points to current score.
* **Game Speed Control:** Incremental increases or decreases to the global game speed.
* **Exit/Unpause:** Re-pressing `~` or selecting the exit option returns the user to active gameplay.
