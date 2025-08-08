
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten in PDF mit C# bereinigen"
head_description: "GroupDocs.Redaction for .NET ermöglicht es, Metadaten in PDF-Dateien zu entfernen oder zu aktualisieren. Beseitigen Sie versteckte Daten, die private Informationen offenbaren könnten."

############################# Header ############################
title: "Metadaten in PDF-Dateien mit .NET bereinigen" 
description: "Schützen Sie sensible Geschäfts- und persönliche Informationen in PDF-Dateien mit C#. Zuverlässige Werkzeuge für effektiven Datenschutz."
subtitle: "Haupmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet C#-Entwicklern benutzerfreundliche Werkzeuge zur Redigierung von Inhalten in PDF-Dateien. Maskieren Sie Text, Bilder und Metadaten über mehrere Formate hinweg.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten aus Pdf-Dokumenten entfernen"
    content: |
      GroupDocs.Redaction hilft Ihnen, Dokumentenmetadaten schnell in Ihren .NET-Apps zu sichern.
      
      1. Erstellen Sie eine Redactor-Instanz und laden Sie Ihre Pdf-Datei.
      2. Richten Sie die Redigierung ein, um alle versteckten Metadaten zu entfernen.
      3. Wenden Sie die Redigierung an, um das Dokument zu bereinigen.
      4. Speichern Sie die aktualisierte Datei.
   
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
        // Metadaten aus PDF-Dateien löschen

        // Laden Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Konfigurieren Sie die Einstellungen zur Entfernung der Metadaten
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Änderungen anwenden und Datei speichern
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Daten in Dokumenten redigieren"
  description: "GroupDocs.Redaction for .NET hilft Ihnen, vertrauliche Inhalte in verschiedenen Dateiformaten zu verbergen oder zu löschen. Halten Sie private Daten sicher, während die Dokumente klar und professionell bleiben."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Leistungsstarke Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Durchsuchen Sie Ihre Dokumente nach sensiblen Texten und ersetzen oder entfernen Sie ihn, um die Privatsphäre zu schützen."

    # feature loop
    - title: "Bildinhalte ausblenden"
      content: "Fügen Sie Bilder oder spezifische Bereiche hinzu, um sensible visuelle Inhalte zu verdecken."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen oder bearbeiten Sie versteckte Metadaten, um unerwünschte Datenlecks zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadaten entfernen"
      content: |
        Dieses Beispiel zeigt, wie man Metadaten in einer PDF-Datei ändert.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie die PDF-Datei in den Redaktor
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Richten Sie die Redigierung für das Author-Feld ein
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Richten Sie die Redigierung für das Title-Feld ein
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Führen Sie die Redigierung im Dokument aus
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie die bereinigte Datei
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
    title: "PDF-Dateien mit .NET Metadaten redigieren"
    exclude: "PDF"
    description: "Verwenden Sie .NET, um versteckte Daten aus PDF-Dateien zu löschen. Eine einfache und effektive Möglichkeit, sensible Informationen in Ihren Dokumenten zu sichern."
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