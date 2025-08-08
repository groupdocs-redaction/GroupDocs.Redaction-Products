---
############################# Static ############################
layout: "family"
date:  2025-08-08T14:47:02
draft: false

product: "Redaction"
product_tag: "redaction"

lang: fr

############################# Head ############################
head_title: "Solution de Redaction de Document. Éditez ou supprimez toute donnée sensible."
head_description: "Supprimez, censurez ou masquez du texte, des images ou des métadonnées dans des fichiers PDF, des documents Word, des tableaux Excel, des présentations PowerPoint, des images, et plus encore. Utilisez notre bibliothèque dans vos applications .NET, Java, Python ou basées sur le cloud."

############################# Header ############################
title: "Bibliothèque de Redaction de Document"
description:  |
  Masquez ou supprimez des informations privées provenant de divers types de fichiers.

  Modifiez du texte ou des images pour éliminer le contenu sensible.

  Gérez les métadonnées des fichiers grâce à nos fonctionnalités avancées.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Choisissez Votre Plateforme"
  title: "Indépendance de Plateforme"
  description: "La bibliothèque GroupDocs.Redaction prend en charge les systèmes d'exploitation et cadres suivants :"
  details_link_title: "En savoir plus"

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
  title: "GroupDocs.Redaction en un coup d'œil"
  description: "Une solution pour gérer le contenu dans des fichiers PDF, des documents Office, des images et d'autres fichiers commerciaux."

  items:
    # items loop
    - icon: "text"
      title: "Supprimer ou Éditer du Texte"
      content: "Trouvez et censurez du texte sensible dans vos documents."

    # items loop
    - icon: "image"
      title: "Censurer des Images"
      content: "Masquez facilement des zones d'images dans vos fichiers."

    # items loop
    - icon: "template"
      title: "Gérer les Métadonnées"
      content: "Supprimez ou remplacez des métadonnées telles que l'auteur dans les documents Word ou les données EXIF dans les images."

    # items loop
    - icon: "pdf"
      title: "Fonctionnalités Avancées"
      content: "Recherchez des données à censurer à l'aide d'expressions régulières ou d'intégration AI."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemples de Code GroupDocs.Redaction"
  description: "Cas typiques d'opérations de censure GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Comment Censurer du Texte dans des Documents PDF"
      content: |
       GroupDocs.Redaction est la meilleure solution pour censurer du texte dans vos documents en quelques étapes.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Passez le chemin du fichier à censurer à une instance de Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Fournissez des options de censure
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Censurez et sauvegardez le résultat
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Passez le chemin du fichier à censurer à une instance de Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Fournissez des options de censure
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Censurez et sauvegardez le résultat
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

                # Passez le chemin du fichier à censurer à une instance de Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Fournissez des options de censure
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Censurez et sauvegardez le résultat
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30+ Formats de Fichiers Pris en Charge"
  description: "GroupDocs.Redaction prend en charge des opérations de censure sur tous les formats de fichiers commerciaux largement utilisés."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Réalisations"
  description: "Découvrez les Métriques Clés qui Soulignent le Succès de Notre Bibliothèque"

  items:
    # items loop
    - number: "40+"
      title: "Formats Pris en Charge"
      content: "GroupDocs.Redaction prend en charge des opérations avec plus de 30 formats de fichiers largement utilisés."

    # items loop
    - number: "440k"
      title: "Téléchargements NuGet"
      content: "GroupDocs.Redaction pour .NET a été téléchargé plus de 440 000 fois sur NuGet."

    # items loop
    - number: "12k"
      title: "Téléchargements Maven"
      content: "GroupDocs.Redaction a plus de 12 000 téléchargements sur Maven, offrant des fonctionnalités de censure Java puissantes."

    # items loop
    - number: "140+"
      title: "Clients Satisfaits"
      content: "Des entreprises mondiales et des développeurs individuels font confiance aux produits de GroupDocs pour construire des solutions innovantes."


############################# Customers ###############################
customers:
  enable: true
  title: "Nos Clients Satisfaits"
  description: "Les bibliothèques GroupDocs sont approuvées par des marques mondialement reconnues et respectées."

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
  title: "Prêt à Commencer?"
  description: "Essayez gratuitement les fonctionnalités de GroupDocs.Redaction sur votre plateforme."

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
  title: "Questions Fréquemment Posées"
  description: "Réponses aux questions les plus fréquemment posées."

  items:
    # items loop
    - question: "La bibliothèque GroupDocs.Redaction nécessite-t-elle un logiciel tiers pour manipuler des documents?"
      answer: "GroupDocs.Redaction ne nécessite aucun logiciel externe tel qu'Adobe Acrobat, Microsoft Office ou autres."

    # items loop
    - question: "Puis-je essayer la bibliothèque GroupDocs.Redaction avant d'acheter?"
      answer: "Oui, vous pouvez essayer GroupDocs.Redaction sans acheter de licence. Il fonctionne en mode essai, ce qui ajoute des badges d'essai et limite la sortie aux 3 premières pages. Pour tester sans restrictions, demandez une licence temporaire de 30 jours. Pour plus de détails, [voir](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Quelles options de licence sont disponibles?"
      answer: "Nous offrons plusieurs types de licences en fonction de vos besoins en développement et distribution. Celles-ci incluent des licences basées sur les développeurs, les sites et les licences mesurées selon l'utilisation. En savoir plus [ici](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: true
  title: "GroupDocs.Redaction APIs Low-Code"
  description: "Intégrez la censure de documents dans n'importe quelle application en utilisant notre API REST basée sur le cloud."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Utilisez des commandes cURL avec notre API Cloud REST pour censurer des documents dans une large gamme de formats de fichiers pris en charge."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Extrayez des images, du texte et des métadonnées ou censurez des documents en utilisant des modèles dans des applications Microsoft .NET."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK Java pour censurer des documents et extraire des données dans vos applications basées sur Java."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction Applications Sans Code"
  description: "Une application web qui vous permet de censurer plus de 30 formats de fichiers populaires directement dans votre navigateur."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Outil en ligne gratuit pour censurer Word, Excel, PowerPoint, PDF et plus de 30 autres types de fichiers."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Censurez des documents Word dans votre navigateur et extrayez des images, du texte ou des métadonnées."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Outil de censure PDF gratuit qui fonctionne sur n'importe quel appareil ou plateforme sans limitations."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---