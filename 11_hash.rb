# ハッシュを作る
h1 = {"a" => "b", "c" => "d"}
p h1["a"]

h2 = {a: "b", c: "d"}
p h2


# 値を取り出す・設定する
h = Hash.new
h["R"] = "Ruby"
p h["R"]


h = Hash.new(1)
h["a"] = 10
p h["a"]
p h["x"]


# キーとして持っているかを調べる
h = {"a"=>"b", "c"=>"d"}
p h.key?("a")
p h.has_key?("x")


# 値として持っているかを調べる
p h.value?("b")
p h.has_value?("z")


# 登録されているキーの数を調べる
p h.length
p h.size


# 何もキーが登録されていないかを調べる
p h.empty?


# キーを指定して削除する
h = {"R" => "Ruby"}
p h["R"]


# 条件に当てはまるものだけを削除する
h = {"R" => "Ruby", "P" => "Perl", "J" => "JavaScript"}
p h.delete_if{|key, value| key == "P"}
p h.reject!{|key, value| key == "L"}


# すべてのキーを配列に変換する
p h.keys


# すべての値を配列に変換する
p h.values


# キーと値のペアを配列の配列に変換する
p h.to_a

# ハッシュを空にする
h.clear
