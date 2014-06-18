# メソッドの定義
def volume(x, y, z)
  return x * y * z
end

p volume(2, 3, 4)


# デフォルト引数
# 複数の引数を持つ場合は、引数リストのうち右端から順にデフォルト値を指定する
def hello(name="Ruby")
  print("Hello, ", name, ".\n")
end

hello()
hello("Newbie")


# 可変長引数
def sum(*numbers)
  sum = 0
  numbers.each {|n| sum += n}
  puts sum
end

my_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum(*my_numbers)


# ブロック付きメソッド
# yieldのところで呼び出し元のブロックが実行される
def number(n)
  yield n
end

number(2){|x| puts x * 3}
