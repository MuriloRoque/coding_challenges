def maximum_time_range(array)
  events = (0...array.length).step(2).collect { |index| [array[index], array[index + 1]] }
  events.sort_by! { |event| event[0] }
  result = [].push(events[0])
  (1...events.length).each do |i|
    if events[i][0] <= result[-1][1]
      result[-1][1] = events[i][1] if result[-1][1] < events[i][1]
    else
      result << events[i]
    end
  end
  return result[0] if result.length == 1

  result
end

p maximum_time_range([10, 18, 4, 6, 14, 16, 5, 8])
# => [[4, 8], [10, 18]]
