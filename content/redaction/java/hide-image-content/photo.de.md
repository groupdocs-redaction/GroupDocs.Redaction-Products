
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Bilder in PHOTO mit Java Überlagerungen verbergen"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um sensible Bildbereiche in PHOTO-Dateien mit Überlagerungen abzudecken. Schützen Sie private Inhalte, während die Layout des Dokuments unverändert bleibt."

############################# Header ############################
title: "Bildinhalte in PHOTO-Dateien mit Java-Überlagerungen schützen" 
description: "Sichern Sie persönliche und geschäftliche Bilddaten in PHOTO-Dateien mit Java. Einfache Werkzeuge, die für einen schnellen und effektiven Schutz entwickelt wurden."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Entwicklern zuverlässige Werkzeuge, um Inhalte in PHOTO-Dateien zu verbergen oder zu löschen. Schützen Sie Dokumente, indem Sie Texte, Bilder und Metadaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Inhalte in Photo-Dateien mit Überlagerungen verbergen"
    content: |
      GroupDocs.Redaction for Java macht es einfach, sensible Bereiche in Ihren Java-Apps zu verbergen.
      
      1. Initialisieren Sie einen Redactor und laden Sie Ihre Photo-Datei.
      2. Stellen Sie die Redaktionspräferenzen nach Bedarf ein.
      3. Wählen Sie Bildregionen aus und legen Sie Überlagerungsfarben fest.
      4. Führen Sie die Redaktion aus und speichern Sie die Datei.
   
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
        // Bildabschnitte in PHOTO mit Überlagerungen abdecken

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Farbe und Größe der Überlagerung festlegen
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Markieren Sie den Bildbereich, den Sie abdecken möchten
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Überlagerung anwenden und das Ergebnis speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Inhalte leicht redigieren"
  description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, private Daten in verschiedenen Dokumenttypen zu verbergen oder zu löschen. Halten Sie Ihre Dateien sauber und bereit zum Teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Vollständige Kontrolle über Redaktionen"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Sensible Texte in Dokumenten finden und ersetzen, um Informationen zu schützen."

    # feature loop
    - title: "Bildbereiche mit Überlagerungen abdecken"
      content: "Verwenden Sie Überlagerungen, um ganze Bilder oder spezifische Teile abzudecken."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Versteckte Metadaten löschen, um eine versehentliche Datenexposition zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bilddaten mit Überlagerungen abdecken"
      content: |
        Dieses Beispiel zeigt, wie Bildinhalte in Dokumenten mit Überlagerungen abgedeckt werden.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie das Dokument zur Bearbeitung
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Größe, Farbe und Position der Überlagerung festlegen
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Wählen Sie den Bildbereich auf Seite eins
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Überlagerung anwenden, um den Inhalt zu verbergen
              redactor.apply(redaction);

              // Das bearbeitete Dokument speichern
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
    title: "Sichern Sie PHOTO-Dateien mit Java-Redaktionen"
    exclude: "PHOTO"
    description: "Mit Java können Sie sensible Daten in PHOTO-Dateien verbergen oder entfernen. Eine vertrauenswürdige Lösung zum Schutz offizieller Dokumente."
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