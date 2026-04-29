Het onderwerp van vandaag is: Geautomatiseerde Log Analyse & Bestandsbeveiliging (Least Privilege).

Hier is je plan voor vandaag:

1. Uitleg van het concept (Automated Log Parsing & Access Control)
Binnen DevSecOps wil je beveiligingsincidenten snel en geautomatiseerd kunnen opsporen zonder handmatig eindeloze logbestanden door te spitten. Vandaag focus je op het automatiseren van log-analyse met behulp van standaard Linux text-processing tools. Je leert hoe je specifieke beveiligingsgebeurtenissen, zoals mislukte inlogpogingen, als een 'speld in een hooiberg' uit systeemlogs filtert. Daarnaast is het in de security-wereld cruciaal dat dergelijke operationele scripts de juiste, strakke bestandsrechten (permissions) krijgen.  Dit combineert direct automatisering (DevOps) met veiligheid (Sec) op de command line.

2. De Hands-on Opdracht
Scenario: Je bent de junior DevSecOps engineer voor een publiek bereikbare Linux-server. De CISO wil dagelijks een overzicht van potentiële brute-force aanvallen op jullie beheerpoort, zonder dat het SOC-team handmatig moet zoeken.

De Opdracht: Schrijf een Bash-script genaamd ssh-monitor.sh.

Dit script moet het authenticatielogboek van jouw Linux-omgeving (vaak /var/log/auth.log of vergelijkbaar, afhankelijk van je distro) uitlezen.

Filter automatisch op mislukte SSH-inlogpogingen (Failed password).

Laat het script de IP-adressen van deze verdachte pogingen wegschrijven naar een nieuw bestand genaamd suspect_ips.txt.

De Security Twist: Gebruik bestandsrechten (chmod en/of chown) om ervoor te zorgen dat alleen jouw gebruiker (de eigenaar) dit script mag lezen, schrijven én uitvoeren. Elke andere gebruiker op het systeem mag absoluut nul rechten op dit bestand hebben.
Test het script lokaal om te bewijzen dat het werkt en de output genereert. 
