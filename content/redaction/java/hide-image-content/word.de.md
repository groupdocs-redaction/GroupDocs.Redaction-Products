
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen verwenden, um Bilder in WORD zu verbergen"
head_description: "Mit GroupDocs.Redaction for Java können Sie sensible Bilder in WORD-Dateien mithilfe von farbigen Überlagerungen abdecken. Schützen Sie private Daten, ohne das Layout des Dokuments zu ändern."

############################# Header ############################
title: "Sensible Bilder in WORD-Dateien mit Java schützen" 
description: "Sichern Sie persönliche und geschäftliche visuelle Inhalte in WORD-Dokumenten mit Java. Schnelle und zuverlässige Bildredaktion leicht gemacht."
subtitle: "Wichtigste Funktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern einfach zu verwendende Werkzeuge, um Inhalte in WORD-Dateien zu verbergen oder zu löschen. Redigieren Sie Texte, Bilder und Metadaten über verschiedene Formate hinweg.

############################# Steps ############################
steps:
    enable: true
    title: "Vertrauliche Daten in Word-Dateien sicher aufbewahren"
    content: |
      GroupDocs.Redaction for Java erleichtert es Java-Apps, private Informationen in Dokumenten zu verbergen.
      
      1. Initialisieren Sie einen Redactor und laden Sie die Word-Datei.
      2. Definieren Sie die benötigten Redaktionsoptionen.
      3. Kennzeichnen Sie den Bildbereich und wählen Sie eine Überlagerungsfarbe.
      4. Führen Sie die Redaktion aus und speichern Sie Ihr aktualisiertes Dokument.
   
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
        // Sensible Bildinhalte in WORD verbergen

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Wählen Sie Farbe und Größe der Überlagerung
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Markieren Sie den Bildbereich, der abgedeckt werden sollte
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
  title: "Werkzeuge zum Verbergen und Entfernen von Inhalten"
  description: "GroupDocs.Redaction for Java hilft Ihnen, sensible Daten in verschiedenen Dateiformaten zu verbergen oder zu löschen. Halten Sie Ihre Dokumente sicher und gut strukturiert."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Effektive Redaktionsmerkmale"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Suchen Sie Dokumente nach privatem Text und ersetzen Sie ihn, um die Datensicherheit zu gewährleisten."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Vollständige Bilder oder ausgewählte Regionen durch Überlagerungen abdecken."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen oder bearbeiten Sie verborgene Metadaten, um die Offenlegung vertraulicher Informationen zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Überlagerungen verwenden, um Bilddaten zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie man sensitive Bildinhalte in Dokumenten mit Überlagerungen schützt.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie das Dokument
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Legen Sie Eigenschaften der Überlagerung wie Größe, Position und Farbe fest
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Markieren Sie den Bildbereich auf der ersten Seite
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Überlagerung anwenden, um den Bereich abzudecken
              redactor.apply(redaction);

              // Das redigierte Dokument speichern
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
    title: "Java-Redaktionen für WORD-Dateien"
    exclude: "WORD"
    description: "Verwenden Sie Java, um sensible Daten in WORD-Dateien zu verbergen oder zu löschen. Ein effektiver Weg, um Dokumente sicher zu halten."
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