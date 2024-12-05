Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1D89E6143
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 00:26:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C54E38596F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 18:26:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733441177; bh=8wnkXVrJ22S2Ty7Ebr/4FuBJRzDHXkea+/MpOt4dt5k=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a8BDaoFyFXMa/Nuw4Xyo+FF23Hul+FovNGy3sKgTmA5Vmc0UdRTJ4L84gJzXm0wyb
	 ST7VORTgwMBLdjsJ8H8eqKvD20jfjhNUC3bbCDDLcXFpzViNYpc3dDjkjB7M1kNNCL
	 6JrdpHKmvUaCSP5pfG3DRcAeKC/tMZ4gbK9AS6JxfO+pfuAbYZ+BzuRG81IqB491b5
	 Hy4UIAXbPAQEYWcGkXsb29+eZVEBW6nmfOA51bMNL+2U6FvkDLKiGFs9hJpEUeOuLN
	 WkOyrx+50R37qYxiLhYX/imjA4V5epfbpQG+whIUbqIFJfUwRgkG8mz6w0om+uEYu2
	 sVQTU1O1+Q8fQ==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 46AEF385962
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 18:25:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gOwZFDEc";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6ef9b8b4f13so14940207b3.2
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 15:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733441143; x=1734045943; darn=lists.ettus.com;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2rgEWuNxz0GoVDPAOiwr+FyT5ZZ/nxVjNIY/5WmAkU=;
        b=gOwZFDEcCy0rLbAhfWVSAF+gpEoQvRAZXNINVp66z3DpCDjlAfvgNtywhhKKJTbSWw
         X/mhSwuLqybBZVhLwk1tVOWB/JGnWiWvzq51q09X0+3bnxBHwV84N2sIbhsi4yCpiGbX
         ek1Q6tA1JBm4eFN1PP1fA8JCFVq/QQwLk3So5T7ermZTYIg4IAqhqR3PfeBAW1M3TIWi
         heg/CulYHpQAZ1DTIqn78oEYixvQBXTDulPYLt6+HNAsPXfAj8irhYpJA3fd7uP5jYw2
         1CBsF60tsEMorx4GRCtd6UohbhU1DTd0UDwWB3dIq0R/jlY1Iv52sPKPsCHakQI9RPnG
         NUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733441143; x=1734045943;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e2rgEWuNxz0GoVDPAOiwr+FyT5ZZ/nxVjNIY/5WmAkU=;
        b=QxDmE6qOOEBwlsn7AaJRKUFElOv3QDu5G43Zka/1Fqyy5lxvc3kkSIvSyZWpHob5jR
         hJvlEtOBb7okGqCWqgZ8rExVNru+1bdUsxp+WS88whiFgPndSTmiFPJ2jcLNtfYT0qG0
         u7dSSXF4ffe/0mQNLikpGoAfyJhwmo8BF8LpPFvdUvxbdtrvTzqLowuH3cyzmjZKBvy3
         7rbC5mKaCY1wZxV6vk8EysT+eIPGwv28tQlA29qA9Hy2ucG79PUNXs7ncRXuI5zDzfTJ
         SZvo+AdN3MUgOv5khT8UfLw3L4g/sYKcFSbcfpUbshTgVh9E3IaueRul0lr3bf3hyT5S
         SElQ==
X-Gm-Message-State: AOJu0YyUxPVMlfa+/1v4RjenPTpCBvWAIClVCQZMbh676n5OjweZyQLv
	ksjdaso/zgAuvYHohHx+NqA3yle/iRnmhZ6I4XcTAPj62agrdRU83NzdwQ==
X-Gm-Gg: ASbGncsub2hKcGOOfnywDnuV8fQ6H1KuNNXyeo7ovxI+BgzFg/sVss/YETMvaI/bNT9
	glnSOwb9Re78HpFXue/maXlcPa1Qbmc50qFCWnfy9Goz2mrsyreJWqv/Cg45lOydxp+ABdgT8ox
	V7cJuJPjEbiFCGdzvM6MHiEj4JLLtzyjXYS6kWa5uo2BNEyGkkSZKiEQLJvCIR+BDvOI9VphtK3
	msGliR+sV74F4+Oo8AB4s9v9TYesk1Uq/AM64wKeqmAtSjBVPEHDEWD/37/DiDGv+RYDbURBHqF
	1pypenCSprBlYA32c0MAzrPRPEkmTgIsYl6h+KVKCNkmoJZO
