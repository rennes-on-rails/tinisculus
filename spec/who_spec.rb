require 'spec_helper'

class Foo
  attr_accessor :destroyed
  def destroy
    raise if destroyed
    destroyed=true
  end
end

describe "db" do
  class << self
    def db(symbol, &block)
      attr_accessor symbol
      before(:all) {send("#{symbol}=", instance_eval(&block))}
      after(:all) {send(symbol).tap {|o| o.destroy}}
    end
  end
  
  
  describe "once" do
    db(:foo) {Foo.new}
    
    it "should have a foo" do
      foo.should equal foo
    end
    it "should have a foo" do
      foo.should equal foo
    end
  end
  
end