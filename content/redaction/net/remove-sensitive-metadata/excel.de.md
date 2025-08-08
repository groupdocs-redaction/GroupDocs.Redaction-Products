
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten in EXCEL über C# bearbeiten und entfernen"
head_description: "Sichern Sie Ihre EXCEL-Dokumente, indem Sie Metadaten mit GroupDocs.Redaction for .NET entfernen. Beseitigen Sie versteckte Daten, die die Privatsphäre gefährden könnten."

############################# Header ############################
title: "Metadaten in EXCEL-Dateien über .NET schützen" 
description: "Mit C# können Sie sensible Daten aus EXCEL-Dateien bereinigen. Werkzeuge, die Ihre Informationen geschützt halten."
subtitle: "Die wichtigsten Vorteile von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet C#-Entwicklern einen zuverlässigen Weg zur Verwaltung der Redigierung in EXCEL-Dateien. Es funktioniert mit Text, Bildern und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Excel-Dateien bereinigen"
    content: |
      Verwenden Sie GroupDocs.Redaction in Ihren .NET-Projekten, um Dokumentenmetadaten sicher zu verwalten.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie die Ziel-Excel-Datei.
      2. Konfigurieren Sie die Redigierung, um versteckte Metadaten zu entfernen.
      3. Führen Sie den Reinigungsprozess durch.
      4. Speichern Sie die finale Version.
   
    code:
      platform: "net"
      copy_title: "Kopieren"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Beispielredaktionen"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "Klicken zum Kopieren"
        copy_done: "kopiert"
      links:
        #  loop
        - title: "Weitere Beispiele"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Dokumentation"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Metadaten aus EXCEL bereinigen

        // Initialisieren Sie den Redaktor und laden Sie die Datei
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Legen Sie Optionen zur Entfernung der Metadaten fest
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redigieren Sie und speichern Sie das Ergebnis
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Private Daten in Ihren Dateien löschen"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, Text, Bilder und Metadaten in mehreren Formaten zu bereinigen. Ideal für persönliche, rechtliche und geschäftliche Dokumente."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge zur Metadatenentfernung"
  features:
    # feature loop
    - title: "Text suchen und entfernen"
      content: "Finden Sie persönliche oder vertrauliche Texte in Dokumenten und entfernen Sie diese sicher."

    # feature loop
    - title: "Visuelle Elemente ausblenden"
      content: "Überlagern Sie sensible Teile von Bildern, um deren Anzeige zu verhindern."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie eingebettete Daten, die möglicherweise sensible Informationen leaken."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Zielen Sie Metadaten zur Redigierung an"
      content: |
        Erfahren Sie, wie Sie Metadaten wie Autor oder Titel aus einem EXCEL-Dokument auswählen und entfernen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importieren Sie das Dokument in den Redaktor
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Zielen Sie auf die Autorenmetadaten ab
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Zielen Sie auf die Titelmetadaten ab
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Änderungen anwenden
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie das aktualisierte Dokument
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Kopieren"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "Klicken zum Kopieren"
          copy_done: "kopiert"
        top_links:
          #  loop
          - title: "Ergebnis herunterladen"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Weitere Beispiele"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Dokumentation"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Bereit loszulegen?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an"
  items:
    #  loop
    - title: "Nuget Download"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Lizenzierung"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Metadaten in EXCEL über .NET entfernen"
    exclude: "EXCEL"
    description: "Beseitigen Sie private Metadaten in EXCEL-Dateien mit .NET. Halten Sie Ihre Dokumente sauber und sicher."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG Bild"


---