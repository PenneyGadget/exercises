require 'pry'

class FoodChain
  VERSION = 2

  ANIMALS = %w(fly spider bird cat dog goat cow horse)

  VERSES = [  "I don't know why she swallowed the fly. Perhaps she'll die.\n\n",
              "It wriggled and jiggled and tickled inside her.\n",
              "How absurd to swallow a bird!\n",
              "Imagine that, to swallow a cat!\n",
              "What a hog, to swallow a dog!\n",
              "Just opened her throat and swallowed a goat!\n",
              "I don't know how she swallowed a cow!\n",
              "I know an old lady who swallowed a horse.\nShe's dead, of course!\n"
            ]


  def self.song
    song = []
    ANIMALS.length.times do |num|
      song << swallowed(ANIMALS[num])
      song << VERSES[num]
      if ANIMALS[num] != "fly"
        song << food_chain(ANIMALS[num], ANIMALS[num - 1])
        song << VERSES[0]
      end
    end
    binding.pry
    song
    # "I know an old lady who swallowed a fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a spider.\n" +
    # "It wriggled and jiggled and tickled inside her.\n" +
    # "She swallowed the spider to catch the fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a bird.\n" +
    # "How absurd to swallow a bird!\n" +
    # "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" +
    # "She swallowed the spider to catch the fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a cat.\n" +
    # "Imagine that, to swallow a cat!\n" +
    # "She swallowed the cat to catch the bird.\n" +
    # "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" +
    # "She swallowed the spider to catch the fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a dog.\n" +
    # "What a hog, to swallow a dog!\n" +
    # "She swallowed the dog to catch the cat.\n" +
    # "She swallowed the cat to catch the bird.\n" +
    # "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" +
    # "She swallowed the spider to catch the fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a goat.\n" +
    # "Just opened her throat and swallowed a goat!\n" +
    # "She swallowed the goat to catch the dog.\n" +
    # "She swallowed the dog to catch the cat.\n" +
    # "She swallowed the cat to catch the bird.\n" +
    # "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" +
    # "She swallowed the spider to catch the fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a cow.\n" +
    # "I don't know how she swallowed a cow!\n" +
    # "She swallowed the cow to catch the goat.\n" +
    # "She swallowed the goat to catch the dog.\n" +
    # "She swallowed the dog to catch the cat.\n" +
    # "She swallowed the cat to catch the bird.\n" +
    # "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" +
    # "She swallowed the spider to catch the fly.\n" +
    # "I don't know why she swallowed the fly. Perhaps she'll die.\n\n" +
    #
    # "I know an old lady who swallowed a horse.\nShe's dead, of course!\n"
  end

  def self.swallowed(animal)
    "I know an old lady who swallowed a #{animal}.\n"
  end

  def self.food_chain(predator, prey)
    current = ANIMALS.index(predator)
    if prey == "spider"
      "She swallowed the #{predator} to catch the #{prey} that wriggled and jiggled and tickled inside her.\n"
    else
      "She swallowed the #{predator} to catch the #{prey}.\n"
    end
  end

end
