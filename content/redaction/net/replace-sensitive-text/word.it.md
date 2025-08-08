
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovi Testo Privato da WORD Usando C#"
head_description: "Mantieni i tuoi file WORD privati con GroupDocs.Redaction for .NET e C#. Un modo rapido e semplice per redigere il testo."

############################# Header ############################
title: "Trova e Rimuovi Testo Sensibile nei File WORD con .NET" 
description: "Utilizza C# e GroupDocs.Redaction for .NET per proteggere i tuoi file personali o di lavoro. Le tue informazioni private rimangono nascoste."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli utenti C# gli strumenti per pulire i documenti WORD. Redigi testo, immagini, note e dati di sfondo.

############################# Steps ############################
steps:
    enable: true
    title: "Come Redigere i File Word"
    content: |
      Con GroupDocs.Redaction for .NET, è semplice trovare e sostituire contenuti privati nelle app .NET.
      
      1. Crea un Redactor e apri il tuo file Word.
      2. Scegli le impostazioni di redazione.
      3. Indica cosa cercare e quale testo utilizzare come sostituzione.
      4. Inizia la redazione e salva il tuo file aggiornato.
   
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
        // Passaggi per redigere contenuti in un documento WORD

        // Apri il file con Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Regola le impostazioni di redazione
            // Scegli cosa cercare e cosa sostituire
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Esegui la redazione e salva il tuo nuovo file WORD
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Strumenti di Redazione"
  description: "GroupDocs.Redaction for .NET ti offre modi potenti per nascondere o cancellare informazioni private in molti tipi di file. Ottimo per condividere in modo sicuro."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Strumenti e impostazioni di redazione disponibili"
  features:
    # feature loop
    - title: "Sostituisci testo privato"
      content: "Cerca e sostituisci corrispondenze esatte con opzioni di testo intelligenti, inclusa la supporto per regex."

    # feature loop
    - title: "Nascondi immagini private"
      content: "Copri immagini intere o solo parti di una pagina. Puoi regolare il colore e le dimensioni delle sovrapposizioni."

    # feature loop
    - title: "Cancella metadati nascosti"
      content: "Rimuovi informazioni come nomi degli autori, cronologia delle modifiche e commenti per proteggere la tua identità."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilizza Regex per Redazioni Più Intelligenti"
      content: |
        Trova e rimuovi schemi di dati come email o ID con espressioni regolari.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file che desideri ripulire
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Imposta un modello regex per EMAIL e scegli il testo di sostituzione
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Esegui il processo di redazione
              redactor.Apply(redaction);

              // Salva il tuo file finale redatto
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
    title: "Come Redigere WORD con .NET"
    exclude: "WORD"
    description: "Utilizza .NET per pulire i file WORD. Mantieni il tuo contenuto privato e sicuro dalle perdite."
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