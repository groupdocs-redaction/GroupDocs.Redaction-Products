
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten in XLSX-Dateien mit C# bereinigen"
head_description: "Mit GroupDocs.Redaction for .NET können Sie sicher Metadaten aus XLSX-Dateien entfernen. Beseitigen Sie versteckte Informationen, die private Daten offenbaren könnten."

############################# Header ############################
title: "Metadaten aus XLSX-Dateien mit .NET löschen" 
description: "Schützen Sie sensible Details in Ihren XLSX-Dateien mit C#. Einfache Redigierung für persönliche und geschäftliche Dokumente."
subtitle: "Entdecken Sie, was GroupDocs.Redaction for .NET leisten kann" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet C#-Entwicklern Werkzeuge, um Inhalte in XLSX-Dokumenten zu bereinigen. Maskieren oder löschen Sie Text, Bilder und Metadaten schnell.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Xlsx-Dateien bereinigen"
    content: |
      Mit GroupDocs.Redaction können Ihre .NET-Apps schnell versteckte Daten entfernen.
      
      1. Einrichten eines Redactor und Öffnen Ihrer Xlsx-Datei.
      2. Definieren Sie, welche Metadaten Sie löschen möchten.
      3. Wenden Sie die Redaktionsregeln an.
      4. Speichern Sie die endgültige Datei.
   
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
        // Versteckte Metadaten in XLSX bereinigen

        // Datei mit Redactor öffnen
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Festlegen, welche Metadaten entfernt werden sollen
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redigierung anwenden und speichern
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Informationen in Dokumenten schützen"
  description: "Verwenden Sie GroupDocs.Redaction for .NET, um Inhalte in vielen Dateiformaten zu löschen oder auszublenden. Halten Sie Dateien privat und bereit zum Teilen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "All-in-One Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Text ersetzen oder entfernen"
      content: "Schützen Sie persönliche Daten, indem Sie sensiblen Text finden und entfernen."

    # feature loop
    - title: "Bildabschnitte ausblenden"
      content: "Verwenden Sie Overlays, um Bildbereiche mit privaten Visuals abzudecken."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Bereinigen Sie versteckte Metadatenfelder, die persönliche oder geschäftliche Details enthalten könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Wie man Metadaten entfernt"
      content: |
        Dieser Beispielcode entfernt Metadaten Eigenschaften in einem XLSX-Dokument.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie das Dokument
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Zielen Sie auf die Autoren-Metadaten
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Zielen Sie auf die Titel-Metadaten
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Führen Sie den Redaktionsprozess aus
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie das bereinigte Dokument
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
    title: "Metadaten in XLSX mit .NET redigieren"
    exclude: "XLSX"
    description: ".NET macht es einfach, Metadaten aus XLSX-Dateien zu löschen. Halten Sie Ihre Dateien sauber und sicher."
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