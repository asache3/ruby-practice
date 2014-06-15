# 例外処理
src = open(from)

begin
  dst = open(to, "w")
  data = src.read
  dst.write(data)
  dst.close
rescue => ex
  print ex.message, "\n"
ensure
  src.close
end

n = Integer(val) rescue 0
