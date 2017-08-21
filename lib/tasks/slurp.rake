namespace :slurp do
  desc "TODO"
  task artworks: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "accessionedobjects.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
   
      a = Artwork.new
      a.maker = row["Maker"]
      a.title = row["Title"]
      a.date = row["Date"]
      a.medium = row["Medium"]
      
      a.save
      
      puts "#{a.title} saved"
      
     end
    

  end

end
