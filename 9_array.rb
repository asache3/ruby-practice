# 配列の作り方
nums = [1, 2, 3, 4, 5]

a = Array.new
p a
a = Array.new(5)
p a
a = Array.new(5, 0)
p a

lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang


# 要素を取り出す
alpha = ["a", "b", "c", "d", "e"]
p alpha[1]
p alpha[-1]
p alpha[1..3]
p alpha[2, 3]


# 要素を置き換える
alpha[1] = "B"
p alpha

alpha[2, 3] = ["C", "D", "E"]
p alpha

a = [1, 2, 3, 4, 5]
a.collect!{|item| item * 2}
p a

p [1, 2, 3, 4, 5].fill(0, 2, 2)

a.reverse!
p a

a.sort!
p a

p a.sort_by{|i| -i}
p a


# 要素を挿入する
alpha[2, 0] = ["X", "Y"]
p alpha

a = [1, 2, 3, 4, 5]
a.unshift(0)
p a

a << 6
p a

a.concat([8, 9])
p a 


# 要素を取り除く
a = [1, nil, 3, nil, nil]
a.compact!
p a

a = [1, 2, 3, 4, 5, 6, 7]
a.delete(2)
p a

a.delete_at(2)
p a

a.delete_if{|i| i > 5}
p a

a.slice(1, 2)
p a

a.uniq!
p a

a.shift
p a

a.pop
p a


# 集合としての配列
ary1 = ["a", "b", "c"]
ary2 = ["d", "e", "f"]

p (ary1 & ary2)
p (ary1 | ary2)
p (ary1 - ary2)
