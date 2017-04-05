a = [1,2,3]
IO.inspect(a)
a = 4
IO.puts('#{a}')
4 = a
try do
    [a, b] = [1,2,3]
rescue
    e in MatchError -> IO.puts("This one didn't work")
end
try do
    a = [[1, 2, 3]]
    IO.puts('This one works: #{a}')
rescue
    e in MatchError -> IO.puts("This one didn't work")
end
try do
    [a] = [[1, 2, 3]]
    IO.puts('This one works: #{a}')
rescue
    e in MatchError -> IO.puts("This one didn't work")
end
try do
    [[a]] = [[1,2,3]]
    IO.puts('This one works: #{[a]}')
rescue
    e in MatchError -> IO.puts("This one didn't work")
end
