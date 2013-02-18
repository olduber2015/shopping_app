require 'open-uri'
class Item < ActiveRecord::Base
  attr_accessible :item, :link
 
  def content
    doc = Nokogiri::HTML(open(link))
    doc.css('#itemNumberPrice span.price.regular').first.content
  end
end
