
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Metadaten in JPEG mit Java bearbeiten"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um Metadaten in JPEG-Dateien zu bereinigen oder zu ändern. Schützen Sie die Privatsphäre, indem Sie versteckte Daten entfernen."

############################# Header ############################
title: "Metadaten aus JPEG-Dateien mit Java entfernen" 
description: "Halten Sie Ihre JPEG-Dokumente mit einfachen Java-Werkzeugen, die private Details entfernen, sicher."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Java-Entwicklern die Werkzeuge, um unerwünschte Texte, Bilder und Metadaten aus JPEG-Dateien zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Jpeg-Dokumenten bereinigen"
    content: |
      GroupDocs.Redaction macht es einfach, Metadaten in Ihren Java-Projekten zu löschen.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Jpeg-Datei.
      2. Wählen Sie Optionen zum Entfernen aller Metadatenfelder.
      3. Führen Sie die Redaktion durch, um die Datei zu bereinigen.
      4. Speichern Sie die aktualisierte Datei ohne versteckte Daten.
   
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
        // Metadaten aus JPEG-Dateien bereinigen

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Legen Sie die Metadatenbereinigung fest
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Führen Sie aus und speichern Sie die Änderungen
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Schützen Sie Ihre Dokumente"
  description: "GroupDocs.Redaction for Java hilft, private Inhalte aus vielen Dokumenttypen zu entfernen. Halten Sie sensible Informationen aus Ihren gemeinsam genutzten Dateien fern."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Wichtige Redaktionsmerkmale"
  features:
    # feature loop
    - title: "Text entfernen"
      content: "Suchen Sie und löschen Sie persönliche Wörter oder Phrasen aus Ihren Dateien."

    # feature loop
    - title: "Inhalte von Bildern verbergen"
      content: "Fügen Sie Überlagerungen hinzu, um Bereiche von Bildern mit sensiblen Informationen abzudecken."

    # feature loop
    - title: "Metadaten bearbeiten"
      content: "Bereinigen oder ändern Sie Metadatenfelder, um privates Wissen zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadatenfelder löschen"
      content: |
        Dieses Beispiel zeigt, wie Sie Metadaten wie Autor und Titel in JPEG-Dokumenten entfernen oder bearbeiten können.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die JPEG-Datei mit dem Redaktor
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Ziel die Autorenmetadaten
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Ziel die Titelmetadaten
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
    title: "Metadaten aus JPEG mit Java entfernen"
    exclude: "JPEG"
    description: "Verwenden Sie Java, um versteckte Daten aus JPEG-Dateien zu entfernen und sensible Informationen zu schützen."
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