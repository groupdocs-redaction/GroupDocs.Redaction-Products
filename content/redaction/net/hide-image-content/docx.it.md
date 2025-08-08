
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Coprire Immagini in DOCX con Sovrapposizioni Utilizzando C#"
head_description: "Utilizza GroupDocs.Redaction for .NET per coprire immagini sensibili nei file DOCX con sovrapposizioni colorate. Proteggi i dati privati mantenendo invariato il layout del documento."

############################# Header ############################
title: "Coprire Immagini Sensibili nei Documenti DOCX con Sovrapposizioni Utilizzando .NET" 
description: "Salvaguarda informazioni personali e aziendali nei file DOCX utilizzando C#. I nostri strumenti rendono la protezione dei dati semplice e affidabile."
subtitle: "Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# strumenti per nascondere o eliminare contenuti nei file DOCX. Proteggi i documenti copiando testo, immagini e metadati in vari formati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati nei File Docx"
    content: |
      GroupDocs.Redaction for .NET: Creato per aiutare le tue app .NET a mettere in sicurezza i documenti. Redigi informazioni sensibili in pochi passaggi.
      
      1. Inizializza un Redactor e fornisci il percorso del tuo file Docx.
      2. Configura le opzioni di redazione in base alle tue necessità.
      3. Scegli l'area dell'immagine e seleziona il colore della sovrapposizione.
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
        // Coprire aree delle immagini sensibili in DOCX

        // Carica il file tramite il costruttore Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Imposta colore e dimensione della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Definisci l'area di redazione
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica la sovrapposizione e salva il documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Contenuti nei File"
  description: "Con GroupDocs.Redaction for .NET, puoi nascondere o eliminare contenuti sensibili in molti formati di file. Mantieni i documenti al sicuro preservando la leggibilità."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opzioni di Redazione Flessibili"
  features:
    # feature loop
    - title: "Modifica Testo Facilmente"
      content: "Trova e sostituisci testo privato in tutto il tuo documento per una migliore sicurezza dei dati."

    # feature loop
    - title: "Coprire Aree dell'Immagine"
      content: "Applica sovrapposizioni a immagini complete o seleziona parti specifiche per proteggere informazioni visive."

    # feature loop
    - title: "Pulisci i Metadata"
      content: "Rimuovi o modifica i metadati nascosti per evitare perdite di dati non intenzionali."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Applica Sovrapposizioni per Nascondere Dettagli dell'Immagine"
      content: |
        Questo esempio dimostra come nascondere aree sensibili nelle immagini dei documenti.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il documento che desideri redigere
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Specifica i parametri della sovrapposizione: dimensioni, posizione, colore
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Prendi di mira un'area specifica nella prima pagina
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Posiziona la sovrapposizione sull'immagine
              redactor.Apply(redaction);

              // Salva il file aggiornato
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Proteggi File DOCX con la Redazione di .NET"
    exclude: "DOCX"
    description: "Utilizza .NET per coprire o rimuovere dati sensibili nei file DOCX. Ideale per mantenere i documenti confidenziali sicuri."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Immagine JPEG"


---