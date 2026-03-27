class SistemAcces
  def initialize(nume_firma)
    @firma = nume_firma
    @angajati_permisi = ["Ion", "Ana", "Vasile"]
  end

  # METODA NOUĂ: Adaugă un nume în array-ul @angajati_permisi
  def adauga_membru(nume)
    @angajati_permisi << nume.capitalize
    puts "[SISTEM] #{nume.capitalize} a fost adăugat în baza de date."
  end

  def verifica_acces(nume)
    nume_formatat = nume.capitalize
    if @angajati_permisi.include?(nume_formatat)
      puts "Acces Permis pentru #{nume_formatat}! Bine ai venit la #{@firma}."
    else
      puts "Acces Respins pentru #{nume_formatat}!"
    end
  end

  def afiseaza_echipa
    puts "Echipa curentă (#{@angajati_permisi.length} persoane):"
    @angajati_permisi.each { |om| puts "- #{om}" }
  end
end

# --- Testăm noua funcționalitate ---
manager = SistemAcces.new("Salt Edge")

# 1. Adăugăm un membru nou (pe tine!)
print "Introdu un nume nou pentru echipă: "
nume_nou = gets.chomp
manager.adauga_membru(nume_nou)

# 2. Verificăm dacă acum are acces
manager.verifica_acces(nume_nou)
manager.afiseaza_echipa