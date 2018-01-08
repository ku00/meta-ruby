user_input = "User input: #{gets()}"
puts user_input.tainted?

$SAFE = 1
eval user_input