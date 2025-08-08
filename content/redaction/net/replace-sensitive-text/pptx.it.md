
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovi Testo Privato da PPTX Usando C#"
head_description: "Nascondi rapidamente contenuti privati nelle tue presentazioni PPTX con GroupDocs.Redaction for .NET e C#. Redazione veloce, configurazione semplice."

############################# Header ############################
title: "Modifica o Nascondi Testo Sensibile nei Documenti PPTX con .NET" 
description: "Mantieni pulite e riservate le tue presentazioni. Utilizza GroupDocs.Redaction for .NET e C# per rimuovere qualsiasi cosa tu non voglia condividere."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# ciò di cui hanno bisogno per rimuovere contenuti sensibili dai file PPTX. Gestisce testo, immagini, commenti e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Passaggi per Pulire Presentazioni Pptx"
    content: |
      Usa GroupDocs.Redaction for .NET nella tua app .NET per rimuovere o coprire contenuti sensibili in pochi passaggi.
      
      1. Avvia un nuovo Redactor e carica il tuo file Pptx.
      2. Scegli le regole di redazione che desideri applicare.
      3. Imposta il testo da trovare e cosa sostituirlo.
      4. Esegui la redazione e salva il tuo file.
   
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
        // Redigere una presentazione PPTX

        // Apri il file con Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Scegli le impostazioni di redazione
            // Scegli il testo da cercare e sostituire
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Applica le modifiche e salva il file aggiornato
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità di Redazione che Puoi Usare"
  description: "GroupDocs.Redaction for .NET ti aiuta a trovare e nascondere testo sensibile, immagini e dati nascosti in diversi tipi di file. Perfetto per condividere file in sicurezza."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opzioni di redazione disponibili"
  features:
    # feature loop
    - title: "Sostituisci testo nascosto"
      content: "Cerca e sostituisci parole o frasi private ovunque nel file. Anche il regex è supportato."

    # feature loop
    - title: "Nascondi immagini"
      content: "Usa blocchi per nascondere immagini o aree che vuoi mascherare. Controlla forma, dimensione e colore."

    # feature loop
    - title: "Elimina dettagli nascosti"
      content: "Pulisci i metadati come nomi degli autori, date dell'ultima modifica o commenti per rendere il tuo file pulito."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigi Utilizzando Schemi Regex"
      content: |
        Trova e ripulisci dati come indirizzi email o ID utilizzando regex. Ottimo per una redazione ripetibile.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il tuo file
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Scrivi un modello regex per EMAIL e imposta la sostituzione
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Applica le impostazioni di redazione
              redactor.Apply(redaction);

              // Salva la versione redatta
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
    title: "Pulisci File PPTX con .NET"
    exclude: "PPTX"
    description: "Rendi i tuoi documenti PPTX più sicuri da condividere nascondendo testo privato con .NET. Risultati rapidi e affidabili."
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