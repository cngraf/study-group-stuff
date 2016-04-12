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
    puts stack.inspect
    stack.push(2)
    puts stack.inspect
    stack.push(3)
    puts stack.inspect
    expect(stack.pop).to eq 3
    puts stack.inspect

    stack.push(4)
    puts stack.inspect

    expect(stack.pop).to eq 4
    puts stack.inspect

    expect(stack.pop).to eq 2
    puts stack.inspect

    expect(stack.pop).to eq 1
    puts stack.inspect

    expect(stack.empty?).to be true
  end
end
