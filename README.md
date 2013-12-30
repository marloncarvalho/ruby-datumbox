Ruby Datumbox Wrapper
=====================

It's a simple Ruby Datumbox Wrapper. It has only one class, called Datumbox (datumbox.rb), which makes all the work for you. We use the RestClient library to make remote calls to the Datumbox API. This class has one method to each available service provided by the Datumbox.


First off, remember to get your API Key accessing and registering yourself at Datumbox website. Second, create a new instance of the Datumbox class passing your API Key as parameter to its constructor. Like this:


Datumbox.new('YOUR API KEY GOES HERE').
         document_similarity("This document is unique.", "No, bastard! This document here is unique!.")
         
         
http://www.datumbox.com/

