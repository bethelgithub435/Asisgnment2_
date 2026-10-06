int points = 0;
String morale = "Medium";

//OPENING
println("=== ARSENAL TITLE RACE ADVENTURE ===");
println("Arsenal enters the season with one main goal: winning the Premier League.");
println("Saka steps onto the pitch for Matchday 1.\n");

int tactics = Ask.forInt("Decision 1: How should Arsenal set their tactics for the season?\n1 = Option A (All-Out Attack)\n2 = Option B (Cautious Defense)");

if (tactics == 1) {
   println("\nYou selected All-Out Attack! Fast and aggressive football.");
int injuryChoice = Ask.forInt("\nConflict 1 (Mid-Season Injury): Saka suffers a minor muscle strain right before a massive fixture.\n1 = Play Through Pain\n2 = Rest on the Bench");

 if (injuryChoice == 1) {
points += 80;
morale = "High";
println("\nResult: Saka plays through the injury to inspire the team! Arsenal wins! (+80 Points, Morale: High)");
} else if (injuryChoice == 2) {
points += 70;
morale = "Medium";
println("\nResult: Saka sits out to recover properly. Arsenal draws 1–1. (+70 Points, Morale: Medium)");
} else {
points += 70;
println("\nInvalid input. Defaulted to resting Saka. (+70 Points)");
}

} else if (tactics == 2) {
println("\nYou selected Cautious Defense! Defensive and structured football.");
int droughtChoice = Ask.forInt("\nConflict 1 (Goal Drought): Arsenal are drawing too many games and dropping behind City.\n1 = Switch Tactics mid-game to All-Out Attack\n2 = Stick to the Plan");

if (droughtChoice == 1) {
points += 75;
morale = "Medium";
println("\nResult: High-risk gamble pays off! Arsenal wins! (+75 Points, Morale: Medium)");
} else if (droughtChoice == 2) {
points += 65;
morale = "Low";
println("\nResult: Boring 0–0 finish. (+65 Points, Morale: Low)");
} else {
points += 65;
println("\nInvalid input. Defaulted to sticking to the plan. (+65 Points)");
}

} else {
println("\nInvalid choice. Defaulting to Cautious Defense.");
points += 65;
}

//CONFLICT 2: THE FINAL SHOWDOWN
println("\n=== THE FINAL SHOWDOWN: ARSENAL VS MANCHESTER CITY ===");
println("It's the 89th minute at the Emirates Stadium. The score is tied 1–1.");
println("Saka receives the ball on the right wing with space ahead.");

int showdown = Ask.forInt("\nWhat will Saka do?\n1 = Shoot (Cut inside on left foot and bend a shot toward top corner)\n2 = Pass (Draw 2 defenders and pass across the box to Kai Havertz)\n3 = Waste Time (Run to corner flag to hold the ball)");

if (showdown == 1) {
points += 5;
println("\nOutcome: Saka bends it top bins! GOAL! Arsenal gains +5 Points!");
} else if (showdown == 2) {
points += 5;
morale = "High";
println("\nOutcome: Saka passes to Havertz who smashes it home! GOAL! (+5 Points, Morale boosted to High!)");
} else if (showdown == 3) {
points += 1;
println("\nOutcome: Saka holds the ball in the corner. Safe play, match ends in a draw. (+1 Point)");
} else {
points += 1;
println("\nOutcome: Indecision leads to a draw. (+1 Point)");
        }
// ENDING
println("\n================ SEASON RESULTS ================");
println("Final Points: " + points + " | Final Morale: " + morale);

if (points >= 85) {
println("\nENDING 1: UNDISPUTED PREMIER LEAGUE CHAMPIONS!");
println("Arsenal win the title by blowing Man City away in the table! Saka lifts the trophy as fans celebrate!");
} else if (points >= 70) {
println("\nENDING 2: HEARTBREAK ON FINAL DAY");
println("Arsenal beat City, but dropped crucial points earlier in the season. City win the league by 1 point on the final day, leaving Arsenal in 2nd place.");
} else {
println("\nENDING 3: SEASON COLLAPSE");
println("Overly cautious tactics caused Arsenal's title charge to fall apart. Manchester City cruise to another league title comfortably.");
}
