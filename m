Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FFB48A2A7
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 23:21:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E754D38548E
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 17:21:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NKlRjEAP";
	dkim-atps=neutral
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B108F3850B5
	for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 17:20:56 -0500 (EST)
Received: by mail-oi1-f175.google.com with SMTP id s73so20581723oie.5
        for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 14:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:date:message-id:subject:from:to:cc:in-reply-to
         :references:user-agent;
        bh=PEZzrhVU0Z2cqp1Na/gASl9ON6lPDhol/9VpQVP2zbA=;
        b=NKlRjEAPMfKI1lIXZSJKlN0V3K2zdWPZIljWfTDos1QNQueb6zRnStTLrjn83VI6WD
         jbnI2hhtWNJBd785PoTNVDM2TOoIfohg1PSA4lsjqSQrMg4oEtTRZgZ95Cle0ZamipZn
         NRIlr7e4G7ogjH/gKzLcWSrBUWvEDxS8Z++OIh/dH+iYxGkvE1CVhV/zCrkrZC74RIti
         5+PLHPDq/hP+pWEjWtZpCzofz1Bimojtn9xNkJVbt+wYRIkCsqjwj6EYqibO7BdOvo5a
         7LBH6ZjboJm2YmldDWGC3OtdwGMfGGz8vFffQ7SwlvU+EA9+15+xrX1klOMEImnLNiQP
         Dm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :in-reply-to:references:user-agent;
        bh=PEZzrhVU0Z2cqp1Na/gASl9ON6lPDhol/9VpQVP2zbA=;
        b=W2jCCElgydLBeoj/fjhXL1HOh71cRonzGDB8oVcAINyrTojaniEZE0dL/o1BuXkpMv
         3c3bxgakPftG2OfoqQTzUjLeOCOQwG/Wf/hfIE1EWU5UTysWkeC6lOSkTNEu++bHJVsB
         HHewXF/5pyleGOs0Fr0jOk9QVF9AqzANe5K7uqNBKwgimCVwLz6smie2UTQHy812+bTa
         Gfa3Pyui/VmacVA+D3UqNUenWWzvLCZmAu6tZZfsdS3fjl7dxhlNUtnntwtI/IcDp5xx
         0t/dowAog1gRPajw0kd2POcEbtU24HxS8CZqWviqTdJK30qwasFgfEMDWpRdQkb6QUHZ
         Gr5w==
X-Gm-Message-State: AOAM530KKey13cEy7lMhhIBnlnWuONyEsiulgxXZWWOcp+VXTI8Dfpak
	EPL+T4u1NMNy0F+2dOjvl/qjjVtA3rU=
X-Google-Smtp-Source: ABdhPJyyXQmAE/UiHkMkQEfl5lGp+MDqhHBaemp1SQB0z2Yd1zxPTpbv1NymEUyG3MSOlI/TpBMahA==
X-Received: by 2002:a54:4014:: with SMTP id x20mr20329393oie.129.1641853255874;
        Mon, 10 Jan 2022 14:20:55 -0800 (PST)
Received: from [192.168.1.129] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id j20sm53270otp.52.2022.01.10.14.20.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jan 2022 14:20:54 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 10 Jan 2022 16:20:44 -0600
Message-ID: <Mailbird-ffac147f-96a4-4637-8773-b3b83c4d2a5a@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "Wade Fife" <wade.fife@ettus.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFche=hWZh=YZXD68TEFAOM8bmO6bRZFU129+zi9HhvMOmHrBg@mail.gmail.com>
References: <Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com>
 <17e33a0e-743e-b544-b89b-299e0f1cf3c2@gmail.com>
 <CAFche=hWZh=YZXD68TEFAOM8bmO6bRZFU129+zi9HhvMOmHrBg@mail.gmail.com>
