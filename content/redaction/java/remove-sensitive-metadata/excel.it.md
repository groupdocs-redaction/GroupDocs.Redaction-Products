
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Metadati da EXCEL con Java"
head_description: "Proteggi i tuoi documenti EXCEL eliminando metadati nascosti utilizzando GroupDocs.Redaction for Java. Mantieni dettagli privati lontano dalla vista."

############################# Header ############################
title: "Pulisci i Metadati nei File EXCEL Usando Java" 
description: "Con Java, rimuovi dati sensibili dai file EXCEL. Un modo intelligente per mantenere i tuoi documenti sicuri."
subtitle: "Perché Scegliere GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli sviluppatori Java gli strumenti per controllare i contenuti nei file EXCEL. Rimuovi testo, metadati e immagini secondo le necessità.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Metadati dai File Excel"
    content: |
      In Java, GroupDocs.Redaction rende semplice la pulizia dei metadati dei documenti.
      
      1. Crea un Redactor e carica il file Excel.
      2. Imposta regole per rimuovere campi di dati nascosti.
      3. Esegui il processo di pulizia.
      4. Salva il documento pulito.
   
    code:
      platform: "java"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Elimina metadati nascosti da EXCEL

        // Avvia il redattore e apri il file
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Imposta le opzioni per la rimozione dei metadati
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Pulisci e salva il documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rimuovi Contenuti Sensibili dai File"
  description: "Con GroupDocs.Redaction for Java, puoi eliminare metadati, redigere testi e mascherare aree delle immagini in molti tipi di file. Ottimo per usi legali, personali o aziendali."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti per Pulire Metadati e Contenuti"
  features:
    # feature loop
    - title: "Trova e Elimina Testo"
      content: "Cerca testo sensibile e rimuovilo per proteggere le informazioni."

    # feature loop
    - title: "Copri Contenuto Immagine"
      content: "Nascondi sezioni confidenziali delle immagini utilizzando sovrapposizioni."

    # feature loop
    - title: "Elimina Metadati"
      content: "Rimuovi dettagli incorporati che potrebbero contenere dati privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Focalizzati su Campi di Metadati Specifici"
      content: |
        Questo esempio guida attraverso la rimozione di campi come Autore e Titolo da un file EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carica il file nel redattore
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Seleziona il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Seleziona il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Applica la redazione
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il file finale
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Pulizia dei Metadati in EXCEL Usando Java"
    exclude: "EXCEL"
    description: "Utilizza gli strumenti Java per rimuovere dati nascosti dai file EXCEL. Condividi documenti puliti e sicuri."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---