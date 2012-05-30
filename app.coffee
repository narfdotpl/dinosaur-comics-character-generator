{floor, random} = Math


# pick random element from the list
pick = (xs) ->
    xs[floor(random() * xs.length)]


# generate the name alone
generateName = ->
    pick(['meat', 'robot', 'urban', 'silver', 'animal', 'sex', 'fruit',
          'adult', 'child', 'famed', 'licensed']) +
    ' ' +
    pick(['stylist', 'engineer', 'astronaut', 'ecologist', 'planner', 'model',
          'smith', 'dancer', 'producer', 'lawyer', 'loner', 'priest',
          'criminal', 'prodigy', 'terrorist', 'dinosaur', 'clone', 'athlete',
          'head of state'])


# generate the full text
generateText = ->
    'Your character is a(n) ' +
    generateName() +
    ' who wants to ' +
    pick(['create', 'destroy', 'get over', 'bewitch', 'unmask', 'sex up',
          'steal', 'hug', 'give birth to', 'team up with', 'profit from']) +
    ' a(n) ' +
    pick(['meaty', 'famous', 'infamous', 'wide-eyed', 'sullen', 'attractive',
          'competing', 'powerful', 'space', 'hairy', 'social']) +
    ' ' +
    pick(['teen', 'doctor', 'ghost', 'artist', 'surgeon', 'corsetiere',
          'superhero', 'cartoonist', 'spouse', 'dog', 'religion',
          'medical health professional', 'senior', 'telepath', 'jerk',
          'family']) +
    ' but is blocked in this desire by a(n) ' +
    generateName() +
    '.'


# connect to the DOM
$ ->
    # get HTML elements
    $placeholder = $('#js-generated')
    $button = $('#js-button')

    # generate character after clicking a button
    $button.click ->
        $placeholder.text(generateText())

    # click it for the first time
    $button.click()
