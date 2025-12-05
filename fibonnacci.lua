--[[
function fibonnacci(end_point)
  local sequence = {1,2}
  for i=3, end_point do
    local new_value = sequence[i-2] + sequence[i-1]
    sequence[i] = new_value
  end
  print(table.concat(sequence," "))
end

fibonnacci(30)
]]

function fibonnacci_2(end_point)
  local sequence = {}
  -- edge cases
  if end_point >= 1 then table.insert(sequence, 1) end
  if end_point >= 2 then table.insert(sequence, 2) end
  
  while #sequence >= 2 do
    new_value = sequence[#sequence] + sequence[#sequence - 1]
    if new_value > end_point then
      break
    end
    table.insert(sequence,new_value)
  end
  return sequence
end

function sum_of_evens(sequence)
  local total_sum = 0
  for _,v in pairs(sequence) do
    if v % 2 == 0 then
      total_sum = total_sum + v
    end
  end
  return total_sum
end

io.write("Input end value:")
end_value = io.read("*n")
io.read("*l")

fibonnacci_sequence = fibonnacci_2(end_value)

io.write("\nPrint fibonnacci sequence?(y/n)")
answer = io.read(1)
if answer == "y" then
  print(table.concat(fibonnacci_sequence, ","))
end

print("Sum of even-valued terms:", sum_of_evens(fibonnacci_sequence))