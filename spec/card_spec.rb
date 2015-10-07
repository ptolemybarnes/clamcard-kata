require 'card'

describe Card do

  it 'starts with a daily cap of £7' do
    expect(subject.daily_cap).to eq 700
  end

  it 'starts off with no money spent' do
    expect(subject.money_spent).to eq 0
  end

  it 'increases daily cap when used in zone B' do
    subject.increase_cap
    expect(subject.daily_cap).to eq 800
  end

  it 'responds to charge' do
    expect(subject).to respond_to(:charge).with(1).argument
  end

  it 'updates the money spent when charged' do
    subject.charge(250)
    expect(subject.money_spent).to eq 250
  end
end