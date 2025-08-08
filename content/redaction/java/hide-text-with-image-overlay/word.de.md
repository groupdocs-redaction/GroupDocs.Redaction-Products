
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Text in WORD mithilfe von Java-Überlagerungen redigieren"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um sensiblen Text in WORD-Dateien mit farbigen Blöcken zu verdecken, während die Dokumentstruktur unverändert bleibt."

############################# Header ############################
title: "Überlagerungsredaktion in WORD-Dateien mit Java" 
description: "Verstecken Sie wichtige Details in Ihren WORD-Dokumenten mithilfe von farbigen Überlagerungen, die von Java und GroupDocs.Redaction for Java unterstützt werden."
subtitle: "Was GroupDocs.Redaction for Java leisten kann" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Java kennen"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Benutzern die vollständige Kontrolle über die Redaktion von WORD. Verstecken Sie alles, was Sie wollen - Text, Grafiken oder Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Private Informationen im Word-Format schützen"
    content: |
      GroupDocs.Redaction for Java bietet Java-Entwicklern schnelle Möglichkeiten, Dateien aufzuräumen und ihre Inhalte zu sichern.
      
      1. Starten Sie einen Redactor und laden Sie die Word-Datei.
      2. Wählen Sie Ihre Redaktionsoptionen.
      3. Fügen Sie das Textmuster und die Überlagerungsfarbe hinzu.
      4. Führen Sie die Redaktion aus und speichern Sie die Datei.
   
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
        // Text mithilfe von Überlagerungen in WORD verstecken

        // Verwenden Sie Redactor, um das Dokument zu öffnen
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Stellen Sie die Redaktionspräferenzen ein
            // Fügen Sie Schlüsselwörter und Farbe hinzu
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Anwenden und speichern Sie die redigierte Datei
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Redaktionsfähigkeiten"
  description: "Verwenden Sie GroupDocs.Redaction for Java, um sowohl sichtbare als auch versteckte Inhalte aus Dateien zu entfernen, während das Layout intakt bleibt."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Einfache, saubere Ausgabe"
  features:
    # feature loop
    - title: "Text ersetzen"
      content: "Bedecken Sie Wörter oder Begriffe, die nicht sichtbar sein sollten."

    # feature loop
    - title: "Visuelle Elemente maskieren"
      content: "Verwenden Sie farbige Überlagerungen, um Bilder oder Teile davon zu verdecken."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie Details, die in den Dateieigenschaften verborgen sind."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex-gesteuerte Redaktion"
      content: |
        Erfahren Sie, wie Sie Regex verwenden, um spezifische Inhalte automatisch zu verstecken.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie das Dokument, das Sie redigieren möchten
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Definieren Sie Ihr Regex-Muster und die Überlagerungsfarbe
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Wenden Sie die Redaktion an
              redactor.apply(redaction);

              // Speichern Sie Ihre bereinigte Version
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
    title: "Inhalt in WORD mit Java redigieren"
    exclude: "WORD"
    description: "Halten Sie Ihre WORD-Dokumente privat, indem Sie sensible Daten mit Java verbergen oder entfernen."
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