
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovi Testo Privato da DOCX Usando C#"
head_description: "Proteggi rapidamente contenuti privati nei tuoi file DOCX con GroupDocs.Redaction for .NET e C#. Facile da usare, veloce nei risultati."

############################# Header ############################
title: "Trova e Nascondi Testo Sensibile nei Documenti DOCX con .NET" 
description: "Che si tratti di uso personale o aziendale, GroupDocs.Redaction for .NET e C# aiutano a mantenere le informazioni private lontano da sguardi indiscreti."
subtitle: "Come GroupDocs.Redaction for .NET Ti Aiuta" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# gli strumenti per trovare e ripulire contenuti sensibili nei file DOCX. Funziona con testo, immagini, note e altro.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Contenuti nei File Docx"
    content: |
      Segui questi rapidi passaggi nel tuo progetto .NET per ripulire il testo privato con GroupDocs.Redaction for .NET.
      
      1. Avvia un nuovo Redactor e apri il file Docx.
      2. Scegli le impostazioni di redazione che desideri.
      3. Inserisci il testo da trovare e cosa vuoi che venga sostituito.
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
        // Redigere testo in un file DOCX

        // Carica il tuo file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Scegli le opzioni di redazione che soddisfano le tue esigenze
            // Imposta ciò che cercare e cosa sostituire
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Esegui lo strumento e salva il tuo file redatto
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altre Funzionalità di Redazione"
  description: "Con GroupDocs.Redaction for .NET, è possibile rimuovere contenuti nascosti o visibili da diversi tipi di file. Perfetto per condividere in modo sicuro."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Panoramica degli strumenti di redazione"
  features:
    # feature loop
    - title: "Sostituisci testo privato"
      content: "Cerca testo specifico ovunque nel file e sostituiscilo. Funziona con testo semplice o modelli."

    # feature loop
    - title: "Copri immagini sensibili"
      content: "Maschera parti di un'immagine o intere pagine con sovrapposizioni. Controlla colori, dimensioni e posizioni."

    # feature loop
    - title: "Ripulisci dati nascosti"
      content: "Rimuovi metadati come nomi, commenti o timestamp per garantire che niente venga trascurato."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trova e Redigi Schemi con Regex"
      content: |
        Usa regex per cercare dati specifici come indirizzi email o numeri di identificazione e pulirli automaticamente.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file che devi pulire
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Crea una regola regex per EMAIL e una stringa di sostituzione
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Esegui la redazione utilizzando le tue impostazioni
              redactor.Apply(redaction);

              // Salva il file aggiornato
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
    title: "Redigi Dati in DOCX Utilizzando .NET"
    exclude: "DOCX"
    description: "Proteggi informazioni personali o ufficiali nascondendole nei documenti DOCX utilizzando .NET. È semplice ed efficace."
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