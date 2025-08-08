
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Text in DOCX mit Überlagerungen verstecken, mithilfe von Java"
head_description: "Verwenden Sie GroupDocs.Redaction for Java zum Blockieren privaten Textes in DOCX-Dateien. Halten Sie das Layout unverändert, während sensible Daten verborgen bleiben."

############################# Header ############################
title: "Schützen Sie DOCX-Text mit Überlagerungen in Java" 
description: "Verbergen Sie schnell persönliche, rechtliche oder geschäftliche Details in DOCX-Dateien mit Java und GroupDocs.Redaction for Java."
subtitle: "Wichtige Werkzeuge in GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Was GroupDocs.Redaction for Java ist"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Entwicklern Werkzeuge an die Hand, um DOCX-Dateien aufzuräumen. Redigieren Sie Namen, Zahlen oder Anmerkungen.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Inhalte in Docx redigieren"
    content: |
      Reinigen Sie Dokumente in Ihrem Java-Projekt mit GroupDocs.Redaction for Java.
      
      1. Initialisieren Sie den Redactor mit Ihrer Datei.
      2. Wählen Sie, wie die Redaktion erfolgen soll.
      3. Wählen Sie den zu versteckenden Text und die Überlagerungsfarbe.
      4. Wenden Sie die Redaktion an und speichern Sie die Datei.
   
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
        // Text mit Überlagerungen in DOCX abdecken

        // Erstellen Sie einen Redactor und laden Sie Ihr Dokument
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Wählen Sie Redaktionsoptionen
            // Wählen Sie Text und Farbe aus
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Speichern Sie die redigierte Version
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaktionswerkzeuge für den Alltag"
  description: "GroupDocs.Redaction for Java bietet Ihnen einfache Optionen, um sensible Details in Dokumenten zu verbergen, während die Benutzbarkeit erhalten bleibt."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Einfache Redaktionsoptionen"
  features:
    # feature loop
    - title: "Text finden und ändern"
      content: "Wörter in Sekundenschnelle verstecken oder ersetzen."

    # feature loop
    - title: "Teile von Bildern blockieren"
      content: "Maskieren Sie Abschnitte von Bildern oder gescannten Inhalten."

    # feature loop
    - title: "Hintergrundinformationen löschen"
      content: "Versteckte Metadaten wie Urheberschaft oder Daten entfernen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text mit Regex finden und verstecken"
      content: |
        Verwenden Sie Musterabgleich, um Schlüsselphrasen automatisch zu verstecken.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie das Dokument, das Sie redigieren möchten
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Legen Sie das Regex-Muster und den Überlagerungsstil fest
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Wenden Sie die Redaktionslogik an
              redactor.apply(redaction);

              // Speichern Sie Ihr bereinigtes Dokument
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Redigieren Sie DOCX-Dateien mithilfe von Java"
    exclude: "DOCX"
    description: "Schützen Sie sensible Inhalte in DOCX durch Verbergen oder Entfernen mit den Werkzeugen in Java."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Präsentation"


---