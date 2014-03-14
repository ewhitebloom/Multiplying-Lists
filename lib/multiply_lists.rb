list = "4 3 2 1 | 8 9 12 42"

def multiply_lists(lists)
  partition = lists.split('|').map{ |s| s.split }.each{ |a| a.map!{ |n| n.to_i }}
  if partition[0].size != partition[1].size
    "Lists must be same length"
  else
    index = 0
    finals = []
    while index <= partition[0].length - 1
      finals << partition[0][index] * partition[1][index]
      index += 1
    end
    finals.join(' ')
  end
end

puts multiply_lists(list)
