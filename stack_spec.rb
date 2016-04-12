require 'rspec'
require_relative 'stack'

RSpec.describe Stack do
  it 'has nothing to retrieve when empty' do
    stack = Stack.new
    expect(stack.pop).to be nil
  end

  it 'becomes empty again once fully depleted' do
    stack = Stack.new
    stack.push(5)
    stack.pop
    expect(stack.empty?).to be true
  end

  it 'retrieves items in last-in-first-out order' do
    stack = Stack.new
    stack.push(1)
    stack.push(2)
    stack.push(3)
    expect(stack.pop).to eq 3
    stack.push(4)
    expect(stack.pop).to eq 4
    expect(stack.pop).to eq 2
    expect(stack.pop).to eq 1
    expect(stack.empty?).to be true
  end
end
