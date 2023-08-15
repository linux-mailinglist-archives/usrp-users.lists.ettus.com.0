Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA0B77D3A3
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 21:52:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AB0C384A61
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 15:52:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692129146; bh=nHHXv0fWR3c7GIvH/yY5bw46eTiWCnSvpTlDbLMS3os=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GeBygD9ZPaFpQCVDe8RNVvy6TXmy3GT/lOe33xZR50eLlfFjZCUBvN+xVXtH4BEIV
	 zJY4KkT9IhjmxPhdz4FYZNySPF5vNiQxuJwnLDq5VsbhYT2yFykSmw/Wi5wlJOyvMg
	 zKHz9Vi9JB2BimC0mWTf7ady+KOZadpqEafQwVa26ztldkB3+V3FJWz3tddOB3s3XM
	 tVnlWSKq+5g0RaO/Ds1EP9z7Fw1vR4WwkShtNeEqDLwRyUw+2ofB6XJ2xhW1b7HS6e
	 8lHg420GhpqQ2UQOHt76h8njs29EAxPtH8MmhQVCZSrSop/Iy3aVt3uNO4LqtY2cr+
	 xgw67AooZm0qw==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 269FF380EE5
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 15:52:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rGI5TwZn";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-40fc670197aso30599041cf.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 12:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692129131; x=1692733931;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wBCUI90s5sojp0ejV1B+FCqY+ppcQdMX6EfzVkQlwGs=;
        b=rGI5TwZn2bBQl1Z8CSBXFd2/rvpQ/YxUWCGX0z8xCMDgTLzTcB3NuSlfDztQPT/sXc
         YqfPEEyJOsTw/x7Dx5No/BG4T6Tqpc++b+as5aUDAb/Cojkg+XAuw/zxJO550y9xTLWe
         M/Ez0wdqwXFmho/swTt1so9jiXsXSkWoZm7swIL/i3S1JJj94iyRVzlMMjfTtxRtnYb0
         7YVj2rFJz0xDcEckGzpYuzkeWnfYtEBSh3gWlMxFB10Zb2tZKN2j+O02O0JqtTv0gwMu
         u70wuiVl24tuAJyApuD8dEzWRKv1MWipvvicuibdVC2aDQWdMjP5L13lRoY1rgFxLLFM
         dD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692129131; x=1692733931;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wBCUI90s5sojp0ejV1B+FCqY+ppcQdMX6EfzVkQlwGs=;
        b=dic+bv9QFYV1I/d/Nw+B9vZ3IrM4KDf/DT8++bC+8dBgEbIc2sHU8H9dwgFiZyenvn
         wXFm6QfKUf1qS+UNSX3ChRiZ/fCL3nD92DOQ+ezjBirRoOURTaAiTeQg5CZhJz+cEAbK
         q7ElDGJAAa2i5lSfflmLzqTEm9V9Jx/Vo49sSpl2OBwIDf3lVFZU4ASSPSe9FADhmhlk
         4iO1lIrML5qgz6l54SX2CZAlRmdrUSbzvPdkEyvPbtWxWHEcNIXY6vAuxIio1e884nGZ
         qmyiM3ZGWYjZAKPPAVIyc0+yxMBBxEOjEwIIyHUhIpL8rUY8wfcp5k/nuQIkSyFTVZrR
         ugNQ==
X-Gm-Message-State: AOJu0Yw/duBntfnlC4/UkEu7fLc+5H4cd5G9IeukMvrq1zdplhrZC8rT
	yBrXG+BMK88PhG59o+2VkpOX5nGAsG8=
X-Google-Smtp-Source: AGHT+IG6lbgakgpEMcO9rG1NC+b2X1tkZqjczCB5qWY/mK/7YxUbrm/dXyfrJ4nDKQXHJfgNPVXuFw==
X-Received: by 2002:a05:622a:1802:b0:403:9e75:c9e1 with SMTP id t2-20020a05622a180200b004039e75c9e1mr3703707qtc.1.1692129131307;
        Tue, 15 Aug 2023 12:52:11 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h8-20020ac85148000000b0040ff387de83sm3998753qtn.45.2023.08.15.12.52.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 12:52:11 -0700 (PDT)
Message-ID: <683124aa-2b30-8397-d89b-9b103ff8f7c8@gmail.com>
Date: Tue, 15 Aug 2023 15:52:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <LV3P220MB1054879CBBCDC948F78CF922AE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LV3P220MB1054879CBBCDC948F78CF922AE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Message-ID-Hash: OX6PBFAIWEXKLROGB6OBOXYCVTPNYIOK
X-Message-ID-Hash: OX6PBFAIWEXKLROGB6OBOXYCVTPNYIOK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with FPGA update and running GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OX6PBFAIWEXKLROGB6OBOXYCVTPNYIOK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0514043959800346437=="

