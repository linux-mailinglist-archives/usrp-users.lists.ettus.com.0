Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFCB82A384
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 22:46:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BB2E385593
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 16:46:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704923160; bh=eHBYu7E23lSdLFbeCx1R+b42GaWDEanRLFdKS2RVUgY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DHo5iBiE7YUsae6nHCZ6ddsIKRFHPcJkRZ1ttvRpv9+yv3gQOaZbVxGPSdjddZiKZ
	 HT3dI01QYDnnT3lv1Bgfgm+evos8fG1KjwBYxyDOP0E3q0I+n1Dy6UrllVL9cY9oof
	 WvYtM/hf7CS7usJXgN10cP/HU0CiZvt2mP/GlEx8enYcCC4cLRix1jRl2+3LfdCgxJ
	 nOQp5TVev4ZPp1+TTVolqHneIhfMw7BzTMlxJ0ze+iU+rBdtEJeE18/YGBxocmkr26
	 GCCHwtqD9ckXe7zQe8rX9AdyR1tnrTPzQ944csv7axCcDNHgsR6ei4ISqjeyq2fV5t
	 QRWGnHnwoESKQ==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 167D738550E
	for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 16:45:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eHhLlWs+";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-680a06cc763so30428786d6.1
        for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 13:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704923156; x=1705527956; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dzQPs6gPsWfKYHahdbMveBUn53ZNpltUIswnUm2c720=;
        b=eHhLlWs+GWs9CCeVlLj9MdoukWbmKFtOA+D3m43F29KmQsuKCh1EgbUdayEUbFiRCQ
         WlNi7Tcf2Gnbn6Um1ImcSLsJnMsa+vpWRwtqdb3k88QX5Nac1X7q9M/oFZXw7nXQRDYk
         FF+RrmbpGK7dbyld+MalShiibKjJS6fLid1UJ6meN4Y/778iCe8inEl1n2bZy5c3wRIl
         tW3JZWCY7Sfr0gWZeQKfZJCt1e/Aydt3Bv1imret3MayOi44ikmLuqmU9a8aRTQPhqAc
         NoJcnoMV4tbWozyNvQNyZpvWk99qWodiJXzP1br3oi0e5/hNLMgsbEEIt8Jn5nocEW1V
         533g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704923156; x=1705527956;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dzQPs6gPsWfKYHahdbMveBUn53ZNpltUIswnUm2c720=;
        b=hAyQHJEwtr9Wta3XFX2+0n+z4POdkuSdfa4FO9jfke71Wn4B79X3tSAelh97dvvCxT
         yfPYxRu3vCoAFNMse5x3wCgj15EM4sez0KDQRtR38tNRFX3YnCUovDBg6TZysNq5J7rZ
         me2X9IGuW7ia9jAwFVCSYpMSlu5vwptY/oOgJBQEqKOejUwKPS59gQUl9hvkPbHLJeNm
         7VN0QP+Ekf8oVo0NUL9LrMrrFy1tffoSLxOvyoBlcGbhwykp/M5z85McHkoCU7HoG86x
         gaIklID2WBK1L+ybJxFDxb/JRg07Y+TYlivjbH/5EcaQNjckmdcc6TpzCW0pH9brgWkc
         l5AA==
X-Gm-Message-State: AOJu0YwVjWyK23eDR0W8T1/RJ6uPVwCJxK59gwYsDXz33lWhGjEnct4W
	SEvF95Z4sXXFesP8n1yFA/MDMPKm6LI=
X-Google-Smtp-Source: AGHT+IHq3Kw5MUo4NnIFrEOf7vASndGxE8isezqXaNGizoTPPFYtpYhxwmPneb4qV28uqz4euZxAIw==
X-Received: by 2002:a05:6214:29c9:b0:67f:bd18:2eba with SMTP id gh9-20020a05621429c900b0067fbd182ebamr111576qvb.129.1704923156177;
        Wed, 10 Jan 2024 13:45:56 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id u9-20020a0ced29000000b00680b461ec99sm1976823qvq.109.2024.01.10.13.45.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 13:45:55 -0800 (PST)
Message-ID: <a0aed50d-f79d-477f-9ab6-9e32eee251d2@gmail.com>
Date: Wed, 10 Jan 2024 16:45:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <224b1c6c97e246349b3344c199353309@curtisswright.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <224b1c6c97e246349b3344c199353309@curtisswright.com>
Message-ID-Hash: 7XTFPYAAXNZ6GC2WP3NV6EY4RY374Z7Y
X-Message-ID-Hash: 7XTFPYAAXNZ6GC2WP3NV6EY4RY374Z7Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Full Enclosed Serial Console
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7XTFPYAAXNZ6GC2WP3NV6EY4RY374Z7Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8398838578729986100=="

This is a multi-part message in MIME format.
--===============8398838578729986100==
Content-Type: multipart/alternative;
 boundary="------------dI4emuYmh6uqvJKfAvPzowk7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dI4emuYmh6uqvJKfAvPzowk7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/01/2024 16:39, Jimenez, Samuel via USRP-users wrote:
