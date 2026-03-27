class SistemAcces
  def initialize(fisier_sursa)
    @cale_fisier = fisier_sursa
    # Citim fișierul, curățăm spațiile și îl punem într-un Array
    @angajati_permisi = File.readlines(@cale_fisier).map(&:chomp)
  end

  def afiseaza_echipa
    puts "Echipa încărcată din fișier (#{@angajati_permisi.length} persoane):"
    @angajati_permisi.each { |nume| puts "- #{nume}" }
  end
end

# Execuția
manager = SistemAcces.new("baza_date.txt")
manager.afiseaza_echipa