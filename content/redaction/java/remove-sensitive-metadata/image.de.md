
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Entfernen Sie versteckte Metadaten in IMAGE mit Java"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um Metadaten in IMAGE-Dateien zu bereinigen. Stellen Sie sicher, dass private Informationen verborgen bleiben."

############################# Header ############################
title: "Metadaten aus IMAGE-Dateien mit Java entfernen" 
description: "Halten Sie Ihre IMAGE-Dokumente sicher mit Werkzeugen, die für Java entwickelt wurden. Entfernen Sie sensible Details schrittweise."
subtitle: "Was Sie mit GroupDocs.Redaction for Java tun können" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ermöglicht Java-Entwicklern, sensible Inhalte — einschließlich Text, Bilder und Metadaten — aus IMAGE-Dateien zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Wie man Metadaten in Image-Dateien bereinigt"
    content: |
      Beginnen Sie mit der Verwendung von GroupDocs.Redaction in Ihrer Java-App, um versteckte Metadaten schnell zu entfernen.
      
      1. Erstellen Sie einen Redactor und öffnen Sie Ihr Image-Dokument.
      2. Wählen Sie die zu entfernenden Metadatenfelder aus.
      3. Wenden Sie die Redaktionsanpassungen an.
      4. Speichern Sie die bereinigte Datei.
   
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
        // Bereinigen Sie versteckte Metadaten aus IMAGE

        // Laden Sie Ihre Datei mit Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Legen Sie die Metadatenfelder fest, die gelöscht werden sollen
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
  title: "Inhalte in jeder Datei bereinigen"
  description: "GroupDocs.Redaction for Java hilft, privaten Text, versteckte Bilddetails und Metadaten aus Ihren Dokumenten vor dem Teilen zu entfernen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Hauptmerkmale"
  features:
    # feature loop
    - title: "Textbereinigung"
      content: "Suchen Sie nach privaten Wörtern oder Zahlen und entfernen Sie sie sicher."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Verstecken Sie sensible Teile von Bildern mit Überlagerungen."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie Metadatenfelder, die private Informationen enthalten könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sensible Metadaten löschen"
      content: |
        Dieser Leitfaden zeigt, wie Sie Felder wie Autor und Titel aus einem IMAGE-Dokument bereinigen können.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie IMAGE im Redactor
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Wählen Sie die Autorenmetadaten aus
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Wählen Sie die Titelmetadaten aus
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Wenden Sie die Redaktion an
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
    title: "Metadaten in IMAGE mit Java bereinigen"
    exclude: "IMAGE"
    description: "Verwenden Sie Java, um versteckte Daten in IMAGE-Dateien zu löschen. Ideal für die Dokumentenbereinigung vor dem Teilen oder Archivieren."
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