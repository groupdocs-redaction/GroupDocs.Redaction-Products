
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten in PHOTO mit C# löschen"
head_description: "GroupDocs.Redaction for .NET hilft Ihnen, versteckte Daten in PHOTO-Dateien zu entfernen, die persönliche oder geschäftliche Informationen offenbaren könnten."

############################# Header ############################
title: "Metadaten aus PHOTO mit .NET entfernen" 
description: "Schützen Sie Ihre Dokumente leicht, indem Sie versteckte Informationen aus PHOTO-Dateien mit C# entfernen."
subtitle: "Highlights von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hilft C#-Entwicklern, private Inhalte in PHOTO-Dateien, einschließlich Text, Bildteilen und Metadaten, zu verbergen oder zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Photo-Dateien löschen"
    content: |
      Verwenden Sie GroupDocs.Redaction in Ihrem .NET-Projekt, um die Dokumentmetadaten zu bereinigen.
      
      1. Starten Sie eine Redactor und öffnen Sie Ihre Photo-Datei.
      2. Legen Sie die Regeln fest, um Metadaten zu löschen.
      3. Wenden Sie die Redigierung an und bereinigen Sie die Datei.
      4. Speichern Sie die Ergebnisdatei.
   
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
        // Metadaten aus PHOTO-Dokumenten löschen

        // Verwenden Sie Redactor, um das Dokument zu laden
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Legen Sie die Metadatenfelder für die Redigierung fest
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Bereinigen Sie das Dokument und speichern Sie
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Private Informationen aus Dateien entfernen"
  description: "GroupDocs.Redaction for .NET bietet Ihnen Möglichkeiten, persönliche Daten aus Text, Bildern und Dateidetails zu entfernen. Perfekt für Datensicherheit."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Nützliche Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Textbereinigung"
      content: "Scannen und löschen Sie jeden Text, der nicht geteilt werden sollte."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Fügen Sie Überdeckungen über Bildteile mit privaten Details hinzu."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie versteckte dateiliche Daten, bevor Sie teilen oder veröffentlichen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadatenfelder löschen"
      content: |
        Dieses Beispiel führt Sie durch das Entfernen von Metadaten in einem PHOTO-Dokument.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie die PHOTO-Datei in den Redaktor
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Redigieren Sie das Autorenfeld
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Redigieren Sie das Titel-Feld
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Verarbeiten Sie das Dokument
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie die bereinigte Version
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
    title: ".NET verwenden, um PHOTO-Metadaten zu redigieren"
    exclude: "PHOTO"
    description: "Halten Sie Ihre PHOTO-Dokumente sicher, indem Sie Metadaten mit .NET-Werkzeugen bereinigen."
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