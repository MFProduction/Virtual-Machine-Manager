require 'rails_helper'

describe VirtualMachine do
  describe 'validations' do
    it { should validate_presence_of(:instance_id) }
    it { should validate_presence_of :instance_name}
  end
end