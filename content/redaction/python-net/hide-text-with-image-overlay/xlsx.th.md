
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ซ่อนข้อความใน XLSX ด้วย Python และการทับซ้อน"
head_description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณซ่อนข้อความในไฟล์ XLSX โดยการเพิ่มการทับซ้อนสี เก็บข้อมูลของคุณเป็นส่วนตัวโดยไม่ทำให้เลย์เอาต์ของไฟล์เปลี่ยนแปลง"

############################# Header ############################
title: "ปกปิดข้อความในไฟล์ XLSX โดยใช้การทับซ้อนของ Python" 
description: "ปกป้องข้อความที่ละเอียดอ่อนในไฟล์ XLSX ของคุณด้วย GroupDocs.Redaction for Python via .NET และ Python โดยการวางการทับซ้อนแบบง่ายๆ"
subtitle: "สิ่งที่คุณจะได้รับจาก GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "สิ่งที่ GroupDocs.Redaction for Python via .NET สามารถทำได้"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการซ่อนหรือเอาข้อความ ภาพ และอื่น ๆ ในไฟล์ XLSX

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลในไฟล์ Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้ผู้พัฒนา Python via .NET สามารถซ่อนข้อมูลส่วนตัวได้เพียงไม่กี่บรรทัด
      
      1. เริ่มต้นด้วยการสร้าง Redactor และโหลดไฟล์ Xlsx ของคุณ
      2. ตั้งค่าตัวเลือกการแก้ไขที่เหมาะสมกับกรณีของคุณ
      3. เพิ่มข้อความที่คุณต้องการซ่อนและเลือกสี
      4. ทำการแก้ไขและบันทึกไฟล์ของคุณ
   
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

        # ซ่อนเนื้อหาส่วนตัวใน XLSX โดยการทับซ้อน

        # ตั้งค่าตัวเลือกการแก้ไข
        # เลือกข้อความที่จะปิดบังและสีการทับซ้อน
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ใช้ Redactor เพื่อโหลดไฟล์ของคุณ
        with gr.Redactor("input.xlsx") as redactor:

            # ดำเนินการแก้ไขและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการแก้ไขที่มีประโยชน์"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณซ่อนหรือเอาเนื้อหาออกจากหลายประเภทของไฟล์ เก็บข้อมูลส่วนตัวหรือธุรกิจให้ปลอดภัย"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ตัวเลือกการแก้ไขที่ใช้งานง่าย"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาข้อความเฉพาะและแทนที่หรือลบออก"

    # feature loop
    - title: "ปกปิดเนื้อหาภาพ"
      content: "วาดการทับซ้อนเพื่อบล็อกพื้นที่ที่ละเอียดอ่อนในรูปภาพ"

    # feature loop
    - title: "ลบเมตาดาทา"
      content: "ทำความสะอาดข้อมูลพื้นหลังก่อนที่จะแบ่งปันไฟล์ของคุณ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อความโดยใช้ regex patterns"
      content: |
        ตัวอย่างนี้แสดงให้เห็นถึงวิธีการค้นหาและซ่อนเนื้อหาผ่าน Regular Expressions
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าแพทเทิร์นข้อความและสีการทับซ้อน
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # เปิดไฟล์ที่คุณต้องการแก้ไข
          with gr.Redactor("source.xlsx") as redactor:

              # ใช้กฎการแก้ไข
              result = redactor.apply(redaction)

              # บันทึกเวอร์ชันที่ถูกแก้ไขแล้ว
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
    title: "ซ่อนข้อมูลใน XLSX ด้วยการลบ Python"
    exclude: "XLSX"
    description: "ใช้เครื่องมือ Python เพื่อซ่อนหรือเอาเนื้อหาที่ละเอียดอ่อนออกจากไฟล์ XLSX อย่างรวดเร็ว"
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