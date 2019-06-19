require 'net/http'


# response = Net::HTTP.get_response('domain.917ky.com', '/code/list')
# p response.code          
# p response.body.size    
# p response['Content-type']
 
# puts response.body[0,200]

arr = IO.readlines("917kc.com.txt")
n = 0
while arr.length != 0
    begin
        arr.each do |line|
            n += 1
            addr = line.lstrip.gsub(/47.96.82.140/, '').chop.chop.chomp.delete(" ")
            response = Net::HTTP.get_response(addr, '/')
            #puts "#{line.lstrip.gsub(/47.96.82.140/, '').chop.chop.chomp.delete(" ")}"
            #puts "#{response.code}"
            if response.code != "403"
                print "#{addr} \t #{response.code}\n"
            end
            arr.shift
            #p arr.length
        end
    rescue => exception
        print "#{exception.class}: #{exception.message}\n"
    end
end


# arr = [1, 2, 3, 3, 5, 6]

# while arr.length != 0
#     arr.each do |num|
#         p num
#         arr.shift
#         arr.each do |n|
#             puts "arr : #{n}"
#         end
#     end
    
# end

# arr = IO.readlines("917domain_format2.txt")
# n = 0
#  begin
#     arr.each do |line|
#         n += 1
#         #p "#{line.lstrip.chomp.delete " "}"
#         response = Net::HTTP.get_response("#{line.chomp}", '/code/list')
#         # response.code
#         #p response.code == "403"
#           #if response.code != "403"
#           #sleep(1)
#               print "#{n} \t #{line.chomp} \t\t #{response.code}\n"  
#               # line.lstrip.chomp.delete " "
#           #end  
#         #print "#{line.lstrip}"
#     end
#  rescue => exception
# #     puts "#{exception}"
#  else
    
#  ensure
    
#  end
 