
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Entfernen von Metadaten aus PPTX-Dateien mit Java"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um versteckte Metadaten in Ihren PPTX-Dateien zu löschen oder zu bearbeiten. Schützen Sie Ihre Inhalte und halten Sie Ihre Dokumente sauber."

############################# Header ############################
title: "Metadaten in PPTX mit Java-Werkzeugen bereinigen" 
description: "Löschen Sie persönliche Details, die in Metadaten gespeichert sind, mit Java. Funktioniert hervorragend für persönliche und geschäftliche Dokumente."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ist ein Redaktionswerkzeug für Java-Entwickler. Es hilft Ihnen, Text, Bilder und Metadaten in PPTX-Dateien zu bereinigen.

############################# Steps ############################
steps:
    enable: true
    title: "Entfernen von Metadaten in Pptx-Dateien"
    content: |
      Mit GroupDocs.Redaction können Ihre Java-Projekte versteckte Metadaten in nur wenigen Schritten bereinigen.
      
      1. Richten Sie einen Redactor ein und laden Sie Ihre Pptx-Datei.
      2. Wählen Sie die Metadatenfelder aus, die gelöscht werden sollen.
      3. Führen Sie den Redaktionsprozess durch.
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
        // Entfernen Sie Metadaten aus PPTX-Dateien

        // Verwenden Sie Redactor, um die Datei zu öffnen
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Legen Sie die zu entfernenden Metadatenfelder fest
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
  title: "Weitere Redaktionswerkzeuge, die Sie verwenden können"
  description: "GroupDocs.Redaction for Java hilft Ihnen, sensible Informationen aus allen gängigen Dateitypen zu löschen. Halten Sie Dokumente sauber und bereit zum Teilen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Datenschutzmerkmale integriert"
  features:
    # feature loop
    - title: "Sensible Texte löschen"
      content: "Finden und löschen Sie Namen, E-Mails und andere persönliche Informationen in Ihren Dateien."

    # feature loop
    - title: "Teile von Bildern verbergen"
      content: "Fügen Sie Überlagerungen hinzu, um Bereiche in Bildern zu verdecken, die Sie privat halten möchten."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen Sie Hintergrunddaten wie Autor oder Titel, bevor Sie Ihre Dateien teilen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Beispiel zum Entfernen von Metadatenfeldern"
      content: |
        Dieses Beispiel zeigt, wie Sie Metadaten wie Autor und Titel aus einer PPTX-Datei löschen können.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie Ihre PPTX-Datei
          final Redactor redactor = new Redactor("source.pptx");
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

              // Anwenden von Redaktionsregeln
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Speichern Sie die redigierte Datei
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
    title: "Metadaten aus PPTX mit Java entfernen"
    exclude: "PPTX"
    description: "Java ermöglicht es, versteckte Daten in PPTX-Dateien einfach zu löschen. Ideal zum Schutz der Dokumente vor dem Teilen."
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