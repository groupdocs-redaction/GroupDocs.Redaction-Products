
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cobrir Texto em EXCEL com Sobreposições e Java"
head_description: "Proteja conteúdo sensível em arquivos EXCEL aplicando sobreposições coloridas usando GroupDocs.Redaction for Java. Mantenha a formatação do documento intacta."

############################# Header ############################
title: "Redigir Dados EXCEL com Sobreposições em Java" 
description: "Use código Java para mascarar informações sensíveis em planilhas EXCEL. Uma maneira eficaz de manter dados privados."
subtitle: "Principais Recursos do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Por Que Escolher GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java é projetado para desenvolvedores Java que desejam ocultar ou limpar conteúdo em planilhas EXCEL rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Informações em Planilhas Excel"
    content: |
      GroupDocs.Redaction for Java ajuda desenvolvedores de Java a proteger arquivos ocultando informações privadas em apenas algumas linhas.
      
      1. Inicie um Redactor e carregue sua planilha.
      2. Defina as regras de redacção conforme necessário.
      3. Escolha o texto e a cor da sobreposição.
      4. Aplique e salve o arquivo.
   
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
        // Use sobreposições para ocultar texto em EXCEL

        // Crie um Redactor e carregue seu arquivo
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Escolha regras de redacção
            // Digite o que ocultar e escolha uma cor
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique a redacção e salve o arquivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Essenciais de Proteção de Dados"
  description: "Oculte ou delete informações sensíveis de suas planilhas sem quebrar layout ou significado usando GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Projetado para limpeza segura de dados"
  features:
    # feature loop
    - title: "Editar ou ocultar texto"
      content: "Encontre e bloqueie qualquer texto que precise de proteção."

    # feature loop
    - title: "Cobrir visuais sensíveis"
      content: "Aplique blocos coloridos sobre áreas de gráficos ou imagens."

    # feature loop
    - title: "Remover metadados"
      content: "Apague histórico de documentos, nomes de autor ou timestamps."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacção com Regex"
      content: |
        Use regex para encontrar e ocultar texto automaticamente
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra sua planilha
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Defina o padrão e os detalhes da sobreposição
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplique a redacção
              redactor.apply(redaction);

              // Salve a versão limpa
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
    title: "Redigir Folhas EXCEL com Java"
    exclude: "EXCEL"
    description: "Oculte ou limpe dados sensíveis em EXCEL usando sobreposições e ferramentas do Java."
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