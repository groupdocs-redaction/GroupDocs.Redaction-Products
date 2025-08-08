
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redigir Texto em WORD Usando Sobreposições Java"
head_description: "Use GroupDocs.Redaction for Java para cobrir texto sensível em arquivos WORD com blocos de cor enquanto mantém a estrutura do documento inalterada."

############################# Header ############################
title: "Sobreposição de Redacção em Arquivos WORD com Java" 
description: "Oculte detalhes importantes em seus documentos WORD usando sobreposições coloridas alimentadas por Java e GroupDocs.Redaction for Java."
subtitle: "O Que GroupDocs.Redaction for Java Pode Fazer" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java dá aos usuários de Java controle total sobre a redacção de WORD. Oculte qualquer coisa que você desejar—texto, visuais ou metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Informações Privadas em Formato Word"
    content: |
      GroupDocs.Redaction for Java oferece aos desenvolvedores de Java maneiras rápidas de limpar arquivos e proteger seu conteúdo.
      
      1. Inicie um Redactor e carregue o arquivo Word.
      2. Escolha suas opções de redacção.
      3. Adicione padrão de texto e cor de sobreposição.
      4. Execute a redacção e salve o arquivo.
   
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
        // Ocultar texto usando sobreposições em WORD

        // Use Redactor para abrir o documento
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Defina preferências de redacção
            // Adicione palavras-chave e selecione a cor
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique e salve seu arquivo redigido
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Capacidades de Redacção"
  description: "Use GroupDocs.Redaction for Java para remover conteúdo visível e oculto de arquivos enquanto mantém o layout inalterado."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Saída simples e limpa"
  features:
    # feature loop
    - title: "Substituir texto"
      content: "Cubra palavras ou termos que não devem ser vistos."

    # feature loop
    - title: "Mascarar visuais"
      content: "Use sobreposições coloridas para ocultar imagens ou partes delas."

    # feature loop
    - title: "Apagar metadados"
      content: "Remover detalhes ocultos nas propriedades do arquivo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacção Baseada em Regex"
      content: |
        Aprenda a usar regex para ocultar automaticamente conteúdo específico
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o documento a ser redigido
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Defina seu padrão regex e a cor da sobreposição
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplique a redacção
              redactor.apply(redaction);

              // Salve sua versão limpa
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
    title: "Redigir Conteúdo em WORD com Java"
    exclude: "WORD"
    description: "Mantenha seus documentos WORD privados ocultando ou removendo dados sensíveis usando Java."
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