This is a multi-part message in MIME format.
--===============0514043959800346437==
Content-Type: multipart/alternative;
 boundary="------------bestlGtt0f4nBG7iszdqR2F0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bestlGtt0f4nBG7iszdqR2F0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/08/2023 15:48, Michelle Salehi wrote:
>
> Hi, the ettus x310 I am using ran fine 6 months ago.I just powered it=20
> on today and my computer was having problems connecting to it.It could=20
> ping and be seen in uhd_find_devices but got errors when I would do=20
> uhd_usrp_probe.So, I went through the steps of updating the FPGA.Now=20
> when I try and run my GNU Radio code, I get the following error even=20
> after I ran the uhd_images_downloader and "/usr/bin/uhd_image_loader"=20
> --args=3D"type=3Dx300,addr=3D192.168.40.2"=C2=A0 Any help would be appr=
eciated.=C2=A0=20
> Thank you!
>
>
> Michelle
>
> Executing: /usr/bin/python3 -u=20
> /home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio=20
> Files/awgnTwoChannels.py
>
>
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100;=20
> UHD_3.15.0.0-2build5
> [INFO] [X300] X300 initialization sequence...
> Traceback (most recent call last):
> =C2=A0 File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GN=
U=20
> Radio Files/awgnTwoChannels.py", line 466, in <module>
> =C2=A0 =C2=A0 main()
> =C2=A0 File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GN=
U=20
> Radio Files/awgnTwoChannels.py", line 444, in main
> =C2=A0 =C2=A0 tb =3D top_block_cls()
> =C2=A0 File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GN=
U=20
> Radio Files/awgnTwoChannels.py", line 142, in __init__
> =C2=A0 =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
> RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but=20
> got 39:
> The FPGA image on your device is not compatible with this host code bui=
ld.
> Download the appropriate FPGA images for this version of UHD.
> Please run:
>
> =C2=A0"/usr/lib/uhd/utils/uhd_images_downloader.py"
>
> Then burn a new image to the on-board flash storage of your
> USRP X3xx device using the image loader utility. Use this command:
>
> "/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2"
>
> For more information, refer to the UHD manual:
>
> http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
After running the image downloader/loader, and power-cycling the X310,=20
what does uhd_usrp_probe return?=C2=A0 Include all the
 =C2=A0 output, including the header that shows versions.


--------------bestlGtt0f4nBG7iszdqR2F0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/08/2023 15:48, Michelle Salehi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LV3P220MB1054879CBBCDC948F78CF922AE14A@LV3P220MB1054.NAMP220.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <p class=3D"x_MsoNormal x_elementToProof x_ContentPasted1
          ContentPasted0" style=3D"margin: 0in; font-size: 11pt;
          font-family: Calibri, sans-serif; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Hi, the ettus x310 I am using ran fine 6 months ago.<span
            style=3D"margin:0px" class=3D"ContentPasted0">=C2=A0<span
              class=3D"ContentPasted0">=C2=A0</span></span>I just powered=
 it on
          today and my computer was having problems connecting to it.<spa=
n
            style=3D"margin:0px" class=3D"ContentPasted0">=C2=A0<span
              class=3D"ContentPasted0">=C2=A0</span></span>It could ping =
and be
          seen in uhd_find_devices but got errors when I would do
          uhd_usrp_probe.<span style=3D"margin:0px" class=3D"ContentPaste=
d0">=C2=A0<span
              class=3D"ContentPasted0">=C2=A0</span></span>So, I went thr=
ough
          the steps of updating the FPGA.<span style=3D"margin:0px"
            class=3D"ContentPasted0">=C2=A0<span class=3D"ContentPasted0"=
>=C2=A0</span></span>Now
          when I try and run my GNU Radio code, I get the following
          error even after I ran the uhd_images_downloader and
          "/usr/bin/uhd_image_loader"
          --args=3D"type=3Dx300,addr=3D192.168.40.2"=C2=A0 Any help would=
 be
          appreciated.=C2=A0 Thank you!</p>
        <p class=3D"x_MsoNormal x_elementToProof x_ContentPasted1"
          style=3D"margin: 0in; font-size: 11pt; font-family: Calibri,
          sans-serif; color: rgb(36, 36, 36); background-color: rgb(255,
          255, 255);">
          <br class=3D"ContentPasted0">
        </p>
        <p class=3D"x_MsoNormal x_elementToProof x_ContentPasted1
          ContentPasted0" style=3D"margin: 0in; font-size: 11pt;
          font-family: Calibri, sans-serif; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Michelle<br class=3D"ContentPasted0">
        </p>
        <p class=3D"x_MsoNormal ContentPasted0" style=3D"margin: 0in;
          font-size: 11pt; font-family: Calibri, sans-serif; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          =C2=A0</p>
        <p class=3D"x_MsoNormal x_elementToProof x_ContentPasted0
          ContentPasted0" style=3D"margin: 0in; font-size: 11pt;
          font-family: Calibri, sans-serif; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Executing: /usr/bin/python3 -u
          /home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU
          Radio Files/awgnTwoChannels.py</p>
        <div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;,
          &quot;Segoe UI Web (West European)&quot;, &quot;Segoe
          UI&quot;, -apple-system, BlinkMacSystemFont, Roboto,
          &quot;Helvetica Neue&quot;, sans-serif; margin: 0px; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          <br class=3D"x_ContentPasted0 ContentPasted0">
        </div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          [INFO] [UHD] linux; GNU C++ version 9.2.1 20200304;
          Boost_107100; UHD_3.15.0.0-2build5</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          [INFO] [X300] X300 initialization sequence...</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Traceback (most recent call last):</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0 File <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:/=
