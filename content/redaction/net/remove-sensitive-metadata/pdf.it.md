
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rimuovere i metadati in PDF utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi rimuovere o aggiornare i metadati nei file PDF. Pulisci i dati nascosti che potrebbero esporre informazioni riservate."

############################# Header ############################
title: "Pulisci i metadati nei file PDF con .NET" 
description: "Proteggi le informazioni aziendali e personali sensibili nei file PDF utilizzando C#. Strumenti intuitivi per una protezione dei dati affidabile."
subtitle: "Caratteristiche principali di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori C# strumenti semplici per redigere contenuti nei file PDF. Maschera testo, immagini e metadati attraverso più formati.

############################# Steps ############################
steps:
    enable: true
    title: "Rimuovere i metadati dai documenti Pdf"
    content: |
      Usa GroupDocs.Redaction per salvaguardare rapidamente i metadati dei documenti nelle tue app .NET.
      
      1. Crea un'istanza di Redactor e carica il tuo file Pdf.
      2. Configura la redazione per rimuovere tutti i metadati nascosti.
      3. Applica la redazione per pulire il documento.
      4. Salva il file aggiornato.
   
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
        // Cancella i metadati dai file PDF

        // Carica il file con Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configura la rimozione dei metadati
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Applica le modifiche e salva il file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi dati sensibili nei documenti"
  description: "GroupDocs.Redaction for .NET ti aiuta a nascondere o cancellare contenuti riservati in vari formati di file. Mantieni i dati privati al sicuro mentre i documenti rimangono chiari e professionali."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche potenti di Redazione"
  features:
    # feature loop
    - title: "Trova e sostituisci il testo"
      content: "Cerca il testo sensibile nei tuoi documenti e sostituiscilo o rimuovilo per proteggere la privacy."

    # feature loop
    - title: "Nascondi il contenuto delle immagini"
      content: "Aggiungi sovrapposizioni alle immagini o aree specifiche per coprire visuali sensibili."

    # feature loop
    - title: "Pulisci i metadati"
      content: "Elimina o modifica i metadati nascosti per prevenire perdite di dati indesiderate."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovere le voci di metadati nascosti"
      content: |
        Questo esempio mostra come modificare i metadati in un file PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il file PDF nel redattore
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Configura la redazione per la proprietà Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Configura la redazione per la proprietà Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Esegui la redazione sul documento
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salva il file pulito
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
    title: "Proteggi i file PDF con la redazione dei metadati di .NET"
    exclude: "PDF"
    description: "Usa .NET per eliminare i dati nascosti dai file PDF. Un modo semplice ed efficace per proteggere informazioni sensibili nei tuoi documenti."
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