// create a way to save text to a file
PrintWriter output;

// generate a new filename
String filename = month() + "-" + 
  day() + "-" + hour() + "-" + minute() + "-madlib.txt";

// Create a new file in the sketch directory
output = createWriter(filename); 

// create an array of strings
String[] nouns = { 
  "party", 
  "jacques wine delivery", 
  "Frau Roth", 
  "mushroom", 
  "temple"
};

// end in "ing"
String[] verbs = {
  "dance-ioking", 
  "cooking", 
  "brunching", 
  "sleeping"
};

String[] adjectives = {
  "taco-like", 
  "quiet", 
  "smelly", 
  "trippy", 
  "quarantined"
};

// randomly select some words
//println("there are" , nouns.length, "elements in the nouns array");

// select a random element from the nouns array
int n1 = int(random(nouns.length));
int a1 = int(random(adjectives.length));

String sentence1 = "There was a " + adjectives[a1] + 
" castle in the woods surrounded by " + nouns[n1];

println(sentence1);
output.println(sentence1);

int v1 = int(random(verbs.length));
a1 = int(random(adjectives.length));
n1 = int(random(nouns.length));

String sentence2 = "Horst was outside " + verbs[v1] + 
  " with a " + adjectives[a1] + " " + nouns[n1];
  
println(sentence2);
output.println(sentence2);

v1 = int(random(verbs.length));
n1 = int(random(nouns.length));

String sentence3 = "They began to argue about " + verbs[v1] + 
  " a " + nouns[n1];
  
println(sentence3);
output.println(sentence3);

v1 = int(random(verbs.length));
a1 = int(random(adjectives.length));
n1 = int(random(nouns.length));

String sentence4 = "In the end, a " + nouns[n1] + " came down from the " + 
  adjectives[a1] + " sky and " + verbs[v1] + " on top of his head.";
  
println(sentence4);
output.println(sentence4);

// finish the file
output.flush();
output.close();
