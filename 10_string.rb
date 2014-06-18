# マジックコメント
# encoding: utf-8


# 文字列を作る
# 式展開
moji = "文字列"
str1 = "あれも#{moji}"

desc = %Q{Rubyの文字列には「''」も「""」も使われます。}
str = %q|Ruby said, 'Hello world!'|


# ヒアドキュメント
10.times do |i|
  10.times do |j|
    print(<<"EOB")
i: #{i}
j: #{j}
i*j = #{i*j}
EOB
  end
end


# 文字列の長さを得る
p "just another ruby hacker,".length


# 文字列を分割する
str = "Ruby In A Nutshell:Yukihiro Matsumoto:2001:USA"
column = str.split(/:/)
p column


# 文字列をつなげる
hello = "Hello, "
world = "World!"
str = hello + world
p str

hello << world
p hello

hello.concat(world)
p hello


# 文字列を比較する
p "aaa" == "baa"
p "aaa" != "baa"


# 改行文字を取り除く
str = "abcde"
str2 = "abcd\n"

newstr = str.chop
p newstr
newstr = str.chomp
p newstr

newstr = str2.chop
p newstr
newstr = str2.chomp
p newstr


# 文字列の検索
str = "sumomomomomomomomonouchi"
p str.index("momo")
p str.rindex("momo")
p str.include?("momo")


# 先頭と末尾にある空白文字を削除する
p "  aaa  bbb  ccc ".strip

