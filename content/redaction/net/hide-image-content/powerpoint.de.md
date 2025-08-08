
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Verstecken Sie sensitive Bilder in POWERPOINT mit Überlagerungen mit C#"
head_description: "Verwenden Sie GroupDocs.Redaction for .NET, um Überlagerungen auf Bilder in POWERPOINT-Dateien zu platzieren, sodass private Informationen verborgen bleiben, während das Layout intakt bleibt."

############################# Header ############################
title: "Verstecken Sie private Bilder in POWERPOINT-Dokumenten mit Überlagerungen mit .NET" 
description: "Schützen Sie persönliche und Unternehmensdaten in POWERPOINT-Dateien mit C#. Einfache Tools für starken Datenschutz von Dokumenten."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern einfache Werkzeuge, um Inhalte in POWERPOINT-Dateien zu verstecken oder zu entfernen. Schützen Sie Ihre Dokumente, indem Sie sensible Texte, Bilder und Metadaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Schützen Sie sensible Informationen in Powerpoint-Dokumenten"
    content: |
      GroupDocs.Redaction for .NET wurde entwickelt, um Ihren .NET-Apps zu helfen, Dokumenteninhalte schnell zu sichern.
      
      1. Erstellen Sie ein Redactor-Objekt und geben Sie die Powerpoint-Datei an.
      2. Passen Sie die Schwärzungsparametern Ihren Bedürfnissen an.
      3. Wählen Sie den Bereich des Bildes aus und wählen Sie die Überlagerungsfarbe.
      4. Führen Sie die Schwärzung durch und speichern Sie das Dokument.
   
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
        // Verstecken Sie Bilddaten in POWERPOINT-Dateien

        // Laden Sie die Datei über Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definieren Sie die Farbe und Abmessungen der Überlagerung
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich aus, den Sie schwärzen möchten
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Wenden Sie die Überlagerung an und speichern Sie das Dokument
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten schwärzen"
  description: "GroupDocs.Redaction for .NET ermöglicht Ihnen, sensible Inhalte in verschiedenen Dokumenttypen zu verstecken oder zu löschen. Schützen Sie private Daten, während Ihr Dokument einfach zu bedienen und zu teilen bleibt."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funktionsreiche Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text finden und bearbeiten"
      content: "Suchen Sie in Dokumenten nach sensiblen Texten und ersetzen Sie diese, um private Daten zu schützen."

    # feature loop
    - title: "Bildinhalte abdecken"
      content: "Verwenden Sie Überlagerungen, um Bilder oder ausgewählte Teile abzudecken, damit private Visualisierungen verborgen bleiben."

    # feature loop
    - title: "Verborgene Metadaten bereinigen"
      content: "Löschen oder ändern Sie verborgene Metadaten, um unabsichtliche Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Schützen Sie Bilddaten mit Überlagerungen"
      content: |
        Dieses Beispiel demonstriert, wie man sensible Inhalte in Dokumentenbildern verbirgt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie die Datei zur Schwärzung
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Definieren Sie die Größe, Position und Farbe der Überlagerung
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Markieren Sie den Bildbereich auf Seite eins
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Wenden Sie die Überlagerung an, um das Bild zu verdecken
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
    title: "POWERPOINT-Inhalte mit .NET-Schwärzungen sichern"
    exclude: "POWERPOINT"
    description: "Verwenden Sie .NET, um private Inhalte in POWERPOINT-Dateien zu verstecken oder zu löschen. Eine bewährte Lösung zum Schutz sensibler Dokumente."
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