>
> Hi,
>
> I have an Full Enclosed E320 and wish to access serial console to the=20
> STM32 microcontroller as well as the CPU. When I connect the USB-A to=20
> micro cable, I see the following in Linux (Ubuntu 16.04):
>
> /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if00-po=
rt0
>
> /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if01-po=
rt0
>
> I presume these are for FPGA access, as it=E2=80=99s supposed to show t=
he=20
> =E2=80=9Cusb-Silicon_Labs_CP2105=E2=80=A6=E2=80=9D for console access t=
o the MCU and CPU.=20
> Either way, I try to access them using the `screen` command as=20
> indicated by the manuals, but no luck.
>
> Is there any extra configuration to gain serial access to the MCU and=20
> CPU for the E320 Full Enclosure?
>
> Thank you,
>
> *Samuel Jimenez*
>
> Software Dev Engineer, Sr.
>
> *Curtiss-Wright*
>
> 20130 Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United States
>
> T: 703.840.6731
>
> sjimenez@curtisswright.com <mailto:sjimenez@curtisswright.com> |=20
> www.curtisswrightds.com <www.curtisswrightds.com>
>
> -----------------------------------------------------------------------=
-
> This e-mail and any files transmitted with it are proprietary and=20
> intended solely for the use of the individual or entity to whom they=20
> are addressed. If you have reason to believe that you have received=20
> this e-mail in error, please notify the sender and destroy this e-mail=20
> and any attached files. Please note that any views or opinions=20
> presented in this e-mail are solely those of the author and do not=20
> necessarily represent those of the Curtiss-Wright Corporation or any=20
> of its subsidiaries. Documents attached hereto may contain technology=20
> subject to government export regulations. Recipient is solely=20
> responsible for ensuring that any re-export, transfer or disclosure of=20
> this information is in accordance with applicable government export=20
> regulations. The recipient should check this e-mail and any=20
> attachments for the presence of viruses. Curtiss-Wright Corporation=20
> and its subsidiaries accept no liability for any damage caused by any=20
> virus transmitted by this e-mail.
>
> For information about how we process personal data and monitor=20
> communications, please visit=20
> https://www.curtisswright.com/privacy-notice/default.aspx
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
It should just "show up" as /dev/ttyUSBx, where x willl be 0 if you only=20
have one of it on the system, at least, that's what I recall.


--------------dI4emuYmh6uqvJKfAvPzowk7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/01/2024 16:39, Jimenez, Samuel
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:224b1c6c97e246349b3344c199353309@curtisswright.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I have an Full Enclosed E320 and wish to
          access serial console to the STM32 microcontroller as well as
          the CPU. When I connect the USB-A to micro cable, I see the
          following in Linux (Ubuntu 16.04):<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">/dev/serial/by-id/usb-Digilent_Digilent_US=
B_Device_2516351E882F-if00-port0<o:p></o:p></p>
        <p class=3D"MsoNormal">/dev/serial/by-id/usb-Digilent_Digilent_US=
B_Device_2516351E882F-if01-port0<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I presume these are for FPGA access, as
          it=E2=80=99s supposed to show the =E2=80=9Cusb-Silicon_Labs_CP2=
105=E2=80=A6=E2=80=9D for
          console access to the MCU and CPU. Either way, I try to access
          them using the `screen` command as indicated by the manuals,
          but no luck.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there any extra configuration to gain
          serial access to the MCU and CPU for the E320 Full Enclosure?<o=
:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Samuel
              Jimenez<span style=3D"mso-ligatures:none"><o:p></o:p></span=
></span></b></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Software
            Dev Engineer, Sr.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Curtiss-Wright<o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">20130
            Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United
            States<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">T:
            703.840.6731
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><a
              href=3D"mailto:sjimenez@curtisswright.com"
              moz-do-not-send=3D"true"><span style=3D"color:blue">sjimene=
z@curtisswright.com</span></a>
            |
            <a href=3D"www.curtisswrightds.com" moz-do-not-send=3D"true">=
<span
                style=3D"color:blue">www.curtisswrightds.com</span></a></=
span><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <hr>This e-mail and any files transmitted with it are proprietary
      and intended solely for the use of the individual or entity to
      whom they are addressed. If you have reason to believe that you
      have received this e-mail in error, please notify the sender and
      destroy this e-mail and any attached files. Please note that any
      views or opinions presented in this e-mail are solely those of the
      author and do not necessarily represent those of the
      Curtiss-Wright Corporation or any of its subsidiaries. Documents
      attached hereto may contain technology subject to government
      export regulations. Recipient is solely responsible for ensuring
      that any re-export, transfer or disclosure of this information is
      in accordance with applicable government export regulations. The
      recipient should check this e-mail and any attachments for the
      presence of viruses. Curtiss-Wright Corporation and its
      subsidiaries accept no liability for any damage caused by any
      virus transmitted by this e-mail.<br>
      <br>
      For information about how we process personal data and monitor
      communications, please visit
      <a class=3D"moz-txt-link-freetext" href=3D"https://www.curtisswrigh=
t.com/privacy-notice/default.aspx">https://www.curtisswright.com/privacy-=
notice/default.aspx</a><br>
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
    It should just "show up" as /dev/ttyUSBx, where x willl be 0 if you
    only have one of it on the system, at least, that's what I recall.<br=
>
    <br>
    <br>
  </body>
</html>

--------------dI4emuYmh6uqvJKfAvPzowk7--

--===============8398838578729986100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8398838578729986100==--
