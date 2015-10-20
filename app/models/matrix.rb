class Matrix < ActiveRecord::Base
    def self.get_base_url
        return '//www.cise.ufl.edu/research/sparse/'
    end

    def get_url(file_format)
        base_url = Matrix.get_base_url
        if file_format == "MAT"
            return "#{base_url}mat/#{self.group}/#{self.name}.mat"
        elsif file_format == "RB"
            return "#{base_url}RB/#{self.group}/#{self.name}.tar.gz"
        elsif file_format == "MM"
            return "#{base_url}MM/#{self.group}/#{self.name}.tar.gz"
        end
    end
end
