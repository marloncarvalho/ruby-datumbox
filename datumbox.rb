require 'rest_client'

# Datumbox Wrapper.
# Before use it, you must register yourself at Datumbox site
# and get your API Key.
#
# Create an instance of this class calling "Datumbox.create(api_key)".
#
# Author: Marlon Silva Carvalho
class Datumbox

  def initialize(api_key)
    @api_key = api_key
  end

  # Get a Wrapper instance to access the Datumbox service.
  # You must give your API Key once.
  #
  def self.create(api_key)
    Datumbox.new(api_key)
  end

  # Classifies "text" as positive, negative or neutral.
  #
  def sentiment_analysis(text)
    RestClient.post "http://api.datumbox.com/1.0/SentimentAnalysis.json", :api_key => @api_key, :text => text
  end

  # Categorizes "text" as subjective or objective based on writing style.
  # Texts that express personal opinions are labeled as subjective and the others as objective.
  #
  def subjective_analysis(text)
    RestClient.post "http://api.datumbox.com/1.0/SubjectivityAnalysis.json", :api_key => @api_key, :text => text
  end

  # Labels documents as spam or nospam by taking into account their context.
  #
  def spam_detection(text)
    RestClient.post "http://api.datumbox.com/1.0/SpamDetection.json", :api_key => @api_key, :text => text
  end

  # Classifies documents as adult or noadult based on their context.
  #
  def adult_content_detection(text)
    RestClient.post "http://api.datumbox.com/1.0/AdultContentDetection.json", :api_key => @api_key, :text => text
  end

  # Assigns documents in 12 thematic categories based on ther keywords, idioms and jargon.
  #
  def topic_classification(text)
    RestClient.post "http://api.datumbox.com/1.0/TopicClassification.json", :api_key => @api_key, :text => text
  end

  # Identifies the natural language of the given text based on its words and context.
  #
  def language_detection(text)
    RestClient.post "http://api.datumbox.com/1.0/LanguageDetection.json", :api_key => @api_key, :text => text
  end

  # Classifies "text" as positive, negative or neutral.
  #
  def twitter_sentiment_analysis(text)
    RestClient.post "http://api.datumbox.com/1.0/TwitterSentimentAnalysis.json", :api_key => @api_key, :text => text
  end

  # Enables you to extract from an arbitrary document all the keywords and word
  # combinations along with their occurrences in the text.
  #
  def keyword_extraction(text, n)
    RestClient.post "http://api.datumbox.com/1.0/KeywordExtraction.json", :api_key => @api_key, :text => text, :n => n
  end

  # Estimates the degree of similarity between two documents.
  #
  def document_similarity(original, copy)
    RestClient.post "http://api.datumbox.com/1.0/DocumentSimilarity.json", :api_key => @api_key, :original => original, :copy => copy
  end


end

puts Datumbox.new('').
         document_similarity("This document is unique.", "No, bastard! This document here is unique!.")