require './lib/caesar'

describe "#caesar" do
it "Keeps case sensative and symbols" do
    expect(caesar("What a string!", 5)).to eql("Bmfy f xywnsl!")
end

it "Able to wrap around" do
    expect(caesar("What is up man!", 28)).to eql("Yjcv ku wr ocp!")
end

it "Keeps capitalization and numbers" do
    expect(caesar("COVID-19", 2)).to eql("EQXKF-19")
end

it "Goes backwards" do
    expect(caesar("COVID-19", -5)).to eql("XJQDY-19")
end
end