
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Private Texte Aus EXCEL Mit Java Entfernen"
head_description: "Halten Sie Ihre EXCEL-Tabellen sicher, indem Sie sensible Inhalte mit GroupDocs.Redaction for Java und Java entfernen. Schnelle und einfache Schwärzung."

############################# Header ############################
title: "Text In EXCEL-Dateien Mit Java Bearbeiten Oder Entfernen" 
description: "Bereinigen Sie Ihre EXCEL-Dateien mit GroupDocs.Redaction for Java und Java. Ideal zum Schützen von geschäftlichen oder persönlichen Daten."
subtitle: "Was Sie Mit GroupDocs.Redaction for Java Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Java Kennen"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern alles, was Sie benötigen, um EXCEL-Dateien zu bereinigen. Bearbeiten oder verbergen Sie Text, Bilder, Metadaten und Notizen präzise.

############################# Steps ############################
steps:
    enable: true
    title: "So Schwärzen Sie Inhalte In Excel-Dateien"
    content: |
      Verwenden Sie GroupDocs.Redaction for Java in Ihren Java-Projekten, um Text oder Inhalte zu beseitigen, die Sie nicht teilen möchten.
      
      1. Erstellen Sie einen Redactor und laden Sie die Excel-Datei.
      2. Wählen Sie Ihre Schwärzungsoptionen.
      3. Definieren Sie, was Sie finden und durch was Sie es ersetzen möchten.
      4. Führen Sie die Schwärzung aus und speichern Sie Ihre Datei.
   
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
        // So Schwärzen Sie Texte In Einer EXCEL-Datei

        // Laden Sie die Datei Mit Redactor
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Legen Sie Ihre Schwärzungsregeln fest
            // Geben Sie den Zieltext und die Ersetzung ein
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Anwenden und die bereinigte Datei speichern
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Java hilft, private Inhalte in vielen Dokumenttypen zu bereinigen. Perfekt für den Datenschutz vor dem Teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Text-, Bild- und Metadaten-Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Private Texte Ersetzen"
      content: "Finden und ändern Sie übereinstimmende Wörter oder Zahlen in der gesamten Datei. Verwenden Sie Suchmuster oder exakte Übereinstimmungen."

    # feature loop
    - title: "Teile von Bildern Verbergen"
      content: "Fügen Sie Überlagerungsboxen hinzu, um Bilder oder Zellen zu verstecken. Wählen Sie Farben, Größen und Positionen."

    # feature loop
    - title: "Hintergrundinformationen Löschen"
      content: "Löschen Sie verborgene Daten wie Autorenschaft, Zeitstempel oder Dokumentkommentare."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Muster Mit Regex Schwärzen"
      content: |
        Verwenden Sie reguläre Ausdrücke, um Muster wie E-Mail-Adressen oder Kontonummern zu finden und zu verbergen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die Datei, die Sie bereinigen möchten
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Erstellen Sie ein EMAIL-Regex-Muster und setzen Sie den Ersetzungstext
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Führen Sie den Schwärzungsprozess aus
              redactor.apply(redaction);

              // Speichern Sie die aktualisierte Version
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
    title: "In EXCEL Mit Java Inhalte Schwärzen"
    exclude: "EXCEL"
    description: "Reinigen Sie private Daten aus EXCEL-Dateien mit Java. Eine intelligente Möglichkeit, Ihre Tabellen sicher zu halten."
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