# encoding: utf-8
ofile = File.dirname(__FILE__)+ "/atts.txt"
rpath = File.dirname(__FILE__)+ "/../db/migrate/*.rb"

open(ofile,"w") do|os|
  Dir[rpath].sort.each {|file| 
  
    open(file) do|f|
      f.each_line{|line|
                
        col_name = line[/(?<=")[\w]+/,0]
        col_value = line[/(?<=#)[\u4E00-\u9FA5]+/]
        puts col_value
        if col_name and  col_value
          os.puts col_name+": "+col_value
        end
      }      
    end
  }
end
