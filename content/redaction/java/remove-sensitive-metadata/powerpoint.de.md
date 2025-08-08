
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Löschen von Metadaten aus POWERPOINT mit Java"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um versteckte Metadaten aus POWERPOINT-Dateien zu bereinigen und Ihre Dokumente privat und sicher zu halten."

############################# Header ############################
title: "Metadaten in POWERPOINT löschen mit Java" 
description: "Schützen Sie Ihre Dateien mit benutzerfreundlichen Werkzeugen, die für Java erstellt wurden. Entfernen Sie Metadaten in nur wenigen Schritten."
subtitle: "Was Sie mit GroupDocs.Redaction for Java erhalten" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ist ein Redaktionswerkzeug für Java-Entwickler. Es hilft Ihnen, Text, Bilder und Metadaten in POWERPOINT-Dateien zu bereinigen.

############################# Steps ############################
steps:
    enable: true
    title: "So bereinigen Sie Metadaten aus Powerpoint-Dateien"
    content: |
      Mit GroupDocs.Redaction können Ihre Java-Apps Metadaten aus Dokumenten schnell bereinigen.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie das Dokument.
      2. Wählen Sie die Metadatenfelder aus, die Sie löschen möchten.
      3. Wenden Sie Ihre Redaktionsanpassungen an.
      4. Exportieren Sie Ihr Dokument ohne die versteckten Daten.
   
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
        // Löschen Sie Metadaten aus POWERPOINT-Dateien

        // Öffnen Sie Ihre Datei mit dem Redaktor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Legen Sie fest, welche Metadaten entfernt werden sollen
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Bereinigen und speichern Sie die Datei
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Halten Sie Ihre Dateien mit der Redaktionsfunktion sicher"
  description: "GroupDocs.Redaction for Java hilft, private oder versteckte Inhalte zu reinigen, damit Dokumente sicher geteilt werden können. Unterstützt viele Dateitypen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Was Sie redigieren können"
  features:
    # feature loop
    - title: "Sensible Texte entfernen"
      content: "Finden und löschen Sie persönliche oder vertrauliche Wörter aus Ihren Dateien."

    # feature loop
    - title: "Bildbereiche verstecken"
      content: "Verbergen Sie Teile von Bildern, die nicht sichtbar sein sollten."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen Sie Felder, die versteckte Details offenbaren könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Entfernen versteckter Metadatenfelder"
      content: |
        Diese Vorlage zeigt, wie Sie eingebettete Informationen wie Autor und Titel aus einem POWERPOINT-Dokument löschen können.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die Datei mit dem Redaktor
          final Redactor redactor = new Redactor("source.pptx");
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

              // Wenden Sie die Redaktion an
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Speichern Sie das aktualisierte Dokument
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
    title: "Bereinigen Sie POWERPOINT-Metadaten in Java"
    exclude: "POWERPOINT"
    description: "Verwenden Sie Java, um private Daten aus POWERPOINT-Dateien zu entfernen. Perfekt zum Bereinigen und Teilen sensibler Dokumente."
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