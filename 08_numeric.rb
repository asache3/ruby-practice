# Rationalオブジェクト
r = Rational(2, 5) + Rational(1, 3)
p r
p r.to_f


# Complexオブジェクト
c = Complex(0, 2) ** 2
p c


# べき乗
p 5 ** 2
p 5 ** -2


# 割り算
# 商と余りを配列にして返す
p 10.divmod(3.5)
p 10.divmod(-3.5)


# 余りを返す
p 10.remainder(3.5)
p 10.remainder(-3.5)


# Mathモジュール
f = 2
p Math.sqrt(f)
include Math
p sqrt(f)


# 数値型の変換
p 10.to_f
p 10.8.to_i

p 1.2.round
p 1.8.round

p 1.5.ceil
p 1.5.floor


# 乱数
p rand
p rand(100)


# n回の繰り返しを行う
ary = []

10.times do |i|
  ary << i
end

p ary


# fromからtoに達するまで加算しながら繰り返す
ary = []

2.upto(10) do |i|
  ary << i
end

p ary


# fromからtoに達するまで減算しながら繰り返す
ary = []

10.downto(2) do |i|
  ary << i
end

p ary


# fromからtoに達するまでiにstepを足しながら繰り返す
ary = []

2.step(10, 3) do |i|
  ary << i
end

p ary
