
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Contenuto in EXCEL con Redazione di Sovrapposizione e C#"
head_description: "Copri il testo nei documenti EXCEL utilizzando blocchi di colore solidi con GroupDocs.Redaction for .NET. Un modo semplice per proteggere contenuti privati."

############################# Header ############################
title: "Redazione di Sovrapposizione per i File EXCEL in .NET" 
description: "Usa codice C# per nascondere testo e proteggere i dati all'interno dei tuoi file EXCEL. Una soluzione pulita per la sicurezza dei documenti."
subtitle: "Cosa include GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Perché Scegliere GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET è progettato per sviluppatori C# che desiderano redigere o cancellare contenuti nei file EXCEL. Usalo per lavorare con testo, metadati e immagini.

############################# Steps ############################
steps:
    enable: true
    title: "Redigi info sensibili nel formato Excel"
    content: |
      GroupDocs.Redaction for .NET è uno strumento semplice per gli sviluppatori .NET per pulire i documenti prima della condivisione.
      
      1. Avvia un Redactor e carica il tuo file Excel.
      2. Decidi le impostazioni di redazione per il tuo compito.
      3. Aggiungi una parola chiave o frase da redigere e scegli un colore.
      4. Esegui lo strumento e salva le modifiche.
   
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
        // Usa sovrapposizioni per nascondere testo in EXCEL

        // Crea un Redactor e carica il tuo file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Scegli regole di redazione
            // Inserisci cosa nascondere e scegli un colore
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Applica la redazione e salva il file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità chiave per la protezione dei dati"
  description: "GroupDocs.Redaction for .NET ti consente di nascondere o cancellare dati all'interno dei tuoi documenti senza perdere layout o significato."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Costruito per la sicurezza dei documenti"
  features:
    # feature loop
    - title: "Cambia contenuto testuale"
      content: "Sostituisci o nascondi parole selezionate in tutto il file."

    # feature loop
    - title: "Redigi immagini"
      content: "Nascondi foto o aree con semplici blocchi."

    # feature loop
    - title: "Pulisci i metadati"
      content: "Elimina dati di background come nomi autori o timestamp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redazione di testo con regex"
      content: |
        Ecco come usare le regex per trovare e nascondere contenuti in un file
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il documento da elaborare
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Aggiungi modello e impostazioni di sovrapposizione
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Applica le modifiche
              redactor.Apply(redaction);

              // Salva e chiudi il documento redatto
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Redigi i file EXCEL con .NET"
    exclude: "EXCEL"
    description: "Copri contenuti sensibili in EXCEL utilizzando sovrapposizioni quadrate o chiare redazioni con le funzionalità .NET."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---