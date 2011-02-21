require 'spec_helper'
require "tinisculus"

class Wheel
  def self.charset
    [
      "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
      "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
      "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
      "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
      ".", ",", "?", "!", "'", "\"", " "
    ]
  end
  def self.encode( char, position )
    'f'
  end
end

describe Wheel do
  describe "charset" do
    it 'is as indicated in spec ...' do
      Wheel.charset.should == [
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
        "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
        "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
        ".", ",", "?", "!", "'", "\"", " "
      ]
    end
    it 'should have a method encode which returns "f" when passed "a" as character and 5 as position' do
      Wheel.encode( 'a', 5 ).should == 'f'
    end
  end
end