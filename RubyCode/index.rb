require 'mysql2'

client = Mysql2::Client.new(
   :host     => '127.0.0.1', # 主机
   :username => 'root',      # 用户名
   :password => '123',    # 密码
   :database => 'ip',      # 数据库
   :encoding => 'utf8'       # 编码
   )
results = client.query("SELECT * from ipform group by vulnerability_number")
res_ary = Array.new(results.count)
index = 0
results.each do |row|
    
    res_ary[index] = row['vulnerability_number']
    index += 1
    #puts "#{row['vulnerability_number']}"
end

results2 = client.query("SELECT * from ipform ")


res_ary.each do |arr|
    puts "#{arr}"
    results2.each do |row|
        if row['vulnerability_number'] == arr
            #puts "#{row['vulnerability_number']}"
            puts "#{row['ip']}"
        end
    end
    print "\n\n" 
end








# json_file = File.new("highrisk-besides80_formatTXT.txt", "r")

# if json_file
#     text = json_file.gets
#     puts text
# else
#     puts "Unable to open files"
# end 

# json_file = IO.readlines("highrisk-besides80_formatTXT.txt")
# json_file.each_line do |line|
#     print "#{line_num += 1} #{line}"
#   end

arr = IO.readlines("highrisk-besides80_formatTXT.txt")
# 1678.times do |num|
#     if num % 5 == 0
#         puts arr[num]
#     end
# end
# count = 0
# num = 2
# target_count = 1

# while num < 1676
#     text1 = arr[num].chop
#     puts "#{text1.lstrip.chop.delete "\""}"

#     text2 = arr[num +1 ].chop
#     puts "#{text2.lstrip.chop.delete "\""}"

#     text3 = arr[num + 2].chop
#     puts "#{text3.lstrip.chop.delete "\""}"

#     text4 = arr[num + 3].chop
#     puts "#{text4.lstrip.chop.delete "\""}"

#     num += 6
#     target_count += 1
    
# end
# while num < 1678
#     puts "#{target_count}  #{arr[num]}"
#     puts "#{target_count + 1}  #{arr[num + 1]}"
#     puts "#{target_count + 2}  #{arr[num + 2]}"
#     puts "#{target_count + 3}  #{arr[num + 3]}"
#     num += 6
#     target_count += 1
    
# end
#puts arr[5]

#IO.foreach("highrisk-besides80.json"){|block| puts block}
=begin
if json_file
    #json_file.syswrite("ABCDEF")
    #json_file.rewind
    json_file.each_byte {|ch| 
        putc ch
    
    }
 else
    puts "Unable to open file!"
 end
=end
# line_num = 0
# File.open("highrisk-besides80_formatTXT.txt", "r") do |json_file|
#     # ... process the file
#     json_file.each_line do |line|
#         line_num += 1
#         print "#{line_num} #{line}"
#     end
# end

# str = "testtest"
# test = str.delete "\""
# p test

# p "hello".delete "l","lo"