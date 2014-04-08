require 'spec_helper'
require '13.rb'

describe Summation do
  subject(:s) { Summation.new }

  it "can add 1 + 1" do
    s.sum("1", "1").should == "2"
  end

  it "can add 1 + 2" do
    s.sum("1", "2").should == "3"
  end

  it "can add 1 + 12" do
    s.sum("1", "12").should == "13"
  end

  it "can add 12 + 19" do
    s.sum("12", "19").should == "31"
  end

  it "can add 122 + 19" do
    s.sum("122", "19").should == "141"
  end

  it "can add 10022 + 109" do
    s.sum("10022", "109").should == "10131"
  end

  it "can add 37107287533902102798797998220837590246510135740250 + 46376937677490009712648124896970078050417018260538" do

# "37107287533902102798797998220837590246510135740250
# "46376937677490009712648124896970078050417018260538
    #                  445123117807668296927154000788
    s.sum("", "").should == ""
  end

  it "can remove a leading zero" do
    s.remove_leading_zero("02").should == "2"
    s.remove_leading_zero("0345").should == "345"
  end
end
