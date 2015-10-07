require 'journey'

describe Journey do

  let(:michael_card) { double(:card)}

  it 'should respond to calculate fare method' do
    expect(subject).to respond_to(:calculate_fare).with(2).arguments
  end

  it 'should return £2.50 for a single zone A journey' do
    expect(subject.calculate_fare("Asterisk", "Aldgate")).to eq(2.50)
  end

  it 'should return £3 for a single journey that goes to zone B' do
    expect(subject.calculate_fare("Asterisk", "Barbican")).to eq(3)
  end

  it 'should return £3 for a single zone B journey' do
    expect(subject.calculate_fare("Barbican", "Balham")).to eq(3)
  end

  it 'should detract £2.50 for a single zone A journey' do
    expect(michael_card).to receive(:charge).with(2.5)
    subject.charge_to("Asterisk", "Aldgate", michael_card)
  end

  it 'should detract £3 for a single journey that goes to zone B' do
    expect(michael_card).to receive(:charge).with(3)
    subject.charge_to("Asterisk", "Barbican", michael_card)
  end

  it 'should detract £3 for a single zone B journey' do
    expect(michael_card).to receive(:charge).with(3)
    subject.charge_to("Barbican", "Balham", michael_card)
  end

end
