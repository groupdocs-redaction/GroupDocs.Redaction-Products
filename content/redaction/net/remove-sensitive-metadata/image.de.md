
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: de
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Versteckte Metadaten in IMAGE mit C# entfernen"
head_description: "Verwenden Sie GroupDocs.Redaction for .NET, um Metadaten in Ihren IMAGE-Dateien zu bereinigen. Stellen Sie sicher, dass private Details privat bleiben."

############################# Header ############################
title: "Metadaten in IMAGE-Dateien über .NET löschen" 
description: "Halten Sie Ihre IMAGE-Dateien sicher mit C#. Schützen Sie Geschäfts- und persönliche Daten auf einfache Weise."
subtitle: "Was Sie mit GroupDocs.Redaction for .NET erhalten" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hilft C#-Benutzern, Dateien zu bereinigen, indem unerwünschter Text, Bildteile und Metadaten in IMAGE-Dateien entfernt werden.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Image-Dateien bereinigen"
    content: |
      Beginnen Sie mit GroupDocs.Redaction in Ihrer .NET-App, um Dateimetadaten zu bereinigen.
      
      1. Erstellen Sie eine Redactor und öffnen Sie Ihre Image-Datei.
      2. Wählen Sie Optionen aus, um versteckte Metadaten zu entfernen.
      3. Wenden Sie die Redigierungseinstellungen an.
      4. Speichern Sie das Ergebnis.
   
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
        // Versteckte Metadaten aus IMAGE-Dateien entfernen

        // Öffnen Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Fügen Sie Redaktionsregeln für Metadaten hinzu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Verarbeiten und speichern
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in jedem Dokument bereinigen"
  description: "GroupDocs.Redaction for .NET entfernt privaten Text, Bildteile oder versteckte Felder. Machen Sie Dokumente sicher zum Teilen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Hauptmerkmale"
  features:
    # feature loop
    - title: "Textredigierung"
      content: "Finden und entfernen Sie private Wörter und Zahlen."

    # feature loop
    - title: "Bildabdeckung"
      content: "Fügen Sie Bildmasken hinzu, um visuelle Informationen zu verdecken."

    # feature loop
    - title: "Metadatenredigierung"
      content: "Bereinigen Sie Metadatenfelder, die Informationen gefährden könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sensible Metadaten löschen"
      content: |
        Dieses Beispiel erklärt, wie man spezifische Metadatenfelder in einem IMAGE-Dokument löscht.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie IMAGE mit dem Redaktor
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Zielen Sie auf das Autorenfeld ab
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Zielen Sie auf das Titel-Feld ab
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Redigieren Sie die Felder
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Speichern Sie Ihr Dokument
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
    title: "Metadaten aus IMAGE mit .NET entfernen"
    exclude: "IMAGE"
    description: "Löschen Sie sensible Daten aus IMAGE-Dateien mit .NET-Redigierung. Halten Sie Ihre Dateien sicher zum Teilen oder Speichern."
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