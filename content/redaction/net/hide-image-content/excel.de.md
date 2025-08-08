
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Maskieren Sie Bilder in EXCEL mit Überlagerungen mit C#"
head_description: "Verstecken Sie private Bilder in EXCEL-Dateien mit GroupDocs.Redaction for .NET. Fügen Sie farbige Überlagerungen hinzu, um sensible Daten zu sichern und das Layout des Dokuments beizubehalten."

############################# Header ############################
title: "Bedecken Sie sensible Bilder in EXCEL-Dateien mit Überlagerungen mit .NET" 
description: "Schützen Sie persönliche und geschäftliche Daten in EXCEL-Dateien mit C#. Schnelle und zuverlässige Datensicherung mit unseren Tools."
subtitle: "Entdecken Sie die Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET stattet C#-Entwickler mit Tools aus, um sensible Inhalte in EXCEL-Dateien zu verstecken oder zu löschen. Bedecken Sie Text, Bilder und Metadaten, um Dokumente zu sichern.

############################# Steps ############################
steps:
    enable: true
    title: "Halten Sie Ihre Daten sicher in Excel-Dateien"
    content: |
      GroupDocs.Redaction for .NET hilft Ihren .NET-Apps, Dokumente zu sichern, indem sensible Inhalte verborgen werden.
      
      1. Erstellen Sie eine Redactor-Instanz und geben Sie den Pfad zur Excel-Datei an.
      2. Konfigurieren Sie die Schwärzungsoptionen für die gewünschten Ergebnisse.
      3. Wählen Sie den Bildbereich und die Farbe der Überlagerung aus.
      4. Wenden Sie die Schwärzung an und speichern Sie die Datei.
   
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
        // Maskieren Sie Bildinhalte in EXCEL

        // Laden Sie das Dokument über Redactor
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Richten Sie die Größe und Farbe der Überlagerung ein
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich zum Verbergen
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
  title: "Inhalte in Dokumenten schwärzen"
  description: "GroupDocs.Redaction for .NET hilft Ihnen, sensible Inhalte in verschiedenen Dokumentenformaten zu verstecken oder zu löschen. Schützen Sie Daten, während Sie Dokumente einfach zu verwenden halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Leistungsstarke Schwärzungsoptionen"
  features:
    # feature loop
    - title: "Text suchen und bearbeiten"
      content: "Suchen Sie nach sensiblen Texten und ersetzen Sie diese, um private Daten in Ihren Dokumenten zu schützen."

    # feature loop
    - title: "Image-Bereiche überlagern"
      content: "Bedecken Sie gesamte Bilder oder ausgewählte Teile mit Überlagerungen, um deren Privatsphäre zu wahren."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie verborgene Metadatenfelder, um versehentliche Informationenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Maskieren Sie Bilddaten mit Überlagerungen"
      content: |
        Dieses Beispiel zeigt, wie man sensitive Informationen in Dokumentenbildern abdeckt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Datei zur Bearbeitung
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Definieren Sie die Größe, Farbe und Platzierung der Überlagerung
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Konzentrieren Sie sich auf einen bestimmten Bildbereich auf Seite eins
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Überlagern Sie das Bild zur Maskierung
              redactor.Apply(redaction);

              // Speichern Sie das endgültige Dokument
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
    title: "EXCEL-Dateien mit .NET-Tools zur Schwärzung schützen"
    exclude: "EXCEL"
    description: "Verwenden Sie .NET, um sensible Informationen in EXCEL-Dateien zu verstecken oder zu löschen. Eine vertrauenswürdige Lösung zur Sicherstellung der Dokumentensicherheit."
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