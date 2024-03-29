# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/job/__init__.py

job_formats_da_dk <- c(
  "Administrationsassistent",
  "Administrationschef",
  "Administrations\u00f8konom",
  "Administrativ medarbejder",
  "Administrerende direkt\u00f8r",
  "Advokat",
  "Advokatfuldm\u00e6gtig",
  "Advokatsekret\u00e6r",
  "Afdelingschef",
  "Afdelingsl\u00e6ge",
  "Afdelingsleder",
  "Afdelingsradiograf",
  "Afsnitsleder",
  "Afsp\u00e6ndingsp\u00e6dagog",
  "Agent",
  "Aktuar",
  "Akupunkt\u00f8r",
  "Alarmtekniker",
  "Alkoholbehandler",
  "Ambulancef\u00f8rer",
  "An\u00e6stesisygeplejerske",
  "Analysechef",
  "Analysekonsulent",
  "Analytiker",
  "Animator",
  "Anklager",
  "Anl\u00e6gsgartner",
  "Anl\u00e6gsstrukt\u00f8r",
  "Annonces\u00e6lger",
  "Apoteker",
  "Applikationsekspert",
  "Applikationskonsulent",
  "Applikationsudvikler",
  "Arbejdsleder",
  "Arbejdsmand",
  "Arbejdsmilj\u00f8koordinator",
  "Arbejdsmilj\u00f8leder",
  "Ark\u00e6olog",
  "Arkitekt",
  "Arkivar",
  "Assurand\u00f8r",
  "Astronom",
  "Audiolog",
  "Audiologiassistent",
  "Auditor",
  "Autoelektriker",
  "Autoelektromekaniker",
  "Autolakerer",
  "Automatikfagtekniker",
  "Automatikmekaniker",
  "Automatiktekniker",
  "Automekaniker",
  "B\u00e5debygger",
  "Bager",
  "Bagermester",
  "Bankbetjent",
  "Bankdirekt\u00f8r",
  "Bankfuldm\u00e6gtig",
  "Bankr\u00e5dgiver",
  "Bartender",
  "Bedemand",
  "Belysningskonsulent",
  "Bemandingsplanl\u00e6gger",
  "Beslagsmed",
  "Bev\u00e6gelsesp\u00e6dagog",
  "Bibliotekar",
  "Bilinspekt\u00f8r",
  "Billedkunstner",
  "Billett\u00f8r",
  "Bils\u00e6lger",
  "Bioanalytiker",
  "Biolog",
  "Blikkenslager",
  "Blomsterbinder",
  "Blomsterdekorat\u00f8r",
  "Bogbinder",
  "Bogholder",
  "B\u00f8rnepsykolog",
  "B\u00f8rnet\u00f8jsfabrikant",
  "B\u00f8rsm\u00e6gler",
  "Brandmand",
  "Brol\u00e6gger",
  "Brygmester",
  "Buschauff\u00f8r",
  "Business Analyst",
  "Business Intelligence konsulent",
  "Butiksassistent",
  "Butiksbestyrer",
  "Butikschef",
  "Butiksdetektiv",
  "Byggeleder",
  "Byplanl\u00e6gger",
  "CAD-konsulent",
  "Centerchef",
  "Centerleder",
  "Chauff\u00f8r",
  "Chefkonsulent",
  "Chefprogramm\u00f8r",
  "Chefprojektleder",
  "Chefredakt\u00f8r",
  "Civilingeni\u00f8r",
  "Civil\u00f8konom",
  "CRM-ansvarlig",
  "CRM-chef",
  "CRM-konsulent",
  "Croupier",
  "Cykelbud",
  "Cykelmekaniker",
  "Dagplejer",
  "Dansel\u00e6rer",
  "Databaseadministrator",
  "Databasearkitekt",
  "Databaseudvikler",
  "Datafagtekniker",
  "Dataingeni\u00f8r",
  "Datakonsulent",
  "Datalog",
  "Datamatiker",
  "Datatekniker",
  "Debitorbogholder",
  "Dekorat\u00f8r",
  "Direktionssekret\u00e6r",
  "Direkt\u00f8r",
  "Disponent",
  "Distriktschef",
  "Dokumentationsmedarbejder",
  "Dommer",
  "Driftschef",
  "Driftskonsulent",
  "Driftskoordinator",
  "Driftsleder",
  "Driftsplanl\u00e6gger",
  "Driftstekniker",
  "Dtp-medarbejder",
  "Dyrepasser",
  "Dyrl\u00e6ge",
  "Edb-driftsplanl\u00e6gger",
  "Edb-konsulent",
  "Edb-leder",
  "Edb-programm\u00f8r",
  "Edb-systemprogramm\u00f8r",
  "Edb-tekniker",
  "Efterskolel\u00e6rer",
  "Ejendomsadministrator",
  "Ejendomsinspekt\u00f8r",
  "Ejendomsm\u00e6gler",
  "Eksportchef",
  "Eksportingeni\u00f8r",
  "Elektriker",
  "Elektroingeni\u00f8r",
  "Elektronikingeni\u00f8r",
  "Elektroniktekniker",
  "Elevatormont\u00f8r",
  "El-ingeni\u00f8r",
  "Embedsl\u00e6ge",
  "Energikonsulent",
  "Entreprisechef",
  "Ergoterapeut",
  "Erhvervsdykker",
  "Ern\u00e6ringsassistent",
  "Eventkoordinator",
  "F\u00e6ngselsbetjent",
  "Familiebehandler",
  "Farmaceut",
  "Farmakolog",
  "Filmklipper",
  "Finansanalytiker",
  "Finans\u00f8konom",
  "Finansr\u00e5dgiver",
  "Finmekaniker",
  "Fisker",
  "Fitnessinstrukt\u00f8r",
  "Flyelektriker",
  "Flymekaniker",
  "Flyttemand",
  "Flyveleder",
  "Folkeskolel\u00e6rer",
  "Forretningsudvikler",
  "Forsker",
  "Forskningsassistent",
  "Forstander",
  "F\u00f8rstemand",
  "Fotograf",
  "Fris\u00f8r",
  "Fuldm\u00e6gtig",
  "Fysiker",
  "Fysioterapeut",
  "G\u00e5rdmand",
  "Gartner",
  "Geofysiker",
  "Geolog",
  "Glarmester",
  "Grafiker",
  "Guldsmed",
  "Gymnasiel\u00e6rer",
  "Halinspekt\u00f8r",
  "Handels\u00f8konom",
  "Handicaphj\u00e6lper",
  "Hardwareingeni\u00f8r",
  "Hardwareudvikler",
  "Havnearbejder",
  "Havnefoged",
  "Historiker",
  "Hjemmehj\u00e6lper",
  "H\u00f8jskoleforstander",
  "Hospitalsdirekt\u00f8r",
  "Hotelchef",
  "Hotelmedarbejder",
  "Hovmester",
  "HR-ansvarlig",
  "HR-chef",
  "HTML-programm\u00f8r",
  "Husassistent",
  "Idr\u00e6tsl\u00e6rer",
  "Indk\u00f8ber",
  "Indk\u00f8bsassistent",
  "Indk\u00f8bschef",
  "Indretningsarkitekt",
  "Industriel designer",
  "Industrimekaniker",
  "Industrioperat\u00f8r",
  "Industritekniker",
  "Informationsarkitekt",
  "Informationsmedarbejder",
  "Ingeni\u00f8r",
  "Institutionsleder",
  "Instrukt\u00f8r",
  "Instrumentbygger",
  "Internetansvarlig",
  "Internetchef",
  "Internetsupporter",
  "Internetudvikler",
  "Intern salgskonsulent",
  "Intranetkonsulent",
  "Isolat\u00f8r",
  "IT-administrator",
  "IT-ansvarlig",
  "IT-arkitekt",
  "IT-assistent",
  "IT-chef",
  "IT-direkt\u00f8r",
  "IT-driftschef",
  "IT-driftsleder",
  "IT-driftsmedarbejder",
  "IT-forretningskonsulent",
  "IT-ingeni\u00f8r",
  "IT-instrukt\u00f8r",
  "IT-konsulent",
  "IT-koordinator",
  "IT-leder",
  "IT-medarbejder",
  "IT-\u00f8konom",
  "IT-projektassistent",
  "IT-projektleder",
  "IT-salgskonsulent",
  "IT-sikkerhedsadministrator",
  "IT-sikkerhedskonsulent",
  "IT-sikkerhedskoordinator",
  "IT-supportchef",
  "IT-supporter",
  "IT-tekniker",
  "IT-udvikler",
  "IT-udviklingschef",
  "IT-udviklingskonsulent",
  "IT-underviser",
  "Jobkonsulent",
  "Jordbrugsteknolog",
  "Jordemoder",
  "Journalist",
  "Juniorkonsulent",
  "Jurist",
  "K\u00e6bekirurg",
  "Kantineassistent",
  "Kantineleder",
  "Kasseassistent",
  "Kemiingeni\u00f8r",
  "Keramiker",
  "Key Account Assistent",
  "Key Account Manager",
  "Kirketjener",
  "Kiropraktor",
  "Kirurg",
  "Kleinsmed",
  "Klinikassistent",
  "Klinisk di\u00e6tist",
  "Klippeassistent",
  "Kloakarbejder",
  "Kloakmester",
  "Klubp\u00e6dagog",
  "Knallertmekaniker",
  "Kok",
  "K\u00f8kkenchef",
  "K\u00f8kkenleder",
  "K\u00f8kkenmedhj\u00e6lper",
  "K\u00f8lemont\u00f8r",
  "K\u00f8letekniker",
  "Kommunikationschef",
  "Kommunikationsmedarbejder",
  "Kommunikationsr\u00e5dgiver",
  "Konceptudvikler",
  "Konditor",
  "Kondukt\u00f8r",
  "Konservator",
  "Kontorassistent",
  "Kontorchef",
  "Kontorfuldm\u00e6gtig",
  "Kontraktkonsulent",
  "K\u00f8rel\u00e6rer",
  "Korrekturl\u00e6ser",
  "Korrespondent",
  "Kosmetiker",
  "Kosmetolog",
  "Kostvejleder",
  "Kranf\u00f8rer",
  "Kulturmedarbejder",
  "Kundeanalytiker",
  "Kundechef",
  "Kundekonsulent",
  "Kunder\u00e5dgiver",
  "Kunstformidler",
  "Kvalitetschef",
  "Kvalitetsingeni\u00f8r",
  "Kvalitetsleder",
  "Kvalitetsmedarbejder",
  "Kvalitetssikringsmedarbejder",
  "Laborant",
  "Laboratorieassistent",
  "L\u00e6ge",
  "L\u00e6gemiddelkonsulent",
  "L\u00e6gesekret\u00e6r",
  "L\u00e6rer",
  "Lageransvarlig",
  "Lagerchef",
  "Lagerekspedient",
  "Lagermedarbejder",
  "Landbrugsmedhj\u00e6lper",
  "Landbrugsmekaniker",
  "Landinspekt\u00f8r",
  "Landmand",
  "Landskabsarkitekt",
  "L\u00e5sesmed",
  "Lastbilchauff\u00f8r",
  "Lastvognsmekaniker",
  "Levnedsmiddelingeni\u00f8r",
  "Levnedsmiddelinspekt\u00f8r",
  "Livvagt",
  "Lods",
  "Logistikassistent",
  "Logistikchef",
  "Logistikkoordinator",
  "Lokof\u00f8rer",
  "L\u00f8nningsbogholder",
  "Lufthavnsmedarbejder",
  "Lufthavnsoperat\u00f8r",
  "Lydtekniker",
  "Lystekniker",
  "Mainframekonstrukt\u00f8r",
  "Mainframeoperat\u00f8r",
  "Maler",
  "Managementkonsulent",
  "Manager",
  "Marketingchef",
  "Maskinarbejder",
  "Maskinf\u00f8rer",
  "Maskiningeni\u00f8r",
  "Maskinmester",
  "Maskinoperat\u00f8r",
  "Maskintekniker",
  "Mass\u00f8r",
  "Mediekonsulent",
  "Mejerist",
  "Mekaniker",
  "Meteorolog",
  "Milj\u00f8chef",
  "Milj\u00f8ingeni\u00f8r",
  "Milj\u00f8koordinator",
  "Milj\u00f8tekniker",
  "M\u00f8belmont\u00f8r",
  "M\u00f8belpolstrer",
  "M\u00f8belsnedker",
  "Modelkonstrukt\u00f8r",
  "Modell\u00f8r",
  "Molekyl\u00e6rbiolog",
  "Mont\u00f8r",
  "Multimediegrafiker",
  "Murer",
  "Museumsinspekt\u00f8r",
  "Musikp\u00e6dagog",
  "Musikskoleleder",
  "Musikterapeut",
  "Natportier",
  "Netv\u00e6rksadministrator",
  "Netv\u00e6rksarkitekt",
  "Netv\u00e6rksingeni\u00f8r",
  "Netv\u00e6rkskonsulent",
  "Netv\u00e6rksspecialist",
  "Netv\u00e6rkstekniker",
  "Offshorearbejder",
  "Omr\u00e5deansvarlig",
  "Omr\u00e5deleder",
  "Omsorgsmedhj\u00e6lper",
  "Operat\u00f8r",
  "Optiker",
  "Opvasker",
  "Organist",
  "Ortop\u00e6dkirurg",
  "Overl\u00e6ge",
  "Overl\u00e6rer",
  "Overs\u00e6tter",
  "Oversygeplejerske",
  "P\u00e6dagog",
  "P\u00e6dagogmedhj\u00e6lper",
  "Pantefoged",
  "Parkeringsvagt",
  "Patolog",
  "PC-supporter",
  "Pedel",
  "Pedelmedhj\u00e6lper",
  "Pensionsr\u00e5dgiver",
  "Personalechef",
  "Personaleudviklingschef",
  "Piccoline",
  "Pilot",
  "Pizzabud",
  "Pladesmed",
  "Planteskolegartner",
  "Plastikkirurg",
  "Plastmager",
  "Port\u00f8r",
  "Postarbejder",
  "Pr\u00e6st",
  "Printoperat\u00f8r",
  "Procesingeni\u00f8r",
  "Proceskonsulent",
  "Procesoperat\u00f8r",
  "Processpecialist",
  "Procesteknolog",
  "Producer",
  "Produktchef",
  "Produktionsleder",
  "Produktionsplanl\u00e6gger",
  "Produktionstekniker",
  "Produktionsteknolog",
  "Produktkoordinator",
  "Produktspecialist",
  "Produktudvikler",
  "Programleder",
  "Programm\u00f8r",
  "Projektadministrator",
  "Projektassistent",
  "Projektchef",
  "Projektdirekt\u00f8r",
  "Projektingeni\u00f8r",
  "Projektkonsulent",
  "Projektkoordinator",
  "Projektkorddinator",
  "Projektleder",
  "Projektmedarbejder",
  "Psykolog",
  "Psykoterapeut",
  "Radiograf",
  "Receptionist",
  "Redaktionschef",
  "Redakt\u00f8r",
  "Redder",
  "Regnskabsassistent",
  "Regnskabschef",
  "Regnskabskonsulent",
  "Rejseleder",
  "Rekrutteringskonsulent",
  "Reng\u00f8ringsassistent",
  "Renovationsarbejder",
  "Reservel\u00e6ge",
  "Restaurantchef",
  "Restaurat\u00f8r",
  "Retsbetjent",
  "Revisor",
  "Revisorassistent",
  "Revisorelev",
  "Ridel\u00e6rer",
  "R\u00f8gdykker",
  "R\u00f8rl\u00e6gger",
  "S\u00e6lger",
  "Sagsbehandler",
  "Salgsansvarlig",
  "Salgsassistent",
  "Salgschef",
  "Salgsdirekt\u00f8r",
  "Salgsingeni\u00f8r",
  "Salgskonsulent",
  "Salgskoordinator",
  "Salgsleder",
  "Salgsmedarbejder",
  "Salgs- og marketingdirekt\u00f8r",
  "Salgsspecialist",
  "Salgstrainee",
  "Sanit\u00f8r",
  "SAP-konsulent",
  "Scenetekniker",
  "Scenograf",
  "Sekret\u00e6r",
  "Sekretariatsmedarbejder",
  "Sektionsleder",
  "Seminariel\u00e6rer",
  "Seniorkonsulent",
  "Seniorprogramm\u00f8r",
  "Serveroperat\u00f8r",
  "Servicechef",
  "Servicekonsulent",
  "Servicekoordinator",
  "Servicemedarbejder",
  "Servicetekniker",
  "Sikkerhedschef",
  "Sikkerhedskoordinator",
  "Sikkerhedsvagt",
  "Skadebehandler",
  "Skattekonsulent",
  "Skibsassistent",
  "Skibsf\u00f8rer",
  "Skibskok",
  "Skibsm\u00e6gler",
  "Skibsmaskinist",
  "Skibsmekaniker",
  "Skibsmont\u00f8r",
  "Skibsofficer",
  "Skiltemont\u00f8r",
  "Skoleleder",
  "Skolep\u00e6dagog",
  "Skomager",
  "Skorstensfejer",
  "Skovhugger",
  "Skr\u00e6dder",
  "Skuespiller",
  "Slagter",
  "Slagtermester",
  "Slagtersvend",
  "Slamsuger",
  "Smed",
  "Sm\u00f8rrebr\u00f8dsjomfru",
  "Snedker",
  "Socialp\u00e6dagog",
  "Socialr\u00e5dgiver",
  "Softwaredesigner",
  "Softwareingeni\u00f8r",
  "Softwarekonsulent",
  "Softwaremanager",
  "Softwaretester",
  "Softwareudvikler",
  "Soldat",
  "Sosu assistent",
  "Sosu hj\u00e6lper",
  "Souschef",
  "Speciall\u00e6ge",
  "Speciall\u00e6rer",
  "Specialsygeplejerske",
  "Spedit\u00f8r",
  "St\u00e6rkstr\u00f8msingeni\u00f8r",
  "St\u00e6rkstr\u00f8mstekniker",
  "Stenhugger",
  "Stewardesse",
  "Stilladsopstiller",
  "Strategiudvikler",
  "Studentermedarbejder",
  "Studentermedhj\u00e6lp",
  "Studentermedhj\u00e6lper",
  "Studievejleder",
  "Stukkat\u00f8r",
  "Stylist",
  "Styrmand",
  "Sundhedsassistent",
  "Sundhedshj\u00e6lper",
  "Sundhedskonsulent",
  "Sundhedsplejerske",
  "Supportchef",
  "Supportkonsulent",
  "Supportkoordinator",
  "Supportspecialist",
  "Sushikok",
  "Svejser",
  "Syerske",
  "Sygehj\u00e6lper",
  "Sygeplejerske",
  "Systemadministrator",
  "Systemanalytiker",
  "Systemansvarlig",
  "Systemarkitekt",
  "Systemassistent",
  "Systemchef",
  "Systemdesigner",
  "Systemingeni\u00f8r",
  "Systemkonstrukt\u00f8r",
  "Systemkonsulent",
  "Systemkoordinator",
  "Systemmedarbejder",
  "Systemprogramm\u00f8r",
  "Systemspecialist",
  "Systemsupporter",
  "Systemtekniker",
  "Systemudvikler",
  "T\u00e6kkemand",
  "Tagd\u00e6kker",
  "Tagrenser",
  "Talep\u00e6dagog",
  "Tandklinikassistent",
  "Tandl\u00e6ge",
  "Tandplejer",
  "Tandtekniker",
  "Taxichauff\u00f8r",
  "Teamkoordinator",
  "Teamleder",
  "Tekniker",
  "Teknisk arkitekt",
  "Teknisk assistent",
  "Teknisk chef",
  "Teknisk designer",
  "Teknisk isolat\u00f8r",
  "Teknisk konsulent",
  "Teknisk koordinator",
  "Teknisk projektleder",
  "Teknisk s\u00e6lger",
  "Teknisk skribent",
  "Teknisk supporter",
  "Telefoninterviewer",
  "Telefons\u00e6lger",
  "Teleingeni\u00f8r",
  "Telekomunikationsmont\u00f8r",
  "Teletekniker",
  "Testingeni\u00f8r",
  "Testkonsulent",
  "Testkoordinator",
  "Testleder",
  "Testtekniker",
  "Tjener",
  "Tolk",
  "T\u00f8mrer",
  "T\u00f8mrersvend",
  "Tonemester",
  "Trafikdataassistent",
  "Trafikleder",
  "Translat\u00f8r",
  "Truckf\u00f8rer",
  "Trykker",
  "TV-produktionstekniker",
  "Udvikler",
  "Udviklingschef",
  "Udviklingsdirekt\u00f8r",
  "Udviklingsingeni\u00f8r",
  "Udviklingskoordinator",
  "Underviser",
  "Universitetsl\u00e6rer",
  "Urmager",
  "V\u00e6gter",
  "V\u00e6rkf\u00f8rer",
  "V\u00e6rkf\u00f8rerassistent",
  "V\u00e6rkmester",
  "V\u00e6rkstedsassistent",
  "V\u00e6rkt\u00f8jsmager",
  "Vagtplanl\u00e6gger",
  "Vandv\u00e6rkspasser",
  "Varehuschef",
  "Varmemester",
  "Vejarbejder",
  "Vejingeni\u00f8r",
  "Vejleder",
  "Ventilationsmont\u00f8r",
  "Veterin\u00e6r",
  "Veterin\u00e6rsygeplejerske",
  "Viceskoleleder",
  "Vicev\u00e6rt",
  "Vindm\u00f8llemont\u00f8r",
  "Vindm\u00f8lletekniker",
  "Vinduespudser",
  "Virksomhedskonsulent",
  "Vognmand",
  "Voksenunderviser",
  "VVS-ingeni\u00f8r",
  "VVS-installat\u00f8r",
  "VVS-mont\u00f8r",
  "VVS-tekniker",
  "Webansvarlig",
  "Webdesigner",
  "Webgrafiker",
  "Web-koordinator",
  "Webmaster",
  "Web-programm\u00f8r",
  "Webprojektleder",
  "Web-tester",
  "Web-udvikler",
  "Webudvikler",
  "Zoneterapeut",
  "Zoolog",
  "\u00d8konom",
  "\u00d8konomiansvarlig",
  "\u00d8konomiassistent",
  "\u00d8konomichef",
  "\u00d8konomidirekt\u00f8r",
  "\u00d8konomikonsulent",
  "\u00d8konomir\u00e5dgiver"
)
