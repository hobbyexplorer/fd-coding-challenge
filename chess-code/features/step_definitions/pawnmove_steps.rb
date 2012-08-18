
require './view.rb';

Before do
	@view = View.new;
end

Given /^the chess board is initialized$/ do
	@view.should_not==nil;
end

When /^pawn move one step forward$/ do
	@result = @view.move('a', 2, 'a', 3);
end

Then /^the output should be "(.*?)"$/ do |expected_output|
	@result.should == expected_output;
end