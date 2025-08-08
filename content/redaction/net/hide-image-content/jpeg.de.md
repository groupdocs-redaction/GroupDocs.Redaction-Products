
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bilder in JPEG mit Überlagerungen mit C# verstecken"
head_description: "Schützen Sie private Bilder in JPEG-Dateien mit GroupDocs.Redaction for .NET durch das Hinzufügen von farbigen Überlagerungen. Halten Sie sensible Informationen sicher, ohne die Dateistruktur zu ändern."

############################# Header ############################
title: "Sensitive Bilder in JPEG-Dateien mit Überlagerungen mit .NET abdecken" 
description: "Halten Sie Ihre persönlichen und geschäftlichen Bilder in JPEG-Dateien mit C# sicher. Unsere einfachen Tools machen den Dateischutz zuverlässig."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gibt C#-Entwicklern die Werkzeuge an die Hand, um Inhalte in JPEG-Dateien zu verstecken oder zu löschen. Schützen Sie Ihre Dokumente, indem Sie sensible Texte, Bilder und Metadaten verschleiern.

############################# Steps ############################
steps:
    enable: true
    title: "Sensitive Daten in Jpeg-Dateien schützen"
    content: |
      GroupDocs.Redaction for .NET ist darauf ausgelegt, Ihren .NET-Apps schnell und einfach beim Verbergen privater Inhalte zu helfen.
      
      1. Erstellen Sie ein Redactor-Objekt und geben Sie den Pfad zu Ihrer Jpeg-Datei an.
      2. Richten Sie die Schwärzungsoptionen nach Ihren Bedürfnissen ein.
      3. Markieren Sie den Bildbereich und wählen Sie eine Überlagerungsfarbe.
      4. Führen Sie die Schwärzung aus und speichern Sie Ihre geschützte Datei.
   
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
        // Schützen Sie Bildinhalte in JPEG-Dateien

        // Öffnen Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Definieren Sie die Überlagerungsgröße und -farbe
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich aus, den Sie verbergen möchten
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Wenden Sie die Überlagerung an und speichern Sie die Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten schwärzen"
  description: "GroupDocs.Redaction for .NET macht es einfach, Inhalte in verschiedenen Dateiformaten zu verstecken oder zu entfernen. Schützen Sie sensible Informationen, während Sie Ihre Dateien ordentlich und einfach zu teilen halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Vollständige Kontrolle über Schwärzungen"
  features:
    # feature loop
    - title: "Text überall bearbeiten"
      content: "Suchen und ersetzen Sie sensiblen Text in Ihren Dokumenten, um private Daten zu schützen."

    # feature loop
    - title: "Bilder überlagern"
      content: "Wenden Sie farbige Überlagerungen an, um gesamte Bilder oder ausgewählte Teile zu maskieren."

    # feature loop
    - title: "Metadaten bearbeiten"
      content: "Entfernen oder ändern Sie verborgene Metadatenfelder, um Datenexposition zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verstecken Sie Bilddaten mit Überlagerungen"
      content: |
        Dieses Beispiel zeigt, wie man sensitive Bildbereiche in Dateien maskiert.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Datei zur Bearbeitung
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Konfigurieren Sie die Überlagerungsgröße, -position und -farbe
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Wählen Sie einen bestimmten Bildbereich auf Seite eins
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Wenden Sie die Überlagerung an, um das Bild zu verstecken
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
    title: "JPEG-Dateien mit .NET-Schwärzungsoptionen schützen"
    exclude: "JPEG"
    description: "Mit .NET können Sie leicht sensible Inhalte in JPEG-Dateien verstecken oder löschen. Eine zuverlässige Lösung, um Ihre Dokumente sicher und professionell zu halten."
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