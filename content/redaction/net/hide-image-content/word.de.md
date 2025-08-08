
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bilder in WORD mit Überlagerungen mit C# abdecken"
head_description: "Verstecken Sie sensitive Bildbereiche in WORD-Dateien mit GroupDocs.Redaction for .NET. Fügen Sie farbige Überlagerungen hinzu, um private Daten zu schützen und das ursprüngliche Layout des Dokuments unverändert zu lassen."

############################# Header ############################
title: "Verstecken Sie private Bilder in WORD-Dateien mit Überlagerungen mit .NET" 
description: "Schützen Sie Ihre persönlichen und geschäftlichen Daten in WORD-Dokumenten mit C#. Erreichen Sie zuverlässigen Inhaltsschutz mit unseren einfachen Tools."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gibt C#-Entwicklern die Werkzeuge, um Inhalte aus WORD-Dateien zu verstecken oder zu löschen. Dokumente schützen, indem sensitive Texte, Bilder und Metadaten schnell abgedeckt werden.

############################# Steps ############################
steps:
    enable: true
    title: "Schützen Sie sensible Daten in Word-Dateien"
    content: |
      GroupDocs.Redaction for .NET hilft Ihren .NET-Apps, private Inhalte in Dokumenten schnell zu verbergen.
      
      1. Erstellen Sie ein Redactor-Objekt und geben Sie den Pfad zur Word-Datei an.
      2. Stellen Sie die Schwärzungsparameter nach Ihren Anforderungen ein.
      3. Markieren Sie den Bildbereich und definieren Sie die Überlagerungsfarbe.
      4. Verarbeiten Sie und speichern Sie die geschwärzte Datei.
   
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
        // Bedecken Sie sensible Bilder in WORD

        // Laden Sie die Datei über den Redactor-Konstruktor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Definieren Sie die Überlagerungsfarbe und -größe
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bildbereich zur Schwärzung
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
  title: "Inhalte verbergen oder entfernen"
  description: "GroupDocs.Redaction for .NET macht es Ihnen leicht, Daten in mehreren Dateiformaten zu verbergen oder zu löschen. Schützen Sie sensible Informationen, während Sie Dokumente sauber und lesbar halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Detaillierte Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text überall ersetzen"
      content: "Suchen und ändern Sie sensitive Texte in Ihren Dokumenten, um private Daten zu sichern."

    # feature loop
    - title: "Bilder maskieren"
      content: "Fügen Sie Überlagerungen zu spezifischen Bildbereichen oder ganzen Bildern hinzu, um private Visualisierungen zu verdecken."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen oder bearbeiten Sie verborgene Metadaten, um unbeabsichtigte Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Fügen Sie Überlagerungen hinzu, um Bildinhalte zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie Sie sensible Daten in Dokumentenbildern mit Überlagerungen schützen können.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie das Dokument zur Bearbeitung
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Legen Sie Größe, Position und Farbe der Überlagerung fest
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Konzentrieren Sie sich auf einen bestimmten Bildbereich auf der ersten Seite
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Wenden Sie die Überlagerung zur Schwärzung an
              redactor.Apply(redaction);

              // Speichern Sie die Änderungen an der Datei
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
    title: "Schützen Sie WORD-Inhalte mit .NET-Schwärzungen"
    exclude: "WORD"
    description: ".NET ermöglicht es Ihnen, sensible Inhalte in WORD-Dateien zu verstecken oder zu löschen. Ein zuverlässiger Weg, vertrauliche und offizielle Dokumente zu sichern."
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