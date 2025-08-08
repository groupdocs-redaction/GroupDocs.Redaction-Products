
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remova Texto Privado de XLSX com Java"
head_description: "Mantenha seus dados XLSX seguros redigindo texto e metadados usando GroupDocs.Redaction for Java. Proteção eficaz e simples."

############################# Header ############################
title: "Limpe Arquivos XLSX Usando Java" 
description: "Remova conteúdo sensível de arquivos XLSX com Java e GroupDocs.Redaction for Java. Mantenha suas planilhas seguras."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Por que Usar GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java ferramentas para limpar arquivos XLSX. Redija texto, metadados, imagens e mais com algumas linhas de código.

############################# Steps ############################
steps:
    enable: true
    title: "Redigir Dados de Arquivos Xlsx"
    content: |
      Use GroupDocs.Redaction for Java em qualquer aplicativo Java para remover texto ou conteúdo oculto antes de compartilhar.
      
      1. Crie uma instância de Redactor e carregue seu arquivo.
      2. Selecione as opções de redação desejadas.
      3. Escolha o texto a ser encontrado e sua substituição.
      4. Aplique a redação e salve seu documento.
   
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
        // Como redigir uma planilha XLSX

        // Crie um Redactor e carregue seu arquivo
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Escolha suas configurações de redação
            // Digite o texto de pesquisa e a substituição
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique as alterações e salve
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Úteis para Redação"
  description: "GroupDocs.Redaction for Java ajuda a remover conteúdo privado de vários arquivos. Limpe documentos sem perder formatação."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Proteção inteligente de conteúdo"
  features:
    # feature loop
    - title: "Pesquisar e substituir texto"
      content: "Encontre e atualize ou oculte dados sensíveis em células."

    # feature loop
    - title: "Cobrir visuais"
      content: "Oculte gráficos, imagens ou intervalos usando sobreposições coloridas."

    # feature loop
    - title: "Limpar metadados"
      content: "Remova informações do autor, datas de criação e outros dados em segundo plano."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redação Usando Regex"
      content: |
        Encontre e redija valores como números de contas ou padrões usando regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo para processamento
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Adicione uma regra de regex EMAIL e substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique as regras de redação
              redactor.apply(redaction);

              // Salve o arquivo atualizado
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
    title: "Redigir Conteúdo em XLSX com Java"
    exclude: "XLSX"
    description: "Limpe e proteja arquivos XLSX usando recursos do Java para redação e remoção de conteúdo."
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