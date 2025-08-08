
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Metadaten in PHOTO mit Java löschen"
head_description: "GroupDocs.Redaction for Java hilft Ihnen, versteckte Daten aus PHOTO-Dateien zu entfernen, die persönliche oder geschäftliche Details offenbaren könnten."

############################# Header ############################
title: "Metadaten aus PHOTO mit Java entfernen" 
description: "Halten Sie Ihre PHOTO-Dateien sicher, indem Sie versteckte Metadaten mit Java-Werkzeugen entfernen."
subtitle: "Highlights von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Java-Entwicklern Werkzeuge, um sensible Inhalte in PHOTO-Dateien zu verbergen, einschließlich Text, Bildabschnitte und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "So entfernen Sie Metadaten aus Photo-Dateien"
    content: |
      Verwenden Sie GroupDocs.Redaction in Ihrer Java-App, um Metadaten aus Dokumenten zu löschen.
      
      1. Starten Sie einen Redactor und öffnen Sie die Photo-Datei.
      2. Legen Sie die Regeln fest, um versteckte Felder zu löschen.
      3. Wenden Sie die Redaktion an, um die Datei zu bereinigen.
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
        // Bereinigen Sie Metadaten in PHOTO-Dateien

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Wählen Sie zu redigende Metadatenfelder aus
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Änderungen anwenden und Datei speichern
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Entfernen Sie private Informationen aus Dokumenten"
  description: "GroupDocs.Redaction for Java hilft Ihnen, Dateien zu reinigen, indem Sie sensible Texte, Bildinhalte und Metadaten löschen. Ideal für Datenschutz und Sicherheit."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Nützliche Redaktionsmerkmale"
  features:
    # feature loop
    - title: "Textbereinigung"
      content: "Finden und löschen Sie Wörter oder Zahlen, die nicht geteilt werden sollten."

    # feature loop
    - title: "Bildredaktion"
      content: "Fügen Sie Abdeckungen über Teile von Bildern mit sensiblen Inhalten hinzu."

    # feature loop
    - title: "Metadatenlöschung"
      content: "Bereinigen Sie Dateidetails, die private Informationen enthalten könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Versteckte Metadatenfelder löschen"
      content: |
        Dieses Beispiel zeigt, wie Sie Felder wie Autor und Titel aus einem PHOTO-Dokument entfernen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die PHOTO-Datei im Redaktor
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Redigieren Sie das Autorenfeld
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Redigieren Sie das Titelfeld
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Führen Sie den Prozess aus
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
    title: "Verwenden Sie Java, um PHOTO-Metadaten zu entfernen"
    exclude: "PHOTO"
    description: "Schützen Sie Ihre PHOTO-Dokumente, indem Sie Metadaten mit Java-Werkzeugen löschen."
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