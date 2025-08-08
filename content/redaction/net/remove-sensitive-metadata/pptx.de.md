
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten aus PPTX-Dateien mit C# entfernen"
head_description: "GroupDocs.Redaction for .NET hilft Ihnen, Metadaten in PPTX-Dateien zu löschen oder zu bearbeiten. Schützen Sie Ihre Dokumente, indem Sie private Hintergrunddaten entfernen."

############################# Header ############################
title: "Metadaten in PPTX mit .NET-Werkzeugen entfernen" 
description: "Blenden Sie sensible Metadaten in PPTX-Dateien mit C# aus. Ideal für geschäftliche und persönliche Privatsphäre."
subtitle: "GroupDocs.Redaction for .NET Kernfunktionen" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for .NET kennen"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction wurde für C#-Entwickler entwickelt, die Daten aus PPTX-Dateien löschen müssen. Bereinigen Sie Text, Bilder und Metadaten schnell.

############################# Steps ############################
steps:
    enable: true
    title: "Versteckte Metadaten in Pptx-Dateien entfernen"
    content: |
      GroupDocs.Redaction hilft Ihren .NET-Lösungen, versteckte Daten einfach zu bereinigen.
      
      1. Erstellen Sie eine Redactor-Instanz und laden Sie die Pptx-Datei.
      2. Richten Sie die Redaktionsregeln für Metadatenfelder ein.
      3. Wenden Sie die Redigierung an, um die Daten zu entfernen.
      4. Speichern Sie Ihre redigierte Datei.
   
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
        // Metadaten in PPTX löschen

        // Öffnen Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Richten Sie die Redigierung zur Bereinigung der Metadaten ein
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Anwenden und Datei speichern
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Zusätzliche Redaktionswerkzeuge für jede Datei"
  description: "GroupDocs.Redaction for .NET unterstützt das Redigieren von Inhalten über verschiedene Formate hinweg. Stellen Sie sicher, dass Ihre Daten privat und Ihre Dateien sauber sind."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Integrierte Datenschutzwerkzeuge"
  features:
    # feature loop
    - title: "Text finden und entfernen"
      content: "Löschen Sie schnell persönliche Texte aus Ihren Dateien."

    # feature loop
    - title: "Bilder mit Overlays abdecken"
      content: "Verstecken Sie Bildabschnitte, die nicht sichtbar sein sollten."

    # feature loop
    - title: "Metadaten löschen"
      content: "Wischen Sie versteckte Felder wie Autor, Titel und mehr, um sicher zu bleiben."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadatenfelder bereinigen"
      content: |
        Dieses Beispiel zeigt, wie man sicher Metadaten aus einer PPTX-Datei entfernt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importieren Sie Ihre PPTX-Datei
          using (Redactor redactor  = new Redactor("source.pptx"))
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

              // Führen Sie den Redaktionsprozess durch
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exportieren Sie die redigierte Datei
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
    title: "Metadaten in PPTX mit .NET bereinigen"
    exclude: "PPTX"
    description: "Entfernen Sie die Hintergrundmetadaten aus PPTX-Dateien mit .NET. Ideal für Dokumentensicherheit."
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