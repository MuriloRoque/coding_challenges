def time_scheduler(array)
  events = (0...array.length).step(2).collect { |index| [array[index], array[index + 1]] }
  events.sort_by! { |event| event[1] }
  result = [events[0]]
  (1...events.length).each do |i|
    result << events[i] unless overlap?(result[-1], events[i])
  end

  result
end

def overlap?(event1, event2)
  event1[1] > event2[0]
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
