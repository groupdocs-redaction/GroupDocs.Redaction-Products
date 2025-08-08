
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ป้องกันภาพที่มีความลับใน PDF ด้วย Overlay โดยใช้ Python"
head_description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถปกปิดภาพที่มีความลับในไฟล์ PDF โดยการเพิ่ม Overlay ปกป้องข้อมูลส่วนตัวโดยไม่เปลี่ยนแปลงเลย์เอาต์ของเอกสาร."

############################# Header ############################
title: "ปกปิดภาพในไฟล์ PDF ด้วย Overlay โดยใช้ Python" 
description: "เก็บรักษาภาพส่วนตัวและธุรกิจให้ปลอดภัยในไฟล์ PDF ด้วย Python เครื่องมือของเราทำให้การปกป้องข้อมูลเชื่อถือได้."
subtitle: "คุณสมบัติของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการปิดบังหรือลบเนื้อหาในไฟล์ PDF ปกปิดข้อความ, ภาพ, และ Metadata เพื่อปกป้องเอกสารในรูปแบบต่างๆ.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลที่มีความลับในไฟล์ Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET มอบความสามารถให้กับแอปพลิเคชัน Python via .NET ของคุณในการปกป้องเอกสาร ปกปิดเนื้อหาส่วนตัวด้วยการคลิกเพียงไม่กี่ครั้ง.
      
      1. สร้างวัตถุ Redactor และชี้ไปที่ไฟล์ Pdf.
      2. ปรับแต่งการตั้งค่าตามความต้องการในการปิดบังของคุณ.
      3. เลือกพื้นที่ของภาพที่จะปกคลุมและเลือกสี Overlay.
      4. ดำเนินการและบันทึกไฟล์ที่ผ่านการปกปิด.
   
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

        # ปกปิดภาพที่เป็นความลับใน PDF

        # ตั้งค่าสีและขนาดของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่ที่ต้องการปิดบัง
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # โหลดเอกสารโดยใช้ Redactor
        with gr.Redactor("input.pdf") as redactor:

            # นำ Overlay ไปใช้และบันทึกเอกสาร
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกปิดเนื้อหาที่มีความลับในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนหรือลบข้อมูลในรูปแบบไฟล์ต่างๆ ปกป้องข้อมูลที่เป็นความลับในขณะที่ยังคงเอกสารให้สะอาดและแชร์ได้."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ฟังก์ชันการปิดบังที่สำคัญ"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาและเปลี่ยนข้อความที่มีความลับในเอกสารของคุณเพื่อปกป้องข้อมูลส่วนตัว."

    # feature loop
    - title: "ปกคลุมพื้นที่ภาพ"
      content: "ใช้ Overlay ปกคลุมภาพหรือส่วนที่เลือกเพื่อซ่อนข้อมูลที่เป็นความลับ."

    # feature loop
    - title: "จัดการ Metadata"
      content: "ลบหรือแก้ไข Metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูลไม่พึงประสงค์."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีปกปิดข้อมูลภาพที่เป็นความลับในเอกสารโดยใช้ Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ปรับแต่งการตั้งค่า Overlay: ขนาด, สี, และตำแหน่ง
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่ของภาพในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # เปิดไฟล์สำหรับการปิดบัง
          with gr.Redactor("source.pdf") as redactor:

              # นำ Overlay ไปใช้เพื่อปกปิดภาพ
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ผ่านการปกปิด
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ปกป้องไฟล์ PDF ด้วย Python"
    exclude: "PDF"
    description: "ใช้ Python เพื่อซ่อนหรือลบข้อมูลที่เป็นความลับในไฟล์ PDF โซลูชันที่เหมาะสมในการรักษาความปลอดภัยให้กับเอกสารทางธุรกิจและส่วนตัว."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---