De Context (Voordat we beginnen)
Waarom bestaat dit concept? Welk probleem lost het op?
Je kunt een systeem pas echt goed beveiligen als je weet hoe een aanvaller denkt en werkt. Red Teaming bestaat om de blinde vlekken in je infrastructuur te vinden voordat echte cybercriminelen dat doen. Het lost het probleem op van valse veiligheid: je denkt dat je firewalls goed staan, maar bewijst dit ook door er zelf op aan te vallen.

Waar past dit in het grote plaatje van DevSecOps?
Binnen de DevSecOps-cyclus valt dit onder de "Test" en "Monitor" fases. In een volwassen omgeving voer je dit soort Red Team-scans geautomatiseerd uit in je CI/CD-pijplijn. Zodra een developer per ongeluk een onveilige netwerkpoort openzet, slaat jouw geautomatiseerde scan direct alarm.

Real-world analogie

Stel je jouw server voor als een groot kantoorpand met wel 65.000 deuren en ramen. Een "Red Teamer" is een ingehuurde, bevriende inbreker die midden in de nacht langs het pand loopt en aan elke deurkruk voelt. Hij breekt niks af, maar schrijft op zijn klembord: "Deur 80 is open, en het slot van deur 22 is zwaar verouderd." De volgende ochtend geeft hij dat lijstje aan de bewaking (het Blue Team), zodat zij betere sloten kunnen installeren.

1. Concept Uitleg
Elke server communiceert met het internet via digitale 'deuren', die we poorten noemen. Websitetraffic gaat bijvoorbeeld door poort 80, en beheer-verkeer door poort 22. Soms zetten ontwikkelaars poorten open om dingen te testen, en vergeten ze deze weer dicht te doen. Een Red Team-scan (port scanning) is het systematisch langslopen van al deze deuren om te kijken welke openstaan en welke software daarachter luistert. Als we oude of ongebruikte software vinden die openstaat naar het internet, hebben we een potentieel lek gevonden.

2. Hands-on Opdracht
Het Scenario:
Je bent de kersverse Security Engineer voor de e-commerce startup "KoopSnel". Jouw collega's van de infrastructuur-afdeling hebben gisteren een nieuwe server online gezet. Ze zweren dat hij "helemaal veilig" is. Jouw opdracht is om dit te verifiëren door een gecontroleerde verkenning uit te voeren.

De Opdracht (in 4 fases):

Fase 1: De Target Bepalen

Wat je doet: Kies een veilige target om te scannen. Omdat zomaar scannen illegaal is, gebruiken we de officiële test-server van de makers van onze tool: scanme.nmap.org.

Waarom: Je leert dat de eerste regel van Red Teaming toestemming (Scope) is. Je valt nooit iets aan zonder dat je zeker weet dat het mag.

Fase 2: Aan de deuren voelen (Port Scan)

Wat je doet: Gebruik de tool nmap (Network Mapper) via je terminal om te scannen welke van de 1000 meest populaire poorten openstaan op deze server.

Waarom: Dit is de basis van elke cyberaanval. Je wilt weten wat het "aanvalsoppervlak" (attack surface) is.

Fase 3: Vingerafdrukken nemen (Version Detection)

Wat je doet: Pas je commando aan zodat de tool niet alleen vertelt óf een poort open is, maar ook welke versie van de software daarachter draait (bijvoorbeeld 'Apache webserver versie 2.4.7').

Waarom: Een open deur is niet per se erg. Maar een open deur met een kapot slot (verouderde software met bekende kwetsbaarheden) is een kritiek risico.

Fase 4: Rapportage (Output Redirection)

Wat je doet: Laat de scan nog een keer draaien, maar zorg dat de output niet alleen op je scherm verschijnt, maar netjes wordt opgeslagen in een bestand genaamd red-team-report.txt.

Waarom: In DevSecOps draait alles om documentatie en automatisering. Een scan is waardeloos als je de resultaten niet kunt opslaan en doorsturen naar de mensen die het moeten fixen.

Het Eindresultaat:
Je hebt een tekstbestand (red-team-report.txt) waarin overzichtelijk staat welke poorten openstaan op scanme.nmap.org en welke softwareversies daar draaien.

3. Begrip Check
Voordat je op de 'record' knop van je camera drukt, moet je deze vragen vloeiend kunnen uitleggen:

Waarom is het voor een Red Teamer belangrijker om de exacte versie van de draaiende software te weten, in plaats van alleen te weten dat de poort 'open' is?
- Hoewel het krachtig is om te weten welke poorten open zijn, is het belangrijker welke versies runnende software is. Up-to date software zijn vaak patched
Wat is het verschil in mindset en werkwijze tussen wat jij in deze opdracht doet, en wat een kwaadwillende hacker (Black Hat) doet, aangezien jullie exact dezelfde tool gebruiken?
Ik wil leren en beter worden in IT (/hobby), maar een hacker is kwaadaardig.
Waarom zou je deze netwerkscan uiteindelijk in een geautomatiseerd bash-script (of CI/CD pijplijn) willen stoppen in plaats van het altijd handmatig te typen? 
het maakt het makkelijker om uit te voeren, anders moet je steeds zelf uittypen en dat is tevens ook langzamer
