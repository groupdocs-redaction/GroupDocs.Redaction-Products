
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนภาพใน DOCX ด้วย Overlay ใช้งาน Java"
head_description: "ด้วย GroupDocs.Redaction for Java คุณสามารถซ่อนภาพที่ละเอียดอ่อนในไฟล์ DOCX โดยการใช้ Overlay สีที่ซ่อนไว้ ปกป้องข้อมูลส่วนตัวในขณะที่ไม่เปลี่ยนการจัดรูปแบบเอกสาร"

############################# Header ############################
title: "ซ่อนภาพลับในเอกสาร DOCX ด้วย Overlay ใช้งาน Java" 
description: "ปกป้องข้อมูลธุรกิจและส่วนตัวในไฟล์ DOCX โดยใช้ Java เครื่องมือของเราช่วยให้คุณสามารถรักษาข้อมูลที่ละเอียดอ่อนได้อย่างปลอดภัยและเอกสารของคุณให้สะอาด"
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือที่จำเป็นแก่นักพัฒนา Java ในการซ่อนหรือการลบเนื้อหาในไฟล์ DOCX ปกป้องข้อความ ภาพ และ Metadata ในหลายๆ รูปแบบเอกสาร

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยข้อมูลในเอกสาร Docx"
    content: |
      GroupDocs.Redaction for Java มอบความสามารถให้แอปของ Java ในการปรับแต่งเอกสาร ปกปิดเนื้อหาส่วนตัวอย่างรวดเร็วและมีประสิทธิภาพ
      
      1. สร้าง Redactor และกำหนดเส้นทางไปยังเอกสาร Docx ของคุณ
      2. ปรับตั้งค่าการปรับแต่งให้ตรงกับความต้องการของคุณ
      3. เลือกพื้นที่ของภาพที่ต้องการปกปิดและเลือกสี Overlay
      4. ดำเนินการกระบวนการปรับแต่งและบันทึกไฟล์
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
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
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ซ่อนพื้นที่ภาพที่ละเอียดอ่อนใน DOCX

        // โหลดเอกสารโดยใช้ Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // กำหนดสีและมิติของ Overlay
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // ทำเครื่องหมายพื้นที่ที่จะปรับแต่ง
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // ใช้ Overlay และบันทึกไฟล์
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนเนื้อหาที่ละเอียดอ่อนในไฟล์"
  description: "ด้วย GroupDocs.Redaction for Java คุณสามารถลบหรือซ่อนเนื้อหาได้จากหลายๆ รูปแบบไฟล์ รักษาความปลอดภัยให้กับเอกสารของคุณและทำให้มันอ่านง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "คุณสมบัติการปรับแต่งสำหรับเอกสาร"
  features:
    # feature loop
    - title: "แก้ไขข้อความในเอกสาร"
      content: "ค้นหาและแทนที่ข้อความที่ละเอียดอ่อนในไฟล์ของคุณ เพื่อรักษาความเป็นส่วนตัวของข้อมูล"

    # feature loop
    - title: "Overlay รูปภาพ"
      content: "ปกปิดภาพทั้งหมดหรือบางส่วนเพื่อซ่อนข้อมูลภาพที่ละเอียดอ่อน"

    # feature loop
    - title: "ลบ Metadata"
      content: "ทำความสะอาด Metadata ที่ซ่อนอยูในเอกสารเพื่อป้องกันการเปิดเผยข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Overlay เพื่อปกปิดข้อมูลที่ละเอียดอ่อน"
      content: |
        ตัวอย่างนี้แสดงวิธีการใช้ Overlay เพื่อปกปิดพื้นที่ภาพที่ละเอียดอ่อนในเอกสาร
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสารสำหรับการแก้ไข
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // กำหนดขนาดสีและตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // เลือกพื้นที่เป้าหมายในหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // นำ Overlay ไปปกปิดภาพ
              redactor.apply(redaction);

              // บันทึกเอกสารที่ถูกปรับแต่งแล้ว
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปรับแต่งไฟล์ DOCX ด้วย Java"
    exclude: "DOCX"
    description: "ใช้ Java เพื่อซ่อนหรือลบข้อมูลส่วนตัวในไฟล์ DOCX เหมาะสำหรับการรักษาความปลอดภัยให้กับเอกสารทางการและเอกสารที่เป็นความลับ"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---