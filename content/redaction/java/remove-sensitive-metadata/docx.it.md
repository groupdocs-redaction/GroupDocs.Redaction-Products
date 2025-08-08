
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Elimina Metadati da DOCX con Java"
head_description: "Utilizza GroupDocs.Redaction for Java per pulire i metadati nascosti nei tuoi file DOCX. Assicurati che i tuoi documenti non rivelino informazioni private."

############################# Header ############################
title: "Pulisci i Metadati nei Documenti DOCX Usando Java" 
description: "Rimuovi metadati indesiderati dai tuoi file DOCX con Java. Mantieni i tuoi file privati e sicuri per la condivisione o l'archiviazione."
subtitle: "Strumenti Chiave Inclusi in GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aiuta gli sviluppatori Java a rimuovere contenuti privati dai file DOCX. Redigi facilmente testi, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Elimina Info Nascoste dai File Docx"
    content: |
      GroupDocs.Redaction rende semplice eliminare i metadati nelle tue app Java.
      
      1. Inizializza Redactor e carica il file Docx.
      2. Imposta lo strumento per rimuovere campi di metadati specifici.
      3. Applica la redazione per eliminare le info nascoste.
      4. Salva il file aggiornato.
   
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
        // Elimina metadati dai file DOCX

        // Apri il file con Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Scegli quali metadati rimuovere
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Applica e salva le modifiche
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi Dati Sensibili nei Documenti"
  description: "GroupDocs.Redaction for Java ti consente di nascondere contenuti privati da tutti i tipi di file. Assicurati che nessun dato nascosto venga condiviso."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti di Redazione di Metadati, Testi e Immagini"
  features:
    # feature loop
    - title: "Redazione Testo"
      content: "Trova ed elimina testo sensibile in tutto il tuo documento."

    # feature loop
    - title: "Sovrapposizioni Immagini"
      content: "Copri parti delle immagini per nascondere visivi privati."

    # feature loop
    - title: "Pulizia Metadati"
      content: "Rimuovi metadati di sfondo che possono rivelare informazioni nascoste."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Come Rimuovere i Metadati"
      content: |
        Questo esempio mostra come eliminare proprietà nascoste come Autore e Titolo da un file DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il tuo documento DOCX
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Seleziona il campo Autore da ripulire
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Seleziona il campo Titolo da ripulire
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Esegui la redazione
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
    title: "Pulisci i Metadati da DOCX con Java"
    exclude: "DOCX"
    description: "Utilizza Java per rimuovere metadati nascosti dai documenti DOCX. Ottimo per la privacy e la protezione dei dati."
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