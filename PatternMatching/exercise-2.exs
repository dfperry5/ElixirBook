try do
    [a,b,a] = [1,2,3]
    IO.puts('A: #{a}')
    IO.puts('B: #{b}')
    IO.puts('A: #{a}')
    IO.puts("#1 Did work")
rescue
   e in MatchError -> IO.puts("#1 Didn't work")
end

try do
    [a,b, a] = [1, 1, 2]
    IO.puts('A: #{a}')
    IO.puts('B: #{b}')
    IO.puts('A: #{a}')
    IO.puts("#2 Did work")
rescue
   e in MatchError -> IO.puts("#2 Didn't work")
end


try do
    [a, b, a] = [1, 2, 1]
    IO.puts('A: #{a}')
    IO.puts('B: #{b}')
    IO.puts('A: #{a}')
    IO.puts("#3 Did work")
rescue
   e in MatchError -> IO.puts("#3 Didn't work")
end

