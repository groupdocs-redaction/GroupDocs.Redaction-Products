
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen in PDF verwenden, um Bilder abzudecken"
head_description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, private Bilder in PDF-Dateien durch farbige Überlagerungen zu verbergen. Schützen Sie sensible visuelle Inhalte, während das Design Ihres Dokuments erhalten bleibt."

############################# Header ############################
title: "Vertrauliche Bilder in PDF-Dateien mit Überlagerungen über Java verbergen" 
description: "Schützen Sie persönliche und geschäftliche Daten in PDF-Dateien mit Java. Unsere Werkzeuge machen die Bildredaktion einfach und effektiv."
subtitle: "Funktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern effektive Werkzeuge zum Verbergen oder Löschen von Inhalten in PDF-Dateien. Decken Sie Texte, Bilder und Metadaten ab, um Ihre Dokumente über verschiedene Formate hinweg sicher zu halten.

############################# Steps ############################
steps:
    enable: true
    title: "Geschäftsinformationen in Pdf-Dateien schützen"
    content: |
      GroupDocs.Redaction for Java hilft Ihren Java-Anwendungen, Dokumente zu sichern. Redigieren Sie private Bilder in wenigen Schritten.
      
      1. Initialisieren Sie einen Redactor und legen Sie den Pfad zu Ihrer Pdf-Datei fest.
      2. Wählen Sie die Redaktionsoptionen für optimale Ergebnisse aus.
      3. Wählen Sie den Bildbereich aus und legen Sie eine Farbüberlagerung fest.
      4. Verarbeiten und speichern Sie die gesicherte Datei.
   
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
        // Sensible Bilder in PDF abdecken

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Legen Sie Überlagerungsfarbe und -größe fest
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Wählen Sie den Zielbereich für die Redaktion aus
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Wenden Sie die Überlagerung an und speichern Sie die Datei
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten verbergen"
  description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Daten in verschiedenen Dateiformaten zu verbergen oder zu löschen. Schützen Sie private Informationen, während Sie die Dateien lesbar und verteilerfreundlich halten."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Leistungsstarke Redaktionsoptionen"
  features:
    # feature loop
    - title: "Text überall ändern"
      content: "Sensible Wörter in Ihrem Dokument finden und ersetzen, um private Inhalte zu sichern."

    # feature loop
    - title: "Bilder verbergen"
      content: "Fügen Sie Überlagerungen hinzu, um Bilder oder Teile davon zu verbergen und so sensible visuelle Inhalte geheim zu halten."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen oder bearbeiten Sie verborgene Metadaten, um unbeabsichtigte Informationslecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bilder mit Überlagerungen abdecken"
      content: |
        Dieses Beispiel zeigt, wie vertrauliche visuelle Inhalte in Dokumenten mit Überlagerungen verborgen werden.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie das Dokument zur Bearbeitung
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Definieren Sie Größe, Farbe und Position der Überlagerung
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Wählen Sie den Bildbereich auf Seite eins aus
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Fügen Sie die Überlagerung hinzu, um sensible Daten abzudecken
              redactor.apply(redaction);

              // Speichern Sie das aktualisierte Dokument
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
    title: "Java-Redaktionen zum Schutz von PDF-Dateien"
    exclude: "PDF"
    description: "Verwenden Sie Java, um sensible Daten in PDF-Dateien zu verbergen oder zu entfernen. Ideal zum Sichern offizieller und privater Dokumente."
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