
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ซ่อนข้อความใน DOCX ด้วยการทับซ้อนสีด้วย Python"
head_description: "ปกป้องข้อความที่ละเอียดอ่อนในไฟล์ DOCX ด้วย GroupDocs.Redaction for Python via .NET เพิ่มการทับซ้อนรูปสี่เหลี่ยมโดยไม่เปลี่ยนแปลงเลย์เอาต์ของคุณ"

############################# Header ############################
title: "ซ่อนเนื้อหาใน DOCX โดยใช้ Python" 
description: "ใช้ Python เพื่อปกคลุมเนื้อหาส่วนตัวในไฟล์ DOCX เหมาะสำหรับเอกสารทางกฎหมาย ข้อมูลส่วนบุคคล หรือธุรกิจ"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET คืออะไร?"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ช่วยให้นักพัฒนา Python สามารถซ่อนหรือเอาเนื้อหาส่วนตัวออกในไฟล์ DOCX คุณสามารถปกปิดข้อความ ภาพ และแม้แต่เมตาดาทาที่ซ่อนอยู่ได้

############################# Steps ############################
steps:
    enable: true
    title: "เก็บข้อมูลส่วนตัวให้ซ่อนใน Docx"
    content: |
      ด้วย GroupDocs.Redaction for Python via .NET นักพัฒนา Python via .NET สามารถซ่อนเนื้อหาได้ในไม่กี่บรรทัด
      
      1. สร้าง Redactor และเปิดไฟล์ของคุณ
      2. เลือกการตั้งค่าการแก้ไขของคุณ
      3. ป้อนข้อความที่จะซ่อนและเลือกสี
      4. ใช้และบันทึกเวอร์ชันที่ถูกแก้ไขแล้ว
   
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

        # ซ่อนเนื้อหาใน DOCX โดยใช้การทับซ้อน

        # กำหนดค่าตัวเลือกการแก้ไขของคุณ
        # กำหนดข้อความและสีการทับซ้อน
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ตั้งค่า Redactor และโหลดไฟล์ของคุณ
        with gr.Redactor("input.docx") as redactor:

            # แก้ไขและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการแก้ไขเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET รองรับไฟล์หลายประเภทเพื่อให้คุณสามารถปกป้องเนื้อหาใด ๆ ได้โดยง่าย"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์การแก้ไขในตัว"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาคำหลักและซ่อนหรือแทนที่ได้อย่างรวดเร็ว"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "บล็อกพื้นที่ที่ละเอียดอ่อนในหน้าที่สแกนหรือภาพถ่าย"

    # feature loop
    - title: "ทำความสะอาดเมตาดาทา"
      content: "ลบข้อมูลที่ซ่อนซึ่งอาจเปิดเผยรายละเอียด"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ค้นหาข้อความด้วย Regex และทำการแก้ไข"
      content: |
        เรียนรู้วิธีการใช้ Regular Expressions เพื่อค้นหาและซ่อนข้อความ
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าแพทเทิร์นและสี
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # เปิดไฟล์เพื่อให้แก้ไข
          with gr.Redactor("source.docx") as redactor:

              # ดำเนินการแก้ไข
              result = redactor.apply(redaction)

              # บันทึกเอกสารที่สะอาด
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
    title: "รักษาความปลอดภัยไฟล์ DOCX ด้วย Python"
    exclude: "DOCX"
    description: "ปกคลุมหรือเอาข้อมูลที่ละเอียดอ่อนออกในเอกสาร DOCX โดยใช้เครื่องมือที่ง่ายจาก Python"
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