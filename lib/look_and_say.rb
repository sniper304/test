class Integer
  def look_and_say
    num = self

    Enumerator.new do |y|
      loop do
        y << num
        num = get_next_saynum(num)
      end
    end
  end

  private

  def get_next_saynum(num)
    num.to_s.gsub(/(.)\1*/) { |s| s.size.to_s + s[0] }.to_i
  end
end
