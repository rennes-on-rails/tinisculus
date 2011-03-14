require 'spec_helper'
require "tinisculus"

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
  end
  
  describe "encode" do
    it 'should have a method encode which returns "f" when passed "a" as character and 5 as position' do
      Wheel.encode( 'a', 5 ).should == 'f'
    end
    it 'should have a method encode which returns "h" when passed "c" as character and 5 as position' do
      Wheel.encode( 'c', 5 ).should == 'h'
    end
    it 'should have a method findindex which returns 0 when pass "0"' do
      Wheel.findindex( "0").should == 0
    end
    it 'should have a method findindex which returns 10 when pass "A"' do
      Wheel.findindex( "A").should == 10
    end
    
    it 'cycles in charset when position overflows' do
      Wheel.encode( ' ', 1 ).should == '0'
    end
    
    it "encodes a message : 'aa'" do
      Wheel.encode('aa', 0).should == 'aa'
    end
  end
  
  describe "Mark_II" do
    context "with position [0, 1]" do
      it "encodes 'a' in Y" do
        Mark_II.encode('a', 0, 1).should == 'Y'
      end
    end
  end
  
end