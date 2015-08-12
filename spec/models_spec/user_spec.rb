require_relative '../spec_helper.rb'

describe User do
  let(:dan) {User.new(10, 2, 1990)}

  it 'can initialize a user' do
    expect(dan).to be_a(User)    
  end

  it 'birthday can have a month' do
    expect(dan.month).to eq(10)
  end

  it 'birthday can have a day' do
    expect(dan.day).to eq(2)
  end

  it 'birthday can have a year' do
    expect(dan.year).to eq(1990)
  end

  it 'can return a birthday trivia' do
    expect(open("http://numbersapi.com/10/2").read).to be_a(String) 
  end

  end

