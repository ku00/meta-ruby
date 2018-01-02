module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

# p "my *1st* refinement!".to_alphanumeric

using StringExtensions
p "my *1st* refinement!".to_alphanumeric