# Pig Latin Translator

Things have been getting strange over at [Manor Farm](https://en.wikipedia.org/wiki/Animal_Farm).  Mr. Jones has been hearing strange whispers of *giberish* coming from the barn where the farm animals reside.  Unbeknownst to him, the farm animals are crafting a special language so that the farmers cannot understand their subvertive scheme.  Snowball, having some experience developing in Ruby, suspects that a program can be created to translate their work into [Pig Latin](https://en.wikipedia.org/wiki/Pig_Latin) - ensuring the humans will not catch on to their cunning plan.

This is your task, comrade.

![animal farm](https://media1.tenor.com/images/14b62a67bb9475f7c4ec147439102faa/tenor.gif?itemid=19257616)


## Initialization

Run the following command from within the project directory:
```bash
bin/setup
```
This will install the necessary dependencies.

### Tasks

First create a `Translator` class in `lib/translator.rb`.

#### Measure Prefixes

From the [Wikipedia](https://en.wikipedia.org/wiki/Pig_Latin) article, it should be obvious that step-one revolves around determining whether a word begins with a vowel or a consonant.  The class method `self.prefix_is_vowel?()` should recieve a word (`string`) and return a `boolean` value.

Once we know whether the prefix is a vowel or consonant, we must get the prefixing characters so that we may append them to the end of the word.  `self.get_consonant_prefix()` should return a string of prefixing consonants until a vowel is encountered (`'sq' in 'squealer'`).

#### Translate A Word

Now that we have layed the ground work, we can focus on translating a word using `self.convert_to_pig_latin()`.  This method recieves a `string` as its argument and should return a translated string as its output (`'banana' = 'ananabay'`).

#### Thinking Bigger

Now that a single word can be translated, let's think bigger.  Ideally, we should be able to pass in **multple words** for translation.  Let's re-purpose `self.convert_to_pig_latin()` to accept multiple words rather than just one.  It should then return the entire string of words in Pig Latin.

#### Beast of England (Bonus)

"But what about our revolutionary song?!" the sheep exclaim.  Fear not, Snowball was expecting this.  If we hope to unite the farm animals accross England, we must ensure that we can translate this work.  Comrade, it is up to you to translate [Beasts of England](https://en.wikipedia.org/wiki/Anthems_in_Animal_Farm#.22Beasts_of_England.22) into Pig Latin.  This will require some modifications to `self.convert_to_pig_latin()` and don't forget about those pesky punctuation and capitalizations. You should also write a test to verify this translation inside of `spec/translator_spec.rb`. We wouldn't want another mix-up like the Battle of the Cowshed...

## Testing

To run tests, run the following command from within the project directory:
```
rspec
```

With a suite of passing tests, we can now be confident that the farm animals of English will have their revolution.  Napoleon will reward you handsomely.

## Trying It Out in Real Time

First, run the following command from within your project directory:

```bash
bin/start
```

We are now inside [IRB](https://ruby-doc.org/docs/ruby-doc-bundle/ProgrammingRuby/book/irb.html), an interactive Ruby shell for your terminal.  Next we will import our `Translator` and afterwards can interact with it normally using the Ruby language:

```ruby
# import class
require './lib/translator.rb' # => true

# call function
Translator.convert_to_pig_latin('four legs good two legs better') # => 'ourfay egslay oodgay otway egslay etterbay'
```
