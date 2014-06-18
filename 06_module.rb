# モジュールはインスタンスを持つことができない
# モジュールは継承できない
p Math::PI
p Math.sqrt(2)


# MIx-in
# モジュールをクラスに混ぜ合わせること
module MyModule

end

class MyClass
  include MyModule

end


# モジュールを作る
module HelloModule
  Version = "1.0"

  def hello(name)
    print "Hello, ", name, ".\n"
  end

  module_function :hello
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Bob")
