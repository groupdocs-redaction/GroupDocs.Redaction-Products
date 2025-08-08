
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Metadaten aus DOCX mit Java löschen"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um versteckte Metadaten in Ihren DOCX-Dateien zu bereinigen. Stellen Sie sicher, dass Ihre Dokumente keine privaten Informationen offenbaren."

############################# Header ############################
title: "Metadaten in DOCX-Dokumenten mit Java bereinigen" 
description: "Entfernen Sie unerwünschte Metadaten aus Ihren DOCX-Dateien mit Java. Halten Sie Ihre Dateien privat und sicher für das Teilen oder Speichern."
subtitle: "Schlüsselwerkzeuge in GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hilft Java-Entwicklern, private Inhalte aus DOCX-Dateien zu entfernen. Verstecken Sie Text, Bilder und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Versteckte Informationen aus Docx-Dateien löschen"
    content: |
      GroupDocs.Redaction erleichtert das Löschen von Metadaten in Ihren Java-Apps.
      
      1. Initialisieren Sie Redactor und laden Sie die Docx-Datei.
      2. Legen Sie das Werkzeug so fest, dass bestimmte Metadatenfelder entfernt werden.
      3. Wenden Sie die Redaktion an, um die versteckten Informationen zu löschen.
      4. Speichern Sie die aktualisierte Datei.
   
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
        // Löschen Sie Metadaten aus DOCX-Dateien

        // Öffnen Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Wählen Sie, welche Metadaten entfernt werden sollen
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
  title: "Schutz sensibler Daten in Dokumenten"
  description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, private Inhalte aus allen Arten von Dateien zu verbergen. Stellen Sie sicher, dass keine versteckten Daten geteilt werden."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Metadaten-, Text- und Bildredaktionswerkzeuge"
  features:
    # feature loop
    - title: "Textredaktion"
      content: "Finden und löschen Sie sensible Texte in Ihrem Dokument."

    # feature loop
    - title: "Bildüberlagerungen"
      content: "Verbergen Sie Teile von Bildern, um private visuelle Inhalte zu schützen."

    # feature loop
    - title: "Metadatenbereinigung"
      content: "Entfernen Sie Hintergrundmetadaten, die versteckte Informationen offenbaren könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "So entfernen Sie Metadaten"
      content: |
        Dieses Beispiel zeigt, wie Sie versteckte Eigenschaften wie Autor und Titel aus einer DOCX-Datei löschen können.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie Ihr DOCX-Dokument
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Wählen Sie das Feld Autor zur Bereinigung aus
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Wählen Sie das Feld Titel zur Bereinigung aus
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Führen Sie die Redaktion durch
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
    title: "Metadaten aus DOCX mit Java reinigen"
    exclude: "DOCX"
    description: "Verwenden Sie Java, um versteckte Metadaten aus DOCX-Dokumenten zu entfernen. Gut für Datenschutz und Datensicherung."
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