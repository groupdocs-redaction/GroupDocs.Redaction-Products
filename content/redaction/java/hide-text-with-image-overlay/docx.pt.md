
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Texto em DOCX com Sobreposições Usando Java"
head_description: "Use GroupDocs.Redaction for Java para bloquear texto privado em arquivos DOCX. Mantenha a formatação inalterada enquanto mantém os dados sensíveis ocultos."

############################# Header ############################
title: "Proteger Texto DOCX com Sobreposições em Java" 
description: "Oculte rapidamente detalhes pessoais, legais ou de negócios em arquivos DOCX com Java e GroupDocs.Redaction for Java."
subtitle: "Ferramentas Principais em GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O Que É GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores de Java ferramentas para limpar arquivos DOCX. Redija nomes, números ou notas com agilidade.

############################# Steps ############################
steps:
    enable: true
    title: "Redigir Conteúdo Sensível em Docx"
    content: |
      Limpe documentos em seu projeto Java usando GroupDocs.Redaction for Java.
      
      1. Inicialize Redactor com seu arquivo.
      2. Escolha como a redacção deve funcionar.
      3. Selecione o texto a ser ocultado e a cor de sobreposição.
      4. Aplique a redacção e salve o arquivo.
   
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
        // Cobrir texto com sobreposições em DOCX

        // Crie um Redactor e carregue seu documento
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Escolha as opções de redacção
            // Escolha texto e cor
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Salve a versão redigida
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas de Redacção para Uso Diário"
  description: "GroupDocs.Redaction for Java oferece opções simples para ocultar detalhes sensíveis em documentos enquanto os mantém utilizáveis."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opções de redacção fáceis"
  features:
    # feature loop
    - title: "Encontrar e alterar texto"
      content: "Oculte ou substitua palavras em segundos."

    # feature loop
    - title: "Bloquear partes de imagens"
      content: "Máscara seções de fotos ou conteúdo escaneado."

    # feature loop
    - title: "Apagar informações de fundo"
      content: "Remover metadados ocultos como autoria ou datas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar Texto com Regex e Ocultá-lo"
      content: |
        Use correspondência de padrão para ocultar automaticamente frases-chave
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o documento que você deseja redigir
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Defina o padrão regex e o estilo da sobreposição
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplique a lógica de redacção
              redactor.apply(redaction);

              // Salve seu documento limpo
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
    title: "Redija Arquivos DOCX Usando Java"
    exclude: "DOCX"
    description: "Proteja conteúdo sensível em DOCX ocultando ou removendo-o utilizando as ferramentas do Java."
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