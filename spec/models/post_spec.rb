require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'attributes' do
    it 'should have proper attributes' do
      expect(subject.attributes).to include('title', 'content')
    end
  end

describe '#post_title' do
  let(:post1) { Post.new(title: 'tytul') }
  it 'should have working #post_title method' do
    expect(post1.post_title).to eq('tytul')
  end
end


describe 'scopes' do
  # musze miec autora stworzonego bo inaczej nie przejdzie bez id
  let(:autor5) { Autor.create(name: 'Mackiej', surname: 'Fajny') }
  let(:post2) { Post.create(title: 'dasdasdasdeeee', content: 'tujestmniejniz20', autor_id: autor5.id) }
  let(:post3) { Post.create(title: 'test', content: 'atujestduzoduzoduzoduzoduzoduzoduzowiecej', autor_id: autor5.id) }
  it 'should have short scope' do
    expect(Post.short).not_to include(post3)
    expect(Post.short).to include(post2)
  end
end

describe 'relations' do
  it { should belong_to(:autor) }
end

end
