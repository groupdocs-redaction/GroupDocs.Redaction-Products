
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen in DOCX verwenden, um Bilder zu verbergen"
head_description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Bilder in DOCX-Dateien durch farbige Überlagerungen zu verbergen. Schützen Sie private Informationen, ohne das Layout Ihres Dokuments zu ändern."

############################# Header ############################
title: "Vertrauliche Bilder in DOCX-Dokumenten mit Überlagerungen über Java verbergen" 
description: "Schützen Sie geschäftliche und persönliche Daten in DOCX-Dateien mit Java. Unsere Werkzeuge helfen Ihnen, sensible Informationen sicher und Ihre Dokumente sauber zu halten."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern die Werkzeuge zum Verbergen oder Löschen von Inhalten in DOCX-Dateien. Schützen Sie Text, Bilder und Metadaten in verschiedenen Dokumentformaten.

############################# Steps ############################
steps:
    enable: true
    title: "Daten in Docx-Dokumenten sichern"
    content: |
      GroupDocs.Redaction for Java verleiht Ihren Java-Apps die Möglichkeit, Dokumente zu redigieren. Decken Sie private Inhalte schnell und effizient ab.
      
      1. Erstellen Sie einen Redactor und legen Sie den Dateipfad zu Ihrem Docx-Dokument fest.
      2. Passen Sie die Redaktionsoptionen an Ihre Bedürfnisse an.
      3. Wählen Sie den Bildbereich aus, den Sie abdecken möchten, und legen Sie eine Überlagerungsfarbe fest.
      4. Führen Sie den Redaktionsprozess aus und speichern Sie die Datei.
   
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
        // Sensible Bildbereiche in DOCX verbergen

        // Dokument mit Redactor laden
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Überlagerungsfarbe und -größe festlegen
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Markieren Sie den Bereich, der redigiert werden soll
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
  title: "Sensible Inhalte in Dateien verbergen"
  description: "GroupDocs.Redaction for Java ermöglicht Ihnen das Redigieren oder Entfernen von Inhalten aus verschiedenen Dateiformaten. Halten Sie Ihre Dokumente sicher und lesbar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Redaktionsfunktionen für Dokumente"
  features:
    # feature loop
    - title: "Textinhalt bearbeiten"
      content: "Sensible Texte in Ihren Dateien suchen und ersetzen, um Datenschutz zu gewährleisten."

    # feature loop
    - title: "Bilder überlagern"
      content: "Ganze Bilder oder ausgewählte Teile abdecken, um vertrauliche visuelle Informationen zu verbergen."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Versteckte Metadaten aus Dokumenten bereinigen, um eine Datenoffenlegung zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Überlagerungen anwenden, um sensible Daten zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie Überlagerungen verwendet werden, um vertrauliche Bildbereiche in Dokumenten abzudecken.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie das Dokument zur Bearbeitung
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Größe, Farbe und Position der Überlagerung festlegen
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Wählen Sie einen Zielbereich auf Seite eins aus
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Überlagerung anwenden, um das Bild abzudecken
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
    title: "Java-Redaktionen für DOCX-Dateien"
    exclude: "DOCX"
    description: "Verwenden Sie Java, um private Daten in DOCX-Dateien zu verbergen oder zu löschen. Perfekt, um geschäftliche und vertrauliche Dokumente sicher zu halten."
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