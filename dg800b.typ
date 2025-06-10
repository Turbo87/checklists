#import "./template.typ": *

#let aircraft = "DG-800B"

#show: checklist.with(aircraft: aircraft)

#section("Vorflugkontrolle", color: colors.preflight)[
  #step("Kraftstoffmenge", "Geprüft")
  #step("Trimmgewichte", "Geprüft")
  #step("Kuller", "Entfernt")
  #step("Fallschirm", "Angelegt")
  #step("Gurte", "Angelegt")
  #step("Pedale", "Eingestellt")
  #step("Höhenmesser", "Eingestellt")
  #step("Funk", "Eingestellt")
  #step("Headset", "Angelegt")
  #step("Bremsklappen", "Geprüft")
  #step("Steuerung", "Geprüft")
]

#section("Motorstart", color: colors.engine)[
  #step("Brandhahn", "Geöffnet")
  #step("Hauptschalter", "Ein")
  #step("Triebwerkschalter", "Ein")
  #step("Primer", "Auto")
  #step("Düse", "Statik")
  #step("Spiegel", "Eingestellt")
  #step("Zündung", "Ein")
  #step("Gashebel", "Leerlauf")
  #step("Propellerkreis", "Frei")
  #step("Anlasser", "Drücken")
  #step("Gashebel", "3000 RPM")
  #step("Haube", "Verriegelt")
  #step("Zündkreise", "Prüfen")
  #comment([Drehzahl muss über 2700 RPM bleiben])
]

#section("Rollen", color: colors.engine)[
  #comment("Nach Möglichkeit vermeiden")
  #step("Wölbklappe", "0°")
  #step("Trimmung", "Schwanzlastig")
  #step("Linke Hand", "Bremsklappen")
  #step("Rechte Hand", "Gashebel")
]

#section("Start", color: colors.takeoff)[
  #step("Wölbklappe", "8°")
  #step("Trimmung", "Schwanzlastig")
  #step("Höhenruder", "Gezogen halten")
  #step("Gashebel", "Vollgas")
  #step("Geschwindigkeit", "90 km/h")
  #step("Kühlwasser", "unter 95°C")
  #step("Abgastemperatur", "unter 650°C")
  #step("Fahrwerk", [Einfahren _auf Sicherheitshöhe_])
]

#section("Triebwerk einfahren", color: colors.landing)[
  #step("Gashebel", "Leerlauf")
  #step("Geschwindigkeit", "90 km/h")
  #step("Kühlwasser", "4°C Temperaturabfall")
  #step("Zündung", "Aus")
  #step("Propeller", "in Parkposition bringen")
  #comment("ggf. Starter betätigen")
  #step("Propellerbremse", "ggf. manuell betätigen")
  #step("Triebwerk", "Einfahren lassen")
  #comment("ggf. manuell einfahren")
  #step("Triebwerk", [ca. 1 sec ausfahren _(Kühlung)_])
  #step("Düse", "TEK")
  #comment("ca. 5 Minuten warten")
  #step("Triebwerk", "Einfahren")
  #step("Triebwerkschalter", "Aus")
]

#section("Anlassen in der Luft", color: colors.takeoff)[
  #step("Triebwerkschalter", "Ein")
  #step("Brandhahn", "Geöffnet")
  #step("Primer", "Auto")
  #step("Düse", "Statik")
  #step("Wölbklappe", "8°")
  #step("Geschwindigkeit", "80-90 km/h")
  #step("Zündung", "Ein")
  #step("Spiegel", "Eingestellt")
  #step("Gashebel", "Leerlauf")
  #step("Anlasser", "Drücken")
  #step("Gashebel", "Langsam auf Vollgas")
  #step("Geschwindigkeit", "90 km/h")
  #step("Trimmung", "Schwanzlastig")
]

#section("Landung", color: colors.landing)[
  #step("Fahrwerk", "Ausgefahren")
  #step("Wind", "Geprüft")
  #step("Gurte", "Festgezogen")
  #step("Wölbklappe", "8° oder L")
  #step("Geschwindigkeit", "105 km/h")
]

#show: checklist.with(aircraft: aircraft)

#section("Aufrüsten", color: colors.parking, line-height: 1.532em)[
  #step("Bremsklappen", "Verriegelt")
  #step("Wölbklappe", "0°")
  #step("Trimmung", "Vordere Stellung")
  #step("Innenflächen", "Rechts zuerst")
]

