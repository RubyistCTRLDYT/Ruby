require 'mysql2'

client = Mysql2::Client.new(
   :host     => '127.0.0.1', # 主机
   :username => 'root',      # 用户名
   :password => '123',    # 密码
   :database => 'kpn',      # 数据库
   :encoding => 'utf8'       # 编码
   )

   results = client.query("select distinct clearText from report")
   res_ary = Array.new(results.count)
   index = 0
   results.each do |row|
       #puts "#{row['clearText']}"
       res_ary[index] = row['clearText']
       puts "#{res_ary[index]}"
       index += 1
       puts "#{index}   #{res_ary[index]}"
   end