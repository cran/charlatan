# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/person/de_AT/__init__.py

person_formats_de_at <- c(
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{prefixes}} {{first_names}} {{last_names}}",
  "{{first_names}} {{last_names}}",
  "{{prefixes}} {{first_names}} {{last_names}}"
)

person_first_names_de_at <- c(
  "Alexander", "Alina", "Andreas", "Anna", "Anton",
  "Benjamin", "Bernhard",
  "Christian", "Christop",
  "Daniel", "David", "Dominik",
  "Elena", "Elias", "Emil", "Emilia",
  "Fabian", "Felix", "Florian", "Franz", "Fransizka",
  "Gabriel", "Gernot",
  "Hanna", "Ingrid", "Isabel",
  "Jakob", "Jana", "Jasmin", "Johanna", "Johannes", "Jonas", "Julia", "Julian",
  "Katharinna", "Konrad", "Konstantin",
  "Lara", "Laura", "Lena", "Leo", "Leon", "Linda", "Luca", "Lukas",
  "Marcel", "Maria", "Martin", "Matthias", "Max", "Maximilian", "Mia", "Michael", "Moritz",
  "Nico", "Niklas", "Nina", "Noah",
  "Oliver", "Olivia",
  "Paul", "Paula", "Philipp", "Pia",
  "Raphael", "Robert",
  "Samuel", "Sarah", "Sebastian", "Simon", "Sophie",
  "Theresa", "Thomas", "Tim", "Tobias",
  "Valentin"
)

person_last_names_de_at <- c(
  "Auer", "Aigner",
  "Bauer", "Baumgartner", "Berger", "Binder", "Brunner",
  "Cap", "Capek", "Cech", "Chum",
  "Deng", "Denk", "Daume", "Dienstl",
  "Ebner", "Eder", "Egger",
  "Fasching", "Felber", "Ferstel", "Fichtner", "Fischer", "Fuchs",
  "Gasser", "Gastegger", "Geier", "Geisler", "Grabner", "Gruber",
  "Haas", "Haiden", "Hofer", "Holzer", "Huber",
  "Illes", "Ircher", "Itzlinger",
  "Jahn", "Jobst", "Jung", "Jungbauer", "Just",
  "Kainz", "Karl", "Karner", "Koller",
  "Lang", "Lechner", "Lehner", "Leitner",
  "Maier", "Mair", "Maurer", "Mayer", "Mayr", "Moser", "M\u00fcllner",
  "Pichler", "Pucher",
  "Reiter", "Riegler",
  "Schmid", "Schneider", "Schuster", "Schwarz", "Stadler", "Steiner",
  "Wallner", "Weber", "Weiss", "Wieser", "Wimmer", "Winkler", "Winter", "Wolf"
)

person_prefixes_de_at <- c("Dr.", "Mag.", "Ing.", "Dipl.-Ing.", "Prof.", "Univ.Prof.")

person_de_at <- list(
  first_names = person_first_names_de_at,
  last_names = person_last_names_de_at,
  prefixes = person_prefixes_de_at
)
