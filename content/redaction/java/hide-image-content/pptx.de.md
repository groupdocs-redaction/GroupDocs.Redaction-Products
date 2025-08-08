
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Überlagerungen verwenden, um Bilder in PPTX zu verstecken"
head_description: "Mit GroupDocs.Redaction for Java können Sie sensible Bilder in PPTX-Dateien durch farbige Überlagerungen verbergen. Schützen Sie vertrauliche Informationen, während das Layout des Dokuments erhalten bleibt."

############################# Header ############################
title: "Vertrauliche Bilder in PPTX-Dokumenten mit Java überdecken" 
description: "Schützen Sie persönliche und geschäftliche Daten in PPTX-Dateien mit Java. Unsere Werkzeuge machen die Bildredaktion schnell und unkompliziert."
subtitle: "Wesentliche Vorteile von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern praktische Werkzeuge, um sensible Inhalte in PPTX-Dateien zu verbergen oder zu löschen. Redigieren Sie Texte, Bilder und Metadaten in verschiedenen Dokumentformaten.

############################# Steps ############################
steps:
    enable: true
    title: "Private Daten in Pptx-Dokumenten schützen"
    content: |
      GroupDocs.Redaction for Java erleichtert es Java-Apps, Dokumente durch das Verstecken sensibler Inhalte zu sichern.
      
      1. Initialisieren Sie einen Redactor und laden Sie die Pptx-Datei.
      2. Stellen Sie die Redaktionsoptionen nach Ihren Bedürfnissen ein.
      3. Wählen Sie die Bildbereiche aus und definieren Sie die Farbüberlagerungen.
      4. Wenden Sie die Redaktion an und speichern Sie die aktualisierte Datei.
   
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
        // Verstecken Sie empfindliche Bildabschnitte in PPTX

        // Öffnen Sie das Dokument mit Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Wählen Sie Farbe und Größe der Überlagerung
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Markieren Sie den Bereich, der versteckt werden soll
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Änderungen anwenden und das Dokument speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Werkzeuge zur Inhaltsredaktion"
  description: "GroupDocs.Redaction for Java hilft Ihnen, sensible Informationen in vielen Dateiformaten zu verbergen oder zu löschen. Halten Sie die Dokumente sicher und professionell."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Erweiterte Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Schnell nach privatem Text suchen und diesen redigieren, um Dokumente zu sichern."

    # feature loop
    - title: "Bilder mit Überlagerungen abdecken"
      content: "Ganze Bilder oder ausgewählte Bereiche verbergen, indem Sie Überlagerungen verwenden."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Entfernen oder bearbeiten Sie versteckte Metadaten, um das Teilen vertraulicher Informationen zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bilder mit Überlagerungen abdecken"
      content: |
        Dieses Beispiel zeigt, wie Bilder in Ihren Dokumenten abgedeckt werden.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie Ihr Dokument
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Legen Sie die Größe, Farbe und Position der Überlagerung fest
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Wählen Sie den Bildbereich auf der ersten Seite aus
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Wenden Sie die Überlagerung an, um es abzudecken
              redactor.apply(redaction);

              // Speichern Sie das redigierte Dokument
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
    title: "Java-Redaktionen für PPTX-Dateien"
    exclude: "PPTX"
    description: "Wenden Sie Java an, um sensible Inhalte in PPTX-Dateien zu verbergen oder zu löschen. Eine vertrauenswürdige Lösung zum Schutz von Dokumenten."
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