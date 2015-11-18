# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Fav.destroy_all
Annonce.destroy_all


annonces = [
  {
    title: "Pharmacie dans le 95 à fort potentiel",
    description: "Pharmacie dans le 95 à fort potentiel de développement idéal pour une première installation.
    Faible apport personnel, idéal pour pharmacien(ne) motivé, réaliste, courageux (se), prix bas, taux inférieur à 2%, possibilité de prêt vendeur.
    Les Pharmaciens inscrits à pôle emploi peuvent bénéficier des aides à l’installation.
    Le rendement financier de cette opération est supérieur à 75%.
    Ne ratez pas cette opportunité !",
    picture: "http://www.ouipharma.fr/wp-content/uploads/Pharmacie-a-vendre-21.gif",
    region: "Ile-de-France",
    department: "Val-d'Oise",
    city: "Cergy",
    address: "3 rue de la mairie",
    turnover: "625000€",
    margin: "29,3%",
    payroll: "0€",
    team: "Aucun employé",
    total_area: "108m2",
    sales_area: "60m2",
    healthcare_setting: "20 médecins généralistes, 1 ophtalmologue, 4 gynécologues obstétriciens, 10 chirurgiens dentistes, 1 neurologue, 10 kinésithérapeutes, 11 infirmières, 2 endocrinologues, 2 diabétolgues",
    parking: true,
    walls: false,
    environment: "Urbain"
  },
  {
    title: "Pharmacie dans maison avec jardin",
    description: "> Quartier classé
    > Projets : 4 résidences seniors, maison médicale, 10 immeubles, 98 maisons en cours, RPA : 200 studios
    > Hausse CA : + 4,5%/an, marge élevée : 33%, loyer faible, panier : 57€, possibilité logement,
    > Pas de concurrent à 1 km",
    picture: "http://www.ouipharma.fr/wp-content/uploads/Pharmacie-a-vendre-7.gif",
    region: "Ile-de-France",
    department: "Val-d'Oise",
    city: "Pontoise",
    address: "12 place de l'Eglise",
    turnover: "870000€",
    margin: "33,8%",
    payroll: "60000€",
    team: "1 préparatrice à temps plein",
    total_area: "92m2",
    sales_area: "65m2",
    healthcare_setting: "8 médecins généralistes, 4 chirurgiens dentistes, 3 kinésithérapeutes, 2 endocrinologues",
    parking: false,
    walls: false,
    environment: "Centre ville"
    },
    {
      title: "Belle Pharmacie à Nice",
      description: "Belle pharmacie dans le centre ville de Nice.
      Mur et appartement de 100 m2, à  vendre si besoin.
      Accompagnement pendant 1 mois après la cession si nécessaire
      Aménagement récent et de qualité
      Fermeture annuelle de 10 jours pendant l’été",
      picture: "http://www.ouipharma.fr/wp-content/uploads/Pharmacie-a-vendre-9.gif",
      region: "PACA",
      department: "Alpes-Maritimes",
      city: "Nice",
      address: "18 allées de Chartres",
      turnover: "960000€",
      margin: "30,4%",
      payroll: "33000€",
      team: "1 préparatrice à temps partiel",
      total_area: "120m2",
      sales_area: "45m2",
      healthcare_setting: "5 médecins, 2 dentistes, 2 dermatologues",
      parking: true,
      walls: true,
      environment: "Centre ville"
    }
    ]

      annonces.each do |annonce|
        Annonce.create( title: annonce[:title], description: annonce[:description],
          remote_picture_url: annonce[:picture], region: annonce[:region],
          department: annonce[:department], address: annonce[:address],
          city: annonce[:city], turnover: annonce[:turnover],
          margin: annonce[:margin], payroll: annonce[:payroll],
          team: annonce[:team], total_area: annonce[:total_area],
          sales_area: annonce[:sales_area], healthcare_setting: annonce[:healthcare_setting],
          parking: annonce[:parking], walls: annonce[:walls],
          environment: annonce[:environment]
          )
      end












