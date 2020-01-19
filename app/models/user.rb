class User < ApplicationRecord

  def self.popy
    puts "popy_poppy"

  end

  def self.import(path)
    CSV.foreach(path, headers: true) do |row|

            p row[0]
    end
  end
end
