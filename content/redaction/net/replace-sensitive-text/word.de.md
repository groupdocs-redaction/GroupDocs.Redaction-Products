
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Private Texte aus WORD mit C# entfernen"
head_description: "Halten Sie Ihre WORD-Dateien privat mit GroupDocs.Redaction for .NET und C#. Schnelle und effektive Möglichkeit, Texte zu redigieren."

############################# Header ############################
title: "Sensible Texte in WORD-Dateien mit .NET finden und entfernen" 
description: "Verwenden Sie C# und GroupDocs.Redaction for .NET, um Ihre persönlichen oder Arbeitsdateien zu schützen. Ihre privaten Informationen bleiben verborgen."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Benutzern die Werkzeuge, um WORD-Dokumente zu bereinigen. Redigieren Sie Texte, Bilder, Notizen und Hintergrunddaten.

############################# Steps ############################
steps:
    enable: true
    title: "So redigieren Sie Word-Dateien"
    content: |
      Mit GroupDocs.Redaction for .NET ist es einfach, private Inhalte in .NET-Apps zu finden und zu ersetzen.
      
      1. Erstellen Sie einen Redactor und öffnen Sie Ihre Word-Datei.
      2. Wählen Sie Ihre Redaktionsoptionen.
      3. Sagen Sie, wonach gesucht werden soll und welchen Text Sie als Ersatz verwenden möchten.
      4. Starten Sie die Redigierung und speichern Sie Ihre aktualisierte Datei.
   
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
        // Schritte zur Redigierung von Inhalten in einem WORD-Dokument

        // Öffnen Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Passen Sie Ihre Redaktionsoptionen an
            // Wählen Sie aus, wonach gesucht werden soll und womit es ersetzt werden soll
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Führen Sie die Redigierung durch und speichern Sie Ihre neue WORD-Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Redaktionswerkzeuge"
  description: "GroupDocs.Redaction for .NET bietet Ihnen leistungsstarke Möglichkeiten, private Informationen über viele Dateitypen zu verbergen oder zu löschen. Ideal zum sicheren Teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Verfügbare Redaktionswerkzeuge und -einstellungen"
  features:
    # feature loop
    - title: "Vertraulichen Text ersetzen"
      content: "Suchen und ersetzen Sie genaue Übereinstimmungen mit intelligenten Textoptionen, einschließlich Unterstützung für Regex."

    # feature loop
    - title: "Private Bilder verbergen"
      content: "Decken Sie vollständige Bilder oder nur Teile einer Seite ab. Sie können die Farbe und Größe der Überlagerung anpassen."

    # feature loop
    - title: "Versteckte Metadaten löschen"
      content: "Entfernen Sie Informationen wie Autorennamen, Bearbeitungsverlauf und Kommentare, um Ihre Identität zu schützen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Regex für intelligentere Redigierungen"
      content: |
        Finden und entfernen Sie Datenmuster wie E-Mails oder IDs mit regulären Ausdrücken.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Datei, die Sie bereinigen möchten
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Setzen Sie ein EMAIL-Regex-Muster und wählen Sie den Ersetzungstext aus
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Führen Sie den Redigierungsprozess aus
              redactor.Apply(redaction);

              // Speichern Sie Ihre endgültige redigierte Datei
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
    title: "Wie man WORD mit .NET redigiert"
    exclude: "WORD"
    description: "Verwenden Sie .NET, um WORD-Dateien zu bereinigen. Halten Sie Ihre Inhalte privat und sicher vor Lecks."
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