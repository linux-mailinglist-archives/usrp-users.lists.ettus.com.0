Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0287382A3C4
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 23:03:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36E383852D8
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 17:03:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704924222; bh=EIA6GgbMUdYOQFSQDvLdoxmt5N0RX9Oa2rLx7jR3veA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=c+vWr49QXQg4dtDckRc/l4NduengQVBvaEQ3jpZivYAbij4SBolEV44Dx0gZaw1A/
	 FuvysHfGW5Idvaakk54mGtnmg25krxKLfKQsm6c9UWRnQkizhaVplVsEJPH48X0rlZ
	 ChqQS9RT0mqF9rUyOtU/wrlCvEMhxJz/blErdwixj6fcsGK1Xdncmm161xyBW5Fcn+
	 hIvW9LIVOzLJJYdX9tS9zwXxXGYexBITQ7i1tetyanTvxJfbDCH5gf333SBikf0EdY
	 62QcK77D0w0RloVu5pvggHTOFCzw7UqB+vwhw13ag3wr9KAsUNplgLFJeI7rvTir2K
	 WRyHHAd8Y8XvA==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 3687C38525D
	for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 17:03:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gEmYMsvh";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-783137d7fb4so322865485a.2
        for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 14:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704924185; x=1705528985; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SyeOjjDavP6z0h6VcgRNHtkknPtB8YayRWtWfbY3NiY=;
        b=gEmYMsvhWcNq+HbGCyT3b967TfCqZRlsFcUnHLp4n6WHxLtwPwNZ6ySwlLi2+2B2qR
         a/mZIGCkEyry3LnW8NWGZrrim7ryGFQM3M4o6yTyKrxG6XGlo1OZwQ4wXlk37M9TxMIN
         gb6eKwoXQPcUa4z1Z4YT1t6+mz/jsaxg6MyIqEWYLZrVT06S7NyqDS0rpePmJ1yUbjIS
         AA3fZR5uj2iDhbvF2MNpimdVzIE5epHQSVAPR1SZcqKYBgVBZuK0pQVqrGUXUYtQXa9O
         7928pj7fkUiHQe723nk1zO3Glv0u9GPMqX93Bapgx2cNydVFKVpdiZxpDE5h5xv2uBnt
         Ll3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704924185; x=1705528985;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SyeOjjDavP6z0h6VcgRNHtkknPtB8YayRWtWfbY3NiY=;
        b=CKObvqleAOg5k6uWo86ulRxeSMIm6dn6c7XRh9abWeNtdEeKJ6d8wMOzoDhl5G+89K
         6az+JBKGvaMWbCmKT7quUTWNzrWyd22nPt82WXvZ7bGJY18d35LwBDPZJFmR1s9i1RfN
         vwSQiTHzG1v/2GjGubgEEL5zLcKms3yzIr/klGQfNBIMGGK1oAeXJWrkBiqHpMVb/9B8
         0IjoRM9r1n7MWK+RskKF54aRl7HK17ASrlIhhruXCj9th5hec+yzG7SxGt8q9UviEsnt
         mxhEIwLLqdrL33nh4RNRDz97N7nVWd/lb9cYuamv48yCVJanF0JjqQaCsWTaUNohJpR8
         q11g==
X-Gm-Message-State: AOJu0YxOomFJMzkYiy6iPoWRHREYHFjudgC+o4TeF6k+hebElXk2Vjhi
	6O8zO8j2Y+wQgqifuTdtayI=
X-Google-Smtp-Source: AGHT+IGEsvMdG7nYR+6BoG10Rs5GlmswOE3xNWEDeMT052/nPVhJUyJLmU1lI7itZTzOW6XtDwbaGQ==
X-Received: by 2002:a05:6214:3f90:b0:67a:218c:efe0 with SMTP id ow16-20020a0562143f9000b0067a218cefe0mr200070qvb.20.1704924185160;
        Wed, 10 Jan 2024 14:03:05 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id u16-20020ad44990000000b0067f37d9196esm2007868qvx.93.2024.01.10.14.03.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 14:03:04 -0800 (PST)
Message-ID: <99ee9f2c-6b31-4faa-8560-3685517f42ce@gmail.com>
Date: Wed, 10 Jan 2024 17:02:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Jimenez, Samuel" <sjimenez@curtisswright.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <224b1c6c97e246349b3344c199353309@curtisswright.com>
 <a0aed50d-f79d-477f-9ab6-9e32eee251d2@gmail.com>
 <56f3ab9fb49d48f1ab5da7ccdad71f11@curtisswright.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <56f3ab9fb49d48f1ab5da7ccdad71f11@curtisswright.com>
