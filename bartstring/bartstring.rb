# def list (list)
#   return list[0][:name] if list.length == 1
#   output = ""
#   list.each do |name|
#     # p list.index(name)
#     if list.index(name) == list.length - 1
#       output = output.chomp(", ") + " & #{name[:name]}"
#     else
#       output += "#{name[:name]}, "
#     end
#   end
#   output
# end

def list names
  names.map! { |name| name[:name] }
  last_name = names.pop
  return last_name if names.empty?
  "#{names.join(", ")} & #{last_name}"
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
