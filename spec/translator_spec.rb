require "./lib/translator"

RSpec.describe "Translator" do

  it "can determine if first character is a vowel" do
    expect(Translator.prefix_is_vowel?('banana')).to be_falsy
    expect(Translator.prefix_is_vowel?('apple')).to be_truthy
  end

  it "can get the first consonant characters" do
    expect(Translator.get_consonant_prefix('banana')).to eq('b')
    expect(Translator.get_consonant_prefix('store')).to eq('st')
  end

  it "can convert an english word to a pig latin word" do
    # "omelet" = "omeletyay"
    word1 = Translator.convert_to_pig_latin('omelet')
    expect(word1).to eq('omeletyay')
    # "banana" = "ananabay"
    word2 = Translator.convert_to_pig_latin('banana')
    expect(word2).to eq('ananabay')
    # "store"= "orestay"
    word3 = Translator.convert_to_pig_latin('store')
    expect(word3).to eq('orestay')
  end

  it "can convert an english sentence to a pig latin sentence" do
    sentence = Translator.convert_to_pig_latin('the quick brown fox jumps over the lazy dog')
    expect(sentence).to eq('ethay uickqay ownbray oxfay umpsjay overyay ethay azylay ogday')
  end

end
