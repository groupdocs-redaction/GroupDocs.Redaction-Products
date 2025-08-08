
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remova Texto Privado de DOCX com Java"
head_description: "Garanta a segurança do conteúdo nos seus arquivos DOCX usando GroupDocs.Redaction for Java. Redação rápida e eficaz para texto, imagens e metadados."

############################# Header ############################
title: "Editar ou Remover Texto em Documentos DOCX Usando Java" 
description: "Proteja conteúdo pessoal ou comercial em seus arquivos DOCX com Java e GroupDocs.Redaction for Java."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ajuda desenvolvedores Java a limpar e redigir arquivos DOCX. Remova texto, imagens, comentários e dados ocultos de maneira eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Conteúdo em Arquivos Docx"
    content: |
      Use GroupDocs.Redaction for Java em seus projetos Java para limpar arquivos antes de compartilhar.
      
      1. Crie um Redactor e carregue o arquivo.
      2. Escolha suas opções de redação.
      3. Digite o texto a ser pesquisado e sua substituição.
      4. Aplique as redações e salve o arquivo.
   
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
        // Redigir conteúdo em um arquivo DOCX

        // Carregue o documento usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Defina as opções de redação
            // Defina o que buscar e substituir
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique a redação e salve
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Opções de Redação"
  description: "GroupDocs.Redaction for Java permite a limpeza de conteúdo sensível de muitos tipos de arquivo. Mantenha seus documentos seguros sem perder a estrutura."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas para remoção de conteúdo"
  features:
    # feature loop
    - title: "Substituir texto"
      content: "Encontre conteúdo específico e substitua em todo o documento."

    # feature loop
    - title: "Ocultar imagens ou partes"
      content: "Cubra visuais sensíveis com sobreposições coloridas."

    # feature loop
    - title: "Remover dados ocultos"
      content: "Limpe metadados como nomes de autores, carimbos de data ou propriedades do documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redação Baseada em Regex"
      content: |
        Use expressões regulares para detectar e redigir padrões como números de telefone ou emails.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Defina um padrão de regex EMAIL e texto de substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Execute a redação
              redactor.apply(redaction);

              // Salve o arquivo limpo
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Limpar Arquivos DOCX com Java"
    exclude: "DOCX"
    description: "Redija ou substitua conteúdo sensível em documentos DOCX usando as ferramentas fornecidas pelo Java."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---