#section("Tägliche Kontrolle", color: colors.parking, line-height: 1.532em)[
  #step("Haubennotabwurf", "Verriegelt")
  #step("Hauptbolzen", "Gesichert")
  #step("Ruderprobe", "Durchgeführt")
  #step("Fremdkörperkontrolle", "Durchgeführt")
  #step("Instrumente", "Geprüft")
  #step("Sicherungen", "Geprüft")
  #step("Ausfahrzeit", "max. 13 sec")
  #step("Kraftstofffilter", "Geprüft")
  #step("Triebwerk", "Halb ausfahren")
  #step("Schleppkupplung", "Geprüft")
  #step("Hauptfahrwerk", [Geprüft _3.5 bar_])
  #step("Flügel links", "Geprüft")
  #step("Spindeltrieb / Gasfeder", "Befestigung geprüft")
  #step("Triebwerk", "Ganz ausfahren")
  #step("Schraubverbindungen", "Geprüft")
  #step("Propellerbremse", "Geprüft")
  #step("Zündanlage / Kerzenstecker", "Geprüft")
  #step("Zahnriemen", "Geprüft")
  #step("Fangseil", "Geprüft")
  #step("Schalldämpfer", "Geprüft")
  #step("Propellerträger / Anbauten", "Geprüft")
  #step("Propeller", "Sichtkontrolle / 1x drehen")
  #step("Drainer", "Kondenswasser ablassen")
  #step("Kühlflüssigkeit", "Geprüft")
  #step("Spornrad", [Geprüft _2.0 bar_])
  #step("Steuerseile", "Geprüft")
  #step("Seitenruder / Höhenruder", "Geprüft")
  #step("Flügel rechts", "Geprüft")
]

#section("Abrüsten", color: colors.parking, line-height: 1.532em)[
  #step("Flug", "Ausgelesen")
  #step("Motorzähler", "Notiert")
  #step("Hauptschalter", "Aus")
  #step("Batterien", "Ausgebaut")
  #step("Höhenleitwerk", "Abgebaut")
  #step("Rechte Außenfläche", "Abgebaut")
  #step("Linke Außenfläche", "Abgebaut")
  #step("Bremsklappen", "Verriegelt")
  #step("Innenflächen", "Abgebaut")
  #step("Rumpfwagengurt", "Befestigt")
  #step("Haube", "Verriegelt")
  #step("Rumpf", "Angeschnallt")
]

#section("Motor fährt nicht aus", color: colors.emergency)[
  #step("Sicherungen", "Prüfen")
  #step("Batteriespannung", "Prüfen")
]

#section("Motor abgesoffen", color: colors.emergency)[
  #step("Primer", "Aus")
  #step("Brandhahn", "ggf. schließen")
  #step("Gashebel", "Vollgas")
  #step("Anlasser", "Drücken")
  #comment(text(fill: colors.emergency, [nach Anspringen]))
  #step("Brandhahn", "Öffnen")
  #step("Gashebel", "3000 RPM")
]

#section("Dampfblasen", color: colors.emergency)[
  #comment(text(fill: colors.emergency, [Motor nimmt kein Gas an]))
  #step("Gashebel", "Leerlauf")
  #step("Anlasser", "mehrmals drücken")
  #step("(Alternative)", "schneller fliegen")
  #step("Gas geben", "wenn konstante Drehzahl")
]

#section("Anlasser defekt", color: colors.emergency)[
  #step("Anstürzen", "175 km/h")
  #comment(text(fill: colors.emergency, [benötigt min. 150m Höhe]))
]

#section([Feuer #text(size: 0.8em, "(am Boden)")], color: colors.emergency)[
  #step("Brandhahn", "Zu")
  #step("Zündung", "Aus")
  #step("Triebwerk", "Ausgefahren lassen")
  #step("Hauptschalter", "Aus")
  #step("Feuer", "Löschen")
]

#section([Feuer #text(size: 0.8em, "(im Flug)")], color: colors.emergency)[
  #step("Brandhahn", "Zu")
  #step("Gashebel", [Vollgas #emph(text(fill: colors.emergency, [bis Motor steht]))])
  #step("Triebwerk", [Einfahren #emph(text(fill: colors.emergency, [Flammen ersticken]))])
  #step("Triebwerkschalter", "Aus")
  #step("Landen", "")
  #step("Feuer", "Löschen")
]

#section("Wasserlandung", color: colors.emergency)[
  #step("Fahrwerk", "Ausfahren")
  #step("Fallschirmgurte", "Öffnen")
  #step("Anschnallgurte", "Festziehen")
  #step("Aufsetzen", "möglichst langsam")
  #step("Gesicht", "mit linkem Arm schützen")
  #step("Gurte", "Öffnen")
  #step("Haube", "Öffnen")
  #comment(text(fill: colors.emergency, [ggf. erst möglich nach Flutung des Cockpits]))
]
