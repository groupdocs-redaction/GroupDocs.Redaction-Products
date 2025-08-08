
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Metadati dai File PPTX Utilizzando Java"
head_description: "Utilizza GroupDocs.Redaction for Java per eliminare o modificare metadati nascosti nei tuoi file PPTX. Proteggi il tuo contenuto e mantieni i tuoi documenti puliti."

############################# Header ############################
title: "Pulisci i Metadati in PPTX con gli Strumenti di Java" 
description: "Elimina dettagli personali memorizzati nei metadati utilizzando Java. Ottimo per documenti personali e aziendali."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli sviluppatori Java strumenti per rimuovere contenuti privati dai file PPTX. Elimina metadati, nascondi immagini e pulisci testi.

############################# Steps ############################
steps:
    enable: true
    title: "Rimuovi Metadati nei File Pptx"
    content: |
      Con GroupDocs.Redaction, i tuoi progetti Java possono pulire i metadati nascosti in pochi passaggi.
      
      1. Imposta un Redactor e carica il tuo file Pptx.
      2. Scegli quali campi di metadati rimuovere.
      3. Esegui il processo di redazione.
      4. Salva il file con i metadati rimossi.
   
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
        // Rimuovi metadati dai file PPTX

        // Utilizza Redactor per aprire il file
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Configura i campi di metadati da rimuovere
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Applica le modifiche e salva
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Strumenti di Redazione che Puoi Usare"
  description: "GroupDocs.Redaction for Java ti aiuta a rimuovere informazioni sensibili da tutti i tipi di file. Mantieni i documenti puliti e pronti da condividere."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche per la Privacy Incorporate"
  features:
    # feature loop
    - title: "Rimuovi Testo Sensibile"
      content: "Trova ed elimina nomi, email e altre informazioni personali dai tuoi file."

    # feature loop
    - title: "Nascondi Parti delle Immagini"
      content: "Aggiungi sovrapposizioni per coprire aree delle immagini che vuoi mantenere private."

    # feature loop
    - title: "Pulizia Metadati"
      content: "Cancella dati di sfondo come autore o titolo prima di condividere i tuoi file."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Esempio di Rimozione dei Campi Metadati"
      content: |
        Questo esempio mostra come è possibile eliminare metadati come autore e titolo da un file PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il tuo file PPTX
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Focalizzati sui metadati Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Focalizzati sui metadati Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Applica le regole di redazione
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il file redatto
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
    title: "Rimuovi Metadati da PPTX con Java"
    exclude: "PPTX"
    description: "Java rende semplice eliminare dati nascosti nei file PPTX. Ottimo per mantenere sicuri i documenti prima di condividerli."
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