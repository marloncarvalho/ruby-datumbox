require 'spec_helper'
require 'json'

describe Datumbox do
	
	# If the tests fail, make you you set the API_KEY in spec_helper.rb
	subject { Datumbox.new(API_KEY) }

	describe 'sentiment_analysis' do
		it "should reply with JSON" do
			response = subject.sentiment_analysis text: 'Banana split'
			expect { JSON.parse(response) }.not_to raise_error
		end
	end

	describe 'document similarity' do
		it "should not replay with error due to missing parameters" do
			response = subject.document_similarity original: "This document is unique.",
			                                       copy: "No, bastard! This document here is unique!."
			json = JSON.parse response
			json['output']['status'].should be 1
		end
	end

	describe 'keyword extraction' do
		it "should not replay with error due to missing parameters" do
			response = subject.keyword_extraction text: 'Banana split', n: 1
			json = JSON.parse response
			json['output']['status'].should be 1
		end
	end
end