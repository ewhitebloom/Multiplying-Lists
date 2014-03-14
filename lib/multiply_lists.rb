list = "4 3 2 1 | 8 9 12 42"

def multiply_lists(lists)
  partition = lists.split.partition { |n| lists.split.index(n) < lists.split.index('|') }
  partition[1].shift
  partition.each { |a| a.map! {|n| n.to_i }}
  if partition[0].size != partition[1].size
    puts "Lists must be same length."
    exit
  else
    index = 0
    finals = []
    while index <= partition[0].length - 1
      finals << partition[0][index] * partition[1][index]
      index += 1
    end
  end
  finals.join(" ")
end

puts multiply_lists(list)
