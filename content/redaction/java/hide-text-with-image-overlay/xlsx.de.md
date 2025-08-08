
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Text in XLSX mit Java-Überlagerungen blockieren"
head_description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Informationen in XLSX-Dateien mit farbigen Blocks zu verdecken. Daten verbergen und dabei das Layout intakt halten."

############################# Header ############################
title: "Daten in XLSX mit Überlagerungen in Java verbergen" 
description: "Verwenden Sie Java und GroupDocs.Redaction for Java, um private Inhalte in XLSX-Dateien zu maskieren, ohne das Format zu beeinflussen."
subtitle: "Hauptfunktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Warum GroupDocs.Redaction for Java funktioniert"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ermöglicht es Java-Entwicklern, XLSX-Dateien abzusichern. Verstecken Sie Text, Bilder oder Metadaten schnell.

############################# Steps ############################
steps:
    enable: true
    title: "Informationen in Xlsx-Dokumenten schützen"
    content: |
      Halten Sie Ihre Dokumente mit simplem Code in GroupDocs.Redaction for Java in Java sicher.
      
      1. Erstellen Sie einen Redactor mit dem Datei-Pfad.
      2. Richten Sie Ihre Redaktionslogik ein.
      3. Wählen Sie das Schlüsselwort und die Überlagerungsfarbe.
      4. Redigieren und speichern Sie die Datei.
   
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
        // Verstecken Sie Informationen in XLSX mit Blocks

        // Laden Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Legen Sie redaktionspräferenzen fest
            // Fügen Sie Text und Farbe zum Block hinzu
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Speichern Sie das aktualisierte Dokument
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Integrierte Datenschutzfunktionen"
  description: "Verwenden Sie GroupDocs.Redaction for Java, um Inhalte in Ihren Dateien zu blockieren oder zu löschen, ohne die Struktur zu gefährden."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Einfache Datenschutzelemente"
  features:
    # feature loop
    - title: "Text ändern oder verstecken"
      content: "Bearbeiten oder redigieren Sie spezifische Wörter problemlos."

    # feature loop
    - title: "Teile von Bildern maskieren"
      content: "Fügen Sie Überlagerungen hinzu, um Fotos oder grafische Details zu verdecken."

    # feature loop
    - title: "Versteckte Informationen entfernen"
      content: "Löschen Sie Metadaten wie Benutzerdaten oder Dateihistorie."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Regex, um Inhalte zu redigieren"
      content: |
        Finden und verstecken Sie Text automatisch mit Musterabgleich.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die Tabelle
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Definieren Sie das Muster und die Überlagerungsfarbe
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Wenden Sie die Redaktionsregeln an
              redactor.apply(redaction);

              // Exportieren Sie Ihr Ergebnis
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
    title: "XLSX-Daten mithilfe von Java redactieren"
    exclude: "XLSX"
    description: "Verwenden Sie Überlagerungen oder löschen Sie Inhalte in XLSX-Dateien, um sensible Daten privat zu halten mit Java."
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