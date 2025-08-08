
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
head_title: "Sensible Texte in PDF Mit Java Schwärzen"
head_description: "Verwenden Sie GroupDocs.Redaction for Java, um private Daten aus Ihren PDF-Dateien zu finden und zu entfernen. Schnelle, zuverlässige Textschwärzung."

############################# Header ############################
title: "Sensible Daten aus PDF-Dateien mit Java Entfernen" 
description: "PDF-Dateien mit Java und GroupDocs.Redaction for Java bereinigen. Schwärzen Sie persönliche, rechtliche oder geschäftliche Inhalte."
subtitle: "Was Sie Mit GroupDocs.Redaction for Java Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern eine einfache Möglichkeit, PDF-Dateien zu bereinigen. Entfernen oder ersetzen Sie Text, Bilder, Kommentare und versteckte Daten.

############################# Steps ############################
steps:
    enable: true
    title: "So Schwärzen Sie Texte in Pdf-Dateien"
    content: |
      Mit GroupDocs.Redaction for Java können Java-Entwickler sensible Inhalte in nur wenigen Schritten entfernen.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Pdf-Datei.
      2. Wählen Sie die gewünschten Schwärzungsoptionen aus.
      3. Geben Sie den zu suchenden Text und dessen Ersatz an.
      4. Wenden Sie die Schwärzung an und speichern Sie die Datei.
   
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
        // So bereinigen Sie eine PDF-Datei

        // Erstellen Sie einen Redactor und laden Sie das Dokument
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Legen Sie Ihre Schwärzungsregeln fest
            // Fügen Sie den zu entfernenden Text und die Ersetzung ein
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Wenden Sie die Schwärzung an und speichern Sie die neue Datei
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungsfunktionen"
  description: "GroupDocs.Redaction for Java entfernt empfindliche Informationen in vielen Formaten. Schwärzen Sie Text, Bilder und Metadaten, während die Dateien lesbar bleiben."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Werkzeuge zur Text- und Bildschwärzung"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Suchen Sie nach Wörtern oder Phrasen und ersetzen Sie diese. Funktioniert mit einfachem Text oder Regex."

    # feature loop
    - title: "Bildinhalte abdecken"
      content: "Verbergen Sie Bilder oder Teile von Bildern mit farbigen Überlagerungen."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Entfernen Sie Autorennamen, Daten oder andere versteckte Details, bevor Sie teilen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text Mit Regex Schwärzen"
      content: |
        Verwenden Sie Regex, um Muster wie E-Mails, IDs oder benutzerdefinierte Formate zu finden und zu verbergen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie das Dokument, das Sie bearbeiten möchten
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Fügen Sie ein EMAIL-Regex-Muster und den Ersetzungstext hinzu
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Wenden Sie die Schwärzung auf die übereinstimmenden Inhalte an
              redactor.apply(redaction);

              // Speichern Sie die geschwärzte Version
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "PDF-Dateien Mit Java Schwärzen"
    exclude: "PDF"
    description: "Schützen Sie persönliche oder geschäftliche Informationen, indem Sie PDF-Inhalte mit Tools von Java schwärzen."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML Präsentation"


---