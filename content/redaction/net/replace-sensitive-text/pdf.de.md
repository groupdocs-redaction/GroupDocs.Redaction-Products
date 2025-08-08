
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sensible Texte in PDF mit C# redigieren"
head_description: "Schützen Sie private Informationen in Ihren PDF-Dateien mit GroupDocs.Redaction for .NET. Suchen und redigieren Sie sensible Daten schnell."

############################# Header ############################
title: "Sensible Texte aus PDF-Dokumenten mit .NET entfernen" 
description: "Nutzen Sie C# und GroupDocs.Redaction for .NET, um die Kontrolle über den Inhalt Ihrer PDF-Dateien zu übernehmen. Redigieren Sie persönliche, rechtliche oder vertrauliche Daten."
subtitle: "Was Sie mit GroupDocs.Redaction for .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern alles, was sie benötigen, um Inhalte in PDF zu redigieren. Bereinigen Sie Texte, Bilder, Anmerkungen, Kommentare und Metadaten in gängigen Dateitypen.

############################# Steps ############################
steps:
    enable: true
    title: "So redigieren Sie Inhalte in Pdf-Dateien"
    content: |
      Schützen Sie Ihre Dokumente in jeder .NET-Anwendung mit GroupDocs.Redaction for .NET. Redigieren Sie sensible Texte schnell und präzise.
      
      1. Initialisieren Sie einen Redactor und laden Sie Ihre Pdf-Datei.
      2. Richten Sie die gewünschten Redaktionsoptionen ein.
      3. Geben Sie den zu suchenden Text und den Ersetzungstext an.
      4. Führen Sie die Redigierung durch und speichern Sie die Datei.
   
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
        // So redigieren Sie Texte in einer PDF-Datei

        // Laden Sie Ihre Datei mit dem Redactor-Konstruktor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Setzen Sie Ihre Redaktionspräferenzen
            // Wählen Sie aus, wonach Sie suchen und womit Sie es ersetzen möchten
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Wenden Sie die Redigierungen an und speichern Sie die neue PDF-Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Möglichkeiten zur Redigierung von Dokumenten"
  description: "GroupDocs.Redaction for .NET hilft dabei, sensible Inhalte in mehreren Dateiformaten zu entfernen oder zu verbergen. Halten Sie Dokumente sauber und sicher zum Teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redaktionswerkzeuge und -optionen"
  features:
    # feature loop
    - title: "Vertrauliche Texte ersetzen"
      content: "Finden und ersetzen Sie übereinstimmende Texte überall in Ihrer Datei. Unterstützt Regex und intelligente Suchoptionen."

    # feature loop
    - title: "Sensible Bilder verbergen"
      content: "Decken Sie Bilder oder bestimmte Bereiche mit Überlagerungen ab. Passen Sie Seiteneinstellungen, Farben und mehr an."

    # feature loop
    - title: "Versteckte Metadaten bereinigen"
      content: "Entfernen Sie versteckte Daten wie Urheberschaft, Zeitstempel oder Kommentare, um die Privatsphäre zu schützen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Texte mit Regex redigieren"
      content: |
        Verwenden Sie reguläre Ausdrücke, um sensible Textmuster wie E-Mails oder IDs zu suchen und zu redigieren.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie das Dokument, das Sie bereinigen möchten
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Definieren Sie ein EMAIL-Regex-Muster und den zu verwendenden Ersetzungstext
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Wenden Sie die Redaktionsregeln an
              redactor.Apply(redaction);

              // Speichern Sie die endgültige redigierte Datei
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
    title: "Inhalte in PDF mit .NET redigieren"
    exclude: "PDF"
    description: "Schützen Sie offizielle und persönliche Daten, indem Sie Texte in PDF-Dateien mit .NET-Werkzeugen redigieren. Halten Sie Dokumente sicher und privat."
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