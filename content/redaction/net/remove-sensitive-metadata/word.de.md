
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten aus WORD mit C# entfernen"
head_description: "Verwenden Sie GroupDocs.Redaction for .NET, um versteckte Metadaten in WORD-Dateien zu finden und zu löschen. Halten Sie Ihre Dokumente privat und sicher vor unerwünschter Offenlegung."

############################# Header ############################
title: "Metadaten in WORD-Dateien mit .NET entfernen" 
description: "Schützen Sie persönliche und Unternehmensdaten in WORD-Dateien mit C#. Einfache Werkzeuge für zuverlässige Dateiprivatsphäre."
subtitle: "Was Sie mit GroupDocs.Redaction for .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hilft C#-Entwicklern, Inhalte in WORD-Dateien zu schützen. Bereinigen Sie schnell Text, Bilder und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten aus Word-Dateien löschen"
    content: |
      Mit GroupDocs.Redaction ist es einfach, die Metadaten von Dokumenten in Ihrer .NET-Umgebung zu bereinigen.
      
      1. Initialisieren Sie ein Redactor-Objekt und öffnen Sie Ihr Word-Dokument.
      2. Richten Sie Regeln ein, um alle versteckten Metadaten zu löschen.
      3. Führen Sie die Redigierung aus, um sensible Tags zu entfernen.
      4. Speichern Sie Ihr bereinigtes Dokument.
   
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
        // Metadaten aus WORD-Dateien löschen

        // Öffnen Sie das Dokument mit Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Setzen Sie die Optionen zur Entfernung der Metadaten
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redigieren und speichern Sie die bereinigte Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Vertrauliche Daten aus Dokumenten redigieren"
  description: "Mit GroupDocs.Redaction for .NET können Sie private Inhalte aus verschiedenen Formaten entfernen. Halten Sie Ihre Dateien sicher und bewahren Sie ihre Struktur."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge zur Metadaten- und Inhaltsredigierung"
  features:
    # feature loop
    - title: "Sensible Texte ersetzen"
      content: "Finden Sie Texte in Dokumenten und entfernen Sie sie sicher oder ändern Sie sie, um private Informationen zu schützen."

    # feature loop
    - title: "Bilder maskieren"
      content: "Decken Sie sensible Bereiche von Bildern mit Overlays ab, um visuelle Daten zu verdecken."

    # feature loop
    - title: "Metadaten löschen"
      content: "Finden und bereinigen Sie versteckte Daten, um das Lecken von Informationen zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadaten bearbeiten oder entfernen"
      content: |
        Dieses Beispiel zeigt, wie man Metadaten in einem WORD-Dokument anvisiert und bereinigt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie die Datei zur Redigierung
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Entfernen Sie die Autorenmetadaten
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Entfernen Sie die Titelmetadaten
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Führen Sie den Redaktionsprozess durch
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exportieren Sie das bereinigte Dokument
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
    title: "Metadatenredigierung in WORD mit .NET"
    exclude: "WORD"
    description: "Verwenden Sie .NET, um versteckte Metadaten aus WORD-Dateien zu reinigen. Einfache Werkzeuge, um sensible Informationen sicher zu halten."
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