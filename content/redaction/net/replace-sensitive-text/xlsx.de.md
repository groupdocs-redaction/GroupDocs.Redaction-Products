
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Private Texte aus XLSX mit C# entfernen"
head_description: "Bereinigen Sie private Inhalte in Ihren XLSX-Dateien schnell mit GroupDocs.Redaction for .NET und C#. Schnelle und effektive Redigierung."

############################# Header ############################
title: "Sensible Texte in XLSX-Dokumenten mit .NET bearbeiten oder verbergen" 
description: "Mit GroupDocs.Redaction for .NET und C# können Sie persönliche oder geschäftliche Informationen aus Ihren XLSX-Dateien entfernen und sicher zum Teilen aufbewahren."
subtitle: "Was Sie mit GroupDocs.Redaction for .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ermöglicht es C#-Entwicklern, sensitive Informationen aus XLSX-Dateien zu suchen und zu entfernen. Es funktioniert mit Text, Bildern, Notizen und Dateidaten.

############################# Steps ############################
steps:
    enable: true
    title: "So redigieren Sie Texte in Xlsx-Dateien"
    content: |
      Verwenden Sie GroupDocs.Redaction for .NET in Ihrem .NET-Projekt, um sensible Infos in wenigen Schritten zu verbergen oder zu löschen.
      
      1. Erstellen Sie einen Redactor und laden Sie die Xlsx-Datei.
      2. Wählen Sie die passenden Redaktionsoptionen aus.
      3. Geben Sie den zu suchenden Text und den Ersetzungstext an.
      4. Führen Sie den Redigierungsprozess durch und speichern Sie Ihre aktualisierte Datei.
   
    code:
      platform: "net"
      copy_title: "Kopieren"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Beispielredaktionen"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "Klicken zum Kopieren"
        copy_done: "kopiert"
      links:
        #  loop
        - title: "Weitere Beispiele"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Dokumentation"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Texte aus einer XLSX-Datei redigieren

        // Verwenden Sie Redactor, um die Datei zu öffnen
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Wählen Sie Ihre Redaktionsoptionen aus
            // Legen Sie den Such- und Ersetzungstext fest
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Wenden Sie die Redigierungen an und speichern Sie die bereinigte Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Werkzeuge zum Redigieren"
  description: "GroupDocs.Redaction for .NET hilft dabei, unterschiedliche Inhalte—Texte, Bilder oder Metadaten—zu bereinigen, damit Ihre Dateien zum sicheren Teilen bereit sind."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Angezeigte Redaktionsoptionen"
  features:
    # feature loop
    - title: "Sensiblen Text ersetzen"
      content: "Durchsuchen Sie die Datei und ersetzen Sie vertrauliche Daten. Unterstützt einfache Texte und Muster."

    # feature loop
    - title: "Bereiche von Bildern abdecken"
      content: "Verwenden Sie Überlagerungen, um visuelle Daten zu verbergen. Wählen Sie die Farbe, die Größe und das Layout der Seite."

    # feature loop
    - title: "Zusätzliche Daten entfernen"
      content: "Löschen Sie Metadaten wie Autorennamen, Zeitstempel oder interne Notizen, um Lecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mit Regex-Regeln redigieren"
      content: |
        Verwenden Sie Regex, um Muster wie Telefonnummern, E-Mails oder andere persönliche Daten zu finden und zu bereinigen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Datei, um zu beginnen
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Erstellen Sie eine EMAIL-Regex-Regel und wählen Sie eine Ersetzung aus
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Führen Sie die Redigierung basierend auf Ihrem Muster durch
              redactor.Apply(redaction);

              // Speichern Sie die redigierte Datei
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Kopieren"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Dokumentation"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Bereit loszulegen?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an"
  items:
    #  loop
    - title: "Nuget Download"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Lizenzierung"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Info in XLSX mit .NET verbergen"
    exclude: "XLSX"
    description: "Reinigen Sie Ihre XLSX-Dokumente, indem Sie persönliche oder sensible Texte mit .NET-Werkzeugen entfernen. Halten Sie Ihre Daten privat."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML Präsentation"


---