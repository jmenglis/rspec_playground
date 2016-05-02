require 'json'
require './Movie'
require 'rainbow'
require 'httparty'
require 'rspec'

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end
  it "should be Top Gun" do
    @tg = Movie.new.to_hash
    @tg["Title"].should == "Top Gun"
  end
  it "should be 1986" do
    @tg = Movie.new.to_hash
    @tg["Year"].should == "1986"
  end
  it "should be PG" do
    @tg = Movie.new.to_hash
    @tg["Rated"].should == "PG"
  end
end
