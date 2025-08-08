
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Private Texte Aus POWERPOINT Mit Java Entfernen"
head_description: "Sichern Sie sensible Daten in Ihren POWERPOINT-Dateien mit GroupDocs.Redaction for Java und Java. Schnelle, unkomplizierte Textschwärzung."

############################# Header ############################
title: "Empfindliche Texte In POWERPOINT-Dokumenten Mit Java Bearbeiten Oder Verbergen" 
description: "Schützen Sie sensible Inhalte in Ihren POWERPOINT-Dateien mit Java und GroupDocs.Redaction for Java. Persönliche oder geschäftliche, Ihre Daten bleiben privat."
subtitle: "Was Sie Mit GroupDocs.Redaction for Java Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Java Kennen"
    link: "/redaction/java/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gibt Java-Entwicklern alles, was sie benötigen, um POWERPOINT-Inhalte zu schwärzen. Bereinigen Sie Texte, Bilder, Anmerkungen, Kommentare und Metadaten in gängigen Dateiformaten.

############################# Steps ############################
steps:
    enable: true
    title: "Schritte Zum Bereinigen Von Inhalten In Powerpoint-Dokumenten"
    content: |
      Verwenden Sie GroupDocs.Redaction for Java, um private Inhalte in Ihren Java-Apps zu entfernen oder zu verbergen. Einfache und schnelle Schwärzung.
      
      1. Initialisieren Sie einen Redactor und laden Sie Ihre Powerpoint-Datei.
      2. Richten Sie die benötigten Schwärzungsoptionen ein.
      3. Geben Sie den zu suchenden Text und den Ersetzungstext an.
      4. Führen Sie die Schwärzung aus und speichern Sie die Datei.
   
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
        // So Schwärzen Sie Texte In Einer POWERPOINT-Datei

        // Laden Sie Ihre Datei mithilfe des Redactor-Konstruktors
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Legen Sie Ihre Schwärzungspräferenzen fest
            // Wählen Sie, wonach Sie suchen und was Sie ersetzen möchten
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Wenden Sie Schwärzungen an und speichern Sie die neue POWERPOINT-Datei
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Zusätzliche Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Java hilft, sensible Inhalte in mehreren Dateiformaten zu entfernen oder zu verbergen. Halten Sie Dokumente sauber und sicher zum Teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Schwärzungswerkzeuge und Optionen"
  features:
    # feature loop
    - title: "Vertrauliche Texte Ersetzen"
      content: "Finden und ersetzen Sie übereinstimmenden Text überall in Ihrer Datei. Unterstützt Regex und intelligente Suchoptionen."

    # feature loop
    - title: "Sensible Bilder Verbergen"
      content: "Bedecken Sie Bilder oder spezifische Bereiche mit Überlagerungen. Passen Sie die Seiteneinstellungen, Farben und mehr an."

    # feature loop
    - title: "Versteckte Metadaten Bereinigen"
      content: "Löschen Sie verborgene Daten wie Autorenschaft, Zeitstempel oder Kommentare, um die Privatsphäre zu schützen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Musterbasiertes Schwärzen Mit Regex"
      content: |
        Verwenden Sie reguläre Ausdrücke, um empfindliche Textmuster wie E-Mails oder IDs zu suchen und zu schwärzen.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Öffnen Sie das Dokument, das Sie bereinigen möchten
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Definieren Sie ein EMAIL-Regex-Muster und den Text für die Ersetzung
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Wenden Sie die Schwärzungsregeln an
              redactor.apply(redaction);

              // Speichern Sie die endgültige geschwärzte Datei
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
    title: "In POWERPOINT Mit Java Inhalte Schwärzen"
    exclude: "POWERPOINT"
    description: "Schützen Sie offizielle und persönliche Daten, indem Sie Texte in POWERPOINT-Dateien mithilfe der Java-Tools schwärzen. Halten Sie Dokumente sicher und privat."
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