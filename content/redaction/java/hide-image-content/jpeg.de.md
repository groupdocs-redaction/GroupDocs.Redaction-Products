
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen verwenden, um Bilder in JPEG abzudecken"
head_description: "Halten Sie sensible Bilder in JPEG-Dateien mit GroupDocs.Redaction for Java privat. Fügen Sie Überlagerungen hinzu, um Informationen zu verbergen, ohne das Layout Ihres Dokuments zu ändern."

############################# Header ############################
title: "Sensible Bilder in JPEG-Dateien mit Überlagerungen über Java verstecken" 
description: "Schützen Sie persönliche und geschäftliche Bilder in JPEG-Dateien mit Java. Einfache Werkzeuge, um Ihre Dokumente zu sichern."
subtitle: "Kernfunktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern Werkzeuge, um Inhalte in JPEG-Dateien zu verbergen oder zu löschen. Schützen Sie Ihre Dokumente, indem Sie Texte, Bilder und Metadaten einfach abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Private Daten in Jpeg-Dateien verbergen"
    content: |
      GroupDocs.Redaction for Java ermöglicht es Ihren Java-Apps, private Inhalte schnell zu verbergen.
      
      1. Initialisieren Sie ein Redactor-Objekt und laden Sie Ihre Jpeg-Datei.
      2. Passen Sie die Redaktionsoptionen an Ihre Bedürfnisse an.
      3. Wählen Sie den Bildbereich aus und legen Sie eine Überlagerungsfarbe fest.
      4. Wenden Sie die Redaktion an und speichern Sie die Datei.
   
    code:
      platform: "java"
      copy_title: "Kopieren"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Beispielredaktionen"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "Klicken zum Kopieren"
        copy_done: "kopiert"
      links:
        #  loop
        - title: "Weitere Beispiele"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Dokumentation"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Bilddaten in JPEG abdecken

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Legen Sie Größe und Farbe der Überlagerung fest
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Wählen Sie den Bereich zur Abdeckung aus
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Überlagerung anwenden und die Datei speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Daten in Dokumenten verbergen"
  description: "GroupDocs.Redaction for Java hilft Ihnen, private Inhalte in mehreren Dateitypen zu verbergen oder zu löschen. Stellen Sie sicher, dass Ihre Dokumente sauber und bereit zum Teilen bleiben."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Suchen Sie in Ihren Dokumenten nach privatem Text und ersetzen Sie ihn, um sensible Daten zu schützen."

    # feature loop
    - title: "Bildinhalte abdecken"
      content: "Verwenden Sie Überlagerungen, um ganze Bilder oder spezifische Abschnitte zu verbergen."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie verborgene Metadaten, um eine versehentliche Offenlegung sensibler Informationen zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Überlagerungen verwenden, um Bildinhalte zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie man sensible Bildabschnitte mit Überlagerungen in Dokumenten schützt.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie die Datei zur Redaktion
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Größe, Farbe und Position der Überlagerung festlegen
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Wählen Sie einen Bildbereich auf der ersten Seite aus
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Überlagerung anwenden, um das Bild zu verbergen
              redactor.apply(redaction);

              // Speichern Sie die aktualisierte Datei
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Kopieren"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Dokumentation"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Bereit loszulegen?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an"
  items:
    #  loop
    - title: "Maven Download"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Lizenzierung"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Java-Redaktionen zum Schutz von JPEG-Dateien"
    exclude: "JPEG"
    description: "Verwenden Sie Java, um sensible Daten in JPEG-Dateien zu verbergen oder zu entfernen. Eine vertrauenswürdige Lösung zum Schutz Ihrer wichtigen Dokumente."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "JPEG Bild"


---