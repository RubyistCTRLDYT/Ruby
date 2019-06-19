a = 100
p a

str = "abcdefg"
p str

number = 0
str.each_char do |x|
    if x == 'a' or x == 'e' or x == 'i'or x == 'o' or x == 'u'
        number = number + 1
    end
end

s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]

p s1.length
p s2.length
#################################

def min_max(lst)
    max = lst[0]
    min = lst[0]
    lst.each do |num|
      if num > max
          max = num
      end
  
      if num < min
          min = num
      end
    end
    return [min,max] # fix me
  end

  p min_max([1,22])
  ##############################################################
  def min_max(lst)
    lst.minmax
  end

  ###################同样的效果


  def song_decoder(song)
    #TODO
    song.gsub(/WUB/, " ")
  end

  p song_decoder('AWUBBWUBC')
#################################

def count_bits(n)
    # TODO: Program me
    n.to_s(2).count "1"
  end

p 100.to_s(2)
######################################

p "foo bar   baz".split
a = "A man, a plan, a canal, Panama".split(",")
p a
s = a.join
p s
p x = s.split.join.downcase
p x 
p x.reverse
p x == x.reverse
#############################
v = ('a'..'z').to_a
p v[-7]


#####################################
p %w[A B C].map {|char| char.downcase}
p %w[A B C].map(&:downcase)

#随机生产8个随机字母作为域名###############

p ('a'..'z').to_a.shuffle[0..7].join

###################

(0..16).to_a.each do |num|
    puts num * num
end

#############################

def yellow (ary)
  p ary.map(&:upcase).join
end

yellow(('a'..'f').to_a)
#############################


def random_subdomain()
    p ('a'..'z').to_a.shuffle[0..7].join
end

random_subdomain()
########################hash

user = {}
user["first_name"] = "Michael"

p user["first_name"] 
h2 = { name: "Michael Hartl", email: "michael@example.com" }
p h2

#################################

hashset = {'one' => 'uno','two' => 'dos','three' => 'tres'}
p hashset
hashset.each do |key,value|
    puts "Key  = #{key} , Value = #{value}"
end

person1 = {first: "kG", last: "ZaHEaN"}
person2 = {first: "CAD", last:"ZHsEN"}
person3 = {first: "DAdv", last:"ZHg"}

params = {father: person1, mother: person2, child: person3}
p params[:father][:first]

str = "deified"
p str.reverse 
p str.reverse == str
###########################

strYa = "Malayalam".downcase.reverse
p strYa == strYa.reverse

class String 
    def shuffle
        self.each_char.to_a.shuffle.join
    end
end

strtemp = "test"
p strtemp.each_char.to_a.shuffle.join
p strtest = "asdasd1zxc1".shuffle
########################################
#attr_accessor define setter&getter function 
class User
    attr_accessor :name, :email
    def initialize(attributes = {})
        @name = attributes[:name]
        @email = attributes[:email]
    end

    def formatted_email
        "#{@name} <#{@email}>"
    end

    def full_name
        puts @name
    end

    def alphabetical_name
        str_name = @name.split
        str_name[0],str_name[1] = str_name[1],str_name[0]
        p str_name.join ","
    end
end


#####################################                                               
str3 = "how aso"
p srr_ary = str3.split
srr_ary[0],srr_ary[1] = srr_ary[1],srr_ary[0]
p srr_ary
p srr_ary.join (",")