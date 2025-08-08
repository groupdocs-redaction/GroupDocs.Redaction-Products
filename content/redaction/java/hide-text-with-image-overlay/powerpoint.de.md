
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Text in POWERPOINT mit Java-Überlagerungen schützen"
head_description: "Mit GroupDocs.Redaction for Java können Sie privaten Text in POWERPOINT-Folien mithilfe einfacher Überlagerungsboxen blockieren – ohne das Layout zu ändern."

############################# Header ############################
title: "Text in POWERPOINT mithilfe von Überlagerungen und Java verbergen" 
description: "Verwenden Sie Java und GroupDocs.Redaction for Java, um Ihre POWERPOINT-Folien durch Maskierung sensibler Inhalte zu sichern."
subtitle: "Innerhalb von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java hilft Java-Entwicklern, POWERPOINT-Folien zu bereinigen, indem sie sensible Inhalte wie Text, Metadaten oder Bilder blockieren oder löschen.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint-Präsentationen vor dem Teilen bereinigen"
    content: |
      Verwenden Sie GroupDocs.Redaction for Java in Java-Apps, um sensible Teile Ihrer Folien zu verbergen oder zu entfernen.
      
      1. Erstellen Sie einen neuen Redactor mit Ihrem Folienpaket-Pfad.
      2. Definieren Sie Ihre Redaktionspräferenzen.
      3. Legen Sie das Textmuster und die Überlagerungsfarbe fest.
      4. Führen Sie die Redaktion durch und speichern Sie die redigierte Datei.
   
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
        // Überlagern Sie Textbereiche in POWERPOINT

        // Öffnen Sie die Datei mit Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Passen Sie die Redaktionsparameter an
            // Geben Sie Text und wählen Sie die Überlagerungsfarbe aus
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redigieren und speichern Sie die aktualisierte Datei
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Einfache Redaktion für sensitive Folien"
  description: "GroupDocs.Redaction for Java erleichtert das Blockieren oder Entfernen von Inhalten aus Folien, unabhängig vom Anwendungsfall."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redaktionswerkzeuge, die sich anpassen"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Schützen Sie sensible Phrasen oder Beschriftungen auf jeder Folie."

    # feature loop
    - title: "Teile von visuellen Elementen abdecken"
      content: "Fügen Sie Überlagerungen zu ausgewählten Folienbereichen oder Bildern hinzu."

    # feature loop
    - title: "Versteckte Inhalte entfernen"
      content: "Löschen Sie Folienmetadaten oder Änderungsnotizen vor dem Teilen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex für die Textredaktion"
      content: |
        Erfahren Sie, wie Sie Text mithilfe von Musterabgleich erkennen und redigieren.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie das Folienpaket
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Wenden Sie Ihre Regex-Regeln an
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Führen Sie die Redaktion durch
              redactor.apply(redaction);

              // Speichern Sie die finale Version
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
    title: "POWERPOINT-Folien mit Java schützen"
    exclude: "POWERPOINT"
    description: "Verwenden Sie Overlay-Redaktion und Bereinigungstools von Java, um Ihre POWERPOINT-Folien privat zu halten."
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