<?php
$allqts = array
    ("The Black Knight Always Triumphs!", 
        "Monty Python",
    "Liberty, when it begins to take root, is a plant of rapid growth.", 
        "George Washington",
    "Never argue with an idiot. They drag you down to their level then beat you with experience",
        "Dilbert",
    "The Answer is 42. What is the question?",
        "Hitchikers Guide to the Galaxy",
    "Anyone who has never made a mistake has never tried anything new",
        "Albert Einstein",
    "Progress doesn't come from early risers, progress is made by lazy men looking for easier ways to do things.",
        "Lazarus Long <font size=-2>(Time Enough for Love by Robert A. Heinlein)</font>",
    "The early bird gets the worm, but the second mouse gets the cheese",
        "Anonymous",
    "Subjugating the enemy's army without fighting is the true pinnacle of excellence",
        "Sun-tzu, The Art of War",
    "Work as though you were to live 100 years; pray as if you were to die tomorrow",
        "Benjamin Franklin",
    "The world is a stage, but the play is badly cast",
        "Oscar Wilde",
    "Truth is generally the best vindication against slander.",
        "Abraham Lincoln",
    "...mercy to the guilty is cruelty to the innocent...",
        "Adam Smith",
    "Democracy is the worst form of government except for all the others",
        "Winston Churchill",
    "You can only know the highest peaks if you have experianced the lowest valley's",
            "Richard Nixon",
    "They dress the wound of my people as though it were not serious. 'Peace, peace,' they say, when there is no peace.",
        "Jeremiah 6:14",
    "Never Stop Exploring<sup>tm</sup>",
        "The North Face"
        );

// Gets the Total number of Items in the array
//  Divides by 2 because there is a Quote followed by an Author
$totalqts = (count($allqts)/2);

// Subtracted 1 from the total because '0' is not accounted for otherwise
$nmbr = (rand(0,($totalqts-1)));
$nmbr = $nmbr*2;

//$nmbr = 18;

$quote = $allqts[$nmbr];
         $nmbr = $nmbr+1;
$author = $allqts[$nmbr];

echo '<em>'.$quote.'<br/><span style="text-align: right">- '.$author.'</span></em>';

?>