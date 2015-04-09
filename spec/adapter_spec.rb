require 'spec_helper'

describe 'adapter is set' do

  it 'should call the enabled! method on init' do
    QueueBus.send(:reset)
    adapter_under_test_class.any_instance.should_receive(:enabled!)
    adapter_under_test_class.new
    QueueBus.send(:reset)
  end

  it 'defaults to Data from spec_helper' do
    QueueBus.adapter.is_a?(adapter_under_test_class).should eq(true)
  end
end
