When /^I change "(.*?)" with "(.*?)"$/ do |old_topic, new_topic|

  #@information = Information.find_by_topic(old_topic)
  #@information.topic = new_topic
  #@information.save!
  step %{I fill in "Topic" with "#{new_topic}"}
 
end
Given /^the following informations exist:$/ do |inf_table|

   inf_table.hashes.each do |inf|
   
    Information.create!(inf)
  end
end


