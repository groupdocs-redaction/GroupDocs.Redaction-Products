
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Schützen Sie Bilder in IMAGE, indem Sie mit C# Überlagerungen hinzufügen"
head_description: "Mit GroupDocs.Redaction for .NET können Sie sensitive Bilddaten in IMAGE-Dateien mit farbigen Überlagerungen verstecken. Sichern Sie wichtige Informationen, während Sie das ursprüngliche Design der Datei beibehalten."

############################# Header ############################
title: "Verstecken Sie private Bilder in IMAGE-Dateien mit Überlagerungen mit .NET" 
description: "Halten Sie sensible geschäftliche und persönliche Bilder in IMAGE-Dateien mit C# geschützt. Einfache Werkzeuge für schnellen und effektiven Schutz von Inhalten."
subtitle: "Wichtige Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET stattet C#-Entwickler mit leistungsstarken Tools aus, um Inhalte in IMAGE-Dateien zu verstecken oder zu löschen. Schützen Sie Ihre Dokumente, indem Sie sensible Texte, Bilder und Metadaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Daten in Image-Dateien mit Überlagerungen schützen"
    content: |
      Verwenden Sie GroupDocs.Redaction for .NET, um private Inhalte in Ihren .NET-Anwendungen schnell zu verbergen.
      
      1. Erstellen Sie eine Redactor-Instanz und geben Sie den Pfad zu Ihrer Image-Datei an.
      2. Passen Sie die Schwärzungssettings nach Bedarf an.
      3. Wählen Sie Bildbereiche aus und definieren Sie die Überlagerungsfarben.
      4. Verarbeiten Sie die Datei und speichern Sie die gesicherte Version.
   
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
        // Schützen Sie Bildinhalte in IMAGE

        // Laden Sie die Datei über den Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Definieren Sie die Dimensionen und Farben der Überlagerung
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Wählen Sie den Bereich aus, den Sie verstecken möchten
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Wenden Sie die Überlagerung an und speichern Sie das Ergebnis
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in verschiedenen Dateiformaten schwärzen"
  description: "Mit GroupDocs.Redaction for .NET können Sie Inhalte in einer Vielzahl von Dateiformaten verstecken oder löschen. Schützen Sie sensible Daten, während Sie ein sauberes, lesbares Format beibehalten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Vollständige Kontrolle über Schwärzungen"
  features:
    # feature loop
    - title: "Suchen und Text ersetzen"
      content: "Durchsuchen Sie Dokumente und ersetzen Sie sensiblen Text zum Schutz privater Informationen."

    # feature loop
    - title: "Bilder überlagern"
      content: "Wenden Sie farbige Überlagerungen an, um gesamte Bilder oder ausgewählte Teile zu maskieren."

    # feature loop
    - title: "Metadaten bearbeiten"
      content: "Entfernen oder ändern Sie verborgene Metadatenfelder, um Datenexposition zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bedecken Sie Bildinhalte mit Überlagerungen"
      content: |
        Dieses Codebeispiel zeigt, wie Überlagerungen angewendet werden, um sensible Bildinhalte zu verbergen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie die Datei zur Schwärzung
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Konfigurieren Sie die Größe, Farbe und Position der Überlagerung
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Wählen Sie den Bildbereich auf Seite eins aus
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Fügen Sie die Überlagerung hinzu, um Bildinhalte zu verstecken
              redactor.Apply(redaction);

              // Speichern Sie die aktualisierte Datei
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
    title: "Verstecken von Inhalten in IMAGE-Dateien mit .NET-Schwärzungen"
    exclude: "IMAGE"
    description: "Verwenden Sie .NET, um sensible Daten in IMAGE-Dateien zu verstecken oder zu entfernen. Eine zuverlässige Methode, um offizielle Dateien zu sichern und vertrauliche Informationen zu schützen."
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