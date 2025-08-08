
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Saubere Metadaten in PDF mit Java"
head_description: "GroupDocs.Redaction for Java ermöglicht das Löschen oder Aktualisieren von versteckten Metadaten in PDF-Dateien. Entfernen Sie private Informationen vor dem Teilen Ihrer Dokumente."

############################# Header ############################
title: "Entfernen von Metadaten aus PDF-Dateien mit Java" 
description: "Schützen Sie persönliche und geschäftliche Informationen in Ihren PDF-Dateien mit Java. Effektive Werkzeuge zum Schutz Ihrer Daten."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Java-Entwicklern Werkzeuge zum Verbergen von Text, Bildinhalten und Metadaten in PDF-Dokumenten.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Pdf-Dokumenten bereinigen"
    content: |
      Beginnen Sie mit GroupDocs.Redaction, um Metadaten in Ihren Java-Projekten zu schützen.
      
      1. Richten Sie einen Redactor ein und öffnen Sie Ihre Pdf-Datei.
      2. Wählen Sie zum Löschen aller Metadatenfelder.
      3. Führen Sie die Redaktion durch, um versteckte Daten zu löschen.
      4. Speichern Sie die Datei ohne Metadaten.
   
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
        // Metadaten in PDF-Dateien bereinigen

        // Verwenden Sie Redactor, um die Datei zu öffnen
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Legen Sie die Einstellungen zur Metadatenredaktion fest
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Änderungen anwenden und speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Entfernen Sie sensible Informationen aus Dateien"
  description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, private Inhalte in verschiedenen Dokumentenformaten zu bereinigen. Halten Sie Ihre Dateien sicher und leicht teilbar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Kernmerkmale der Redaktion"
  features:
    # feature loop
    - title: "Textredaktion"
      content: "Finden und löschen Sie persönliche oder sensible Wörter in Ihren Dokumenten."

    # feature loop
    - title: "Bilder abdecken"
      content: "Überlagerungen auf Bildern anbringen, um private visuelle Inhalte zu verbergen."

    # feature loop
    - title: "Entfernen von Metadaten"
      content: "Löschen Sie versteckte Metadaten, die private Informationen preisgeben könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadaten bereinigen"
      content: |
        Dieses Beispiel zeigt, wie Metadaten in PDF-Dateien geändert oder gelöscht werden.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die PDF-Datei mit dem Redaktor
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Ziel das Metadatenfeld Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Ziel das Metadatenfeld Titel
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Führen Sie die Bereinigung der Metadaten durch
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Speichern Sie die endgültige Datei
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Sichern Sie PDF-Dateien mit Java Metadatenredaktion"
    exclude: "PDF"
    description: "Löschen Sie versteckte Felder in Ihren PDF-Dateien mit Java. Schützen Sie die Privatsphäre mit einem einfachen Metadatenbereinigungswerkzeug."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "JPEG Bild"


---