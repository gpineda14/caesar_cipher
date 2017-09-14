require './caesar_cipher.rb'

describe "#caesar_cipher" do
  it "should print '' when input is empty string" do
    expect(caesar_cipher("", 5)).to eql("")
  end

  it "should return the same string when shift is 0" do
    expect(caesar_cipher("What a string!", 0)).to eql("What a string!")
  end

  it "should take a string and a shift factor" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "should preserve capitalization" do
    expect(caesar_cipher("LOOK A STRING!", 2)).to eql("NQQM C UVTKPI!")
  end

  it "should only translate alphabetic characters" do
    expect(caesar_cipher("535353", 2)).to eql("535353")
  end

  it "should shift letters to the left when key is negative" do
    expect(caesar_cipher("lets keep on trucking", -3)).to eql("ibqp hbbm lk qorzhfkd")
  end
  
end
