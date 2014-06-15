# if文
# thenは省略する
a = 10
b = 20

if b > a
  print "b is bigger than a\n"
elsif b == a
  print "b is as big as a\n"
else
  print "b is smaller than a\n"
end

print "a is bigger than b\n" if a > b


# unless文
# if !xのような場合は、unless xに置き換える
# unless文の場合、elseは使用しない
a = 10
b = 20

unless a > b
  print "a is not bigger than b\n"
end

print "a is not bigger than b\n" unless a > b


# case文
# 比較したいオブジェクトが1つだけで、その値によって場合分けをしたいとき
# thenは省略する
array = ['a', 1, nil]
array.each do |item|
  case item
  when String
    puts "item is a String"
  when Numeric
    puts "item is a Numeric"
  else
    puts "item is something"
  end
end

