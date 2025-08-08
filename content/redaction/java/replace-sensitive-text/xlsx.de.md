
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
head_title: "Private Texte Aus XLSX Mit Java Entfernen"
head_description: "Sichern Sie Ihre XLSX-Daten, indem Sie Texte und Metadaten mit GroupDocs.Redaction for Java schwärzen. Effektiver und sicherer Schutz."

############################# Header ############################
title: "XLSX-Dateien Mit Java Bereinigen" 
description: "Entfernen Sie sensible Inhalte aus XLSX-Dateien mit Java und GroupDocs.Redaction for Java. Halten Sie Ihre Tabellenkalkulationen sicher."
subtitle: "Was Sie Mit GroupDocs.Redaction for Java Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Warum GroupDocs.Redaction for Java Verwenden?"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Entwicklern die Werkzeuge an die Hand, um XLSX-Dateien zu bereinigen. Schwärzen Sie Texte, Metadaten, Bilder und mehr mit wenigen Zeilen Code.

############################# Steps ############################
steps:
    enable: true
    title: "Daten Aus Xlsx-Dateien Schwärzen"
    content: |
      Verwenden Sie GroupDocs.Redaction for Java in jeder Java-App, um Text oder versteckte Inhalte vor dem Teilen zu entfernen.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie Ihre Datei.
      2. Wählen Sie die gewünschten Schwärzungsoptionen aus.
      3. Wählen Sie den zu suchenden Text und dessen Ersatztext aus.
      4. Wenden Sie die Schwärzung an und speichern Sie Ihr Dokument.
   
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
        // So Schwärzen Sie Eine XLSX-Tabelle

        // Erstellen Sie einen Redactor und laden Sie Ihre Datei
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Wählen Sie Ihre Schwärzungsoptionen
            // Geben Sie Such- und Ersetzungstext ein
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Änderungen anwenden und speichern
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hilfreiche Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Java hilft, private Inhalte aus verschiedenen Dateien zu entfernen. Bereinigen Sie Dokumente, ohne das Format zu verlieren."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Intelligenter Schutz von Inhalten"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Suchen und aktualisieren oder verbergen Sie sensible Daten in Zellen."

    # feature loop
    - title: "Visuals abdecken"
      content: "Verbergen Sie Diagramme, Bilder oder Bereiche mit farbigen Überlagerungen."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie Autorinformationen, Erstellungsdaten und andere Hintergrunddaten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Schwärzen Mit Regex"
      content: |
        Finden Sie Werte wie Kontonummern oder Muster mithilfe von Regex und schwärzen Sie diese.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie die zu verarbeitende Datei
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Fügen Sie eine EMAIL-Regex-Regel und Ersetzung hinzu
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Wenden Sie die Schwärzungsregeln an
              redactor.apply(redaction);

              // Speichern Sie die aktualisierte Datei
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
    title: "In XLSX Mit Java Inhalte Schwärzen"
    exclude: "XLSX"
    description: "XLSX-Dateien bereinigen und schützen, indem Sie Funktionen von Java für die Schwärzung und das Entfernen von Inhalten nutzen."
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