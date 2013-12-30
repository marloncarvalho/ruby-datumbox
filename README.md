Ruby Datumbox Wrapper
=====================

It's a simple Ruby Datumbox Wrapper. It has only one class, called Datumbox (`datumbox.rb`), which makes all the work for you. We use the RestClient library to make remote calls to the Datumbox API. This class has one method to each available service provided by the Datumbox.


First off, remember to get your API Key accessing and registering yourself at the [Datumbox website](http://www.datumbox.com/). Second, create a new instance of the Datumbox class passing your API Key as parameter to its constructor. Like this:

`datumbox = Datumbox.new('YOUR API KEY GOES HERE')`

## Usage:

datumbox = Datumbox.new('YOUR API KEY GOES HERE')

datumbox.language_detection(text: 'El paraguas es de mi color favorito')

datumbox.response = subject.keyword_extraction(text: 'Banana split', n: 1)

datumbox.document_similarity(original: 'This document is unique.',
         					 copy: 'No, bastard! This document here is unique!.'')

## Methods

You can call any method from the Datumbox API by writing it in underscore. For example the method `TopicClassification` should be called as `topic_classification`.

For a list of all the available methods, read the [Datumbox API documentation](http://www.datumbox.com/api-sandbox/)

When new methods are added to the API, this wrapper will automatically work with them.