User-Agent: Mailbird/2.9.58.0
X-Mailbird-ID: Mailbird-ffac147f-96a4-4637-8773-b3b83c4d2a5a@gmail.com
Message-ID-Hash: L546JCVPVGMBDZUYWEQCPRZPZTYYJBRB
X-Message-ID-Hash: L546JCVPVGMBDZUYWEQCPRZPZTYYJBRB
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mobizmn--- via USRP-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA utilizaton summary for B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L546JCVPVGMBDZUYWEQCPRZPZTYYJBRB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6733213113091037222=="

--===============6733213113091037222==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_39041925.684796706949"

------=_NextPart_39041925.684796706949
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Even better. Thanks, Wade. -page
On 1/10/2022 3:50:35 PM, Wade Fife <wade.fife@ettus.com> wrote:
The build process for the FPGA generates a report with those numbers. If yo=
u built the FPGA, look for a file named usrp_b210_fpga.syr and search for "=
Device utilization summary" in that file.

Wade


On Sat, Jan 8, 2022 at 2:04 PM Marcus D. Leech <patchvonbraun@gmail.com [ma=
ilto:patchvonbraun@gmail.com]> wrote:

On 2022-01-08 15:00, page heller wrote:

Is there a command to print the FPGA utilization summary for an B210? I'm l=
ooking to print a report like that shown in https://kb.ettus.com/B200/B210/=
B200mini/B205mini#B210_5 [https://kb.ettus.com/B200/B210/B200mini/B205mini#=
B210_5]. -page

_______________________________________________ USRP-users mailing list -- =
usrp-users@lists.ettus.com [mailto:usrp-users@lists.ettus.com] To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com [mailto:usrp-users-lea=
ve@lists.ettus.com]
Those reports come from the FPGA image generation tools from Xylinx.

The Makefile for b2xx FPGA is here in the source tree:

uhd/fpga/usrp3/top/b200



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com [mailto:usrp-users@li=
sts.ettus.com]
To unsubscribe send an email to usrp-users-leave@lists.ettus.com [mailto:us=
rp-users-leave@lists.ettus.com]

_______________________________________________ USRP-users mailing list -- =
usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave=
@lists.ettus.com
------=_NextPart_39041925.684796706949
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr">
                                        Even better. Thanks, Wade. -page<di=
v class=3D"mb_sig"></div><blockquote class=3D'history_container' type=3D'ci=
te' style=3D'border-left-style:solid;border-width:1px; margin-top:20px; mar=
gin-left:0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 1=
/10/2022 3:50:35 PM, Wade Fife &lt;wade.fife@ettus.com&gt; wrote:</p><div s=
tyle=3D'font-family:Arial,Helvetica,sans-serif'><div dir=3D"ltr"><div>The b=
uild process for the FPGA generates a report with those numbers. If you bui=
lt the FPGA, look for a file named usrp_b210_fpga.syr and search for &quot;=
Device utilization summary&quot; in that file.</div><div><br></div><div>Wad=
e<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sat, Jan 8, 2022 at 2:04 PM Marcus D. Leech &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <div>On 2022-01-08 15:00, page heller wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div id=3D"gmail-m_2830689060891565671__MailbirdStyleContent" style=
=3D"font-size: 10pt;font-family: Arial;color: rgb(0,0,0);text-align: left" =
dir=3D"ltr">Is there a command to print the FPGA utilization
        summary for an B210? I&#39;m looking to print a report like that
        shown in=C2=A0<a href=3D"https://kb.ettus.com/B200/B210/B200mini/B2=
05mini#B210_5" title=3D"Click to open in a new window or tab
          https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5" style=3D=
"font-family: Arial,Helvetica,sans-serif;font-size: 13px" target=3D"_blank"=
>https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5</a>.
        -page</div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Those reports come from the FPGA image generation tools from Xylinx.<br>
    <br>
    The Makefile for b2xx FPGA is here in the source tree:<br>
    <br>
    uhd/fpga/usrp3/top/b200<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
</div></blockquote>
                                        </div></body>
------=_NextPart_39041925.684796706949--

--===============6733213113091037222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6733213113091037222==--
