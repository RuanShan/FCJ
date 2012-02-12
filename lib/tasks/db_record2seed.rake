namespace :db do
  desc "export table record from database to seed file, specify talbe with TABLE=x"
  task :record2seed => :environment do
    reject_attribute_names = ['updated_at','created_at']
    table_name = ENV["TABLE"] ? ENV["TABLE"] : nil    
    raise "TABLE is required" unless table_name
    file_path = "#{RAILS_ROOT}/db/#{table_name}.rb"      
    open(file_path, "w") do |f|
              table_class = table_name.classify.constantize
              res =table_class.all
              columns = table_class.columns
              columns.delete_if{|col| reject_attribute_names.include?(col.name)}
              f.puts 'objs=['
              record_count = 0
              for row in res
                f.print ",\n" if record_count>0
                str = ""
                for col in columns
                  next if row[col.name].nil?
                  str << "," unless str.empty? 
                  if col.type ==:decimal
                    str << ":#{col.name}=>#{row[col.name].to_s}"                  
                  elsif col.type ==:datetime
                    str << ":#{col.name}=>'#{row[col.name]}'"
                  else
                    str << ":#{col.name}=>#{row[col.name].inspect}"
                  end
                end
                f.print " {"+ str +"}"
                record_count+=1
              end
              f.puts ']'
              f.puts "
#{table_name.classify}.delete_all              
for ha in objs
  obj = #{table_name.classify}.new
  obj.send(:attributes=, ha, false)
  obj.save
end
                "
      
    end
  end
end
