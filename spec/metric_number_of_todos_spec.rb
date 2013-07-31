require 'rspec'
require 'metric_todos'

describe 'number of todos' do
  it "should count all the todos in the code" do
    cnt = MetricTodos.new "ANY_HEADER", "sub/path"
    cnt.cmd("/some/path", "ANY_DATE").should eq("find /some/path/sub/path -name '*.java' | xargs grep '//TODO' | wc -l")
  end
end