Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32053212AF
	for <lists+usrp-users@lfdr.de>; Fri, 17 May 2019 05:58:50 +0200 (CEST)
Received: from [::1] (port=52686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRU1B-0003cl-6u; Thu, 16 May 2019 23:58:49 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:36450)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hRU0e-0003VG-58
 for usrp-users@lists.ettus.com; Thu, 16 May 2019 23:58:46 -0400
Received: by mail-qt1-f181.google.com with SMTP id a17so6572210qth.3
 for <usrp-users@lists.ettus.com>; Thu, 16 May 2019 20:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=TLvMM2iDSEg+dgEKmIRvO2P0EnT4gppegYcoOlz0fuE=;
 b=SiNtbIXwdDKulau0ryZRKyKMbgggthOnHXvHK/eJXywRHBBn7dEXIbmll4GknCueOu
 72fpy+xcH9qcEP2MjH7R7IT5bqyeR1yhGd3/FpaYe7oRM/hyyoP4DE2bwRHFDynWgQ8z
 3hru5WE/mDn8IK89QKoYyPxe9F2FmsodseL8hMBBKncVqUNpR5WUJfTQvpGPVaXJwlwj
 c9ldmqbpEA0IVr9PQoVWe04SJsYSkywkwNNu6KnkhGbedWPfP0a/c2AA3pJjuHqsJfnI
 NWouA8AMVhdp/bmr+GEnPKnBT05hAUb9DZvhP4U2H18XxGasaZMJi95Hp9u8g9hGP00F
 oQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=TLvMM2iDSEg+dgEKmIRvO2P0EnT4gppegYcoOlz0fuE=;
 b=JCjbSkME2UCC4SKfOVCrTgSBzkZPUJ5FwWfNAq03BRS/3TMb3YN9/R02oDsGz0bHwQ
 N6iOnI251lcnY80ZOHFWuyquabM9s+5w2gsUzDGAbEfOKIeTsD9958wst2B7Hb7tWLFB
 t95SWIGQnkfakBHSE794mhE3mlIAbDBDEsCp5xVIibhQDZ0GzHn3EV9HD9ozIfyITYV0
 MVL20izN83m0WYIsc7LW8f3gjDDRwcIKqJl31bxp8dpLMNRZdSKdDDhnUAzWV9cuHzjg
 iN0OuapxDYLNPUAZZJN4Wv2ayfhxFq3cu++HsM+Bz2MAScLVBUQ73nxqiE/Q2iYCm4hD
 f52Q==
X-Gm-Message-State: APjAAAXTPtzMmlS2uVhyLzb79vDwmWj3AxS04JglPLeO16JFwJGKbVdO
 o9EyQpoJr23+yvyJENxJJF4bRo9x
X-Google-Smtp-Source: APXvYqwBQI08Eg6fjzUU0pWM4YV9X8itjAeT+AW5CIFer/n0AdbDy2jZ1sdowTU761d5ZY9bF+mCfw==
X-Received: by 2002:a0c:9283:: with SMTP id b3mr5580620qvb.229.1558065455485; 
 Thu, 16 May 2019 20:57:35 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id 17sm3231288qkg.30.2019.05.16.20.57.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 20:57:35 -0700 (PDT)
Message-ID: <5CDE312E.8040807@gmail.com>
Date: Thu, 16 May 2019 23:57:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <PN1PR01MB072045AE1D08813B7F724638900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN1PR01MB072045AE1D08813B7F724638900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] problem with fftw_plan_dft_2d
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5025597193474826636=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============5025597193474826636==
Content-Type: multipart/alternative;
 boundary="------------020405090103080706070003"

This is a multi-part message in MIME format.
--------------020405090103080706070003
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/16/2019 11:52 PM, Koyel Das (Vehere) via USRP-users wrote:
>
> Hi,
>
>
> Following is a snapshot of my code using fftw_plan_dft_2d. I am 
> getting all zeros in the imaginary part of fft (in the printf command 
> of the following code:last line). The real part is correct.Could you 
> please tell where am I going wrong?
>
>
>  fftw_complex *imageOutputPlane=VDDSAlgorithm::imageOutPlane;
>
>     fftw_complex *imageInputPlane=VDDSAlgorithm::imageInputPlane;
>     unsigned char*imageData=VDDSAlgorithm::imageData;
>     unsigned char*imageDataFinal=VDDSAlgorithm::imageDataFinal;
>
> memset(imageInputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*sizeof(fftw_complex));
> memset(imageOutputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*sizeof(fftw_complex));
>     memset(imageData,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION);
>
>     for(size_t count=0;count<TOTAL_BASE_LINE;count++){
>  imageInputPlane[(int)round(IMAGE_DIMENSION/2+diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2-diffY[count])][0]=phy[count][0];
>  imageInputPlane[(int)round(IMAGE_DIMENSION/2+diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2-diffY[count])][1]=-(phy[count][1]);
>  imageInputPlane[(int)round(IMAGE_DIMENSION/2-diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2+diffY[count])][0]=phy[count][0];
>  imageInputPlane[(int)round(IMAGE_DIMENSION/2-diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2+diffY[count])][1]=phy[count][1];
>     }
>
>     fftLock.lock();
>     fftw_plan 
>  planeX=fftw_plan_dft_2d(IMAGE_DIMENSION,IMAGE_DIMENSION, 
> imageInputPlane, imageOutputPlane, FFTW_FORWARD, FFTW_ESTIMATE);
>     fftw_execute(planeX);
>     fftw_destroy_plan(planeX);
>     fftLock.unlock();
>
>
>     double max=0;
>     for(size_t row=0;row<IMAGE_DIMENSION;row++){
>         for(size_t col=0;col<IMAGE_DIMENSION;col++){
>             if(col==0)printf("\n");
>             if(col<100){
> printf("(%lf,%lf)",imageOutputPlane[row*IMAGE_DIMENSION+col][0],imageOutputPlane[row*IMAGE_DIMENSION+col][1]);
>             }
>         }
>     }
>
> Regards,
>
> Koyel Das
> Senior – Product Engineer
>
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: 
> www.vehere.com <http://www.vehere.com/>//
I'm having a hard time seeing how this is related to UHD and USRPs.

