module Foo
  class << self
    attr_accessor :insertion, :quick
  end
end

def quicksort_running_time(array)
  Foo.quick = 0
  Foo.insertion = 0
  advanced_quicksort(array.clone)
  insertion_sort(array.clone)
  Foo.insertion - Foo.quick
end

def partition(array, first, last)
  pivot = array[last]
  greater_index = first
  (first...last).each do |i|
    next unless array[i] < pivot

    array[i], array[greater_index] = array[greater_index], array[i]
    Foo.quick += 1
    greater_index += 1
  end
  array[last], array[greater_index] = array[greater_index], array[last]
  Foo.quick += 1
  greater_index
end

def advanced_quicksort(array, first = 0, last = array.length - 1)
  return unless first < last

  pivot = partition(array, first, last)
  advanced_quicksort(array, first, pivot - 1)
  advanced_quicksort(array, pivot + 1, last)
end

def insertion_sort(array)
  (1...(array.length)).each do |i|
    current = array[i]
    j = i - 1
    while j >= 0 && current < array[j]
      array[j + 1] = array[j]
      Foo.insertion += 1
      j -= 1
    end
    array[j + 1] = current
  end
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
