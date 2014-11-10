require "./lib/roman_numbers"

describe RomanNumbers do

  it "returns I for one" do
    expect(subject.translate(1)).to be == 'I'
  end

  it "returns V for five" do
    expect(subject.translate(5)).to be == 'V'
  end

  it "returns IV for four" do
    expect(subject.translate(4)).to be == 'IV'
  end

  it "returns II for two" do
    expect(subject.translate(2)).to be == 'II'
  end

  it "returns XX for 20" do
    expect(subject.translate(20)).to be == 'XX'
  end

  it "returns XXI for 21" do
    expect(subject.translate(21)).to be == 'XXI'
  end

  it "returns CMXXI for 921" do
    expect(subject.translate(921)).to be == 'CMXXI'
  end

end
