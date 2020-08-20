# rubocop:disable Metrics/MethodLength
def reorder_list(head)
  return nil if head.nil?

  fast = head
  slow = head
  while fast&.next
    fast = fast.next.next
    slow = slow.next
  end

  curr = slow
  prev = nil
  while curr
    curr_next = curr.next
    curr.next = prev
    prev = curr
    curr = curr_next
  end

  h1 = head
  h2 = prev
  while h1.next && h2.next
    t1 = h1.next
    t2 = h2.next
    h2.next = h1.next
    h1.next = h2
    h1 = t1
    h2 = t2
  end

  nil
end
# rubocop:enable Metrics/MethodLength
