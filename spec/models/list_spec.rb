require 'rails_helper'

RSpec.describe Task, type: :model do
	let(:list) { List.new(name: "Test", description: "Test List") }

	it { should respond_to(:name) }
	it { should respond_to(:description) }
end
