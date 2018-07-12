require 'rails_helper'
# na poczatku kazdego pliku spec
RSpec.describe Autor, type: :model do
  it 'should have proper attributes' do
    expect(subject.attributes).to include('name', 'surname', 'age')
  end

  it 'should require name and surname presence' do
      expect(Autor.new).not_to be_valid
      expect(Autor.new(name: 'test')).not_to be_valid
      expect(Autor.new(name: 'test', surname: 'testy')).to be_valid
  end

  it 'should have old scope' do
    author1 = Autor.create(name: 'test', surname: 'testy', age: 15)
    author2 = Autor.create(name: 'test', surname: 'testy', age: 55)
    expect(Autor.old).to include(author2)
    expect(Autor.old).not_to include(author1)
  end

  it 'should set age to 25 if none was given' do
    author = Autor.create(name: 'test', surname: 'testy')
    expect(author.age).to eq(25)
  end

end
