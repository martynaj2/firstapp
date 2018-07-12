require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'should have proper attributes' do
    expect(subject.attributes).to include('title', 'content')
  end

  it 'should have working #post_title method' do
    post1 = Post.new(title: 'tytul')
    expect(post1.post_title).to eq('tytul')
  end

  it 'should have short scope' do
    post2 = Post.create(title: 'dasdasdasdeeee', content: 'ffffffvvvvvvv', autor_id: 11)
    post3 = Post.create(title: 'test', content: '123456789101234567891012345678910', autor_id: 11)
    expect(Post.short).not_to include(post3)
  end
end
