---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: it

############################# Head ############################
head_title: "Soluzione di Redazione Documenti. Modifica o rimuovi qualsiasi dato sensibile."
head_description: "Rimuovi, redigi o nascondi testo, immagini o metadati in PDF, documenti Word, fogli di calcolo Excel, presentazioni PowerPoint, immagini e altro. Utilizza la nostra libreria nelle tue applicazioni .NET, Java, Python o basate su cloud."

############################# Header ############################
title: "Libreria di Redazione Documenti"
description:  |
  Nascondi o rimuovi informazioni riservate da vari tipi di file.

  Modifica testo o immagini per eliminare contenuti sensibili.

  Gestisci i metadati dei file utilizzando le nostre funzionalità avanzate.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Scegli la Tua Piattaforma"
  title: "Indipendenza della Piattaforma"
  description: "La libreria GroupDocs.Redaction supporta i seguenti sistemi operativi e framework:"
  details_link_title: "Scopri di più"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction a Colpo d'Occhio"
  description: "Una soluzione per gestire contenuti in PDF, documenti Office, immagini e altri file aziendali."

  items:
    # items loop
    - icon: "text"
      title: "Rimuovi o Modifica Testo"
      content: "Trova e redigi il testo sensibile nei tuoi documenti."

    # items loop
    - icon: "image"
      title: "Redigi Immagini"
      content: "Nascondi aree delle immagini nei tuoi file senza sforzo extra."

    # items loop
    - icon: "template"
      title: "Gestisci Metadati"
      content: "Rimuovi o sostituisci metadati come l'autore nei documenti Word o i dati EXIF nelle immagini."

    # items loop
    - icon: "pdf"
      title: "Funzionalità Avanzate"
      content: "Cerca dati da redigere utilizzando espressioni regolari o integrazione AI."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Esempi di Codice GroupDocs.Redaction"
  description: "Casi d'uso tipici delle operazioni di redazione GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Come Redigere Testo in Documenti PDF"
      content: |
       GroupDocs.Redaction è la migliore soluzione per redigere testo nei tuoi documenti in pochi passaggi.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Passa il percorso del file da redigere a un'istanza di Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Fornisci opzioni di redazione
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redigi e salva il risultato
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Passa il percorso del file da redigere a un'istanza di Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Fornisci opzioni di redazione
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redigi e salva il risultato
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Passa il percorso del file da redigere a un'istanza di Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Fornisci opzioni di redazione
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Redigi e salva il risultato
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30+ Formati di File Supportati"
  description: "La GroupDocs.Redaction supporta operazioni di redazione su tutti i formati di file aziendali ampiamente utilizzati."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Risultati"
  description: "Scopri Metriche Chiave che Mettono in Risalto il Successo della Nostra Libreria"

  items:
    # items loop
    - number: "30+"
      title: "Formati Supportati"
      content: "GroupDocs.Redaction supporta operazioni con oltre 30 formati di file ampiamente utilizzati."

    # items loop
    - number: "440k"
      title: "Download NuGet"
      content: "GroupDocs.Redaction per .NET è stato scaricato più di 440.000 volte da NuGet."

    # items loop
    - number: "12k"
      title: "Download Maven"
      content: "GroupDocs.Redaction ha oltre 12.000 download su Maven, offrendo potenti funzionalità di redazione per Java."

    # items loop
    - number: "140+"
      title: "Clienti Soddisfatti"
      content: "Sia le grandi aziende globali che i singoli sviluppatori si affidano ai prodotti di GroupDocs per costruire soluzioni innovative."


############################# Customers ###############################
customers:
  enable: true
  title: "I Nostri Clienti Soddisfatti"
  description: "Le librerie GroupDocs sono fidate da marchi riconosciuti e rispettati a livello globale."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Pronto per Iniziare?"
  description: "Prova gratuitamente le funzionalità di GroupDocs.Redaction sulla tua piattaforma."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Domande Frequenti"
  description: "Risposte alle domande più comuni."

  items:
    # items loop
    - question: "La libreria GroupDocs.Redaction richiede software di terze parti per manipolare i documenti?"
      answer: "GroupDocs.Redaction non richiede software esterni come Adobe Acrobat, Microsoft Office o altri."

    # items loop
    - question: "Posso provare la libreria GroupDocs.Redaction prima di acquistarla?"
      answer: "Sì, puoi provare GroupDocs.Redaction senza acquistare una licenza. Funziona in modalità di prova, aggiungendo badge di prova e limitando l'output alle prime 3 pagine. Per testare senza restrizioni, richiedi una licenza temporanea di 30 giorni. Per maggiori dettagli, [vedi](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Quali opzioni di licenza sono disponibili?"
      answer: "Offriamo diversi tipi di licenza in base alle tue esigenze di sviluppo e distribuzione. Queste includono licenze basate su sviluppatore, basate su sito e licenze a consumo in base all'uso. Scopri di più [qui](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction API Low-Code"
  description: "Integra la redazione dei documenti in qualsiasi applicazione utilizzando la nostra API REST basata su cloud."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Utilizza comandi cURL con la nostra RESTful Cloud API per redigere documenti in una vasta gamma di formati di file supportati."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Estrai immagini, testo e metadati o redigi documenti utilizzando modelli in applicazioni Microsoft .NET."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK Java per redigere documenti ed estrarre dati all'interno delle tue applicazioni basate su Java."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction App No-Code"
  description: "Un'applicazione web che consente di redigere oltre 30 formati di file popolari direttamente nel tuo browser."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Strumento online gratuito per redigere Word, Excel, PowerPoint, PDF e oltre 30 altri tipi di file."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Redigi documenti Word nel tuo browser e estrai immagini, testo o metadati."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Strumento di redazione PDF gratuito che funziona su qualsiasi dispositivo o piattaforma senza limitazioni."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---