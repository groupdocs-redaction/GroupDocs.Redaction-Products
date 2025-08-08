
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
head_title: "Private Texte Aus PPTX Mit Java Entfernen"
head_description: "Schützen Sie sensible Details in Ihren PPTX-Präsentationen mit GroupDocs.Redaction for Java und Java. Effektive Schwärzung mit schnellen Ergebnissen."

############################# Header ############################
title: "Text In PPTX-Dateien Mit Java Bereinigen" 
description: "Verwenden Sie GroupDocs.Redaction for Java und Java, um Inhalte in Ihren PPTX-Folien zu verbergen oder zu entfernen. Ideal für geschäftliche, rechtliche oder persönliche Zwecke."
subtitle: "Was Sie Mit GroupDocs.Redaction for Java Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Java Kennen"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java bietet Java-Entwicklern eine solide Möglichkeit, Inhalte in PPTX-Dateien zu bearbeiten oder zu verstecken. Arbeiten Sie mit Text, Bildern, Metadaten und Kommentaren mit voller Kontrolle.

############################# Steps ############################
steps:
    enable: true
    title: "So Schwärzen Sie Inhalte In Pptx-Präsentationen"
    content: |
      Mit GroupDocs.Redaction for Java können Sie Ihre Java-Präsentationen in wenigen schnellen Schritten bereinigen.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Pptx-Datei.
      2. Wählen Sie die Schwärzungsoptionen aus, die Ihren Anforderungen entsprechen.
      3. Legen Sie den Suchbegriff und den Ersetzungstext fest.
      4. Änderungen anwenden und Ihre aktualisierte Datei speichern.
   
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
        // Sensible Texte In Einer PPTX-Präsentation Schwärzen

        // Laden Sie Ihr Dokument mit Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Legen Sie die Schwärzungsoptionen fest
            // Wählen Sie den zu suchenden Text und was Sie ersetzen möchten
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Schwärzen und die Datei speichern
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Java macht es einfach, private Inhalte aus einer Vielzahl von Dateien zu verbergen oder zu löschen. Perfekt, um Daten vor dem Teilen zu schützen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Optionen zum Entfernen von Text, Bildern und Metadaten"
  features:
    # feature loop
    - title: "Text überall ersetzen"
      content: "Suchen und ersetzen Sie Wörter oder Phrasen in Folien. Funktioniert mit exaktem Text oder Mustern."

    # feature loop
    - title: "Visuellen Inhalt verbergen"
      content: "Decken Sie Teile einer Folie oder eines Bildes mit Überlagerungsfeldern in Ihrer Wunschfarbe ab."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie Hintergrunddaten wie Autor, Erstellungsdatum oder Notizen, die private Informationen enthalten könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex-basierte Schwärzung"
      content: |
        Verwenden Sie reguläre Ausdrücke, um Muster wie E-Mails, Telefonnummern oder Codes zu finden und zu entfernen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie Ihre Datei
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Fügen Sie ein EMAIL-Regex-Muster und Ersetzung hinzu
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Wenden Sie die Schwärzung basierend auf dem Muster an
              redactor.apply(redaction);

              // Speichern Sie die saubere Version
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
    title: "In PPTX Mit Java Inhalt Schwärzen"
    exclude: "PPTX"
    description: "Entfernen Sie private oder sensible Details aus PPTX-Dokumenten mithilfe von Java. Eine zuverlässige Möglichkeit, Ihre Dateien zu sichern."
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