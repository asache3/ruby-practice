# timesメソッド
4.times do
  print "Hello Ruby!\n"
end


5.times do |i|
  print i, " loop\n"
end


# for文
# 内部処理としてはeachメソッドが実行されている
sum = 0
for i in 1..5
  sum = sum + i
end
print sum, "\n"


# while文
# doは省略する
i = 1
while i < 3
  print i, "\n"
  i += 1
end


# until文
# while !xのような場合は、until xに置き換える
sum = 0
i = 1
until sum >= 50
  sum += i
  i += 1
end
print sum, "\n"


# eachメソッド
names = ["awk", "Perl", "Python", "Ruby"]
names.each do |name|
  print name, "\n"
end


# loopメソッド
# 終了条件がない、ただの繰り返しのためのメソッド
loop do
  print "Ruby"
  break
end
  
