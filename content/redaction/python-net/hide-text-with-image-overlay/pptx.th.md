
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ซ่อนข้อความใน PPTX โดยใช้ Python และการทับซ้อน"
head_description: "ปกปิดเนื้อหาที่ละเอียดอ่อนในไฟล์ PPTX ของคุณด้วยการทับซ้อนสีโดยใช้ GroupDocs.Redaction for Python via .NET รูปแบบการจัดวางของคุณยังคงเหมือนเดิม"

############################# Header ############################
title: "ปกป้องข้อความในไฟล์ PPTX ด้วยการทับซ้อนและ Python" 
description: "ใช้ GroupDocs.Redaction for Python via .NET และ Python เพื่อซ่อนข้อมูลส่วนตัวในงานนำเสนอ PPTX ของคุณโดยการคลุมด้วยสี"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "สิ่งที่ GroupDocs.Redaction for Python via .NET มอบให้"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       ด้วย GroupDocs.Redaction for Python via .NET นักพัฒนา Python สามารถปกปิดหรือลบเนื้อหาในไฟล์ PPTX ได้ ตั้งแต่ข้อความไปจนถึงภาพและข้อมูลที่ซ่อนอยู่

############################# Steps ############################
steps:
    enable: true
    title: "แก้ไขข้อมูลส่วนตัวในไฟล์ Pptx"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET เพื่อปกป้องงานนำเสนอของคุณในไม่กี่ขั้นตอนง่าย ๆ
      
      1. สร้าง Redactor และโหลดไฟล์ที่คุณต้องการแก้ไข
      2. เลือกการตั้งค่าการแก้ไขที่ตรงกับความต้องการของคุณ
      3. ตั้งค่าแพทเทิร์นข้อความและเลือกสีสำหรับการทับซ้อน
      4. ดำเนินการแก้ไขและบันทึกการเปลี่ยนแปลง
   
    code:
      platform: "python-net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # ใช้การทับซ้อนเพื่อซ่อนข้อความใน PPTX

        # กำหนดการตั้งค่าการแก้ไข
        # เลือกข้อความและสี
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # เริ่มต้นด้วยการโหลดไฟล์ของคุณด้วย Redactor
        with gr.Redactor("input.pptx") as redactor:

            # ดำเนินการแก้ไขและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ทางเลือกในการปกปิดข้อมูลเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้คุณซ่อนหรือทำความสะอาดข้อมูลในรูปแบบไฟล์ต่าง ๆ โดยไม่แตะต้องการจัดวาง"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์ที่เป็นประโยชน์สำหรับความเป็นส่วนตัว"
  features:
    # feature loop
    - title: "เปลี่ยนหรือซ่อนข้อความ"
      content: "ปกป้องข้อมูลที่ละเอียดอ่อนโดยการแก้ไขหรือซ่อนข้อความ"

    # feature loop
    - title: "ปกปิดภาพหรือพื้นที่"
      content: "วาดการทับซ้อนเพื่อบล็อกภาพที่เต็มหรือพื้นที่ที่เลือก"

    # feature loop
    - title: "ลบรายละเอียดที่ซ่อนอยู่"
      content: "ลบข้อมูลเมตาที่อาจรวมถึงข้อมูลส่วนบุคคลหรือระบบ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regex เพื่อค้นหาข้อความ"
      content: |
        ดูว่า Regular Expressions ช่วยให้คุณค้นหาและซ่อนเนื้อหาได้อย่างไร
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # กำหนดแพทเทิร์นและสีการทับซ้อน
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # เปิดไฟล์ PPTX ของคุณ
          with gr.Redactor("source.pptx") as redactor:

              # ทำการแก้ไข
              result = redactor.apply(redaction)

              # บันทึกเวอร์ชันที่แก้ไขแล้ว
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "คัดลอก"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปกป้องสไลด์ PPTX โดยใช้ Python"
    exclude: "PPTX"
    description: "ใช้ Python เพื่อปกคลุมหรือเอาเนื้อหาที่ละเอียดอ่อนออกจากไฟล์ PPTX โดยยังคงให้สไลด์ดูสะอาด"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---