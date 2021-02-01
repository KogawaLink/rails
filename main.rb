
class rinter
  def self.calc_value
      Rails.cache.fetch("value/#{ARGV[0]}", expires_in: 1.minutes) do
        puts ARGV[0]
        if (10 % ARGV[0] == 0)
          puts "test"
        end
      end
  end
end