require 'rspec'
require '~/ruby/Train_ruby/spec/graph.rb'


describe 'graph inited' do

  graph = Graph.new

  it 'graph should stored by excpte value' do
    excpte_store={"A"=>[["B", "5"], ["D", "5"], ["E", "7"]], "B"=>[["C", "4"]], "C"=>[["D", "8"], ["E", "2"]], "D"=>[["C", "8"], ["E", "6"]], "E"=>[["B", "3"]]}
    expect(graph.store).to eql excpte_store
  end

  it 'The distance of the route A-B-C should be 9' do
    expect(graph.get_length('ABC')).to eql 9
  end

  it 'The distance of the route A-D should be 5' do
    expect(graph.get_length('AD')).to eql 5
  end

  it 'The distance of the route A-D-C should be 13' do
    expect(graph.get_length('ADC')).to eql 13
  end

  it 'The distance of the route A-E-B-C-D should be 22' do
    expect(graph.get_length('AEBCD')).to eql 22
  end

  it 'The distance of the route A-D-E should be NO SUCH ROUTE' do
    expect(graph.get_length('AED')).to eql 'NO SUCH ROUTE'
  end

  it 'The number of trips starting at C and ending at C with a maximum of 3 stops should be 2' do
    expect(graph.get_path_num_within_max_node('CC',3)).to eql 2
  end

end