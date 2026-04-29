Opdraht 1
Gebruik van Nmap:

-> nmap -sn IP/Hostname
-> nmap -sV IP/Hostname (dit zorgt voor running services in kaart brengen)
-> nmap -oN output.txt IP/Hostname ( Dit zorgt ervoor dat output wordt opgeslagen in .txt )

Bron:
https://www.ubuntu18.com/install-nmap-ubuntu/

Opdracht 2: afvuren van script met Nmap
Opdracht 1 was het kijken welke poorten openstaan en welke versie software gebruikt wordt, in opdracht 2 gaan we dieper en kijken we welke OS het machine gebruikt en door middel van nmap -sC kunnen we default script afvuren naar "target" 

Wat is de NSE (Nmap Scripting Engine) en waarom maakt dit Nmap exponentieel krachtiger dan een standaard poortscanner?
- Het vuurt default scripts af op "target", poortscanner kijkt alleen wat open is maar de Nse kijkt naar exploits
- Waarom vereist OS-detectie vaak sudo (root/administrator) rechten op jouw eigen machine om uit te kunnen voeren?
Nmap stuurt opzettelijk "kapotte" of hele vreemde netwerkpakketjes naar de doelserver. Waarom? Omdat elk besturingssysteem (Windows, Linux, macOS) net een beetje anders reageert op een fout of een gek pakketje. Ze hebben als het ware allemaal een eigen "digitaal accent". Door te luisteren naar hoe de server terugpraat na het ontvangen van die gekke pakketjes, weet Nmap: "Ah, dat is overduidelijk een Windows-server!"
-- Door sudo uit te voeren geef je toestemming om zo vreemd pakket te maken en te versturen

False Positives: Wat betekent deze term in de cybersecurity, en waarom mag je als DevSecOps engineer niet blind vertrouwen op alles wat een kwetsbaarheidsscanner rapporteert?
False Positives zijn alarms dat geen threat zijn/is, stel de rookmelder gaat af, omdat een eten overcook. er is geen brand, maar alarm gaat af. Het zelfde met deze scanners wellicht detecteert die een oude apache server versie, maar wellicht hebben de ontwikkelaars dit lek al gedicht, maar niet de versienummer aangepast.

Bron:
https://medium.com/@dhruva0/%EF%B8%8F-nmap-scripting-engine-nse-cheat-sheet-93632b39d95d
https://nmap.org/book/man-nse.html