X-Google-Smtp-Source: AGHT+IEbNNBfWhT+VGJUAUlTDaBMJEKy84xRGWSA6fsBOR7RVQD1QtxH3sD/GN+b+SezOG2ji8x64A==
X-Received: by 2002:a05:690c:6308:b0:6ef:4a57:fc89 with SMTP id 00721157ae682-6efe3c0c31cmr13824667b3.19.1733441141125;
        Thu, 05 Dec 2024 15:25:41 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d8dabffcbfsm11713376d6.119.2024.12.05.15.25.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 15:25:40 -0800 (PST)
Message-ID: <f278d6e3-9176-4475-901a-c27eed173907@gmail.com>
Date: Thu, 5 Dec 2024 18:25:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Arnaldo Sans <asans008@fiu.edu>
References: <BN8PR05MB597100D6D2B55DCCC93EB0738C302@BN8PR05MB5971.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN8PR05MB597100D6D2B55DCCC93EB0738C302@BN8PR05MB5971.namprd05.prod.outlook.com>
Message-ID-Hash: 7SLV5M4LM65XKUBAI6AQKQNEYLO74MB6
X-Message-ID-Hash: 7SLV5M4LM65XKUBAI6AQKQNEYLO74MB6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Under and Overflow Problems Very Regular
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7SLV5M4LM65XKUBAI6AQKQNEYLO74MB6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8560367570931658999=="

This is a multi-part message in MIME format.
--===============8560367570931658999==
Content-Type: multipart/alternative;
 boundary="------------gv9BGjNru4WrtyHQcsTvAqzM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------gv9BGjNru4WrtyHQcsTvAqzM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/12/2024 18:15, Arnaldo Sans wrote:
> Hello Team,
>
> I am operating a set of X310 in communication link, and I seem to be=20
> encountering data under and overflow problems very regular while=20
> operating at 2.5Msps=E2=80=A6 my target is at least 100MSps. =C2=A0Are =
there any=20
> suggestions you can offer? =C2=A0My MCR is 200MHz.
>
> Thank you, look forward to hearing from you.
If you're getting under/over-runs at 2.5Msps, then either your computer=20
is *WOEFULLY* inadequate or you're doing
 =C2=A0 WAY more processing per sample than perhaps you should be.

I run a dual-polarization radiometer based on an X310 and it can stream=20
2x20Msps for hours at a time.

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

Also, is your Ethernet interface a "real" Ethernet interface or=20
1GBit-over-USB?=C2=A0 Some of those have notoriously
 =C2=A0 poor performance.


