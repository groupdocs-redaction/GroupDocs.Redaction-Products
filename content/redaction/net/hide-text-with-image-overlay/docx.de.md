
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
head_title: "Vertrauliche Texte in DOCX mithilfe von Überlagerungen und C# abdecken"
head_description: "Verwenden Sie GroupDocs.Redaction for .NET, um private Texte in DOCX-Dateien mit einfachen quadratischen Überlagerungen zu schützen. Halten Sie das Layout Ihres Dokuments unverändert und Ihre Daten verborgen."

############################# Header ############################
title: "Text in DOCX mit Überlagerungen mithilfe von .NET abdecken" 
description: "Verbergen Sie vertrauliche Inhalte in Ihren DOCX-Dokumenten mithilfe von C#-Code. Ideal für den Schutz von rechtlichen, geschäftlichen oder persönlichen Dokumenten."
subtitle: "GroupDocs.Redaction for .NET Funktionen" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET hilft C#-Entwicklern, private Inhalte in DOCX-Dateien auszublenden oder zu löschen. Nutzen Sie es, um Texte, Bilder und Metadaten in verschiedenen Dateiformaten auszublenden.

############################# Steps ############################
steps:
    enable: true
    title: "Entfernen Sie private Daten aus Docx-Dokumenten"
    content: |
      GroupDocs.Redaction for .NET hilft .NET-Entwicklern, Dokumente in nur wenigen Codezeilen zu bereinigen.
      
      1. Erstellen Sie einen Redactor und geben Sie Ihren Dateipfad an.
      2. Definieren Sie, wie die Redaktion funktionieren soll.
      3. Geben Sie den auszublendenden Text ein und wählen Sie die Überschichtfarbe.
      4. Redigieren Sie die Datei und speichern Sie sie.
   
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
        // Text in DOCX mit Überlagerungsblöcken ausblenden

        // Erstellen Sie einen Redactor und laden Sie die Datei
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Stellen Sie Ihre Redaktionspräferenzen ein
            // Geben Sie den Text ein und setzen Sie die Blockfarbe
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redigieren und speichern Sie das aktualisierte Dokument
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Möglichkeiten zur Bereinigung von Dokumenten"
  description: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, unterschiedliche Dateitypen zu redigieren, um Ihre Inhalte sicher und professionell zu halten."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Intelligente integrierte Redaktionen"
  features:
    # feature loop
    - title: "Text bearbeiten oder entfernen"
      content: "Suchen Sie nach bestimmten Phrasen und blendet oder ersetzen Sie diese."

    # feature loop
    - title: "Bildelemente verbergen"
      content: "Verstecken Sie vertrauliche Stellen in Bildern oder gescannten Seiten."

    # feature loop
    - title: "Verborgene Metadaten löschen"
      content: "Löschen Sie unsichtbare Informationen, die Benutzerdaten oder Systemdaten offenbaren könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex zum Redigieren von Inhalten"
      content: |
        Sehen Sie, wie reguläre Ausdrücke vertrauliche Wörter finden und ausblenden können.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Öffnen Sie die Ziel-Datei
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Muster und Farbe festlegen
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Redaktionslogik anwenden
              redactor.Apply(redaction);

              // Die redigierte Datei exportieren
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
    title: "Verbergen Sie Inhalte in DOCX mit .NET"
    exclude: "DOCX"
    description: "Schützen Sie vertrauliche Daten in DOCX-Dokumenten, indem Sie sie mit Überlagerungen abdecken oder sie vollständig mithilfe von .NET-Tools entfernen."
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