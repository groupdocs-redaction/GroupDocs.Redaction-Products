
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovi Testo Privato da XLSX Usando C#"
head_description: "Pulisci rapidamente contenuti privati dai tuoi file XLSX utilizzando GroupDocs.Redaction for .NET e C#. Redazione veloce e semplice."

############################# Header ############################
title: "Modifica o Nascondi Testo Sensibile nei Documenti XLSX con .NET" 
description: "Con GroupDocs.Redaction for .NET e C#, puoi rimuovere informazioni personali o aziendali dai file XLSX e mantenerli sicuri da condividere."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET consente agli sviluppatori C# di cercare e rimuovere informazioni sensibili dai file XLSX. Funziona con testo, immagini, note e dati del file.

############################# Steps ############################
steps:
    enable: true
    title: "Come Redigere Testo nei File Xlsx"
    content: |
      Utilizza GroupDocs.Redaction for .NET nel tuo progetto .NET per nascondere o eliminare informazioni sensibili in pochi passaggi.
      
      1. Crea un Redactor e carica il file Xlsx.
      2. Scegli le impostazioni di redazione che si adattano alle tue necessità.
      3. Inserisci il testo da trovare e cosa sostituirlo.
      4. Esegui il processo di redazione e salva il tuo file aggiornato.
   
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
        // Redigere testo da un file XLSX

        // Utilizza Redactor per aprire il file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Scegli le tue opzioni di redazione
            // Imposta il testo di ricerca e sostituzione
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Applica le redazioni e salva il file ripulito
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Strumenti per la Redazione"
  description: "GroupDocs.Redaction for .NET aiuta a ripulire diversi tipi di contenuti—testo, immagini o metadati—per rendere i tuoi file pronti per una condivisione sicura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opzioni di redazione mostrate"
  features:
    # feature loop
    - title: "Sostituisci testo sensibile"
      content: "Cerca all’interno del file e sostituisci qualsiasi cosa confidenziale. Supporta testo semplice e modelli."

    # feature loop
    - title: "Nascondi aree delle immagini"
      content: "Utilizza sovrapposizioni per nascondere dati visivi. Scegli colore, dimensione dell'area e layout della pagina."

    # feature loop
    - title: "Rimuovi dati aggiuntivi"
      content: "Elimina metadati come nomi degli autori, timestamp o note interne per evitare perdite."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigi con Regole Regex"
      content: |
        Utilizza regex per trovare e ripulire schemi come numeri di telefono, email o altri dettagli personali.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file per cominciare
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Scrivi una regola regex per EMAIL e scegli una sostituzione
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Esegui la redazione in base al tuo modello
              redactor.Apply(redaction);

              // Salva il file redatto
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
    title: "Nascondi Info in XLSX con .NET"
    exclude: "XLSX"
    description: "Pulisci i tuoi documenti XLSX rimuovendo testo personale o sensibile utilizzando gli strumenti .NET. Mantieni i tuoi dati privati."
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