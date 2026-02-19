=begin
(From SPOT wiki)

Dental Office Alumni (by Rona Hsu)
- There's a dental office called Dental People Inc. 
- Within this office, there's 2 oral surgeons, 2 orthodontists, 
1 general dentist. 
- Both general dentists and oral surgeons can pull teeth. 
- Orthodontists cannot pull teeth. 
- Orthodontists straighten teeth. 
- All of these aforementioned specialties are dentists. 
- All dentists graduated from dental school. 
- Oral surgeons place implants. 
- General dentists fill teeth.


Nouns: dental office, dentists (oral surgeons, orthodontists, 
       general dentist), dental school
Verbs: pull teeth, straighten teeth, graduated, place implants,
       fill teeth
=end


module Pullable
  def pull(tooth)
    puts "Pulling #{tooth.class}!"
  end
end

class Tooth; end

class Implant; end

class DentalSchool; end

class DentalOffice
  def initialize(name)
    @name = name
  end
end

class Dentist
  def initialize(education, office)
    @education = education
    @office = office
  end

  def graduate
    puts "Graduated from #{@education.class}."
  end
end

class OralSurgeon < Dentist
  include Pullable

  def place(implant)
    puts "Placing #{implant.class}!"
  end
end

class Orthodontist < Dentist
  def straighten(tooth)
    puts "Straightening #{tooth.class}!"
  end
end

class GeneralDentist < Dentist
  include Pullable
  
  def fill(tooth)
    puts "Filling #{tooth.class}!"
  end
end

# There's a dental office called Dental People Inc. 
office = DentalOffice.new('Dental People Inc.')
education = DentalSchool.new

# There're 2 oral surgeons, 2 orthodontists, 1 general dentist.
# All of these aforementioned specialties are dentists. 
surgeon1 = OralSurgeon.new(education, office)
surgeon2 = OralSurgeon.new(education, office)
orthodontist1 = Orthodontist.new(education, office)
orthodontist2 = Orthodontist.new(education, office)
general_dentist = GeneralDentist.new(education, office)

p surgeon1
p surgeon2
p orthodontist1
p orthodontist2
p general_dentist

=begin
#<OralSurgeon:0x000000010c6a3490 @education=#<DentalSchool:0x000000010c6a3530>, @office=#<DentalOffice:0x000000010c6a35d0 @name="Dental People Inc.">>
#<OralSurgeon:0x000000010c6a3418 @education=#<DentalSchool:0x000000010c6a3530>, @office=#<DentalOffice:0x000000010c6a35d0 @name="Dental People Inc.">>
#<Orthodontist:0x000000010c6a33a0 @education=#<DentalSchool:0x000000010c6a3530>, @office=#<DentalOffice:0x000000010c6a35d0 @name="Dental People Inc.">>
#<Orthodontist:0x000000010c6a3328 @education=#<DentalSchool:0x000000010c6a3530>, @office=#<DentalOffice:0x000000010c6a35d0 @name="Dental People Inc.">>
#<GeneralDentist:0x000000010c6a32b0 @education=#<DentalSchool:0x000000010c6a3530>, @office=#<DentalOffice:0x000000010c6a35d0 @name="Dental People Inc.">>
=end

# All dentists graduated from dental school. 
surgeon1.graduate          # Graduated from DentalSchool.
surgeon2.graduate          # Graduated from DentalSchool.
orthodontist1.graduate     # Graduated from DentalSchool.
orthodontist2.graduate     # Graduated from DentalSchool.
general_dentist.graduate   # Graduated from DentalSchool.

tooth = Tooth.new
implant = Implant.new

# Both general dentists and oral surgeons can pull teeth.
general_dentist.pull(tooth) # Pulling Tooth!
surgeon1.pull(tooth)        # Pulling Tooth!
surgeon2.pull(tooth)        # Pulling Tooth!

# Orthodontists straighten teeth.
orthodontist1.straighten(tooth) # Straghtening Tooth!
orthodontist2.straighten(tooth) # Straghtening Tooth!

# Oral surgeons place implants.
surgeon1.place(implant) # Placing Implant!
surgeon2.place(implant) # Placing Implant!

# General dentists fill teeth.
general_dentist.fill(tooth)           # Filling Tooth!
