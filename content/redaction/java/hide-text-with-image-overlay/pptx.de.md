
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Text in PPTX-Präsentationen mit Java-Überlagerungen verstecken"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um sensible Inhalte in PPTX-Dateien mit farbigen Überlagerungen zu blockieren. Halten Sie Folien intakt, während Sie wichtige Informationen verbergen."

############################# Header ############################
title: "Text in PPTX-Präsentationen mit Java maskieren" 
description: "Schützen Sie mühelos persönliche oder geschäftliche Details in Ihren PPTX-Folien mithilfe von Java und GroupDocs.Redaction for Java."
subtitle: "Entdecken Sie die Funktionen von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Was GroupDocs.Redaction for Java tut"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ermöglicht es Java-Entwicklern, Text, Bilder oder Metadaten in PPTX-Präsentationen in nur wenigen Schritten zu verbergen oder zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Private Inhalte in Pptx-Folien redigieren"
    content: |
      GroupDocs.Redaction for Java macht den Inhaltschutz einfach für Java-Entwickler.
      
      1. Richten Sie einen Redactor mit Ihrem Präsentationspfad ein.
      2. Wählen Sie, wie die Redaktion arbeiten soll.
      3. Fügen Sie das Textmuster und die Überlagerungsfarbe hinzu.
      4. Redigieren Sie die Folie und speichern Sie sie.
   
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
        // Verwenden Sie Überlagerungen, um Text in PPTX zu blockieren

        // Initialisieren Sie Redactor mit Ihrer Präsentation
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Wählen Sie Ihre Redaktionspräferenzen aus
            // Legen Sie den Text und die Überlagerungsfarbe fest
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Führen Sie die Redaktion durch und speichern Sie das Folienpaket
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Leistungsstarke Redaktionswerkzeuge"
  description: "Mit GroupDocs.Redaction for Java können Sie sensible Inhalte in Ihren Präsentationen blockieren oder entfernen, ohne Layout oder Formatierung zu berühren."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Funktionen, die über Folien hinweg funktionieren"
  features:
    # feature loop
    - title: "Text verstecken oder ersetzen"
      content: "Schützen Sie Namen, Begriffe oder Notizen, die nicht sichtbar sein sollten."

    # feature loop
    - title: "Visuelle Bereiche abdecken"
      content: "Fügen Sie Überlagerungen zu Bildern oder grafischen Abschnitten von Folien hinzu."

    # feature loop
    - title: "Metadaten löschen"
      content: "Löschen Sie Informationen, die möglicherweise Urheberschaft oder Bearbeitungshistorie offenbaren."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text mit Regex redigieren"
      content: |
        Verwenden Sie reguläre Ausdrücke, um sensible Wörter zu finden und zu verdecken.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die Präsentationsdatei
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Legen Sie Suchmuster und Überlagerungsfarbe fest
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Führen Sie die Redaktionsregeln aus
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
    title: "PPTX-Folien mit Java-Tools schützen"
    exclude: "PPTX"
    description: "Bedecken oder entfernen Sie sensible Inhalte vollständig aus PPTX-Präsentationen mithilfe von Java-Redaktionsfunktionen."
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