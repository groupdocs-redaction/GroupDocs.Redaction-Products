
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remova Texto Privado de POWERPOINT Usando Java"
head_description: "Proteja dados sensíveis em seus arquivos POWERPOINT usando GroupDocs.Redaction for Java e Java. Redação rápida e fácil."

############################# Header ############################
title: "Editar ou Ocultar Texto Sensível em Documentos POWERPOINT com Java" 
description: "Proteja conteúdo sensível em seus arquivos POWERPOINT usando Java e GroupDocs.Redaction for Java. Seja pessoal ou comercial, seus dados permanecem privados."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java tudo o que precisam para redigir conteúdo POWERPOINT. Limpe texto, imagens, anotações, comentários e metadados em tipos de arquivos populares.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Limpar Conteúdo em Documentos Powerpoint"
    content: |
      Use GroupDocs.Redaction for Java para remover ou cobrir conteúdo privado em seus aplicativos Java. Redação simples e rápida.
      
      1. Inicialize um Redactor e carregue seu arquivo Powerpoint.
      2. Defina as opções de redação necessárias.
      3. Especifique o texto para busca e o texto de substituição.
      4. Execute a redação e salve o arquivo.
   
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
        // Como redigir texto em um arquivo POWERPOINT

        // Carregue seu arquivo usando o construtor Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Defina suas preferências de redação
            // Escolha o que buscar e o que substituir
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique redações e salve o novo arquivo POWERPOINT
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Extras de Redação"
  description: "GroupDocs.Redaction for Java ajuda a remover ou ocultar conteúdo sensível em vários formatos de arquivo. Mantenha documentos limpos e seguros para compartilhar."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas e opções de redação"
  features:
    # feature loop
    - title: "Substituir texto confidencial"
      content: "Encontre e substitua texto correspondente em qualquer lugar no seu arquivo. Suporta regex e opções de busca inteligentes."

    # feature loop
    - title: "Ocultar imagens sensíveis"
      content: "Cubra imagens ou áreas específicas com sobreposições. Ajuste as configurações da página, cores e mais."

    # feature loop
    - title: "Limpar metadados ocultos"
      content: "Remova dados ocultos como autoria, carimbos de data ou comentários para proteger a privacidade."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redação Baseada em Padrões com Regex"
      content: |
        Use expressões regulares para pesquisar e redigir padrões de texto sensíveis como emails ou IDs.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o documento que você deseja limpar
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Defina um padrão de regex EMAIL e o texto a ser usado como substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique as regras de redação
              redactor.apply(redaction);

              // Salve o arquivo redigido final
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
    title: "Redigir Conteúdo em POWERPOINT Usando Java"
    exclude: "POWERPOINT"
    description: "Proteja dados oficiais e pessoais redigindo texto em arquivos POWERPOINT com ferramentas Java. Mantenha documentos seguros e privados."
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