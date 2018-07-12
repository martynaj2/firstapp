require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'attributes' do
    it 'should have proper attributes' do
      expect(subject.attributes).to include('title', 'content')
    end
  end

  it 'should have working #post_title method' do
    post1 = Post.new(title: 'tytul')
    expect(post1.post_title).to eq('tytul')
  end

describe 'scopes' do
  it 'should have short scope' do
    autor5 = Autor.create(name: 'Mackiej', surname: 'Fajny')
    post2 = Post.create(title: 'dasdasdasdeeee', content: 'tujestmniejniz20', autor_id: 1)
    post3 = Post.create(title: 'test', content: 'atujestduzoduzoduzoduzoduzoduzoduzowiecej', autor_id: 1)
    expect(Post.short).not_to include(post3)
    expect(Post.short).to include(post2)
  end
end

describe 'relations' do
  it { should belong_to(:autor) }
end

end
