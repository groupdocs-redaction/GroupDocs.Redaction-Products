
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Sensible Bilder in POWERPOINT mit Java überlagern"
head_description: "Verstecken Sie private Bildinhalte in POWERPOINT-Dateien mit GroupDocs.Redaction for Java. Fügen Sie Überlagerungen hinzu, um Dokumente zu sichern, ohne das Layout zu beeinträchtigen."

############################# Header ############################
title: "Private Bilder in POWERPOINT-Dokumenten mit Java überlagern" 
description: "Halten Sie persönliche und geschäftliche visuelle Inhalte in POWERPOINT-Dateien mit Java sicher. Einfach zu benutzende Werkzeuge für einen starken Datenschutz."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ermöglicht es Java-Entwicklern, Inhalte in POWERPOINT-Dateien zu verbergen oder zu löschen. Sichern Sie Ihre Dokumente, indem Sie Text, Bilder und Metadaten maskieren.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Daten in Powerpoint-Dokumenten verstecken"
    content: |
      GroupDocs.Redaction for Java hilft Ihren Java-Anwendungen, private Inhalte in Dokumenten schnell zu verbergen.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie die Powerpoint-Datei.
      2. Legen Sie die Redaktionspräferenzen für die Aufgabe fest.
      3. Wählen Sie den Bildbereich aus und bestimmen Sie die Overlayfarbe.
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
        // Verstecken Sie Bilddaten in POWERPOINT-Dateien

        // Öffnen Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Farbe und Größe der Überlagerung festlegen
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Bereich auswählen, der maskiert werden soll
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Überlagerung anwenden und die Änderungen speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Daten in Dokumenten verbergen"
  description: "GroupDocs.Redaction for Java hilft Ihnen, private Inhalte über verschiedene Dokumentformate hinweg zu verbergen oder zu löschen. Halten Sie Dateien beim Teilen und Speichern sicher."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Redaktionswerkzeuge für jeden Bedarf"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Schnell nach sensiblen Texten suchen und diese redigieren, um die Sicherheit von Dokumenten zu gewährleisten."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Überlagerungen auf Bilder oder Bildbereiche anwenden, um diese privat zu halten."

    # feature loop
    - title: "Versteckte Metadaten entfernen"
      content: "Löschen Sie unsichtbare Metadaten, um Datenlecks zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildinhalte mit Überlagerungen verbergen"
      content: |
        Dieses Beispiel zeigt, wie Überlagerungen in sensiblen Bildbereichen in Dokumenten angewendet werden.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie die Datei zur Redaktion
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Größe, Farbe und Position der Überlagerung definieren
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

              // Überlagerung anwenden, um die Daten zu verbergen
              redactor.apply(redaction);

              // Das aktualisierte Dokument speichern
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
    title: "Java-Redaktionen für POWERPOINT-Dateien"
    exclude: "POWERPOINT"
    description: "Verwenden Sie Java, um sensible Daten in POWERPOINT-Dateien zu verstecken oder zu entfernen. Eine zuverlässige Lösung für den Dokumentenschutz."
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