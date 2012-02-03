class WelcomeController < ApplicationController
  
  def dictionary
    @word_map = {}
    open File.join(RAILS_ROOT,'doc','messages.properties') do |f|
      f.each_line do |l|
        next if l.empty?
        next unless l.include?('=')
        word, chinese = l.strip.split('=')
        @word_map[word] = chinese
      end      
    end
    
  end
end
