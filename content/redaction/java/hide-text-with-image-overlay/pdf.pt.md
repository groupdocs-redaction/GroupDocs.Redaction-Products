
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cobrir Texto Privado em PDF com Sobreposições Usando Java"
head_description: "GroupDocs.Redaction for Java permite ocultar informações sensíveis em arquivos PDF colocando caixas coloridas. Proteja dados sem alterar a aparência do seu arquivo."

############################# Header ############################
title: "Mascarar Texto em Documentos PDF Usando Sobreposições em Java" 
description: "Tenha controle total sobre o conteúdo do arquivo PDF com Java. Use a redacção para proteger detalhes financeiros, legais ou pessoais."
subtitle: "Principais Recursos do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O Que GroupDocs.Redaction for Java Oferece"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores de Java uma maneira simples de ocultar ou remover conteúdo de arquivos PDF. Cubra texto, imagens e metadados em diferentes tipos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Informações Confidenciais em Arquivos Pdf"
    content: |
      GroupDocs.Redaction for Java facilita para os desenvolvedores de Java ocultarem conteúdo privado com alguns passos simples.
      
      1. Inicie um Redactor e carregue seu arquivo Pdf.
      2. Configure suas preferências de redacção.
      3. Escolha o que encontrar e selecione a cor da sua sobreposição.
      4. Aplique a redacção e salve seu documento.
   
    code:
      platform: "java"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
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
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Cobrir texto em PDF usando sobreposições coloridas

        // Passe o caminho do arquivo para o Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Ajuste as configurações de redacção
            // Defina o texto alvo e a cor
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique e salve o PDF redigido
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Controle do Que Está Visível em Documentos"
  description: "GroupDocs.Redaction for Java permite que você bloqueie ou remova partes dos seus arquivos enquanto os mantém fáceis de visualizar e compartilhar."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Ferramentas de Redacção Poderosas"
  features:
    # feature loop
    - title: "Alvo e oculte texto"
      content: "Pesquise em seu documento e oculte palavras ou frases específicas para proteger informações privadas."

    # feature loop
    - title: "Cobrir imagens"
      content: "Adicione sobreposições para ocultar total ou parcialmente visuais."

    # feature loop
    - title: "Remover metadados"
      content: "Apague detalhes ocultos do documento para evitar exposição não intencional."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Texto Usando Regex"
      content: |
        Este exemplo utiliza expressões regulares para encontrar e ocultar conteúdo específico
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o arquivo que você deseja processar
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Defina o padrão de texto e a cor da sobreposição
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplique a redacção
              redactor.apply(redaction);

              // Salve suas alterações
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copiar"
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
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Proteger Arquivos PDF com Java"
    exclude: "PDF"
    description: "Use Java para cobrir ou apagar conteúdo em documentos PDF. Uma maneira eficaz de manter informações privadas seguras."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Apresentação PowerPoint Open XML"


---