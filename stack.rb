class Stack
  def initialize(head = nil)
    @head = head
    @tail = nil
  end

  def push(thing)
    @tail = self.dup
    @head = thing
  end

  def pop
    return nil unless @head
    temp_head = @head
    if @tail.nil?
      @head = nil
    else
      @tail = nil unless (@head = @tail.pop)
    end
    temp_head
  end

  def empty?
    @head.nil? && @tail.nil?
  end
end
