
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Texto em Apresentações PPTX com Sobreposições Java"
head_description: "Use GroupDocs.Redaction for Java para bloquear conteúdo sensível em arquivos PPTX com sobreposições coloridas. Mantenha os slides intactos enquanto oculta informações-chave."

############################# Header ############################
title: "Mascarar Texto em Apresentações PPTX com Java" 
description: "Proteja facilmente detalhes pessoais ou empresariais em seus slides PPTX usando Java e GroupDocs.Redaction for Java."
subtitle: "Explore Recursos do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O Que GroupDocs.Redaction for Java Faz"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permite que desenvolvedores de Java ocultem ou removam texto, imagens ou metadados em apresentações PPTX em apenas alguns passos.

############################# Steps ############################
steps:
    enable: true
    title: "Redigir Conteúdo Privado em Slides Pptx"
    content: |
      GroupDocs.Redaction for Java torna a proteção de conteúdo simples para desenvolvedores de Java.
      
      1. Configure um Redactor com o caminho da sua apresentação.
      2. Escolha como a redacção deve se comportar.
      3. Adicione o padrão de texto e a cor da sobreposição.
      4. Redija o slide e salve-o.
   
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
        // Use sobreposições para bloquear texto em PPTX

        // Inicialize Redactor com sua apresentação
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Selecione suas preferências de redacção
            // Defina o texto e a cor da sobreposição
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Execute a redacção e salve o conjunto de slides
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas de Redacção Poderosas"
  description: "Com GroupDocs.Redaction for Java, bloqueie ou remova conteúdo sensível em suas apresentações sem alterar o layout ou a formatação."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Recursos que funcionam em todos os slides"
  features:
    # feature loop
    - title: "Oculte ou substitua texto"
      content: "Proteja nomes, termos ou notas que não devem ser vistas."

    # feature loop
    - title: "Cobrir áreas visuais"
      content: "Adicione sobreposições a fotos ou seções gráficas dos slides."

    # feature loop
    - title: "Limpar metadados"
      content: "Apague informações que podem revelar autoria ou histórico de edição."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir Texto com Regex"
      content: |
        Use expressões regulares para encontrar e cobrir palavras sensíveis
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo da apresentação
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Defina o padrão de pesquisa e a cor da sobreposição
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Execute as regras de redacção
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
    title: "Proteger Slides PPTX com Ferramentas Java"
    exclude: "PPTX"
    description: "Cubra conteúdo sensível ou remova-o completamente de apresentações PPTX usando os recursos de redacção Java."
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