#require 'win32ole'

# #API example 
# excel = WIN32OLE.new('Excel.Application')
# excel.visible = true
# workbook = excel.Workbooks.Add();
# worksheet = workbook.Worksheets(1);
# worksheet.Range("A1:D1").value = ["North","South","East","West"];
# worksheet.Range("A2:B2").value = [5.2, 10];
# worksheet.Range("C2").value = 8;
# worksheet.Range("D2").value = 20;

# range = worksheet.Range("A1:D2");
# range.select
# chart = workbook.Charts.Add;

# workbook.saved = true;

# excel.ActiveWorkbook.Close(0);
# excel.Quit();

require "win32ole"  

excel = WIN32OLE.new('excel.application')  
excel.Visible = true  
workBook = excel.WorkBooks.Open('E:\RubyCode\myfile.xls')  
workSheet = workBook.Worksheets(1)  
workSheet.Select  

WIN32OLE.codepage = WIN32OLE::CP_UTF8
WIN32OLE.codepage = 65001

line = 1  
data = []  
query = []  
statistic = []  
读取第一列数据Ax  
while workSheet.Range("A3:I3").Value  
    value = workSheet.Range("a#{line}").Value
    value = workSheet.Range("A3:I3").Value 
    # p value.class  
    # if value.class == String
    #     puts "#{value.encode("utf-8")}"
    # else
    #     puts "#{value}"
    # end
    puts "#{value}"
       
    
        
    line += 1  
end  

excel.ActiveWorkBook.Close(1)  
excel.Quit  

# 写入数据Hx  
# for i in 0...data.size  
#   workSheet.Range("h#{i + 1}").Value = data[i]  
# end  

 
#require 'parseexcel/parser'
# workbook = Spreadsheet::Excel.new(myfile.xls) 
# worksheet = workbook.worksheet(0)  
# workSheet.each { |row|  
#     j=0  
#     i=0  
#     if row != nil  
#     row.each { |cell|  
#       if cell != nil  
#         contents = cell.to_s('latin1')  
#         puts "Row: #{j} Cell: #{i} #{contents}"  
#       end  
#       i = i+1  
#     }  
#     j = j +1  
#     end  
#   }  

# excel.ActiveWorkBook.Close(1)  
# excel.Quit  

p "query=#{query.size}"  
p "statis=#{statistic.size}"  
p "data=#{data.size}"  
