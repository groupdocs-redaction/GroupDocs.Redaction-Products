
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpar Metadados em DOCX Usando Python"
head_description: "Use GroupDocs.Redaction for Python via .NET para eliminar detalhes ocultos em arquivos DOCX. Proteja seus dados removendo entradas de metadados sensíveis."

############################# Header ############################
title: "Apagar Metadados Ocultos de Arquivos DOCX com Python" 
description: "Com Python, você pode excluir metadados ocultos de arquivos DOCX usando GroupDocs.Redaction for Python via .NET. Mantenha seus arquivos limpos e privados."
subtitle: "Principais Recursos no GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos desenvolvedores Python a capacidade de eliminar dados ocultos em arquivos DOCX. Limpe texto, visuais e metadados facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Remover Metadados de Arquivos Docx"
    content: |
      GroupDocs.Redaction fornece aos seus aplicativos Python via .NET as ferramentas para excluir metadados rapidamente.
      
      1. Inicie um Redactor e carregue seu documento Docx.
      2. Configure os campos de metadados para remoção.
      3. Aplique redacção para limpar o conteúdo oculto.
      4. Salve a versão final do arquivo.
   
    code:
      platform: "python-net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Limpe os metadados em arquivos DOCX

        # Escolha as entradas de metadados para remover
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Use Redactor para abrir o documento
        with gr.Redactor("input.docx") as redactor:

            # Aplique a redacção e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Segurança em Cada Parte de um Documento"
  description: "Com GroupDocs.Redaction for Python via .NET, você pode limpar texto, imagens e metadados em vários formatos de arquivo. Ideal para privacidade e segurança."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Redacção de Documentos em Ação"
  features:
    # feature loop
    - title: "Removedor de Texto"
      content: "Encontre e exclua nomes, termos ou quaisquer palavras privadas."

    # feature loop
    - title: "Cobertura de Imagens"
      content: "Oculte partes de uma imagem colocando uma sobreposição colorida."

    # feature loop
    - title: "Remoção de Metadados"
      content: "Desfaça-se de informações de documentos ocultas, como detalhes de autor ou software."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemplo: Remover Metadados Ocultos"
      content: |
        Aqui está como você pode remover os campos Autor e Título de um documento DOCX usando redacção.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Escolha remover o campo Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Escolha remover o campo Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o arquivo DOCX
          with gr.Redactor("source.docx") as redactor:

              # Execute a redacção de metadados
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o arquivo limpo
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Copiar"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Excluir Metadados em DOCX com Python"
    exclude: "DOCX"
    description: "Remova metadados ocultos em arquivos DOCX usando Python. Ótimo para proteger seus arquivos antes de compartilhar ou arquivar."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---