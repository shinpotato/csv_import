class ImportCsv < ApplicationRecord

  def self.popy
    puts "popy_poppy"
  end

  def self.import(path)
    require 'csv'
    CSV.foreach(path) do |row|
      User.create(

        age: row[1],
        address: row[2],
        name: row[0]
      )
    end
  end

  def self.import_second(path)
    require 'csv'
    CSV.foreach(path, headers: true) do |row|
      User.create(

        age: row["age"],
        address: row["address"],
        name: row["name"]
      )
    end
  end

end
