
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Schwärzen Sie Bilder in PPTX mit Überlagerungen mit C#"
head_description: "Mit GroupDocs.Redaction for .NET können Sie sensible Bildinhalte in PPTX-Dateien durch farbige Überlagerungen verstecken. Schützen Sie vertrauliche Daten, ohne die Struktur des Dokuments zu ändern."

############################# Header ############################
title: "Schwärzen Sie sensible Bilder in PPTX-Dokumenten mit .NET" 
description: "Schützen Sie private und Geschäftsdaten in PPTX-Dateien mit C#. Unsere Tools machen das Schwärzen von Bildern schnell und effektiv."
subtitle: "Was GroupDocs.Redaction for .NET bietet" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gibt C#-Entwicklern benutzerfreundliche Tools an die Hand, um Inhalte in PPTX-Dateien zu verstecken oder zu löschen. Schützen Sie Dokumente, indem Sie Text, Bilder und Metadaten schnell schwärzen.

############################# Steps ############################
steps:
    enable: true
    title: "Halten Sie Geschäftsdaten in Pptx-Dokumenten sicher"
    content: |
      GroupDocs.Redaction for .NET: Hilft .NET-Apps, Dokumente zu sichern, indem sensible Informationen verborgen werden.
      
      1. Richten Sie eine Redactor-Instanz ein und laden Sie die Pptx-Datei.
      2. Konfigurieren Sie die Schwärzungsparameter nach Ihren Bedürfnissen.
      3. Wählen Sie Bildbereiche aus und weisen Sie Überlagerungsfarben zu.
      4. Verarbeiten Sie die Schwärzung und speichern Sie Ihre Datei.
   
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
        // Schwärzen Sie sensible Bildbereiche in PPTX

        // Öffnen Sie die Datei über Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definieren Sie die Farbe und Abmessungen der Überlagerung
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich zur Schwärzung aus
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
  title: "Werkzeuge zur Schwärzung von Dokumenten"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, sensible Inhalte in verschiedenen Dateitypen zu verstecken oder zu löschen. Schützen Sie Informationen, während Sie Dokumente sauber und teilbar halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Leistungsstarke Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text suchen & ersetzen"
      content: "Suchen Sie private Texte in Dokumenten und ersetzen Sie diese, um die Sicherheit der Dokumente zu erhöhen."

    # feature loop
    - title: "Bildinhalte schwärzen"
      content: "Überlagern Sie gesamte Bilder oder ausgewählte Bereiche mit Überlagerungen, um private Visualisierungen zu verbiegen."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen oder ändern Sie verborgene Metadaten, um Datenleaks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verstecken Sie Bilddaten mit Überlagerungen"
      content: |
        Dieses Beispiel demonstriert, wie man sensible Bilder in Dokumenten schwärzt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie das Dokument
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Setzen Sie die Überlagerungsgröße, -position und -farbe fest
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Geben Sie den zu schwärzenden Bereich auf der ersten Seite an
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Wenden Sie die Überlagerung an
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
    title: "PPTX-Inhalte mit .NET schwärzen"
    exclude: "PPTX"
    description: "Verwenden Sie .NET, um sensible Inhalte in PPTX-Dateien zu verstecken oder zu löschen. Eine zuverlässige Lösung zur Sicherstellung der Dokumentensicherheit."
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