

az_down = ('a'..'z')
az_down_ary = az_down.to_a
p az_down_ary
mod26 = (1..26).to_a
encryption_code = "bsaspp kkuosp"
decryption_number = ""
decryption_code = ""
decryption_final = ""

encryption_code.each_char do |char|
    if char == " "
        p char 
        decryption_number << char + ","
        decryption_code << char
    end    
    az_down.each_with_index do |word,index|

        if  word == char 
            p index
            decryption_number << index.to_s+","
            decryption_code << az_down_ary[index]
        end  
    end
end

p decryption_number
p decryption_code
decryption_number =  decryption_number.split(",")

mod26.each do |add|
    decryption_number.each do |num|
        if num == " " 
            decryption_final << " "
            next
        else
            plus_index = num.to_i + add 
            if plus_index >= 26
                plus_index = plus_index - 26
            end
            decryption_final << az_down_ary[plus_index]
        end
    end

    p "#{add} : " + decryption_final
    decryption_final = ""  
end  



