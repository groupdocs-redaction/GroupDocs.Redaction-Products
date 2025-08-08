
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remova Texto Privado de PPTX Usando Java"
head_description: "Proteja detalhes sensíveis em suas apresentações PPTX com GroupDocs.Redaction for Java e Java. Redação fácil com resultados rápidos."

############################# Header ############################
title: "Limpe Texto em Arquivos PPTX com Java" 
description: "Use GroupDocs.Redaction for Java e Java para ocultar ou remover conteúdo em seus slides PPTX. Ótimo para uso comercial, legal ou pessoal."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores Java uma maneira sólida de editar ou ocultar conteúdo em arquivos PPTX. Trabalhe com texto, imagens, metadados e comentários com total controle.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Conteúdo em Apresentações Pptx"
    content: |
      Com GroupDocs.Redaction for Java, você pode limpar suas apresentações Java em algumas etapas rápidas.
      
      1. Crie um Redactor e carregue seu arquivo Pptx.
      2. Escolha as configurações de redação que atendem às suas necessidades.
      3. Defina o termo de pesquisa e o conteúdo de substituição.
      4. Aplique as alterações e salve seu arquivo atualizado.
   
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
        // Redigindo texto em uma apresentação PPTX

        // Carregue seu documento usando Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Defina as opções de redação
            // Escolha o texto a buscar e o que substituir
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redija e salve o arquivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas de Redação"
  description: "GroupDocs.Redaction for Java torna simples ocultar ou excluir conteúdo privado de uma ampla gama de arquivos. Perfeito para manter seus dados seguros antes de compartilhar."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opções para remover texto, imagens e metadados"
  features:
    # feature loop
    - title: "Substituir texto em qualquer lugar"
      content: "Pesquise e substitua palavras ou frases em todos os slides. Funciona com texto exato ou padrões."

    # feature loop
    - title: "Ocultar conteúdo visual"
      content: "Cubra partes de um slide ou imagem usando caixas de sobreposição na cor de sua escolha."

    # feature loop
    - title: "Remover metadados"
      content: "Exclua dados de fundo, como autor, data de criação ou notas que podem conter informações privadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redação Baseada em Regex"
      content: |
        Use expressões regulares para encontrar e remover padrões como emails, números de telefone ou códigos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra seu arquivo
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Adicione um padrão de regex EMAIL e a substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique a redação com base no padrão
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
    title: "Redigir Conteúdo em PPTX Usando Java"
    exclude: "PPTX"
    description: "Remova detalhes privados ou sensíveis de documentos PPTX usando Java. Um modo confiável de manter seus arquivos seguros."
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