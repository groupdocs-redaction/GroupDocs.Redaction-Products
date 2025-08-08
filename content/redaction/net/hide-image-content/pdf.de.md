
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bilder in PDF mit Überlagerungen mit C# verstecken"
head_description: "Mit GroupDocs.Redaction for .NET können Sie sensitive Bilder in PDF-Dateien durch farbige Überlagerungen schützen. Sichern Sie private Informationen, ohne das Layout des Dokuments zu verändern."

############################# Header ############################
title: "Schützen Sie sensitive Bilder in PDF-Dokumenten mit Überlagerungen mit .NET" 
description: "Halten Sie Unternehmens- und persönliche Daten in PDF-Dateien mit C# sicher. Unsere Tools helfen Ihnen, einen starken Datenschutz zu gewährleisten."
subtitle: "Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern leistungsstarke Tools zum Verstecken oder Entfernen von Inhalten aus PDF-Dateien. Schützen Sie Dokumente, indem Sie Text, Bilder und Metadaten in mehreren Formaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Sichern Sie Geschäftsdaten in Pdf-Dokumenten"
    content: |
      GroupDocs.Redaction for .NET: Entwickelt, um Ihren .NET-Apps zu helfen, Dokumente zu schützen. Vertrauliche Informationen schnell und effizient schwärzen.
      
      1. Erstellen Sie eine Redactor-Instanz und geben Sie den Pfad zur Pdf-Datei an, die Sie sichern möchten.
      2. Passen Sie die Schwärzungseinstellungen an, um das gewünschte Ergebnis zu erzielen.
      3. Wählen Sie den Bildbereich aus und legen Sie die Überlagerungsfarbe fest.
      4. Verarbeiten Sie die Datei und speichern Sie das geschwärzte Dokument.
   
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
        // Verstecken Sie sensible Bildinhalte in PDF

        // Laden Sie die Datei über den Redactor-Konstruktor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Konfigurieren Sie die Überlagerungsfarbe und -größe
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich für die Schwärzung aus
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Überlagern Sie das Bild und speichern Sie die Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalten in Dokumenten schwärzen"
  description: "Mit GroupDocs.Redaction for .NET können Sie Inhalte in einer Vielzahl von Dateiformaten verstecken oder löschen. Schützen Sie vertrauliche Informationen, während Sie Dokumente leicht lesbar und teilbar halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Erweiterte Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text überall bearbeiten"
      content: "Suchen und ersetzen Sie sensible Texte in Ihrem Dokument, um private Daten zu sichern."

    # feature loop
    - title: "Bilder abdecken"
      content: "Wenden Sie Überlagerungen auf gesamte Bilder oder ausgewählte Bereiche an, um sensible Visualisierungen zu verstecken."

    # feature loop
    - title: "Metadata verwalten"
      content: "Entfernen oder ändern Sie verborgene Metadaten, um ein versehentliches Datenleak zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Überlagerungen, um Bilddaten zu verstecken"
      content: |
        Dieses Beispiel zeigt, wie man sensible Informationen in Dokumentenbildern abdeckt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie das Dokument zur Schwärzung
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Legen Sie die Überlagerungseinstellungen: Größe, Position und Farbe fest
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Zielen Sie auf einen bestimmten Bildbereich auf der ersten Seite
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Wenden Sie die Überlagerung an, um das Bild zu verstecken
              redactor.Apply(redaction);

              // Speichern Sie das geschwärzte Dokument
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Sichern Sie PDF-Inhalte mit .NET-Schwärzungen"
    exclude: "PDF"
    description: "Verwenden Sie .NET, um sensible Inhalte in PDF-Dateien zu verstecken oder zu löschen. Eine effektive Lösung zur Sicherung offizieller und vertraulicher Dokumente."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG Bild"


---