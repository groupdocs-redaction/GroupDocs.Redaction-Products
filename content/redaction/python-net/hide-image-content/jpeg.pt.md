
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Imagens Privadas em JPEG com Sobreposições Usando Python"
head_description: "Proteja seus arquivos JPEG adicionando sobreposições a imagens com GroupDocs.Redaction for Python via .NET. Proteja visuais sensíveis enquanto mantém o layout do documento inalterado."

############################# Header ############################
title: "Proteger Imagens Sensíveis em Arquivos JPEG com Sobreposições Usando Python" 
description: "Mantenha suas imagens seguras em arquivos JPEG usando Python. Ferramentas fáceis para ajudar você a proteger conteúdo privado em apenas alguns passos."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python ferramentas simples para ocultar ou apagar conteúdo em arquivos JPEG. Proteja texto sensível, imagens e metadados com confiança.

############################# Steps ############################
steps:
    enable: true
    title: "Manter Arquivos Jpeg Seguros"
    content: |
      GroupDocs.Redaction for Python via .NET permite que seus aplicativos Python via .NET cubram dados sensíveis de forma rápida e eficaz.
      
      1. Crie um objeto Redactor e especifique o caminho para o arquivo Jpeg.
      2. Defina as configurações de redigação conforme necessário.
      3. Marque a área da imagem e selecione a cor da sobreposição.
      4. Execute a redigação e salve o arquivo protegido.
   
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

        # Ocultar áreas de imagem em arquivos JPEG

        # Definir tamanho e cor da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Selecionar área a ser mascarada
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carregar arquivo pelo Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Aplicar sobreposição e salvar documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Conteúdo em Vários Documentos"
  description: "GroupDocs.Redaction for Python via .NET ajuda a ocultar ou excluir conteúdo sensível em múltiplos formatos de arquivo. Mantenha seus arquivos seguros e prontos para compartilhamento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas Ricas em Recursos de Redigação"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Procure texto privado em documentos e substitua para proteger seus dados."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Aplique sobreposições para esconder imagens ou seções selecionadas para proteger visuais sensíveis."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova metadados ocultos para evitar vazamentos acidentais de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Proteger Áreas de Imagem com Sobreposições"
      content: |
        Este exemplo orienta como cobrir partes de imagem sensíveis em um documento.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definir tamanho, cor e posição da sobreposição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Escolher uma área de imagem na página um
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carregar arquivo para edição
          with gr.Redactor("source.jpg") as redactor:

              # Aplicar sobreposição para ocultar a área
              result = redactor.apply(redaction)

              # Salvar o arquivo redigido
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
    title: "Proteger Arquivos JPEG com Ferramentas de Redigação do Python"
    exclude: "JPEG"
    description: "Com Python, você pode ocultar ou excluir dados privados em arquivos JPEG. Uma solução confiável para manter documentos profissionais e seguros."
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