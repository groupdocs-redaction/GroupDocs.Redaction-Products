
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Proteger Imagens em WORD com Sobreposições Usando Python"
head_description: "Cubra imagens sensíveis em arquivos WORD com GroupDocs.Redaction for Python via .NET. Aplique sobreposições para proteger dados privados enquanto preserva o layout do documento."

############################# Header ############################
title: "Cobrir Imagens Privadas em Arquivos WORD Usando Python" 
description: "Mantenha visuais pessoais e empresariais seguros em documentos WORD com Python. Ferramentas de redigação simples e rápidas em que você pode confiar."
subtitle: "Recursos Centrais do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python ferramentas simples para ocultar ou apagar conteúdo de arquivos WORD. Proteja texto sensível, imagens e metadados em diferentes formatos de documento.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Informações Sensíveis em Arquivos Word"
    content: |
      GroupDocs.Redaction for Python via .NET ajuda seus aplicativos Python via .NET a proteger documentos cobrindo conteúdo privado com sobreposições.
      
      1. Crie um objeto Redactor e carregue o arquivo Word.
      2. Ajuste as configurações de redigação conforme necessário.
      3. Selecione a área da imagem e configure a cor da sobreposição.
      4. Aplique a sobreposição e salve o arquivo redigido.
   
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
        import groupdocs.pydrawing as grd

        # Cobrir partes sensíveis de imagem em WORD

        # Especificar cor e tamanho da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Escolher área da imagem a ser ocultada
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carregar arquivo usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplicar e salvar o documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos Avançados de Redigação"
  description: "GroupDocs.Redaction for Python via .NET permite que você oculte ou exclua conteúdo sensível em vários formatos de documento. Mantenha arquivos limpos e seguros para compartilhamento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kit de Ferramentas de Redigação Completo"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Encontre texto sensível em documentos e substitua para garantir a privacidade."

    # feature loop
    - title: "Sobrepor Imagens"
      content: "Cubra áreas de imagem selecionadas ou visuais inteiros para ocultar informações privadas."

    # feature loop
    - title: "Remover Metadados"
      content: "Exclua metadados ocultos para evitar compartilhamento de dados invisíveis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cobrir Conteúdo de Imagem com Sobreposições"
      content: |
        Este exemplo mostra como ocultar imagens sensíveis em documentos usando sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina as dimensões, cor e localização da sobreposição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Selecione a área na primeira página para cobrir
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra o documento
          with gr.Redactor("source.docx") as redactor:

              # Aplique a redigação de sobreposição
              result = redactor.apply(redaction)

              # Salvar o documento atualizado
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Redigir Conteúdo em WORD Usando Python"
    exclude: "WORD"
    description: "Python permite que você oculte ou remova conteúdo sensível em arquivos WORD. Uma solução confiável para segurança de documentos."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---