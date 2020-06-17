def balanced_brackets?(string)
  hash = { '{' => '}', '[' => ']', '(' => ')' }
  arr = []
  string.chars do |i|
    if i.match(/[\[|\{|\(]/)
      arr << i
    elsif i.match(/[\]|\}|\)]/)
      return false if hash[arr.pop] != i
    end
  end
  arr.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
