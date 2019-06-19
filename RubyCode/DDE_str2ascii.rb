


str1 = %Q{C:\\\\Programs\\\\Microsoft\\\\Office\\\\MSWord.exe\\\\..\\\\..\\\\..\\\\..\\\\windows\\\\system32\\\\windowspowershell\\\\v1.0\\\\powershell.exe }

str2 = %Q{}
p str1 
def str2ascii(str)
    str_dde = ""
    str.each_byte do |c|
        temp = c.to_s
        str_dde += temp + " "
    end
    p str_dde
end

str2ascii(str1)



