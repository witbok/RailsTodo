require 'rails_helper'

RSpec.describe Task, type: :model do
  let!(:task) { Task.new(name: "Test", description: "Foobar", due_date: Time.now.to_date) }

  subject { task }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:due_date) }
end