home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNURadioFiles/awgnTw=
oChannels.py">"/home/msalehi@invariant-corp.net/Desktop/Freq Noise
          GUI/GNU Radio Files/awgnTwoChannels.py"</a>, line 466, in
          &lt;module&gt;</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0 =C2=A0 main()</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0 File <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:/=
home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNURadioFiles/awgnTw=
oChannels.py">"/home/msalehi@invariant-corp.net/Desktop/Freq Noise
          GUI/GNU Radio Files/awgnTwoChannels.py"</a>, line 444, in main<=
/div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0 =C2=A0 tb =3D top_block_cls()</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0 File <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:/=
home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNURadioFiles/awgnTw=
oChannels.py">"/home/msalehi@invariant-corp.net/Desktop/Freq Noise
          GUI/GNU Radio Files/awgnTwoChannels.py"</a>, line 142, in __ini=
t__</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0 =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          RuntimeError: RuntimeError: Expected FPGA compatibility number
          36, but got 39:</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          The FPGA image on your device is not compatible with this host
          code build.</div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Download the appropriate FPGA images for this version of UHD.</=
div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Please run:</div>
        <div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;,
          &quot;Segoe UI Web (West European)&quot;, &quot;Segoe
          UI&quot;, -apple-system, BlinkMacSystemFont, Roboto,
          &quot;Helvetica Neue&quot;, sans-serif; margin: 0px; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          <br class=3D"x_ContentPasted0 ContentPasted0">
        </div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          =C2=A0"/usr/lib/uhd/utils/uhd_images_downloader.py"</div>
        <div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;,
          &quot;Segoe UI Web (West European)&quot;, &quot;Segoe
          UI&quot;, -apple-system, BlinkMacSystemFont, Roboto,
          &quot;Helvetica Neue&quot;, sans-serif; margin: 0px; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          <br class=3D"x_ContentPasted0 ContentPasted0">
        </div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          Then burn a new image to the on-board flash storage of your</di=
v>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          USRP X3xx device using the image loader utility. Use this
          command:</div>
        <div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;,
          &quot;Segoe UI Web (West European)&quot;, &quot;Segoe
          UI&quot;, -apple-system, BlinkMacSystemFont, Roboto,
          &quot;Helvetica Neue&quot;, sans-serif; margin: 0px; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          <br class=3D"x_ContentPasted0 ContentPasted0">
        </div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          "/usr/bin/uhd_image_loader"
          --args=3D"type=3Dx300,addr=3D192.168.40.2"</div>
        <div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;,
          &quot;Segoe UI Web (West European)&quot;, &quot;Segoe
          UI&quot;, -apple-system, BlinkMacSystemFont, Roboto,
          &quot;Helvetica Neue&quot;, sans-serif; margin: 0px; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          <br class=3D"x_ContentPasted0 ContentPasted0">
        </div>
        <div class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-size=
:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">
          For more information, refer to the UHD manual:</div>
        <div style=3D"font-size: 15px; font-family: &quot;Segoe UI&quot;,
          &quot;Segoe UI Web (West European)&quot;, &quot;Segoe
          UI&quot;, -apple-system, BlinkMacSystemFont, Roboto,
          &quot;Helvetica Neue&quot;, sans-serif; margin: 0px; color:
          rgb(36, 36, 36); background-color: rgb(255, 255, 255);">
          <br class=3D"x_ContentPasted0 ContentPasted0">
        </div>
        <span class=3D"x_ContentPasted0 ContentPasted0" style=3D"font-siz=
e:
          15px; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web
          (West European)&quot;, &quot;Segoe UI&quot;, -apple-system,
          BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;,
          sans-serif; margin: 0px; color: rgb(36, 36, 36);
          background-color: rgb(255, 255, 255);">=C2=A0<a
            href=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x3x=
0_flash"
            id=3D"LPlnk919139" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">http://files.ettus.com/manual=
/page_usrp_x3x0.html#x3x0_flash</a></span><br>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    After running the image downloader/loader, and power-cycling the
    X310, what does uhd_usrp_probe return?=C2=A0 Include all the<br>
    =C2=A0 output, including the header that shows versions.<br>
    <br>
    <br>
  </body>
</html>

--------------bestlGtt0f4nBG7iszdqR2F0--

--===============0514043959800346437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0514043959800346437==--
