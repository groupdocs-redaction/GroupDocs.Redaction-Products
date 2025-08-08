
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Metadaten aus WORD mit Java löschen"
head_description: "Mit GroupDocs.Redaction for Java können Sie versteckte Metadaten aus WORD-Dateien schnell entfernen. Halten Sie Ihre Dokumente sicher und privat."

############################# Header ############################
title: "Versteckte Metadaten in WORD-Dateien mit Java bereinigen" 
description: "Schützen Sie Ihre WORD-Dateien, indem Sie private Informationen mit Java-Werkzeugen entfernen. Ideal für geschäftliche und private Nutzung."
subtitle: "Wie GroupDocs.Redaction for Java Ihnen hilft" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Java-Entwicklern alles, was sie benötigen, um Daten aus WORD-Dateien zu entfernen. Bereinigen Sie Metadaten, Text und Bilder.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Word-Dateien bereinigen"
    content: |
      Verwenden Sie GroupDocs.Redaction, um Metadaten aus Dokumenten in Ihren Java-Apps zu bereinigen.
      
      1. Starten Sie ein Redactor-Objekt und laden Sie Ihre Word-Datei.
      2. Definieren Sie Regeln, um versteckte Metadatenfelder zu löschen.
      3. Wenden Sie die Redaktion an, um Metadaten zu löschen.
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
        // Entfernen Sie versteckte Metadaten aus WORD

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Konfigurieren Sie die Einstellungen zur Metadatenredaktion
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Führen Sie die Redaktion durch und speichern Sie
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Werkzeuge zum Entfernen privater Informationen"
  description: "Verwenden Sie GroupDocs.Redaction for Java, um Text, Bilder und Metadaten aus vielen Dateiformaten zu bereinigen. Teilen Sie Ihre Dateien, ohne sensible Daten preiszugeben."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Metadaten- und Inhaltsredaktionsfunktionen"
  features:
    # feature loop
    - title: "Gelöschter privater Text"
      content: "Suchen Sie nach sensiblen Inhalten in Dateien und entfernen oder ändern Sie diese nach Bedarf."

    # feature loop
    - title: "Bereiche von Bildern abdecken"
      content: "Verstecken Sie bestimmte Teile von Bildern, die vertrauliche Details enthalten könnten."

    # feature loop
    - title: "Löschen von Metadatenfeldern"
      content: "Löschen Sie versteckte Tags wie Autor, Titel und mehr, um die Privatsphäre zu gewährleisten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bereinigen von Metadatenfeldern in Dokumenten"
      content: |
        Dieses Beispiel erklärt, wie Sie Metadaten wie Autor und Titel in einer WORD-Datei löschen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie die Datei zur Verarbeitung
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Löschen Sie das Autorenfeld
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Löschen Sie das Titelfeld
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Führen Sie die Redaktion durch
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Speichern Sie die bereinigte Datei
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
    title: "Metadaten in WORD mit Java löschen"
    exclude: "WORD"
    description: "Java ermöglicht es Ihnen, versteckte Metadaten in WORD-Dateien zu bereinigen. Ein einfacher Weg, um Ihre Dokumente zu schützen."
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