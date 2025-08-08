
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Excluir Metadados em PHOTO com Python"
head_description: "Com GroupDocs.Redaction for Python via .NET, você pode apagar dados ocultos de arquivos PHOTO e evitar vazar informações privadas."

############################# Header ############################
title: "Limpar Metadados de PHOTO Usando Python" 
description: "Proteja seus documentos PHOTO limpando informações ocultas com ferramentas Python fáceis de usar."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos usuários Python um meio de limpar arquivos removendo conteúdo oculto de texto, imagens e metadados em PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Excluir Metadados de Photo"
    content: |
      Use GroupDocs.Redaction em seu projeto Python via .NET para limpar os metadados dos documentos em apenas alguns passos.
      
      1. Configure um Redactor e abra seu arquivo Photo.
      2. Escolha quais campos de metadados excluir.
      3. Aplique a redacção para limpar o arquivo.
      4. Salve a versão final.
   
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

        # Apague metadados em documentos PHOTO

        # Escolha quais metadados redigir
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Use Redactor para abrir seu arquivo
        with gr.Redactor("input.jpeg") as redactor:

            # Execute e salve
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpe Arquivos Antes de Compartilhar"
  description: "GroupDocs.Redaction for Python via .NET ajuda a remover dados que não devem ser vistos. Exclua texto, imagens e detalhes ocultos em apenas alguns cliques."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos de Redacção Útil"
  features:
    # feature loop
    - title: "Remoção de Texto"
      content: "Encontre e exclua palavras, números ou padrões sensíveis."

    # feature loop
    - title: "Mascaramento de Imagens"
      content: "Cubra partes de imagens que contêm dados privados."

    # feature loop
    - title: "Limpeza de Metadados"
      content: "Exclua detalhes de arquivo como Autor, Título ou Comentários."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Metadados Específicos"
      content: |
        Siga este exemplo para excluir campos de Autor e Título em um documento PHOTO.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Direcione o campo do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Direcione o campo do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Carregue o arquivo no redactor
          with gr.Redactor("source.jpeg") as redactor:

              # Redija metadados selecionados
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o arquivo atualizado
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
    title: "Redigir Metadados de PHOTO com Python"
    exclude: "PHOTO"
    description: "Use Python para limpar metadados ocultos de arquivos PHOTO. Mantenha documentos limpos e seguros."
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