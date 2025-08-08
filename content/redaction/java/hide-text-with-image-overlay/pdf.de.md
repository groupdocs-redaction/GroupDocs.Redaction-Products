
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Vertraulichen Text in PDF mit Überlagerungen verstecken, mithilfe von Java"
head_description: "GroupDocs.Redaction for Java ermöglicht es Ihnen, sensible Informationen in PDF-Dateien zu verbergen, indem farbige Boxen platziert werden. Schützen Sie Daten, ohne das Erscheinungsbild Ihrer Datei zu ändern."

############################# Header ############################
title: "Text in PDF-Dokumenten mit Überlagerungen in Java maskieren" 
description: "Übernehmen Sie die vollständige Kontrolle über den Inhalt von PDF-Dateien mit Java. Verwenden Sie Redaktionen, um finanzielle, rechtliche oder persönliche Details zu schützen."
subtitle: "Top-Features von GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Was GroupDocs.Redaction for Java bietet"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Entwicklern eine einfache Möglichkeit, Inhalte aus PDF-Dateien zu verbergen oder zu entfernen. Decken Sie Text, Bilder und Metadaten in verschiedenen Dokumenttypen ab.

############################# Steps ############################
steps:
    enable: true
    title: "Vertrauliche Informationen in Pdf-Dateien schützen"
    content: |
      GroupDocs.Redaction for Java ermöglicht es Java-Entwicklern, private Inhalte mit wenigen einfachen Schritten zu verbergen.
      
      1. Starten Sie einen Redactor und laden Sie Ihre Pdf-Datei.
      2. Legen Sie Ihre Redaktionspräferenzen fest.
      3. Wählen Sie, was gefunden werden soll, und wählen Sie Ihre Überlagerungsfarbe.
      4. Wenden Sie die Redaktion an und speichern Sie Ihr Dokument.
   
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
        // Text in PDF mit farbigen Überlagerungen verdecken

        // Übergeben Sie den Dateipfad an den Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Passen Sie die Redaktionseinstellungen an
            // Legen Sie den Zielttext und die Farbe fest
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Anwenden und das redigierte PDF speichern
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Kontrollieren, was in Dokumenten sichtbar ist"
  description: "GroupDocs.Redaction for Java erlaubt es Ihnen, Teile Ihrer Dateien zu blockieren oder zu entfernen, während sie weiterhin einfach zu betrachten und zu teilen bleiben."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Leistungsstarke Redaktionswerkzeuge"
  features:
    # feature loop
    - title: "Zielgerichtet Text verbergen"
      content: "Durchsuchen Sie Ihr Dokument und verstecken Sie spezifische Wörter oder Phrasen, um private Infos zu schützen."

    # feature loop
    - title: "Bilder verdecken"
      content: "Fügen Sie Überlagerungen hinzu, um visuelle Elemente vollständig oder teilweise zu verstecken."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie versteckte Dokumentendetails, um unbeabsichtigte Offenlegungen zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text mit Regex verstecken"
      content: |
        Dieses Beispiel verwendet reguläre Ausdrücke, um spezifische Inhalte zu finden und zu verstecken.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Laden Sie die Datei, die Sie bearbeiten möchten
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Legen Sie das Textmuster und die Überlagerungsfarbe fest
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Wenden Sie die Redaktion an
              redactor.apply(redaction);

              // Speichern Sie Ihre Änderungen
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
    title: "PDF-Dateien mit Java schützen"
    exclude: "PDF"
    description: "Verwenden Sie Java, um Inhalte in PDF-Dokumenten zu verdecken oder zu löschen. Eine großartige Möglichkeit, private Informationen sicher zu halten."
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