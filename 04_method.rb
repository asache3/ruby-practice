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
