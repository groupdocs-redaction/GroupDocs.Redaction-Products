
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bilder in DOCX mit Überlagerungen mit C# abdecken"
head_description: "Verwenden Sie GroupDocs.Redaction for .NET, um sensible Bilder in DOCX-Dateien mit farbigen Überlagerungen abzudecken. Schützen Sie private Daten, während Sie das Layout des Dokuments unverändert lassen."

############################# Header ############################
title: "Verstecken Sie sensible Bilder in DOCX-Dokumenten mit Überlagerungen mit .NET" 
description: "Schützen Sie persönliche und geschäftliche Informationen in DOCX-Dateien mit C#. Unsere Tools machen den Datenschutz einfach und zuverlässig."
subtitle: "Funktionen von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET stattet C#-Entwickler mit Tools aus, um Inhalte in DOCX-Dateien zu verstecken oder zu löschen. Schützen Sie Dokumente, indem Sie Text, Bilder und Metadaten in verschiedenen Formaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Daten in Docx-Dateien schützen"
    content: |
      GroupDocs.Redaction for .NET: Entwickelt, um Ihren .NET-Apps beim Sichern von Dokumenten zu helfen. Schwärzen Sie sensible Informationen mit wenigen Schritten.
      
      1. Initialisieren Sie eine Redactor und geben Sie den Pfad zu Ihrer Docx-Datei an.
      2. Konfigurieren Sie die Schwärzungsoptionen nach Ihren Bedürfnissen.
      3. Wählen Sie den Bildbereich und die Farbe der Überlagerung aus.
      4. Führen Sie die Schwärzung durch und speichern Sie die Datei.
   
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
        // Bedecken Sie sensible Bildbereiche in DOCX

        // Laden Sie die Datei über den Redactor-Konstruktor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Legen Sie die Überlagerungsfarbe und -größe fest
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Definieren Sie den Schwärzungsbereich
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
  title: "Inhalte in Dateien schwärzen"
  description: "Mit GroupDocs.Redaction for .NET können Sie sensible Inhalte in vielen Dateitypen verstecken oder löschen. Halten Sie Dokumente sicher und gleichzeitig lesbar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Flexible Schwärzungsoptionen"
  features:
    # feature loop
    - title: "Text einfach bearbeiten"
      content: "Suchen und ersetzen Sie private Texte in Ihrem Dokument für besseren Datenschutz."

    # feature loop
    - title: "Bilder bereichsweise abdecken"
      content: "Überlagern Sie gesamte Bilder oder wählen Sie bestimmte Teile aus, um visuelle Informationen zu schützen."

    # feature loop
    - title: "Metadaten säubern"
      content: "Entfernen oder ändern Sie verborgene Metadaten, um unbeabsichtigte Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Wenden Sie Überlagerungen an, um Bilddetails zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie man sensible Bereiche in Dokumentenbildern versteckt.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie das Dokument, das Sie schwärzen möchten
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Geben Sie die Parameter der Überlagerung an: Größe, Position, Farbe
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Zielen Sie auf einen bestimmten Bereich auf der ersten Seite
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Platzieren Sie die Überlagerung auf dem Bild
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
    title: "DOCX-Dateien mit .NET-Schwärzungen schützen"
    exclude: "DOCX"
    description: "Verwenden Sie .NET, um sensible Daten in DOCX-Dateien abzudecken oder zu entfernen. Ideal, um vertrauliche Dokumente sicher zu halten."
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