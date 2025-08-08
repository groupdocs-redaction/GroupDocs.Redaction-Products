
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
head_title: "Verwenden Sie Überlagerungen, um Texte in WORD über C# auszublenden"
head_description: "GroupDocs.Redaction for .NET macht es einfach, vertrauliche Texte in WORD mit Farbblöcken abzudecken. Halten Sie das Dokument intakt, während Sie das Wesentliche ausblenden."

############################# Header ############################
title: "Überlagerungsredaktion in WORD-Dateien mit .NET" 
description: "Schützen Sie wichtige Informationen in WORD-Dateien mit quadratischen Überlagerungen, die in C# geschrieben sind. Ideal für Sicherheit und Compliance."
subtitle: "Sehen Sie, was GroupDocs.Redaction for .NET kann" 

############################# About ############################
about:
    enable: true
    title: "Kennen Sie GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Entwickler, die mit C# arbeiten, können GroupDocs.Redaction for .NET verwenden, um Teile von WORD-Dokumenten auszublenden oder zu entfernen. Verstecken Sie Namen, Zahlen oder andere Daten in nur wenigen Zeilen Code.

############################# Steps ############################
steps:
    enable: true
    title: "Redigieren Sie private Daten in Word-Dateien"
    content: |
      GroupDocs.Redaction for .NET hilft .NET-Entwicklern, vertrauliche Inhalte schnell zu entfernen. Befolgen Sie diese Schritte, um Ihre Dateien abzusichern.
      
      1. Initialisieren Sie einen Redactor mit dem Pfad zu Ihrer Word-Datei.
      2. Legen Sie die Regeln für die Redaktion von Inhalten fest.
      3. Wählen Sie das Textmuster und die Farbe, um es abzudecken.
      4. Wenden Sie die Redaktion an und speichern Sie Ihre redigierte Datei.
   
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
        // Text in WORD mit Bildüberlagerungen redigieren

        // Laden Sie Ihre Datei mit dem Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Definieren Sie, was redigiert werden muss
            // Fügen Sie den übereinstimmenden Text und die Überlagerungsfarbe hinzu
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Führen Sie das Redigieren aus und speichern Sie die endgültige Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Zusätzliche Redaktionswerkzeuge"
  description: "Mit GroupDocs.Redaction for .NET können Sie Dateien sauber halten, indem Sie sichtbare und verborgene Informationen entfernen und das Layout intakt halten."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Saubere und sichere Ausgabe"
  features:
    # feature loop
    - title: "Exponierte Texte ersetzen"
      content: "Verstecken Sie Wörter oder Phrasen, die wichtige Daten freigeben könnten."

    # feature loop
    - title: "Bilder abdecken"
      content: "Markieren Sie sensible visuelle Inhalte mit festen Blöcken."

    # feature loop
    - title: "Verborgene Informationen löschen"
      content: "Bereinigen Sie Metadaten im Hintergrund, um Dateien privat zu halten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ausgeblendeten Text mit Regex verbergen"
      content: |
        Dieses Beispiel zeigt, wie reguläre Ausdrücke verwendet werden können, um vertrauliche Inhalte zu finden und abzudecken.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie das zu redigierende Dokument
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Wählen Sie Muster und Farbe
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Führen Sie die Redaktionsregeln aus
              redactor.Apply(redaction);

              // Speichern Sie die redigierte Kopie und überprüfen Sie sie
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Schützen Sie Ihre WORD-Dateien mit .NET"
    exclude: "WORD"
    description: "Mit .NET können Sie Texte ausblenden oder Metadaten in WORD-Formaten löschen, ohne das Layout oder die Formatierung zu stören."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Präsentation"


---