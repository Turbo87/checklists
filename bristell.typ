#import "./template.typ": *

#let aircraft = "Bristell LSA-K-916"

#show: checklist.with(aircraft: aircraft)

#section("Vorflugkontrolle", color: colors.preflight)[
  #step("Benzintanks", "Drainen")
  #step("Lane A/B", "Aus")
  #step("Parkbremse", "Gesetzt")
  #step("Benzinvorrat", "Geprüft")
  #step("Propeller", "Geprüft")
  #step("Ölstand", "Geprüft")
  #step("Kühlmittelstand", "Geprüft")
  #step("Steuerung", "Freigängig")
  #step("Klappen", "Geprüft")
  #step("Pitotrohr", "Abdeckung entfernt")
  #step("Bugradgabel", "Entfernt")
  #step("Seitenruderpedale", "Eingestellt")
  #step("Gurte", "Angelegt")
  #step("Haube", "Verriegelt")
]

#section("Motorstart", color: colors.engine)[
  #step("Außentemperatur", "-10 bis 50°C")
  #comment("Motor bei unter 10°C vorwärmen")
  #step("Öltemperatur", "über -20°C")
  #step("Rettungssystem", "Entsichert")
  #step("Master", "Ein")
  #step("EFIS", "Ein")
  #step("Start Power", "Ein")
  #step("Lane A/B", "Ein")
  #step("Warnlampen A/B", "Aus")
  #step("Main Pump", "Ein")
  #step("Kraftstoffdruck", "Grüner Bereich")
  #step("Strobe", "Ein")
  #step("Gashebel", "nach Öltemperatur")
  #comment([10°C → 40% ~ 0°C → 45% ~ -5°C → 50% #linebreak() -10°C → 55% ~ -15°C → 60%])
  #step("Starter", "Drücken")
  #comment([max. 10s → 2 Minuten warten])
  #step("Gashebel", "2000 RPM")
  #step("Start Power", "Aus")
  #step("Flight Instruments", "Ein")
  #step("Avionic", "Ein")
]

#section("Warmlauf", color: colors.engine)[
  #step("Gashebel", "2500 RPM")
  #step("Höhenmesser", "Eingestellt")
  #step("Funk", "Eingestellt")
  #step("Transponder", "VFR / 7000 / ALT")
  #step("Klappen", "Geprüft")
  #step("Sicherungen", "Geprüft")
  #step("Öltemperatur", "50°C erreicht")
  #step("Gashebel", "2000 RPM")
]

#section("Rollen", color: colors.engine)[
  #step("Parkbremse", "Gelöst")
  #step("Höhenruder", "in Mittelstellung halten")
  #step("Steuerung", "Geprüft")
  #step("Bremsen", "Geprüft")
]

#section("Motortest", color: colors.engine)[
  #step("Parkbremse", "Gesetzt")
  #step("Temperaturen", "Grüner Bereich")
  #step("Gashebel", "2500 RPM")
  #step("Lane A", "Geprüft")
  #step("Lane B", "Geprüft")
  #comment("min. 15s warten / max. 250 RPM Abfall")
  #step("AUX Pump", "Ein")
  #step("Main Pump", "Aus")
  #step("Kraftstoffdruck", "Grüner Bereich")
  #step("Main Pump", "Ein")
]

#show: checklist.with(aircraft: aircraft)

#section("Vor dem Abflug", color: colors.takeoff)[
  #step("Haube", "Verriegelt")
  #step("Lane A/B", "Ein")
  #step("Warnlampe A/B", "Aus")
  #step("Beide Kraftstoffpumpen", "Ein")
  #step("Trimmung", "Neutral")
  #step("Instrumente", "Grüner Bereich")
  #step("Klappen", "10°")
  #step("Tankwahlschalter", "Vollerer Tank")
  #step("Steuerung", "Freigängig")
  #step("Abflugverfahren", "Besprochen")
  #step("Sicherheitsbriefing", "Durchgeführt")
  #step("Positionslichter", "nach Bedarf")
]

#section("Start", color: colors.takeoff)[
  #step("Bremse", "Gelöst")
  #step("Gashebel", "Vollgas")
  #step("Drehzahl", "Geprüft")
  #step("Abheben", "90 km/h")
  #step("Steigflug", "120 km/h")
  #step("Klappen",  [Einfahren ab 150ft AGL])
  #step("Geschwindigkeit", [V#sub[Y] 148 km/h / V#sub[X] 128 km/h])
  #comment([V#sub[Y] (best rate of climb) / V#sub[X] (best angle of climb)])
]

#section("Reiseflug", color: colors.takeoff)[
  #step("Gashebel", "nach Bedarf")
  #comment("max. 5800 RPM / 5500 RPM (dauerhaft)")
  #step("Trimmung", "nach Bedarf")
  #step("Instrumente", "Grüner Bereich")
  #step("AUX Pump", "Aus")
  #step("Tankwahlschalter", "Vollerer Tank")
  #comment("Alle 20 Minuten wechseln")
]

#section("Sinkflug", color: colors.landing)[
  #step("Gashebel", "15-17 inHg")
  #step("Geschwindigkeit", "165-185 km/h")
  #comment("→ Sinkrate 500 ft/min")
]

#section("Anflug", color: colors.landing)[
  #step("ATIS / Wetter", "Informationen eingeholt")
  #step("Anflugverfahren", "Durchgesprochen")
  #step("Gurte", "Festgezogen")
  #step("Höhenmesser", "Eingestellt")
  #step("Gashebel", "nach Bedarf")
  #step("AUX Pump", "Ein")
  #step("Geschwindigkeit", "140 km/h")
  #step("Klappen", "10°")
]

