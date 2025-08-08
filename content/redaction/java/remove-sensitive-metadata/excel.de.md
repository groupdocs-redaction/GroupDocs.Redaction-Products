
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Entfernen von Metadaten aus EXCEL mit Java"
head_description: "Schützen Sie Ihre EXCEL-Dokumente, indem Sie versteckte Metadaten mit GroupDocs.Redaction for Java bereinigen. Halten Sie private Details davon ab, offengelegt zu werden."

############################# Header ############################
title: "Metadaten in EXCEL-Dateien mit Java bereinigen" 
description: "Mit Java entfernen Sie sensible Daten aus EXCEL-Dateien. Eine intelligente Methode, um Ihre Dokumente sicher zu halten."
subtitle: "Warum GroupDocs.Redaction for Java wählen" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Java-Entwicklern die Werkzeuge, um Inhalte in EXCEL-Dateien zu kontrollieren. Entfernen Sie Texte, Metadaten und Bilder nach Bedarf.

############################# Steps ############################
steps:
    enable: true
    title: "So entfernen Sie Metadaten aus Excel-Dateien"
    content: |
      In Java macht GroupDocs.Redaction es einfach, Dokumentmetadaten zu bereinigen.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Excel-Datei.
      2. Legen Sie Regeln fest, um versteckte Datenfelder zu entfernen.
      3. Führen Sie den Bereinigungsprozess durch.
      4. Speichern Sie das bereinigte Dokument.
   
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
        // Entfernen Sie versteckte Metadaten aus EXCEL

        // Starten Sie den Redaktor und öffnen Sie die Datei
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Legen Sie Optionen für die Metadatenentfernung fest
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Bereinigen und speichern Sie das Dokument
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Entfernen Sie sensible Inhalte aus Dateien"
  description: "Mit GroupDocs.Redaction for Java können Sie Metadaten löschen, Texte redigieren und Bildbereiche in vielen Dateitypen abdecken. Ideal für rechtliche, persönliche oder geschäftliche Nutzung."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge zur Bereinigung von Metadaten und Inhalten"
  features:
    # feature loop
    - title: "Finden und Text löschen"
      content: "Suchen Sie nach sensiblen Texten und entfernen Sie diese, um Informationen zu schützen."

    # feature loop
    - title: "Bildinhalte abdecken"
      content: "Verstecken Sie vertrauliche Bildabschnitte mithilfe von Überlagerungen."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie eingebettete Details, die private Daten enthalten könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Fokussieren Sie auf spezifische Metadatenfelder"
      content: |
        Dieses Beispiel führt Sie durch das Entfernen von Feldern wie Autor und Titel aus einer EXCEL-Datei.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie die Datei in den Redaktor
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Wählen Sie das Autorenfeld aus
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Wählen Sie das Titelfeld aus
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
    title: "Metadatenbereinigung in EXCEL mit Java"
    exclude: "EXCEL"
    description: "Verwenden Sie Java-Werkzeuge, um versteckte Daten in EXCEL-Dateien zu entfernen. Teilen Sie saubere, sichere Dokumente."
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