Message-ID-Hash: GR2IRWVZI7KQA2BWVRSCW434X2FWOWIK
X-Message-ID-Hash: GR2IRWVZI7KQA2BWVRSCW434X2FWOWIK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Full Enclosed Serial Console [EXTERNAL]
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GR2IRWVZI7KQA2BWVRSCW434X2FWOWIK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2521567695285726671=="

This is a multi-part message in MIME format.
--===============2521567695285726671==
Content-Type: multipart/alternative;
 boundary="------------qsuhDWYJM1CZsWx8EgOcj6KN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qsuhDWYJM1CZsWx8EgOcj6KN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/01/2024 16:56, Jimenez, Samuel wrote:
>
> Hello and thank you for the prompt reply.
>
> I see ttyUSB0 and ttyUSB1 but they are pointing to =E2=80=9CDigilent=E2=
=80=9D ports as=20
> shown below.
>
> =E2=80=9C
>
> ls -l /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-i=
f0*
>
> lrwxrwxrwx 1 root root 13 Jan 10 16:49=20
> /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if00-po=
rt0=20
> -> ../../ttyUSB0
>
> lrwxrwxrwx 1 root root 13 Jan 10 16:49=20
> /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if01-po=
rt0=20
> -> ../../ttyUSB1
>
> =E2=80=9C
>
> I assume it should instead be something like=20
> =E2=80=9Cusb-Silicon_Labs_CP2105_Dual_USB_to_UART=E2=80=A6=E2=80=9D but=
 not sure.
>
> *Samuel Jimenez***
>
> Software Dev Engineer, Sr.
>
> *Curtiss-Wright*
>
> 20130 Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United States
>
> T: 703.840.6731
>
> sjimenez@curtisswright.com | www.curtisswrightds.com
>

See the documents here:

https://kb.ettus.com/E320_Getting_Started_Guide#Setting_up_a_Serial_Conso=
le_Connection

What does:

|ls -l /dev/serial/by-id

Return?


|
--------------qsuhDWYJM1CZsWx8EgOcj6KN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/01/2024 16:56, Jimenez, Samuel
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:56f3ab9fb49d48f1ab5da7ccdad71f11@curtisswright.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-ligatures:standardcontextual;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello and thank you for the prompt reply.<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I see ttyUSB0 and ttyUSB1 but they are
          pointing to =E2=80=9CDigilent=E2=80=9D ports as shown below.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=E2=80=9C<o:p></o:p></p>
        <p class=3D"MsoNormal">ls -l
          /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F=
-if0*<o:p></o:p></p>
        <p class=3D"MsoNormal">lrwxrwxrwx 1 root root 13 Jan 10 16:49
/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if00-port=
0
          -&gt; ../../ttyUSB0<o:p></o:p></p>
        <p class=3D"MsoNormal">lrwxrwxrwx 1 root root 13 Jan 10 16:49
/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if01-port=
0
          -&gt; ../../ttyUSB1<o:p></o:p></p>
        <p class=3D"MsoNormal">=E2=80=9C<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I assume it should instead be something
          like =E2=80=9Cusb-Silicon_Labs_CP2105_Dual_USB_to_UART=E2=80=A6=
=E2=80=9D but not sure.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Samuel
                Jimenez</span></b><b><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black;mso-ligatur=
es:none"><o:p></o:p></span></b></p>
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
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
sjimenez@curtisswright.com</a>
              |
              <a href=3D"www.curtisswrightds.com" moz-do-not-send=3D"true=
"
                class=3D"moz-txt-link-freetext">www.curtisswrightds.com</=
a></span><o:p></o:p></p>
        </div>
      </div>
    </blockquote>
    <br>
    See the documents here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/E320_Gett=
ing_Started_Guide#Setting_up_a_Serial_Console_Connection">https://kb.ettu=
s.com/E320_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection</=
a><br>
    <br>
    What does:<br>
    <br>
    <code>ls -l /dev/serial/by-id<br>
      <br>
      <font size=3D"5">Return?</font><br>
      <br>
      <br>
    </code>
  </body>
</html>

--------------qsuhDWYJM1CZsWx8EgOcj6KN--

--===============2521567695285726671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2521567695285726671==--
