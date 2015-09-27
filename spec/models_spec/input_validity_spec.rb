require_relative '../spec_helper.rb'

describe InputValidity do  

  it 'can initialize a user' do
    dan = User.new(10, 2, 1990)
    expect(dan).to be_a(User)    
  end

  it 'birthday can have a month' do
    dan = User.new(10, 2, 1990)
    expect(dan.month).to eq(10)
  end

  it 'birthday can have a day' do
    dan = User.new(10, 2, 1990)
    expect(dan.day).to eq(2)
  end

  it 'birthday can have a year' do
    dan = User.new(10, 2, 1990)
    expect(dan.year).to eq(1990)
  end

  it 'can return a birthday trivia' do
    dan = User.new(10, 2, 1990)
    expect(open("http://numbersapi.com/10/2").read).to be_a(String) 
  end

end

