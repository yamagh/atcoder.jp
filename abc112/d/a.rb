# https://beta.atcoder.jp/contests/abc112/tasks/abc112_d

N,M = gets.split.map &:to_i
(M/N).downto(0) do |i|
  if M % i == 0
    puts i 
    exit
  end
end