#section("Endanflug", color: colors.landing, line-height: 1.5em)[
  #step("Geschwindigkeit", "120 km/h")
  #step("Klappen", "30°")
  #step("Gashebel", "7 inHg / über 2600 RPM")
]

#section("Durchstarten", color: colors.emergency, line-height: 1.5em)[
  #comment(text(fill: colors.emergency, weight: "bold", "POWER → PITCH → FLAPS"))
  #step("Gashebel", "Vollgas")
  #step("Geschwindigkeit", "130 km/h")
  #step("Klappen", "10°")
  #step("",  [Einfahren ab 150ft AGL])
  #step("Geschwindigkeit", "148 km/h")
]

#section("Landung", color: colors.landing, line-height: 1.5em)[
  #step("Gashebel", "Leerlauf")
  #step("Aufsetzen", "auf den Haupträdern")
  #step("Bremsen", "nach Bedarf")
  #step("Klappen", "Einfahren")
]

#section("Nach der Landung", color: colors.landing, line-height: 1.5em)[
  #step("Gashebel", "nach Bedarf")
  #step("Trimmung", "Neutral")
]

#section("Abstellen und Parken", color: colors.parking, line-height: 1.5em)[
  #step("Parkbremse", "Gesetzt")
  #step("Gashebel", "2000 RPM")
  #step("Timer", "Gestartet")
  #step("Rettungsgerät", "Gesichert")
  #step("Avionic", "Aus")
  #step("Flight Instruments", "Aus")
  #step("Timer", "2 min abgelaufen")
  #step("Lane A/B", "Aus")
  #step("Strobe", "Aus")
  #step("AUX Pump", "Aus")
  #step("Main Pump", "Aus")
  #step("EFIS", "Aus")
  #step("Master", "Aus")
]

#show: checklist.with(aircraft: aircraft, emergency: true)

#section([Triebwerksausfall #text(size: 0.8em, "(Startlauf)")], color: colors.emergency)[
  #step("Gashebel", "Leerlauf")
  #step("Lane A/B", "Aus")
  #step("Bremse", "Betätigen")
]

#section([Triebwerksausfall #text(size: 0.8em, "(im Flug)")], color: colors.emergency)[
  #step("Geschwindigkeit", "120 km/h")
  #step("Höhe", "unter 150 ft: in Startrichtung landen")
  #step("", "über 150 ft: Landefeld wählen")
  #comment("ggf. Triebwerk Neustart versuchen (siehe unten)")
  #step("Klappen", "nach Bedarf")
  #step("Tankwahlschalter", "Aus")
  #step("Lane A/B", "Aus")
  #step("Gurte", "Festgezogen")
  #step("ggf. Transponder", "7700")
  #step("ggf. Funk", [Notfallmeldung _mit Position_])
  #step("Hauptschalter", [Aus _vor der Landung_])
  #step("Landen", "")
]

#section("Triebwerk Neustart", color: colors.emergency)[
  #step("AUX Pump", "Ein")
  #step("Tankwahlschalter", "vollerer Tank")
  #step("Gashebel", "Mittelstellung")
  #step("Lane A/B", "Ein")
  #step("Start Power", "Ein")
  #step("Starter", "Drücken")
  #step("Start Power", "Aus")
]

#section([Feuer #text(size: 0.8em, "(im Flug)")], color: colors.emergency)[
  #step("Heizung", "Aus")
  #step("Tankwahlschalter", "Aus")
  #step("Gashebel", "Vollgas")
  #step("Hauptschalter", "Aus")
  #step("Lane A/B", [Aus _wenn Motor abgestellt_])
  #step("Landefeld suchen", "")
  #step("Notlandung", "siehe Triebwerksausfall")
]

#section("Trudeln", color: colors.emergency)[
  #step("Gashebel", "Leerlauf")
  #step("Steuerknüppel", "Neutralstellung")
  #step("Seitenruder", "Gegen die Drehrichtung")
  #step("Höhenruder", "Leicht Drücken")
  #comment("→ Drehung stoppt")
  #step("Seitenruder", "Neutralstellung")
  #step("Höhenruder", "Langsam abfangen")
]

#section("Verlust der Steuerung", color: colors.emergency)[
  #step("Querruder", "mit Seitenruder steuern")
  #comment([notfalls Rettungsgerät auslösen])
  #step("Höhenruder", "ggf. mit Trimmruder steuern")
  #comment([notfalls Rettungsgerät auslösen])
  #step("Seitenruder", "ggf. mit Querruder steuern")
  #step("Klappen", "Geschwindigkeit anpassen")
  #step("", "am nächsten Flugplatz landen")
  #step("", "mehr Landestrecke einplanen")
]

#section("Rettungssystem", color: colors.emergency)[
  #step("ggf. Transponder", "7700")
  #step("ggf. Funk", [Notfallmeldung _mit Position_])
  #step("Rettungssystem", "Auslösen")
  #comment("Aktivierungsgriff fest ziehen")
  #step("Tankwahlschalter", "Aus")
  #step("Lane A/B", "Aus")
  #step("Master", "Aus")
  #step("Gurte", "Festgezogen")
  #step("Körper", "Straffen")
  #step("Gesicht", "mit den Händen schützen")
]
