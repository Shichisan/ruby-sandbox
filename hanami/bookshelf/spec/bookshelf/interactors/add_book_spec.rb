RSpec.describe AddBook do
  let(:interactor) { AddBook.new }
  let(:attributes) { Hash.new }

  it 'succeeds' do
    result = interactor.call(attributes)
    expect(result.successful?).to be true
  end
end
