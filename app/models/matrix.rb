class Matrix < ActiveRecord::Base
    def self.get_base_url
        return '//www.cise.ufl.edu/research/sparse/'
    end

    def get_url(file_format)
        base_url = Matrix.get_base_url
        if file_format == :matlab
            return "#{base_url}mat/#{self.group}/#{self.name}.mat"
        elsif file_format == :rutherford_boeing
            return "#{base_url}RB/#{self.group}/#{self.name}.tar.gz"
        elsif file_format == :matrix_market
            return "#{base_url}MM/#{self.group}/#{self.name}.tar.gz"
        else
            raise ArgumentError.new("Unknown matrix file type - only :matlab, :rutherford_boeing, and :matrix_market allowed")
        end
    end
end