There's probably a support forum for FFTW out there that would be more 
helpful than here.



--------------020405090103080706070003
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/16/2019 11:52 PM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:PN1PR01MB072045AE1D08813B7F724638900B0@PN1PR01MB0720.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          Hi,</p>
        <p style="font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <br>
        </p>
        <p style="font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          Following is a snapshot of my code using <span
            style="font-family: Calibri, Arial, Helvetica, sans-serif,
            serif, EmojiFont;">fftw_plan_dft_2d</span>. I am getting all
          zeros in the imaginary part of fft (in the printf command of
          the following code:last line). The real part is correct.Could
          you please tell where am I going wrong?</p>
        <p style="font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <br>
        </p>
        <p style="font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <span style="font-family: Calibri, Arial, Helvetica,
            sans-serif, serif, EmojiFont;"> fftw_complex
            *imageOutputPlane=VDDSAlgorithm::imageOutPlane;<br>
          </span><span style="font-family: Calibri, Arial, Helvetica,
            sans-serif, serif, EmojiFont;"></span></p>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              fftw_complex
          *imageInputPlane=VDDSAlgorithm::imageInputPlane;<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              unsigned char*imageData=VDDSAlgorithm::imageData;<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              unsigned
          char*imageDataFinal=VDDSAlgorithm::imageDataFinal;<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
          <br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
             
memset(imageInputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*sizeof(fftw_complex));<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
             
memset(imageOutputPlane,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION*sizeof(fftw_complex));<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              memset(imageData,0x0,IMAGE_DIMENSION*IMAGE_DIMENSION);<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
          <br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              for(size_t count=0;count&lt;TOTAL_BASE_LINE;count++){<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
               
 imageInputPlane[(int)round(IMAGE_DIMENSION/2+diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2-diffY[count])][0]=phy[count][0];<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
               
 imageInputPlane[(int)round(IMAGE_DIMENSION/2+diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2-diffY[count])][1]=-(phy[count][1]);<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
               
 imageInputPlane[(int)round(IMAGE_DIMENSION/2-diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2+diffY[count])][0]=phy[count][0];<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
               
 imageInputPlane[(int)round(IMAGE_DIMENSION/2-diffX[count])*IMAGE_DIMENSION+(int)round(IMAGE_DIMENSION/2+diffY[count])][1]=phy[count][1];<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              }<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
          <br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              fftLock.lock();<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              fftw_plan
           planeX=fftw_plan_dft_2d(IMAGE_DIMENSION,IMAGE_DIMENSION,
          imageInputPlane, imageOutputPlane, FFTW_FORWARD,
          FFTW_ESTIMATE);<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              fftw_execute(planeX);<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              fftw_destroy_plan(planeX);<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              fftLock.unlock();<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
          <br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
          <br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              double max=0;<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              for(size_t row=0;row&lt;IMAGE_DIMENSION;row++){<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                  for(size_t col=0;col&lt;IMAGE_DIMENSION;col++){<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                      if(col==0)printf("\n");<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                      if(col&lt;100){<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                         
printf("(%lf,%lf)",imageOutputPlane[row*IMAGE_DIMENSION+col][0],imageOutputPlane[row*IMAGE_DIMENSION+col][1]);<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                      }<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                     </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
                  }<br>
        </div>
        <div style="font-size: 16px; font-family: Calibri, Arial,
          Helvetica, sans-serif, serif, EmojiFont;">
              }</div>
        <br>
        <p style="margin-top:0;margin-bottom:0">Regards,</p>
        <div id="Signature">
          <meta content="text/html; charset=UTF-8">
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size:
            12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica,
            sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;,
            &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
            Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
            <p
              style="font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple
              Color Emoji&quot;,&quot;Segoe UI
              Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
              Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;
              font-size:16px; line-height:16px">
              <font face="Tahoma,serif"><font style="font-size:9pt">Koyel
                  Das                                     <br>
                  Senior – Product Engineer</font></font></p>
            <font style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt">Vehere | Proactive Communications
                Intelligence &amp; Cyber Defence</font></font><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt"><br>
                M: +919051132173 | </font></font><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt">T: +91 33 40545454 | F: +91 33
                40545455 | W: <a moz-do-not-send="true"
                  href="http://www.vehere.com/" target="_blank"
                  rel="noopener noreferrer" id="LPNoLP">www.vehere.com</a></font></font><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt"><i></i></font></font><br>
          </div>
        </div>
      </div>
    </blockquote>
    I'm having a hard time seeing how this is related to UHD and USRPs.<br>
    <br>
    There's probably a support forum for FFTW out there that would be
    more helpful than here.<br>
    <br>
    <br>
  </body>
</html>

--------------020405090103080706070003--


--===============5025597193474826636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5025597193474826636==--

