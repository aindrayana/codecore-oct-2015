class MetaProgTest
  [:a, :b, :c, :d].each do |name|
    define_method(:a) do
        puts "You called the method #{name}"
    end
  end

  def method_missing(*args)
    puts args
  end
end


t = MetaProgTest.new
t.hello("Hi")     # result: [:hello, "Hi"]
