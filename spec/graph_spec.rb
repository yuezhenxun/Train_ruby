require 'rspec'
require './src/graph_handler'
require './src/graph'

input_value=['AB5', 'BC4', 'CD8', 'DC8', 'DE6', 'AD5', 'CE2', 'EB3', 'AE7']

describe 'graph inited by given input_value' do
  graph = Graph.new(input_value)

  it 'graph_handler should stored by excpte value' do
    excpte_store={"A"=>[["B", 5], ["D", 5], ["E", 7]], "B"=>[["C", 4]], "C"=>[["D", 8], ["E", 2]], "D"=>[["C", 8], ["E", 6]], "E"=>[["B", 3]]}
    expect(graph.store).to eql excpte_store
  end

end