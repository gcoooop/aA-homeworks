function titleize(names, callback) {
  const titleized = names.map(function(name) {
    return `Mx. ${name} Jingleheimer Schmidt`;
  });
  titleized.forEach(function(name){
    callback(name);
  });
}

function printCallback(name) {
  console.log(name);
}

// const names = ["Rock", "Cheet", "Book"];
// titleize(names, printCallback);


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  return `${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`;
};

Elephant.prototype.grow = function() {
  this.height += 12;
  return this.height;
};

Elephant.prototype.addTrick = function(trick) {
  return this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  const randomIndex = Math.floor(Math.random() * this.tricks.length);
  return `${this.name} is ${this.tricks[randomIndex]}`;
};

const grongus = new Elephant("Dr. Grongus", 120, ["befriending a mouse", "forgetting stuff"]);

// console.log(grongus.trumpet());

// console.log(grongus.grow());

// grongus.addTrick("eating a shoe");
// console.log(grongus.tricks);

// console.log(grongus.play());

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

function paradeHelper(elephant) {
  console.log(`${elephant.name} is trotting by!`)
};

herd.forEach(function(elephant) {
  paradeHelper(elephant);
});