ofile = File.dirname(__FILE__)+ "atts.txt"
rpath = File.dirname(__FILE__)+ "/../db/migrate/*.rb"

open(ofile,"w") do|os|
  Dir[rpath].sort.each {|file| 
  
    open(file) do|f|
      f.each_line{|line|        
        col_name = line[/(?<=")[\w]+/]
        col_value = line  [/(?<=#)[.]+/]
        if col_name and   col_value
          os.puts col_name+": "+col_value
        end
      }      
    end
  }
end
