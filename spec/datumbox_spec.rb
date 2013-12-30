require 'spec_helper'
require 'json'

describe Datumbox do
	
	subject { Datumbox.new(API_KEY) }

	describe 'sentiment_analysis' do
		it "should reply with json" do
			response = subject.sentiment_analysis('Banana split')
			expect { JSON.parse(response) }.not_to raise_error
		end
	end
end