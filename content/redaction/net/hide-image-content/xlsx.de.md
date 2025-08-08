
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Maskieren Sie Bilder in XLSX-Dateien mit Überlagerungen mithilfe von C#"
head_description: "Mit GroupDocs.Redaction for .NET können Sie sensitive Bildinhalte in XLSX-Dateien durch farbige Überlagerungen maskieren. Schützen Sie wichtige Daten, während Sie die Struktur des Dokuments intakt halten."

############################# Header ############################
title: "Maskieren Sie sensible Bilder in XLSX-Dokumenten mit .NET" 
description: "Stellen Sie den Datenschutz in XLSX-Dateien mit C# sicher. Unsere Tools sind darauf ausgelegt, die Bildschwärzung schnell und effektiv zu gestalten."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern einfache Werkzeuge, um Inhalte aus XLSX-Dateien zu verstecken oder zu löschen. Schützen Sie Dokumente, indem Sie Text, Bilder und Metadaten in unterschiedlichen Formaten schwärzen.

############################# Steps ############################
steps:
    enable: true
    title: "Schützen Sie private Daten in Xlsx-Dokumenten"
    content: |
      GroupDocs.Redaction for .NET: Unterstützt Ihre .NET-Apps effizient beim Schutz von Dokumenten.
      
      1. Erstellen Sie eine Redactor-Instanz und laden Sie die Xlsx-Datei.
      2. Richten Sie die Schwärzungsparameter nach Ihren Bedürfnissen ein.
      3. Definieren Sie den Bildbereich und wählen Sie die Farbe der Überlagerung.
      4. Wenden Sie die Schwärzung an und speichern Sie die Ausgabedatei.
   
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
        // Maskieren Sie sensible Bildteile in XLSX

        // Initialisieren Sie Redactor mit dem Dateipfad
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Wählen Sie die Größe und Farbe der Überlagerung
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Markieren Sie den Bereich zur Schwärzung
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Anwenden und speichern Sie die Änderungen
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Schwärzungsfunktionen für Dokumente"
  description: "Mit GroupDocs.Redaction for .NET können Sie Inhalte in verschiedenen Dateiformaten entfernen oder verbergen. Halten Sie sensible Daten privat, während Sie ein sauberes Layout beibehalten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Robuste Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Schnell vertrauliche Texte finden und schwärzen, um sensible Daten zu schützen."

    # feature loop
    - title: "Bildinhalte maskieren"
      content: "Wenden Sie Überlagerungen auf gesamte Bilder oder spezifische Bereiche an, um private Visualisierungen zu verstecken."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Entfernen oder anpassen Sie verborgene Metadaten, um unabsichtliche Datenlecks zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verstecken Sie Bildinhalte mit Überlagerungen"
      content: |
        Erfahren Sie, wie Sie sensible Bildbereiche in Ihren Dokumenten maskieren.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie das Dokument zur Schwärzung
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Definieren Sie die Attribute der Überlagerung: Größe, Standort, Farbe
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Konzentrieren Sie sich auf einen bestimmten Bildbereich
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Überlagern Sie den Bildbereich
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
    title: "XLSX-Inhalte mit .NET-Schwärzungen maskieren"
    exclude: "XLSX"
    description: "Verwenden Sie .NET, um sensible Inhalte in XLSX-Dateien zu schwärzen oder zu löschen. Eine praktische Lösung zum Sichern von geschäftlichen und persönlichen Dokumenten."
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