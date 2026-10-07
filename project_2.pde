String wearRing = "Yes";
String notWearRing = "No";
String takeLeftPath = "Left";
String takeRightPath = "Right";
String eavsedrop = "eavsedrop";


println("You wake up in a dark cave lit only by a shiny glint in the darkness");
println("A croacky voice calls out to you. Wealth, power, influence you can have it all, all you need to do is put on the ring");
println("A shiny ring floated from the darkness and fell on your palm");
String ringOption = Ask.forString("Will you put on the ring?");

if (ringOption.equalsIgnoreCase(wearRing)) {
  println("You accept it --- A sense of dread washes over you as you take a step out of the cave");
  println("The sudden contrast of the light of the forest startles you as you keep walking envolped by the thicket of the forest");
  println(" As you keep on walking you end up at a fork in the path of the forest, a left path or the right path");
  String pathOption = Ask.forString("Left or Right");

  // --- INNER FORK: LEFT PATH ---
  if (pathOption.equalsIgnoreCase(takeLeftPath)) {
    println("You go left --- As you keep walking you feel eyes peircing into your back, all the hairs on your neck stand straight up as you turn around.");
    println(" As you turn you see a huge serpent sliding towards you, the ring calls to you, USEEEE MEEEE");



    println("Used ring --- As you used the ring a sense unkown darkness washes over you as the serpent vanishes");
    println("you keep on walking through the forest, your head pounding from the last use of the ring");
    println("Because of your dazed state you end up stumbling into an orcs cave");
    println("you look up at the gaint orcs and you look down at your ring, knowing the huge consiquence of the last use the decision weighs heavy on your mind");


    println("Used ring a second time --- All the orcs vanish, your mind starts to get foggy and you pass out");
    println("As the rings power etches across your mind you fall into a sleep that will last an eternity");
    println("You Lose");
  }
  // --- INNER FORK: RIGHT PATH ---
  else if (pathOption.equalsIgnoreCase(takeRightPath)) {
    println("You go right --- As you keep on walking you spot a shed in the distance");
    println("As you take a few steps towards the shed you notice lamp light shining from inside acommpanied by a muffled voice");
    println("You don't know who to trust anymore, 2 thoughts go through your head, knock or eavsedrop.");

    // Moved inside the Right Path block where it belongs!
    String shedOption = Ask.forString("will you put eavsedrop or knock?");
    if (shedOption.equalsIgnoreCase(eavsedrop)) {
      println("You are eavsedropping --- The muffled noises start to turn into words");
      println("You hear the figure inside start to talk, I need the ring or my village will kill me. How stupid could I be losing 1 of the 10 evil rings");
      println("you step into the shed supprised that the ring belonged to his village, startled the supprised stranger hits you with a magic blast");
      println("You Lose.");
    } else {
      println("You decide not to eavesdrop and knock firmly on the door...");
      println("A strange figure awsners the door");
      println("As your eyes adjust to the lamplight of the shed you see it's a fellow dwarf");
      println("He welcomes you in but you can sense a light air of suspiscion coming from him");
      println("you both sit down for tea and start conversation");
      println("After a few minutes of talking he mentions a ring");
      println("He asks you if you have seen a ring anywhere in the forest");

      String ringAnswer = Ask.forString("will you tell the truth or lie?");
      // 2. Add the new condition blocks
      if (ringAnswer.equalsIgnoreCase("Yes")) {
        println("You tell him the truth before you can even gauge his reaction he reaches towards you and pulls you in close");
        println("WHERE DID YOU SEE IT he shouts, you start to awsner as he follows your eye to your index finger to where the ring lay");
        println("You tell him of the trials you have faced and that you used the rings power to save yourself");
        println("He muttered under his breath, that must mean he only used it once, it is settled then");
        println("He takes the ring of your finger and asks you your vilage name, you tell him and he escorts you there");
        println("You win!");
      } else if (ringAnswer.equalsIgnoreCase("No")) {
        println("You lie and say you haven't seen it)");
        println("His eyes quickly scanned the room till it finally laid on you");
        println("He begins to come closer, your heart starts beating rapidly");
        println("He takes your hand with the ring on it, be honest this is really important before he could even get out his next sentence his eyes dropped to the ring on your index finger");
        println("Before you can even get out a word he blasts you with magic");
        println("You Lose.");
      }
      else {
        println("Invalid choice");
      }
    }
  }
  // --- INVALID PATH CHOICE ---
  else {
    println("That is not a valid path choice");
  }


  // --- MAIN FORK: REJECT THE RING ---
} else if (ringOption.equalsIgnoreCase(notWearRing)) {
  println("You regect it --- You Remeber the old dwarven tale of the 10 rings, the 10 evil rings that take control of their users overtime, a sense of relief washes over you as you take a step out of the cave. ");
  println("You keep walking through the dangerous forest");
  println("You heard about the dangerous monsters in this forest, and you hope that you do not run into one");
  println("Just as you were about to finish that thought a orc jumped out of the trees, your only choice is to fight the beast");
  println("Your magic spell is based on a luck system, if you roll 2 or higher you defeat the beast");
  int fight = int(random(1, 6));
  println(fight);
  if (fight >= 2) {
    println("Your magic spell defeated the beast, as you continue on your journey you see the light of your vilage up ahead");
    println("But the only way to get in though is through the gate that only opens with the right number based on which of the 10 rings it holds");
    int magicDoor = int(random(1, 11));
    int magicDoorNumber = Ask.forInt("Which of the 10 rings will you pick?");
    if (magicDoorNumber == magicDoor) {
      println("You guess the right number, the door let's you through");
    } else {
      println("The door does not let you in");
    }
  } else {
    println("You were defeated by the monster, you lose.");
  }
}
// --- MAIN FORK: INVALID INITIAL INPUT ---
else {
  println("That is not a valid response.");
}
