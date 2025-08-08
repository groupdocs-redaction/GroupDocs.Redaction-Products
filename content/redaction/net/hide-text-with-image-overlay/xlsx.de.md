
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
head_title: "Verstecken Sie Text in XLSX mit C#-Überlagerungen"
head_description: "GroupDocs.Redaction for .NET hilft, Text in XLSX-Dateien mithilfe von farbigen Kästen auszublenden. Halten Sie Informationen sicher, ohne das Format Ihres Dokuments zu ändern."

############################# Header ############################
title: "Text in XLSX-Dateien mithilfe von Überlagerungen und .NET maskieren" 
description: "Verwenden Sie C# und GroupDocs.Redaction for .NET, um einfache Überlagerungen hinzuzufügen, die vertrauliche Texte in Ihren XLSX-Dateien blockieren."
subtitle: "GroupDocs.Redaction for .NET Funktionen" 

############################# About ############################
about:
    enable: true
    title: "Wie GroupDocs.Redaction for .NET hilft"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ermöglicht es Entwicklern, die C# verwenden, unerwünschte Inhalte in XLSX-Dateien zu verbergen. Blenden Sie alles aus - von Wörtern bis Bildern - über verschiedene Dateitypen.

############################# Steps ############################
steps:
    enable: true
    title: "Halte vertrauliche Informationen in Xlsx-Dokumenten sicher"
    content: |
      GroupDocs.Redaction for .NET hilft .NET-Entwicklern, Dateien zu schützen. Verstecken Sie private Inhalte mit nur wenigen Codezeilen.
      
      1. Erstellen Sie ein neues Redactor-Objekt mit Ihrem Xlsx-Dateipfad.
      2. Passen Sie die Redaktionsparameter nach Bedarf an.
      3. Fügen Sie ein Suchmuster hinzu und wählen Sie eine Farbe für das Überlagerungsfeld.
      4. Führen Sie die Redaktion aus und speichern Sie Ihre Datei.
   
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
        // Verstecken Sie private Texte in XLSX mithilfe von Überlagerungen

        // Laden Sie die Datei mit Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Wählen Sie aus, wie die Redaktion funktionieren soll
            // Geben Sie den zu versteckenden Text ein und wählen Sie die Farben für die Überlagerung
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Verarbeiten Sie die Datei und speichern Sie die Änderungen
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Intelligente Redaktionsfunktionen"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, Inhalte in verschiedenen Dateitypen zu löschen oder auszublenden. Halten Sie private Details von der Öffentlichkeit fern."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Praktische Redaktionswerkzeuge"
  features:
    # feature loop
    - title: "Ändern Sie beliebigen Text"
      content: "Suchen und aktualisieren Sie beliebige Zeichenfolgen im Dokument, um Daten zu schützen."

    # feature loop
    - title: "Verstecken Sie Bildinhalte"
      content: "Fügen Sie Quadrate oder Rechtecke hinzu, um sensible Stellen in Bildern abzudecken."

    # feature loop
    - title: "Bereinigen Sie Metadaten"
      content: "Löschen oder überschreiben Sie Details der Hintergrunddatei, bevor Sie sie weitergeben."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Übereinstimmungen mit Regex ausblenden"
      content: |
        Erfahren Sie, wie Sie Inhalte mit regulären Ausdrücken erkennen und redigieren.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie das Ziel-Dokument
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Richten Sie Muster und Überlagerungsfarbe ein
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Wenden Sie die Redaktionsregeln an
              redactor.Apply(redaction);

              // Exportieren Sie die redigierte Version
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
    title: "Verwenden Sie .NET, um Informationen in XLSX-Dateien zu verbergen"
    exclude: "XLSX"
    description: "Fügen Sie Überlagerungen hinzu oder entfernen Sie Teile Ihrer XLSX-Dokumente, um sensible Details mit Hilfe von .NET zu schützen."
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