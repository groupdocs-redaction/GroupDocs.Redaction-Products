---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: de
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Entfernen Sie vertrauliche Daten aus Dokumenten mit Java"
head_description: "Schützen Sie Ihre sensiblen Informationen mit GroupDocs.Redaction for Java. Verbergen, redigieren oder löschen Sie mühelos private Inhalte in PDFs, Office-Dateien und Bildern."

############################# Header ############################
title: "Vertrauliche Daten mit GroupDocs.Redaction schützen"
description: "Entfernen Sie private Daten, redigieren Sie Text und bereinigen Sie Metadaten aus PDFs, Word, Excel, PowerPoint und Bildformaten mithilfe des zuverlässigen Java-Toolkits."
words:
  for: "für"

actions:
  main: "Maven Download"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Lizenzierung"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Bereit zum Start?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an."

release:
  title: "Version {0} veröffentlicht"
  notes: "Erfahren Sie, was neu ist"
  downloads: "Downloads"

code:
  title: "Schritte zur Redigierung von Dokumenteninhalten"
  more: "Weitere Beispiele"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Laden Sie Ihre Quelldatei mit einer Redactor-Instanz.
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Definieren Sie die Redaktionskriterien und -einstellungen.
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Führen Sie den Redaktionsvorgang aus.
        RedactorChangeLog result = redactor.apply(red);

        // Speichern Sie die Datei mit angewendeten Redaktionen.
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction auf einen Blick"
  description: "Verbessern Sie Ihre Java-Anwendungen mit professionellen Redaktionswerkzeugen."
  features:
    # feature loop
    - title: "Entfernen Sie sensiblen Text"
      content: "Mit GroupDocs.Redaction for Java können Sie nach vertraulichen Texten suchen und diese mit anpassbaren Überlagerungen oder Ersetzungen verbergen. Kompatibel mit PDFs, Word, Excel und mehr, ist dieses Ideal für regulatorische Compliance und sicheres Dokumententeilen."

    # feature loop
    - title: "Bilder verbergen"
      content: "Identifizieren und maskieren Sie Bilder vollständig oder teilweise gemäß Ihren Anforderungen. Definieren Sie Erkennungsregeln und Bereichskoordinaten, um visuelle Daten effizient zu sichern."

    # feature loop
    - title: "Bereinigen Sie eingebettete Metadaten"
      content: "Dateien können verborgene Informationen wie Autorennamen, Erstellungswerkzeuge oder Gerätedetails enthalten. GroupDocs.Redaction for Java ermöglicht das Erkennen und Sanitizieren von Metadaten in Word, Excel, Bildern und anderen Formaten."

    # feature loop
    - title: "Redigieren Sie eingebettete Objekte"
      content: "Reinigen Sie Dokumente gründlich, indem Sie Elemente wie PDF-Anmerkungen, Kommentare oder andere eingebettete Gegenstände redigieren, um jegliche Rückstände vertraulicher Informationen zu beseitigen."

############################# Platforms ############################
platforms:
  enable: true
  title: "Plattformunabhängigkeit"
  description: "GroupDocs.Redaction for Java funktioniert auf großen Betriebssystemen, Frameworks und Entwicklungsplattformen."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Unterstützte Dateiformate"
  description: |
    GroupDocs.Redaction for Java unterstützt die Arbeit mit den folgenden [Dateiformaten](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office Formate
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Andere Office Formate
        * **Portabel:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Textformate:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Andere Formate
        * **Web:** HTM, HTML, MD
        * **Bilder:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Was Sie mit GroupDocs.Redaction tun können"
  description: "Lokalizieren und redigieren Sie Inhalte aus PDFs, Office-Dokumenten und Bildern schnell und präzise."

  items:
    # feature loop
    - icon: "search"
      title: "Präzise Suche"
      content: "Nutzen Sie groß- und kleinschreibungssensitive und -insensitive Suchmodi, um exakte Übereinstimmungen zu finden und zu redigieren."

    # feature loop
    - icon: "text"
      title: "Text finden und ersetzen"
      content: "Automatisch vertrauliche Texte im gesamten Dokument erkennen und substituieren oder löschen."

    # feature loop
    - icon: "image"
      title: "Überlagerung mit benutzerdefinierten Bildern"
      content: "Verwenden Sie Bildblöcke, um redigierten Text zu verdecken, während das Layout erhalten bleibt."

    # feature loop
    - icon: "search"
      title: "Verwendung von Regex für erweiterte Redaktionen"
      content: "Nutzen Sie reguläre Ausdrücke, um komplexe Muster zu erkennen und intelligent zu redigieren."

    # feature loop
    - icon: "table"
      title: "Redigieren spezifischer Bereiche"
      content: "Begrenzen Sie Redaktionen auf ausgewählte Seiten oder Zonen, indem Sie präzise Bereiche definieren, die bearbeitet werden sollen."

    # feature loop
    - icon: "template"
      title: "Metadatenfelder bereinigen"
      content: "Identifizieren und bereinigen Sie Metadaten im Dokument, einschließlich Autor, Unternehmen oder Tracking-Daten."

    # feature loop
    - icon: "pdf"
      title: "Export in gewünschtem Format"
      content: "Speichern Sie Ihre redigierten Dateien im PDF oder einem anderen unterstützten Format, ohne Integrität des Layouts zu verlieren."

    # feature loop
    - icon: "template"
      title: "Alle Metadaten löschen"
      content: "Entfernen Sie Metadaten vollständig von unterstützten Dateien in nur einem Befehl."

    # feature loop
    - icon: "hyperlink"
      title: "Automatisierte Redaktionsrichtlinien"
      content: "Erstellen Sie wiederverwendbare Redaktionskonfigurationen, die in XML gespeichert sind, für konsistente Batch-Redaktionen."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Codebeispiele"
  description: "Beispiele gebräuchlicher Anwendungsfälle für GroupDocs.Redaction for Java."
  items:
    # code sample loop
    - title: "Redaktion mit Regex"
      content: |
        GroupDocs.Redaction for Java ermöglicht Java-Entwicklern, [Regex-basierte Redaktionen](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) anzuwenden, mit optionaler Bildmaskierung:
        {{< landing/code title="Word-Dokumente mit regulären Ausdrücken redigieren">}}
        ```java {style=abap}
        // Erstellen Sie eine Instanz der Redactor-Klasse.
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Definieren Sie Redaktionsregeln mit einem regulären Ausdruck.
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Maskieren Sie alle übereinstimmenden Texte mit blauen Quadratüberlagerungen.
            redactor.apply(redaction);

            // Speichern Sie das redigierte Word-Dokument.
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Entfernen Sie alle Metadaten"
      content: |
        Mit unserer API können Sie [Metadaten löschen](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) in mehreren Dateitypen in einem Schritt:
        {{< landing/code title="Entfernen Sie alle Metadaten aus Präsentationen">}}
        ```java {style=abap}   
        // Geben Sie den Pfad der Präsentation an Redactor.
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Konfigurieren Sie die Redaktionsoptionen.
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Löschen Sie alle Metadaten aus der Präsentation.
            redactor.apply(red);

            // Speichern Sie die bereinigte Präsentationsdatei.
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
