describe 'Look and say' do
  it 'should respond to look_and_say' do
    expect { 5.look_and_say }.not_to raise_error
  end

  it 'should get correct value' do
    value        = 25
    look_and_say = 25.look_and_say.each.take(13)

    expect(value.send(:get_next_saynum, look_and_say[11]))
      .to eql look_and_say[12]
  end
end
