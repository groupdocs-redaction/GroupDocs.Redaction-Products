
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Modifica i metadati in JPEG utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi pulire o cambiare i metadati nei tuoi file JPEG. Rimuovi i dettagli nascosti che possono contenere dati privati."

############################# Header ############################
title: "Rimuovere i metadati dai file JPEG utilizzando .NET" 
description: "Proteggi i dettagli privati nei tuoi file JPEG utilizzando C#. Strumenti semplici per una migliore sicurezza dei documenti."
subtitle: "Le migliori caratteristiche di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aiuta gli sviluppatori C# a rimuovere testo, immagini e metadati dai file JPEG con strumenti semplici.

############################# Steps ############################
steps:
    enable: true
    title: "Pulire i metadati nei documenti Jpeg"
    content: |
      GroupDocs.Redaction rende semplice rimuovere i metadati nelle tue applicazioni .NET.
      
      1. Imposta un Redactor e carica il file Jpeg che desideri pulire.
      2. Scegli le impostazioni per cancellare tutti i metadati.
      3. Esegui la redazione per pulire il file.
      4. Salva il tuo file con metadati ripuliti.
   
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
        // Rimuovi i metadati dai file JPEG

        // Usa Redactor per caricare il file
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Configura la redazione dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Applica e salva
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rimuovi dati sensibili dai documenti"
  description: "GroupDocs.Redaction for .NET ti consente di nascondere o pulire contenuti privati in vari formati. Proteggi i dati sensibili mantenendo i tuoi file utili e chiari."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche principali di redazione"
  features:
    # feature loop
    - title: "Cerca e rimuovi testo"
      content: "Trova parole o frasi sensibili nei tuoi file e puliscile."

    # feature loop
    - title: "Coprire aree delle immagini"
      content: "Usa sovrapposizioni per nascondere parti private delle immagini."

    # feature loop
    - title: "Modifica i metadati"
      content: "Elimina o modifica i metadati per evitare di condividere dati privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pulire i campi di metadati nascosti"
      content: |
        Questo esempio mostra come eliminare o modificare i metadati nascosti nei documenti JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file JPEG con il redattore
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Aggiungi redazione per il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Aggiungi redazione per il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Esegui il processo di redazione
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva il documento pulito
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Pulire i metadati JPEG con .NET"
    exclude: "JPEG"
    description: "Usa .NET per rimuovere i dati nascosti dai tuoi documenti JPEG. Un ottimo modo per proteggere i dettagli sensibili."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---