require "spec_helper"

module Mastermind
	describe Cell do
		it "is initialized with a value of '' by default" do
			cell = Cell.new
			expect(cell.value).to eq ""
		end
		it "can be initialized with a value of 'red'" do
			cell = Cell.new("red")
			expect(cell.value).to eq "red"
		end
	end
end