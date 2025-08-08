
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Schützen Sie Text in EXCEL mit Überlagerungen und Java"
head_description: "Schützen Sie sensible Inhalte in EXCEL-Dateien, indem Sie farbige Überlagerungen mithilfe von GroupDocs.Redaction for Java anwenden. Halten Sie das Layout des Dokuments intakt."

############################# Header ############################
title: "Redigieren Sie EXCEL-Daten mit Überlagerungen in Java" 
description: "Verwenden Sie Java-Code, um sensible Informationen in EXCEL-Tabellen zu maskieren. Eine effektive Möglichkeit, Daten privat zu halten."
subtitle: "Wichtige Funktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Warum GroupDocs.Redaction for Java wählen"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ist für Java-Entwickler konzipiert, die Inhalte in EXCEL-Tabellen schnell verstecken oder bereinigen möchten.

############################# Steps ############################
steps:
    enable: true
    title: "Informationen in Excel-Tabellen verbergen"
    content: |
      GroupDocs.Redaction for Java hilft Java-Entwicklern, Dateien zu schützen, indem sie private Informationen in nur wenigen Zeilen verbergen.
      
      1. Starten Sie einen Redactor und laden Sie Ihr Spreadsheet.
      2. Legen Sie nach Bedarf Redaktionsregeln fest.
      3. Wählen Sie den Text und die Überlagerungsfarbe.
      4. Anwenden und die Datei speichern.
   
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
        // Verwenden Sie Überlagerungen, um Text in EXCEL zu verstecken

        // Erstellen Sie einen Redactor und laden Sie Ihre Datei
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Wählen Sie Redaktionsregeln
            // Geben Sie ein, was versteckt werden soll, und wählen Sie eine Farbe
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Anwenden und die Datei speichern
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Wichtige Datenschutzwerkzeuge"
  description: "Verbergen oder löschen Sie sensible Informationen aus Ihren Tabellen, ohne das Layout oder die Bedeutung zu beeinträchtigen, mithilfe von GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Entwickelt für sichere Datenbereinigung"
  features:
    # feature loop
    - title: "Text bearbeiten oder verbergen"
      content: "Finden und blockieren Sie jeden Text, der geschützt werden muss."

    # feature loop
    - title: "Sensible visuelle Elemente abdecken"
      content: "Wenden Sie farbige Blöcke über Diagrammbereiche oder Bilder an."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie die Dokumenthistorie, Autorennamen oder Zeitstempel."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex-Redaktion"
      content: |
        Verwenden Sie Regex, um Text automatisch zu finden und zu verstecken.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie Ihr Spreadsheet
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Legen Sie das Muster und die Überlagerungsdetails fest
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Wenden Sie die Redaktion an
              redactor.apply(redaction);

              // Speichern Sie die bereinigte Version
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
    title: "EXCEL-Tabellen mit Java redigieren"
    exclude: "EXCEL"
    description: "Verbergen oder löschen Sie sensible Daten in EXCEL-Tabellen mithilfe von Überlagerungen und Werkzeugen von Java."
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