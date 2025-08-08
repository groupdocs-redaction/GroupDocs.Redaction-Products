
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Fügen Sie Überlagerungen hinzu, um Bilder in PHOTO mit C# zu verstecken"
head_description: "Verstecken Sie sensitive Bildinhalte in PHOTO-Dateien mit GroupDocs.Redaction for .NET durch das Anwenden von Überlagerungen. Halten Sie private Daten sicher und das Layout des Dokuments intakt."

############################# Header ############################
title: "Verstecken Sie Bildinhalte in PHOTO-Dateien mit Überlagerungen mit .NET" 
description: "Schützen Sie persönliche und Geschäftsbilder in PHOTO-Dateien mit C#. Benutzerfreundliche Tools für effektiven Schutz von Inhalten."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gibt C#-Entwicklern leistungsstarke Möglichkeiten, Inhalte in PHOTO-Dateien zu verstecken oder zu löschen. Schützen Sie Dokumente, indem Sie Text, Bilder und Metadaten schnell abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Sichern Sie Inhalte in Photo-Dateien"
    content: |
      GroupDocs.Redaction for .NET macht es schnell und einfach, Inhalte in Ihren .NET-Apps zu schützen.
      
      1. Erstellen Sie ein Redactor-Objekt und weisen Sie es auf Ihre Photo-Datei.
      2. Passen Sie die Schwärzungsparameter nach Bedarf an.
      3. Wählen Sie Bildbereiche aus und setzen Sie die Farbe der Überlagerung.
      4. Führen Sie die Schwärzung durch und speichern Sie die gesicherte Datei.
   
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
        // Wenden Sie Überlagerungen an, um Bilder in PHOTO zu verstecken

        // Laden Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Konfigurieren Sie die Größe und Farbe der Überlagerung
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich des Bildes zur Verbergung
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Wenden Sie die Überlagerung an und speichern Sie die Änderungen
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Inhalte einfach schwärzen"
  description: "GroupDocs.Redaction for .NET hilft Ihnen, sensible Inhalte in vielen Dateitypen zu verstecken oder zu löschen. Schützen Sie private Daten, während Sie Ihre Dokumente sauber und einfach lesbar halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One-Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text in Dokumenten bearbeiten"
      content: "Suchen und ersetzen Sie private Texte in Ihren Dokumenten, um sensible Informationen zu sichern."

    # feature loop
    - title: "Bildbereiche verbergen"
      content: "Fügen Sie Überlagerungen zu Bildern oder spezifischen Teilen hinzu, um sensible Visuals abzudecken."

    # feature loop
    - title: "Verborgene Metadaten bereinigen"
      content: "Entfernen Sie verborgene Metadaten, um unbeabsichtigte Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verstecken Sie Bilddaten mit Überlagerungen"
      content: |
        Dieses Codebeispiel zeigt, wie man Bildbereiche in einer Datei mit Überlagerungen versteckt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie die Datei zur Bearbeitung
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Setzen Sie die Position, Größe und Farbe der Überlagerung
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Wählen Sie einen spezifischen Bildbereich auf Seite eins
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Wenden Sie die Überlagerung an, um das Bild zu maskieren
              redactor.Apply(redaction);

              // Speichern Sie die geschwärzte Datei
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
    title: "PHOTO-Dateien mit .NET-Schwärzungen schützen"
    exclude: "PHOTO"
    description: "Mit .NET können Sie private Inhalte in PHOTO-Dateien verbergen oder löschen. Ein einfacher und effektiver Weg, um offizielle Dokumente zu sichern."
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