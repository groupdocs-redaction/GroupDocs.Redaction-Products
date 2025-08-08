
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Proteger Texto em POWERPOINT com Sobreposições Java"
head_description: "Com GroupDocs.Redaction for Java, você pode bloquear texto privado em slides POWERPOINT usando caixas de sobreposição simples—sem mudar o layout."

############################# Header ############################
title: "Ocultar Texto em POWERPOINT Usando Sobreposições e Java" 
description: "Use Java e GroupDocs.Redaction for Java para manter seus slides POWERPOINT seguros ao mascarar conteúdo sensível."
subtitle: "Dentro do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ajuda desenvolvedores Java a limpar slides POWERPOINT ao bloquear ou excluir conteúdo sensível como texto, metadados ou imagens.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Apresentações Powerpoint Antes de Compartilhar"
    content: |
      Use GroupDocs.Redaction for Java em aplicativos Java para ocultar ou remover partes sensíveis de seus slides.
      
      1. Crie um novo Redactor com o caminho do seu conjunto de slides.
      2. Defina suas preferências de redacção.
      3. Defina o padrão de texto e a cor da sobreposição.
      4. Execute e salve o arquivo redigido.
   
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
        // Sobreponha áreas de texto em POWERPOINT

        // Abra o arquivo com Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Ajuste as configurações de redacção
            // Digite o texto e escolha a cor da sobreposição
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redija e salve o arquivo atualizado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redacção Simples para Slides Sensíveis"
  description: "GroupDocs.Redaction for Java torna fácil bloquear ou remover conteúdo de slides, independentemente do caso de uso."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Ferramentas de redacção que se adaptam"
  features:
    # feature loop
    - title: "Encontrar e substituir texto"
      content: "Proteja frases ou rótulos sensíveis em qualquer slide."

    # feature loop
    - title: "Cobrir partes de visuais"
      content: "Adicione sobreposições a áreas ou imagens selecionadas dos slides."

    # feature loop
    - title: "Remover conteúdo oculto"
      content: "Apague metadados de slides ou notas de revisão antes de compartilhar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex para Redacção de Texto"
      content: |
        Aprenda a detectar e redigir texto usando correspondência de padrão
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o conjunto de slides
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Aplique suas regras regex
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Execute a redacção
              redactor.apply(redaction);

              // Salve a versão final
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
    title: "Proteger Slides POWERPOINT com Java"
    exclude: "POWERPOINT"
    description: "Use redacção por sobreposição e ferramentas de limpeza do Java para manter seus slides POWERPOINT privados."
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