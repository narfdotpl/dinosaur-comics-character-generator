(function() {
  var floor, generateName, generateText, pick, random;

  floor = Math.floor, random = Math.random;

  pick = function(xs) {
    return xs[floor(random() * xs.length)];
  };

  generateName = function() {
    return pick(['meat', 'robot', 'urban', 'silver', 'animal', 'sex', 'fruit', 'adult', 'child', 'famed', 'licensed']) + ' ' + pick(['stylist', 'engineer', 'astronaut', 'ecologist', 'planner', 'model', 'smith', 'dancer', 'producer', 'lawyer', 'loner', 'priest', 'criminal', 'prodigy', 'terrorist', 'dinosaur', 'clone', 'athlete', 'head of state']);
  };

  generateText = function() {
    return 'Your character is a(n) ' + generateName() + ' who wants to ' + pick(['create', 'destroy', 'get over', 'bewitch', 'unmask', 'sex up', 'steal', 'hug', 'give birth to', 'team up with', 'profit from']) + ' a(n) ' + pick(['meaty', 'famous', 'infamous', 'wide-eyed', 'sullen', 'attractive', 'competing', 'powerful', 'space', 'hairy', 'social']) + ' ' + pick(['teen', 'doctor', 'ghost', 'artist', 'surgeon', 'corsetiere', 'superhero', 'cartoonist', 'spouse', 'dog', 'religion', 'medical health professional', 'senior', 'telepath', 'jerk', 'family']) + ' but is blocked in this desire by a(n) ' + generateName() + '.';
  };

  $(function() {
    var $button, $placeholder;
    $placeholder = $('#js-generated');
    $button = $('#js-button');
    $button.click(function() {
      return $placeholder.text(generateText());
    });
    return $button.click();
  });

}).call(this);
