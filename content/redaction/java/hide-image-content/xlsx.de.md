
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen verwenden, um Bilder in XLSX-Dateien abzudecken"
head_description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Bilder in XLSX-Dateien durch farbige Überlagerungen abzudecken. Schützen Sie wichtige Daten, während die Struktur Ihres Dokuments unverändert bleibt."

############################# Header ############################
title: "Private Bilder in XLSX-Dokumenten mit Java überdecken" 
description: "Halten Sie sensible Bildinhalte in XLSX-Dateien mit Java sicher. Unsere benutzerfreundlichen Werkzeuge erleichtern die Bildredaktion schnell und zuverlässig."
subtitle: "GroupDocs.Redaction for Java Hauptmerkmale" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern einfache Werkzeuge, um sensible Inhalte aus XLSX-Dateien zu verbergen oder zu löschen. Redigieren Sie Texte, Bilder und Metadaten in verschiedenen Dokumenttypen.

############################# Steps ############################
steps:
    enable: true
    title: "Private Daten in Xlsx-Dokumenten sicher halten"
    content: |
      GroupDocs.Redaction for Java hilft Ihren Java-Anwendungen, Dokumente mit einfachen Schritten zu schützen.
      
      1. Initialisieren Sie einen Redactor und laden Sie Ihr Xlsx-Dokument.
      2. Legen Sie die Redaktionsoptionen entsprechend Ihrem Projekt fest.
      3. Wählen Sie den Bildbereich aus und legen Sie eine Überlagerungsfarbe fest.
      4. Wenden Sie die Redaktion an und speichern Sie Ihre Datei.
   
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
        // Sensible Bildbereiche in XLSX abdecken

        // Erstellen Sie Redactor mit Dateipfad
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Wählen Sie Überlagerungsdimensionen und -farbe
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Wählen Sie den Bereich aus, der redigiert werden soll
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Überlagerung anwenden und Dokument speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Erweiterte Redaktionsfunktionen"
  description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Inhalte in verschiedenen Dateitypen zu verbergen oder zu löschen, während das Layout der Dokumente sauber und lesbar bleibt."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Leistungsstarke Redaktionswerkzeuge"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Suchen Sie privates Textmaterial und redigieren Sie es, um Ihre Dokumente zu sichern."

    # feature loop
    - title: "Bildinhalte abdecken"
      content: "Überlagerungen anwenden, um vertrauliche Bilder oder bestimmte Abschnitte zu verbergen."

    # feature loop
    - title: "Versteckte Metadaten bereinigen"
      content: "Metadaten entfernen oder aktualisieren, um versehentliches Teilen privater Details zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bilder mit Überlagerungen abdecken"
      content: |
        Erfahren Sie, wie Sie sensible Teile von Bildern in Ihren Dokumenten mit Überlagerungen schützen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie das Dokument zur Redaktion
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Größe, Farbe und Position der Überlagerung festlegen
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Bestimmten Bildbereich auswählen
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Überlagerung anwenden, um das Bild abzudecken
              redactor.apply(redaction);

              // Die aktualisierte Datei speichern
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
    title: "Java-Redaktionen für XLSX-Dateien"
    exclude: "XLSX"
    description: "Verwenden Sie Java, um private Inhalte in XLSX-Dateien zu maskieren oder zu löschen. Eine clevere Wahl für die Sicherung geschäftlicher und persönlicher Dokumente."
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