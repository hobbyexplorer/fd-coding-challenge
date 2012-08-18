
require './view.rb';

Before do
	
end

Given /^the chess board is initialized$/ do
	@view = View.new;
	@view.should_not==nil;
end

When /^move piece from (.\d+) to (.\d+)$/ do |from_pos, to_pos|
	@result = @view.move(from_pos[0], from_pos[1].to_i, to_pos[0], to_pos[1].to_i);
end

Then /^the output should be "(.*?)"$/ do |expected_output|
	@result.should == expected_output;
end