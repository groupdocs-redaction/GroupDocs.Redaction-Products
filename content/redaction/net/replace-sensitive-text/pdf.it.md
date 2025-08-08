
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovi Testo Sensibile in PDF con C#"
head_description: "Proteggi informazioni private nei tuoi file PDF utilizzando GroupDocs.Redaction for .NET. Cerca e rimuovi rapidamente dati sensibili."

############################# Header ############################
title: "Rimuovi Testo Sensibile dai Documenti PDF Usando .NET" 
description: "Utilizza C# e GroupDocs.Redaction for .NET per avere il pieno controllo sui contenuti dei tuoi file PDF. Rimuovi dati personali, legali o confidenziali in modo rapido."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# tutto il necessario per redigere contenuti PDF. Ripulisci testo, immagini, annotazioni, commenti e metadati nei formati di file più diffusi.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Contenuti nei File Pdf"
    content: |
      Proteggi i tuoi documenti in qualsiasi app .NET utilizzando GroupDocs.Redaction for .NET. Rimuovi testo sensibile rapidamente e con precisione.
      
      1. Inizializza un Redactor e carica il tuo file Pdf.
      2. Imposta le opzioni di redazione necessarie.
      3. Specifica il testo da cercare e il testo di sostituzione.
      4. Esegui la redazione e salva il file.
   
    code:
      platform: "net"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Come redigere testo in un file PDF

        // Carica il tuo file utilizzando il costruttore Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Imposta le tue preferenze di redazione
            // Scegli cosa cercare e cosa sostituire
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Applica le redazioni e salva il nuovo file PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Modi per Redigere Documenti"
  description: "GroupDocs.Redaction for .NET aiuta a rimuovere o nascondere contenuti sensibili in più formati di file. Mantieni i documenti puliti e sicuri da condividere."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Strumenti e opzioni di redazione"
  features:
    # feature loop
    - title: "Sostituisci testo confidenziale"
      content: "Cerca e sostituisci testi corrispondenti ovunque nel tuo file. Supporta opzioni regex e ricerca intelligente."

    # feature loop
    - title: "Nascondi immagini sensibili"
      content: "Copri immagini o aree specifiche con sovrapposizioni. Regola le impostazioni della pagina, i colori e altro."

    # feature loop
    - title: "Pulisci i metadati nascosti"
      content: "Rimuovi dati nascosti come paternità, timestamp o commenti per proteggere la privacy."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi Testo con Regex"
      content: |
        Utilizza espressioni regolari per cercare e rimuovere schemi di testo sensibile come email o ID.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il documento che desideri ripulire
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Definisci un modello regex per EMAIL e il testo da utilizzare come sostituzione
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Applica le regole di redazione
              redactor.Apply(redaction);

              // Salva il file finale redatto
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "clicca per copiare"
          copy_done: "copiato"
        top_links:
          #  loop
          - title: "Scarica risultato"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Altri esempi"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Rimuovi Contenuti in PDF Usando .NET"
    exclude: "PDF"
    description: "Proteggi dati ufficiali e personali redigendo il testo nei file PDF con gli strumenti .NET. Mantieni i documenti sicuri e privati."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---