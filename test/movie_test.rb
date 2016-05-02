require 'json'
require './Movie'
require 'rainbow'
require 'httparty'
require 'rspec'

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end
end
