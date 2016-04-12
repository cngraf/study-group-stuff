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
    temp_head = @head
    if @tail.nil?
      @head = nil
    else
      @head = @tail.pop
      @tail = nil unless @head
    end
    temp_head
  end

  def empty?
    @head.nil? && @tail.nil?
  end
end
