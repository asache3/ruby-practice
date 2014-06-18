# クラスの定義
# クラス名は大文字で始める
# newメソッドによってオブジェクトを生成すると、initializeメソッドが呼ばれる
class HelloWorld
  Version = "1.0"

  def initialize(myname="Ruby")
    @name = myname
  end

  def hello
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob = HelloWorld.new("Bob")
bob.hello
p HelloWorld::Version


# アクセスメソッド
# メソッド名を表すシンボルを指定すると、同じ名前のインスタンス変数にアクセスするメソッドを自動的に設定する
class HelloWorld
  attr_reader :name1
  attr_writer :name2
  attr_accessor :name3
end


# クラスメソッド
class HelloWorld
  def self.hello(name)
    print name, " said hello.\n"
  end
end

HelloWorld.hello("John")


# アクセス制限
# initializeメソッドは常にprivate
class AccTest
  def pub
    puts "pub is a public method."
  end
  public :pub

  def priv
    puts "priv is a private method."
  end
  private :priv
end

acc = AccTest.new
acc.pub
# acc.priv
# private method `priv' called for #<AccTest:0x007f937173d668> (NoMethodError)


# 継承する
class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

nums = RingArray[1, 2, 3, 4, 5]
p nums[1]
p nums[7]