>
> /Regards,//
>
> /
>
> */AJ/*
>
> */Grad/**/uate Researcher/*
>
> /College of Electrical & //Computing//=C2=A0Engineering /
>
> /Florida International University/
>
> /10555 West Flagler Street/
>
> /Room 3863B/
>
> /Miami, FL 33174/
>
> /Phone: 305-336-2541 | Email:////_asans008@FIU.edu=20
> <mailto:asans008@FIU.edu>_/
>
> _
> _
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------gv9BGjNru4WrtyHQcsTvAqzM
Content-Type: multipart/related;
 boundary="------------MPyc1mgIbMf1yGk8MsD4mVkT"

--------------MPyc1mgIbMf1yGk8MsD4mVkT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/12/2024 18:15, Arnaldo Sans
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN8PR05MB597100D6D2B55DCCC93EB0738C302@BN8PR05MB5971.namprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Hello
        Team,</span>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        I am operating a set of X310 in communication link, and I seem
        to be encountering data under and overflow problems very regular
        while operating at 2.5Msps=E2=80=A6 my target is at least 100MSps=
. =C2=A0Are
        there any suggestions you can offer? =C2=A0My MCR is 200MHz.</div=
>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Thank you, look forward to hearing from you.</div>
    </blockquote>
    If you're getting under/over-runs at 2.5Msps, then either your
    computer is *WOEFULLY* inadequate or you're doing<br>
    =C2=A0 WAY more processing per sample than perhaps you should be.<br>
    <br>
    I run a dual-polarization radiometer based on an X310 and it can
    stream 2x20Msps for hours at a time.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    Also, is your Ethernet interface a "real" Ethernet interface or
    1GBit-over-USB?=C2=A0 Some of those have notoriously<br>
    =C2=A0 poor performance.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN8PR05MB597100D6D2B55DCCC93EB0738C302@BN8PR05MB5971.namprd05=
.prod.outlook.com">
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div id=3D"Signature">
        <p
style=3D"text-align: left; background-color: rgb(255, 255, 255); margin: =
0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><i>Regards,</i></span><span
style=3D"font-family: Calibri, sans-serif; font-size: 12pt; color: rgb(31=
, 78, 121);"><i><br>
              <br>
            </i></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><b><i>AJ</i></b></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><b><i>Grad</i></b></span><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121); background-color: white;"><b><i>uate
                Researcher</i></b></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><i>College
              of Electrical &amp;
            </i></span><span
style=3D"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt=
; color: rgb(31, 78, 121); background-color: white;"><i>Computing</i></sp=
an><span
style=3D"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt=
; color: rgb(31, 78, 121);"><i>=C2=A0Engineering=C2=A0</i></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><i>Florida
              International University</i></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><i>10555
              West Flagler Street</i></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121); background-color: white;"><i>Room
              3863B</i></span></p>
        <p style=3D"background-color: white; margin: 0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 12pt; c=
olor: rgb(31, 78, 121);"><i>Miami,
              FL 33174</i></span></p>
        <div style=3D"font-size: 12pt;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; color: rgb(31, 78,=
 121); line-height: 107%;"><i>Phone:
              305-336-2541 | Email:</i></span><span
style=3D"font-family: frank-new, serif; color: rgb(51, 51, 51); backgroun=
d-color: white; line-height: 107%;"><i>
            </i></span><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; color: rgb(5, 99, =
193); background-color: white; line-height: 107%;"><i><u><a
                  href=3D"mailto:asans008@FIU.edu"
                  id=3D"OWAd4031864-b11f-ca09-4d0d-40fdaaeee188"
                  class=3D"OWAAutoLink moz-txt-link-freetext"
                  moz-do-not-send=3D"true">asans008@FIU.edu</a></u></i></=
span></div>
        <p
style=3D"text-align: left; background-color: rgb(255, 255, 255); margin: =
0in;"><span
style=3D"font-family: &quot;Book Antiqua&quot;, serif; font-size: 11pt; c=
olor: blue;"><u><br>
            </u></span></p>
        <p
style=3D"text-align: left; background-color: rgb(255, 255, 255); margin: =
0in;"><span
style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: black;=
"><img
style=3D"width: 2.75in; height: 0.5208in; max-width: 800px; min-width: au=
to; min-height: auto; margin: 0px;"
              data-outlook-trace=3D"F:1|T:1"
              src=3D"cid:part1.XPy09K2b.0XJ4WG0x@gmail.com" class=3D""
              width=3D"264" height=3D"49"></span></p>
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
    <br>
  </body>
</html>
--------------MPyc1mgIbMf1yGk8MsD4mVkT
Content-Type: image/png; name="Outlook-zraod0fo.png"
Content-Disposition: inline; filename="Outlook-zraod0fo.png"
Content-Id: <part1.XPy09K2b.0XJ4WG0x@gmail.com>
Content-Transfer-Encoding: base64

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
0Y8AAAAASUVORK5CYII=

--------------MPyc1mgIbMf1yGk8MsD4mVkT--

--------------gv9BGjNru4WrtyHQcsTvAqzM--

--===============8560367570931658999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8560367570931658999==--
