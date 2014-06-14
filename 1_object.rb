# ローカル変数は、先頭がアルファベットの小文字か"_"で始まる
local_val = 1
p local_val

# グローバル変数は、先頭が"$"で始まる
$global_val = 2
p $global_val

# インスタンス変数は、先頭が"@"で始まる
@instance_val = 3
p @instance_val

# クラス変数は、先頭が"@@"で始まる
@@class_val = 4
p @@class_val
# warning: class variable access from toplevel

# 定数は、アルファベットの大文字で始まる
# 一度定義された定数に再び代入を行おうとすると警告メッセージが出る
# 外部から参照するためには"::"を使う
CONSTANT = 5
p CONSTANT

CONSTANT = 6
# warning: already initialized constant Constant
# warning: previous definition of Constant was here
p CONSTANT

# 2つのオブジェクトが同じかどうか(IDが同じかどうか)を判定する
str1 = "foo"
str2 = str1
str3 = "f" + "o" + "o"

p str1.equal?(str2)
p str1.equal?(str3)

# オブジェクトの値が等しいかどうかを調べる
p str1 == str3
p 1.0 == 1

# オブジェクトの値を厳密に比較する場合
p 1.0.eql? 1
