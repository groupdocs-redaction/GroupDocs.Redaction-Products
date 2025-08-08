
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten in JPEG mit C# bearbeiten"
head_description: "Mit GroupDocs.Redaction for .NET können Sie Metadaten in Ihren JPEG-Dateien bereinigen oder ändern. Entfernen Sie versteckte Details, die private Daten enthalten können."

############################# Header ############################
title: "Metadaten aus JPEG-Dateien mit .NET entfernen" 
description: "Schützen Sie private Details in Ihren JPEG-Dateien mit C#. Einfache Werkzeuge für mehr Dokumentensicherheit."
subtitle: "Top-Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hilft C#-Entwicklern, Text, Bilder und Metadaten aus JPEG-Dateien mit einfachen Werkzeugen zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Jpeg-Dokumenten bereinigen"
    content: |
      GroupDocs.Redaction macht es einfach, Metadaten in Ihren .NET-Anwendungen zu entfernen.
      
      1. Richten Sie eine Redactor ein und laden Sie die Jpeg-Datei, die Sie bereinigen möchten.
      2. Wählen Sie die Einstellungen, um alle Metadaten zu bereinigen.
      3. Führen Sie die Redigierung aus, um die Datei zu bereinigen.
      4. Speichern Sie Ihre Datei mit bereinigten Metadaten.
   
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
        // Metadaten aus JPEG-Dateien entfernen

        // Verwenden Sie Redactor, um die Datei zu laden
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Konfigurieren Sie die Metadatenredigierung
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Anwenden und speichern
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Daten aus Dokumenten entfernen"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, private Inhalte über viele Formate hinweg zu verbergen oder zu bereinigen. Schützen Sie sensible Daten und halten Sie Ihre Dateien nützlich und klar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Schlüsselredaktionsfunktionen"
  features:
    # feature loop
    - title: "Text suchen und entfernen"
      content: "Finden Sie sensible Wörter oder Phrasen in Ihren Dateien und reinigen Sie sie heraus."

    # feature loop
    - title: "Bereiche von Bildern abdecken"
      content: "Verwenden Sie Überlagerungen, um private Teile von Bildern abzudecken."

    # feature loop
    - title: "Metadaten bearbeiten"
      content: "Löschen oder ändern Sie Metadaten, um das Teilen privater Daten zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadatenfelder bereinigen"
      content: |
        Dieses Beispiel zeigt, wie man versteckte Metadaten in JPEG-Dokumenten löscht oder bearbeitet.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die JPEG-Datei mit dem Redaktor
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Fügen Sie die Redigierung für das Autorenfeld hinzu
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Fügen Sie die Redigierung für das Titel-Feld hinzu
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Führen Sie den Redaktionsprozess durch
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
    title: "Metadaten von JPEG mit .NET entfernen"
    exclude: "JPEG"
    description: "Verwenden Sie .NET, um versteckte Daten aus Ihren JPEG-Dokumenten zu entfernen. Eine großartige Möglichkeit, sensible Details zu schützen."
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