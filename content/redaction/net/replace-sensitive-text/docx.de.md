
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Private Texte aus DOCX mit C# entfernen"
head_description: "Schützen Sie schnell private Inhalte in Ihren DOCX-Dateien mit GroupDocs.Redaction for .NET und C#. Schnell und effektiv, um Ergebnisse zu erhalten."

############################# Header ############################
title: "Sensible Texte in DOCX-Dokumenten mit .NET finden und verbergen" 
description: "Ob für persönliche oder geschäftliche Zwecke, GroupDocs.Redaction for .NET und C# helfen dabei, private Informationen aus dem Blickfeld zu verschwinden."
subtitle: "Wie GroupDocs.Redaction for .NET Ihnen hilft" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern die Werkzeuge, um sensible Inhalte in DOCX-Dateien zu finden und zu bereinigen. Es funktioniert mit Text, Bildern, Notizen und mehr.

############################# Steps ############################
steps:
    enable: true
    title: "So redigieren Sie Inhalte in Docx-Dateien"
    content: |
      Befolgen Sie diese schnellen Schritte in Ihrem .NET-Projekt, um private Texte mit GroupDocs.Redaction for .NET zu bereinigen.
      
      1. Starten Sie einen neuen Redactor und laden Sie die Docx-Datei.
      2. Wählen Sie die gewünschten Redaktionsoptionen aus.
      3. Geben Sie den zu suchenden Text und den Ersetzungstext an.
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
        // Texte in einer DOCX-Datei redigieren

        // Laden Sie Ihre Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Wählen Sie die Redaktionsoptionen, die Ihren Anforderungen entsprechen
            // Legen Sie fest, wonach Sie suchen und womit Sie es ersetzen möchten
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Führen Sie das Tool aus und speichern Sie Ihre redigierte Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Redaktionsfunktionen"
  description: "Mit GroupDocs.Redaction for .NET können Sie versteckte oder sichtbare Inhalte aus verschiedenen Dateitypen entfernen. Ideal zum sicheren Teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Übersicht über Redaktionsinstrumente"
  features:
    # feature loop
    - title: "Private Texte ersetzen"
      content: "Suchen Sie nach spezifischen Texten in der Datei und ersetzen Sie sie. Funktioniert mit einfachem Text oder Mustern."

    # feature loop
    - title: "Sensible Bilder abdecken"
      content: "Maskieren Sie Teile eines Bildes oder ganze Seiten mit Überlagerungen. Sie kontrollieren Farben, Größen und Positionen."

    # feature loop
    - title: "Versteckte Daten löschen"
      content: "Entfernen Sie Metadaten wie Namen, Kommentare oder Zeitstempel, um sicherzustellen, dass nichts zurückbleibt."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Muster mit Regex finden und redigieren"
      content: |
        Verwenden Sie Regex, um nach bestimmten Datentypen wie E-Mail-Adressen oder ID-Nummern zu suchen und sie automatisch zu bereinigen.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Datei, die Sie bereinigen müssen
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Erstellen Sie eine EMAIL-Regex-Regel und eine Ersetzungszeichenfolge
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Führen Sie die Redigierung basierend auf Ihren Einstellungen aus
              redactor.Apply(redaction);

              // Speichern Sie die aktualisierte Datei
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
    title: "Daten in DOCX mit .NET redigieren"
    exclude: "DOCX"
    description: "Schützen Sie persönliche oder offizielle Informationen, indem Sie sie in DOCX-Dokumenten mit .NET verbergen. Einfach und effektiv."
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