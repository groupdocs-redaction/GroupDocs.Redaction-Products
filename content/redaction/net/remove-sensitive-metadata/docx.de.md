
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Metadaten aus DOCX mit C# entfernen"
head_description: "Verwenden Sie GroupDocs.Redaction for .NET, um versteckte Metadaten in DOCX-Dateien zu löschen oder zu ändern. Schützen Sie Ihre Dokumente vor der Offenlegung privater Details."

############################# Header ############################
title: "Metadaten in DOCX-Dateien mit .NET löschen" 
description: "Verwenden Sie C#, um sensible Metadaten aus DOCX-Dateien zu bereinigen. Halten Sie Ihre geschäftlichen und persönlichen Daten geschützt."
subtitle: "Top-Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet C#-Entwicklern Werkzeuge, um Inhalte in DOCX-Dateien zu verbergen oder zu löschen. Bereinigen Sie Text, Bilder und Metadaten schnell.

############################# Steps ############################
steps:
    enable: true
    title: "Versteckte Daten in Docx-Dateien bereinigen"
    content: |
      GroupDocs.Redaction hilft Ihren .NET-Projekten, unerwünschte Metadaten schnell zu entfernen.
      
      1. Erstellen Sie eine Redactor-Instanz und öffnen Sie Ihre Docx-Datei.
      2. Richten Sie die Redigierung ein, um Metadateneinträge anzusprechen.
      3. Wenden Sie die Änderungen an, um das Dokument zu bereinigen.
      4. Speichern Sie die bereinigte Datei.
   
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
        // Metadaten aus DOCX-Dokumenten löschen

        // Laden Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Richten Sie die Einstellungen zur Entfernung der Metadaten ein
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Änderungen anwenden und speichern
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Informationen in Dokumenten ausblenden"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, sensible Inhalte in vielen Dateitypen zu bereinigen. Machen Sie Ihre Dokumente sicherer zum Teilen oder Speichern."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Intelligente Redaktionsoptionen"
  features:
    # feature loop
    - title: "Private Texte entfernen"
      content: "Suchen Sie nach und löschen Sie persönliche oder geschäftliche Texte aus Ihren Dateien."

    # feature loop
    - title: "Bilder maskieren"
      content: "Verdecken Sie Bilder oder ausgewählte Bereiche, um vertrauliche Inhalte zu verbergen."

    # feature loop
    - title: "Metadaten löschen"
      content: "Bereinigen Sie versteckte Metadaten, um das Lecken von Hintergrundinformationen zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadateneinträge bereinigen"
      content: |
        Dieses Beispiel zeigt, wie man versteckte Daten aus DOCX-Dateien entfernt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie Ihre DOCX-Datei
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Zielen Sie auf das Autorfeld zur Entfernung ab
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Zielen Sie auf das Titel-Feld zur Entfernung ab
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Führen Sie den Redaktionsprozess durch
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie Ihre aktualisierte Datei
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
    title: "Metadaten in DOCX mit .NET entfernen"
    exclude: "DOCX"
    description: "Entfernen Sie unerwünschte Metadaten in DOCX-Dateien mit .NET. Eine einfache Möglichkeit, die versteckten Details Ihrer Datei zu schützen."
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