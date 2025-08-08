
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Private Texte aus PPTX mit C# entfernen"
head_description: "Halten Sie Ihre PPTX-Präsentationen privat mit GroupDocs.Redaction for .NET und C#. Schnelle Redigierung, einfache Einrichtung."

############################# Header ############################
title: "Sensible Texte in PPTX-Dokumenten mit .NET bearbeiten oder verbergen" 
description: "Halten Sie Ihre Präsentationen sauber und privat. Verwenden Sie GroupDocs.Redaction for .NET und C#, um alles zu entfernen, was Sie nicht teilen möchten."
subtitle: "Was Sie mit GroupDocs.Redaction for .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern alles, um sensible Inhalte aus PPTX-Dateien zu entfernen. Es verarbeitet Texte, Visuals, Kommentare und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Schritte zur Bereinigung von Pptx-Präsentationen"
    content: |
      Verwenden Sie GroupDocs.Redaction for .NET in Ihrer .NET-Anwendung, um sensible Inhalte in wenigen Schritten zu entfernen oder zu verdecken.
      
      1. Starten Sie einen neuen Redactor und laden Sie Ihre Pptx-Datei.
      2. Wählen Sie die Redaktionsregeln aus, die Sie anwenden möchten.
      3. Legen Sie den zu suchenden Text und den Ersetzungstext fest.
      4. Führen Sie die Redigierung durch und speichern Sie Ihre Datei.
   
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
        // Redigieren einer PPTX-Präsentation

        // Öffnen Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Wählen Sie die Redaktionsoptionen
            // Wählen Sie den zu suchenden und zu ersetzenden Text
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Wenden Sie die Änderungen an und speichern Sie die aktualisierte Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaktionsfunktionen, die Sie nutzen können"
  description: "GroupDocs.Redaction for .NET hilft Ihnen, sensible Texte, Bilder und versteckte Daten in mehreren Dateitypen zu finden und zu verbergen. Perfekt zum sicheren Teilen von Dateien."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Verfügbare Redaktionsoptionen"
  features:
    # feature loop
    - title: "Versteckte Texte ersetzen"
      content: "Suchen und ersetzen Sie private Wörter oder Phrasen überall in der Datei. Regex wird ebenfalls unterstützt."

    # feature loop
    - title: "Bilder abdecken"
      content: "Verwenden Sie Blöcke, um Bilder oder Bereiche zu verbergen, die Sie maskieren möchten. Kontrollieren Sie Form, Größe und Farbe."

    # feature loop
    - title: "Versteckte Details löschen"
      content: "Bereinigen Sie Metadaten wie Autorennamen, zuletzt bearbeitete Daten oder Kommentare, um Ihre Datei sauber zu machen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigieren mit Regex-Mustern"
      content: |
        Finden und bereinigen Sie Daten wie E-Mail-Adressen oder IDs mithilfe von Regex. Ideal für wiederholbare Redigierungen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie Ihre Datei
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Schreiben Sie ein EMAIL-Regex-Muster und legen Sie die Ersetzung fest
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Wenden Sie Ihre Redaktionsoptionen an
              redactor.Apply(redaction);

              // Speichern Sie die redigierte Version
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
    title: "Bereinigen Sie PPTX-Dateien mit .NET"
    exclude: "PPTX"
    description: "Machen Sie Ihre PPTX-Dokumente sicherer zu teilen, indem Sie private Texte mit .NET verbergen. Schnelle, zuverlässige Ergebnisse."
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