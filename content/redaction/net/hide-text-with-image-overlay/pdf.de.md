
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
head_title: "Vertrauliche Texte in PDF mit Überlagerungen mithilfe von C# ausblenden"
head_description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, vertrauliche Texte in PDF-Dateien durch farbige quadratische Überlagerungen auszublenden. Schützen Sie private Daten, ohne das ursprüngliche Layout zu ändern."

############################# Header ############################
title: "Vertrauliche Texte in PDF-Dokumenten mit Überlagerungen mithilfe von .NET ausblenden" 
description: "Übernehmen Sie die Kontrolle über den Inhalt von PDF-Dateien mit C#. Verwenden Sie Redaktionen, um rechtliche, finanzielle und persönliche Informationen zu schützen."
subtitle: "GroupDocs.Redaction for .NET Funktionen" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET bietet C#-Entwicklern die Werkzeuge, um Inhalte aus PDF-Dateien auszublenden oder zu entfernen. Es ist eine einfache Möglichkeit, Dokumente sicher zu halten. Sie können Texte, Bilder oder Metadaten in vielen Dateiformaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Schützen Sie Unternehmensdaten in Pdf-Dokumenten"
    content: |
      GroupDocs.Redaction for .NET: entwickelt, um Ihrer .NET-Anwendung zu helfen, Dokumente sicher zu halten. Blenden Sie private Informationen schnell und zuverlässig aus.
      
      1. Erstellen Sie eine Redactor-Instanz und geben Sie den Pfad zur Pdf-Datei an, die Sie redigieren möchten.
      2. Konfigurieren Sie die Redaktionsparameter, um das gewünschte Ergebnis zu erzielen.
      3. Legen Sie einfach das zu suchende Textmuster fest und wählen Sie die Farbe der Überlagerung.
      4. Redigieren Sie das Dokument und speichern Sie die Änderungen.
   
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
        // Verstecken Sie vertrauliche Texte in PDF mit Überlagerungsbildern

        // Übergeben Sie den Dateipfad an den Redactor-Konstruktor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Richten Sie die Redaktionsoptionen ein
            // Definieren Sie das Textmuster und die Überlagerungsfarbe
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redigieren und speichern Sie die aktualisierte PDF-Datei
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten redigieren"
  description: "GroupDocs.Redaction for .NET ermöglicht das Entfernen oder Ausblenden von Inhalten in verschiedenen Dateitypen. Schützen Sie vertrauliche Informationen und halten Sie Ihre Dokumente gleichzeitig leserlich und teilbar."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Erweiterte Redaktionsoptionen"
  features:
    # feature loop
    - title: "Text überall bearbeiten"
      content: "Suchen und ersetzen Sie beliebige übereinstimmenden Texte in Ihrem Dokument, um vertrauliche Daten zu sichern."

    # feature loop
    - title: "Bilder abdecken"
      content: "Platzieren Sie Überlagerungen über vollständige Bilder oder ausgewählte Bereiche, um private visuelle Inhalte auszublenden."

    # feature loop
    - title: "Metadaten verarbeiten"
      content: "Löschen oder Ändern Sie verborgene Metadaten, um unerwünschte Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwendung regulärer Ausdrücke, um Texte auszublenden"
      content: |
        Dieses Beispiel zeigt, wie Sie Texte mithilfe regulärer Ausdrücke finden und ausblenden.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Laden Sie das Dokument, das Sie redigieren möchten
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Definieren Sie die Redaktionsparameter: Textmuster und Farbe
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Wenden Sie die Redaktion auf den Inhalt an
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
    title: "Schützen Sie PDF-Inhalte mit .NET-Redaktionen"
    exclude: "PDF"
    description: ".NET verwenden, um Inhalte in PDF-Dateien zu überdecken oder zu löschen. Es ist eine kluge Wahl, um vertrauliche oder offizielle Dokumente sicher zu halten."
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