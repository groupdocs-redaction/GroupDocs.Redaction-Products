
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ปกปิดภาพใน WORD ด้วย overlay โดยใช้ C#"
head_description: "ซ่อนพื้นที่ภาพที่มีความละเอียดอ่อนในไฟล์ WORD โดยใช้ GroupDocs.Redaction for .NET เพิ่ม overlay สีเพื่อปกป้องข้อมูลที่เป็นส่วนตัวโดยยังคงโครงร่างเอกสารอันเดิมไว้"

############################# Header ############################
title: "ซ่อนภาพส่วนตัวในไฟล์ WORD ด้วย overlay โดยใช้ .NET" 
description: "ใช้ C# ปกป้องข้อมูลส่วนบุคคลและข้อมูลทางธุรกิจในเอกสาร WORD บรรลุการปกป้องข้อมูลที่เชื่อถือได้ด้วยเครื่องมือที่ง่ายของเรา"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET เป็นเครื่องมือที่มีประสิทธิภาพสำหรับนักพัฒนาที่ใช้ C# ในการซ่อนหรือทำลายเนื้อหาในไฟล์ WORD ปกป้องเอกสารโดยการคลุมข้อความ, ภาพ, และ metadata อย่างมีประสิทธิภาพ

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลที่มีความละเอียดอ่อนในไฟล์ Word"
    content: |
      GroupDocs.Redaction for .NET ช่วยให้แอปพลิเคชัน .NET ของคุณซ่อนข้อมูลส่วนตัวในเอกสารได้อย่างรวดเร็ว
      
      1. สร้าง Redactor และระบุเส้นทางไฟล์ Word
      2. กำหนดค่าพารามิเตอร์การตัดให้เหมาะกับความต้องการของคุณ
      3. เลือกพื้นที่ภาพและกำหนดสี overlay
      4. ดำเนินการและบันทึกไฟล์ที่ถูกตัด
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ปิดบังภาพที่มีความละเอียดอ่อนใน WORD

        // โหลดไฟล์ผ่าน constructor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // กำหนดสีและขนาด overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่ที่ต้องการตัด
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay และบันทึกเอกสาร
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนหรือลบเนื้อหาในเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณซ่อนหรือลบข้อมูลในหลายรูปแบบไฟล์ รักษาความปลอดภัยข้อมูลส่วนตัวในขณะที่ยังคงความคล่องตัวในการใช้งาน"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการตัดที่ละเอียด"
  features:
    # feature loop
    - title: "แทนที่ข้อความได้ทุกที่"
      content: "ค้นหาและเปลี่ยนข้อความที่สำคัญในเอกสารของคุณเพื่อรักษาความปลอดภัยของข้อมูลส่วนตัว"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "เพิ่ม overlay ให้กับพื้นที่ภาพเฉพาะหรือภาพทั้งหมดเพื่อปิดบังข้อมูลที่เป็นส่วนตัว"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือตรวจสอบข้อผิดพลาดใน metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "เพิ่ม overlay เพื่อซ่อนเนื้อหาภาพ"
      content: |
        ตัวอย่างนี้แสดงถึงวิธีการปกป้องข้อมูลที่ละเอียดอ่อนในภาพเอกสารโดยการใช้ overlay
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสารสำหรับการแก้ไข
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // กำหนดขนาด, ตำแหน่ง, และสี overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // มุ่งหวังพื้นที่เฉพาะในหน้าแรก
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // นำ overlay ไปใช้
              redactor.Apply(redaction);

              // บันทึกการเปลี่ยนแปลงในไฟล์
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "รักษาเนื้อหา WORD ด้วยการตัดข้อมูล .NET"
    exclude: "WORD"
    description: ".NET ช่วยให้คุณสามารถซ่อนหรือลบเนื้อหาที่มีความละเอียดอ่อนในไฟล์ WORD เป็นวิธีที่เชื่อถือได้ในการรักษาความปลอดภัยของเอกสาร"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---