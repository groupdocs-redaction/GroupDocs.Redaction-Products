
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen verwenden, um Bilder in EXCEL zu verbergen"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um sensible Bilder in EXCEL-Dateien abzudecken. Fügen Sie farbige Überlagerungen hinzu, um private Informationen zu schützen, während das Design des Dokuments erhalten bleibt."

############################# Header ############################
title: "Sensible Bilder in EXCEL-Dateien mit Java überlagern" 
description: "Schützen Sie private und geschäftliche Bilder in EXCEL-Dateien mit Java. Schnelle und unkomplizierte Werkzeuge für zuverlässigen Datenschutz."
subtitle: "Entdecken Sie die Funktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Entwicklern die Werkzeuge, um Inhalte in EXCEL-Dateien zu verbergen oder zu löschen. Decken Sie Text, Bilder und Metadaten ab, um sensible Daten zu schützen.

############################# Steps ############################
steps:
    enable: true
    title: "Sichern Sie Ihre Daten in Excel-Dateien"
    content: |
      GroupDocs.Redaction for Java hilft Java-Apps, sensible Inhalte in Dokumenten mühelos zu verstecken.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie Ihre Excel-Datei.
      2. Legen Sie Redaktionsoptionen entsprechend Ihren Anforderungen fest.
      3. Wählen Sie den Bildbereich zum Abdecken aus und definieren Sie eine Überlagerungsfarbe.
      4. Wenden Sie die Redaktion an und speichern Sie Ihr Dokument.
   
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
        // Verbergen Sie Bildinhalte in EXCEL

        // Öffnen Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Überlagerungsgröße und -farbe festlegen
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Bereich wählen, den Sie verstecken möchten
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Änderungen anwenden und die Datei speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten verbergen oder löschen"
  description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Daten in mehreren Dateitypen zu verbergen oder zu löschen. Halten Sie Ihre Dokumente klar und sicher."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Erweiterte Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Suchen Sie Dokumente nach privatem Text und ersetzen Sie ihn, um die Daten zu schützen."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Versteckte Teile von Bildern oder komplette visuelle Inhalte mit farbigen Überlagerungen."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Entfernen Sie verborgene Metadaten, um das Teilen zusätzlicher Informationen zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bilddaten mit Überlagerungen abdecken"
      content: |
        Dieses Beispiel zeigt, wie Sie sensible Bereiche von Bildern in Dokumenten mit Überlagerungen schützen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die Datei zur Redaktion
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Legen Sie Größe, Farbe und Position der Überlagerung fest
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Wählen Sie den spezifischen Bildbereich aus
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
    title: "Java-Redaktionen zum Schutz von EXCEL-Dateien"
    exclude: "EXCEL"
    description: "Verwenden Sie Java, um sensible Daten in EXCEL-Dateien zu verbergen oder zu entfernen. Eine einfache Möglichkeit, Datenschutz in Dokumenten zu gewährleisten."
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