require 'rails_helper'
# na poczatku kazdego pliku spec
RSpec.describe Autor, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:surname) }
    # it 'should require name and surname presence' do
        # expect(Autor.new).not_to be_valid
        # expect(Autor.new(name: 'test')).not_to be_valid
        # expect(Autor.new(name: 'test', surname: 'testy')).to be_valid
    end


  describe 'attributes' do
    it 'should have proper attributes' do
      expect(subject.attributes).to include('name', 'surname', 'age')
    end
  end

describe 'scopes' do
  let(:author1) { Autor.create(name: 'test', surname: 'testy', age: 15) }
  let(:author2) { Autor.create(name: 'test', surname: 'testy', age: 55) }
  it 'should have old scope' do
    expect(Autor.old).to include(author2)
    expect(Autor.old).not_to include(author1)
  end

  it 'should have young scope' do
    # author1 mozemy to dodac jak chcemy miec pewnosc ze stworzy obiekt
    # albo dajemy let! ale tego unikamy
    expect(Autor.young).to include(author1)
    expect(Autor.young).not_to include(author2)
  end
end


describe 'callbacks' do
  #bo w factories musze miec nazwe z MODELU
  let(:author) { create(:autor, age: nil) }
  it 'should set age to 25 if none was given' do
    expect(author.age).to eq(25)
  end
end

describe 'relations' do
  it { should have_many(:posts) }
end

describe '#fullname' do
  # create(:author)
  # build(:author)
  # #build nie zapisuje w bazie
  let(:author) { create(:autor) }
  it 'should have working #fullname method' do
    expect(author.fullname).to eq("#{author.name} #{author.surname}")
  end
end

end
