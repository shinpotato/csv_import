class ImportCsv < ApplicationRecord

  def self.popy
    puts "popy_poppy"
  end

  def self.import(path)
    require 'csv'
    CSV.foreach(path) do |row|
      User.create(
        name: row[0],
        age: row[1],
        address: row[2]
      )
    end
  end

  def self.import_second(path)
    require 'csv'
    CSV.foreach(path, headers: true) do |row|
      User.create(
        name: row["name"],
        age: row["age"],
        address: row["address"]
      )
    end
  end

end
