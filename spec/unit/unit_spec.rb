# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  # title unit test
  subject do
    described_class.new(title: 'harry potter')
    described_class.new(author: 'Joe Harry')
    described_class.new(price: 32.50)
    described_class.new(published: '05-10-22')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    # unit tests
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without an author' do
    # unit tests
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a price' do
    # unit tests
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a published date' do
    # unit tests
    subject.published = nil
    expect(subject).not_to be_valid
  end
end
