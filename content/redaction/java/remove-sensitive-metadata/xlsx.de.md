
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Entfernen von Metadaten aus XLSX mit Java"
head_description: "GroupDocs.Redaction for Java hilft, versteckte Metadaten aus XLSX-Dateien zu bereinigen. Halten Sie Ihre Dokumente privat und frei von unerwünschten Details."

############################# Header ############################
title: "Metadaten in XLSX-Dateien mit Java bereinigen" 
description: "Verwenden Sie Java, um persönliche oder versteckte Details in Ihren XLSX-Dokumenten zu entfernen. Ideal für Arbeits- und Privatnutzung."
subtitle: "Sehen Sie, was Sie mit GroupDocs.Redaction for Java erreichen können" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Java-Entwicklern die Werkzeuge, um Inhalte in XLSX-Dateien zu kontrollieren. Entfernen Sie Text, Metadaten und Bilder nach Bedarf.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten aus Xlsx-Dateien löschen"
    content: |
      GroupDocs.Redaction unterstützt Ihr Java-Projekt, um sensible Metadaten schnell zu bereinigen.
      
      1. Starten Sie einen Redactor und öffnen Sie die Xlsx-Datei.
      2. Wählen Sie, welche Metadatenfelder entfernt werden sollen.
      3. Führen Sie die Redaktion durch, um sie aus der Datei zu löschen.
      4. Speichern Sie die bereinigte Version.
   
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
        // Versteckte Metadaten aus XLSX-Dateien löschen

        // Öffnen Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Wählen Sie die Metadatenfelder aus, die entfernt werden sollen
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Änderungen anwenden und Ihre Datei speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sichern Sie Ihre Dateien, indem Sie sensible Informationen verbergen"
  description: "Mit GroupDocs.Redaction for Java können Sie private Daten aus verschiedenen Dokumenttypen bereinigen. Ein einfacher Weg, um Ihre Dateien sicher zu halten."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge zur Bereinigung von Metadaten und Inhalten"
  features:
    # feature loop
    - title: "Text entfernen"
      content: "Suchen Sie nach Wörtern oder Phrasen, die private Daten enthalten, und löschen Sie sie."

    # feature loop
    - title: "Bilder abdecken"
      content: "Verbergen Sie Bildabschnitte, die private oder sensible Teile enthalten."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie Hintergrundinformationen, die persönliche oder geschäftliche Details offenbaren könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Beispiel zur Entfernung von Metadaten"
      content: |
        Dieses Beispiel zeigt, wie Metadaten wie Autor oder Titel aus einer XLSX-Datei gelöscht werden können.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie Ihr Dokument
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Wählen Sie das Autorfeld zur Redaktion aus
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Wählen Sie das Titelfeld zur Redaktion aus
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Führen Sie das Redaktionswerkzeug aus
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Speichern Sie das Ergebnis
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
    title: "Metadatenbereinigung in XLSX mit Java"
    exclude: "XLSX"
    description: "Verwenden Sie Java-Werkzeuge, um versteckte Daten aus XLSX-Dateien zu entfernen. Teilen Sie saubere, sichere Dokumente."
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