Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2370D35D256
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 23:05:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28EB0384BB9
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 17:05:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qvqCfdQo";
	dkim-atps=neutral
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EBF43846CD
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 17:05:10 -0400 (EDT)
Received: by mail-ot1-f43.google.com with SMTP id v19-20020a0568300913b029028423b78c2dso5534274ott.8
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 14:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:date:message-id:subject:from:to:cc:in-reply-to
         :references:user-agent;
        bh=9j6vX8mKGlg2VmWi2MzdlPsfL8Ilr0uja6hvqsUg3o8=;
        b=qvqCfdQouX2DIyX3lM8Luy9v/k/iHGCb7GoKBbeI2rNf0FGcF5U4EqDs5Mi54a/UTq
         laPMN/wHc41QRy6zoDtFpykg9BHm4HZYR9f5YLZMPU7aqwat2fQolu+EIN/sehpqBAEV
         xkMqXYQBUjdsV0an0gGjkBELjYARUcPxV54Dt3s76lzKl+73wQLTLYt8+prt5H+6i+yF
         i7mp7fkTEonHGfAWPuhBgcRuyhyF8z+Qwa6FYDOepajC5C39lT4/hDxLzvOoGdJgzVnF
         bDczWh5buNqXDaElRSK+MpiYz9ABK5SqEN0noZK0vxunpg0bmTJIWfy/mACJFdfv4Nst
         ZgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :in-reply-to:references:user-agent;
        bh=9j6vX8mKGlg2VmWi2MzdlPsfL8Ilr0uja6hvqsUg3o8=;
        b=s5s7l8DehkfzxNzBHEHMmE3Iza2G8Eli6BDJSHYDvcDNOayYc4aOCndHi2pJbcwihL
         hSDKQbFKrs0gXGrILyLbDdGHQcIewt7WQpHcFWV3700Zykg1+JNDfxWdXQMer9tmkcfm
         E21nUepGerkaTiMY1iqU+6cD30EDgQ9aSxi64vSYCTz9uN97vgQCXfMgdJJQbBPaxjwg
         +kZBlRUO4QZ+AbAqX3CnN8WRS1IGzkNJE2U1ivBGBnvcXmXY5AuVBPiIG2OGe+PddQP+
         uJ/OZJMbP5MPxZ28v5OOEfW305YYdGU5WR4ctD4xltjDne0lvh+IWgzfNX6BEYWbL5F8
         UH5g==
X-Gm-Message-State: AOAM530Bpe/nGnmzNpJJzt/0wGneQUEr2hBvL8ohlxL1ZXPGXBngQnP7
	xVbgrMKf94VObccXOiveYwI=
X-Google-Smtp-Source: ABdhPJwRCutgHH+o2rHle3/Tfuw8mW2lWQghydFAQVUmiUpob0ptEyEVBiORzr4IoIRcKlB0FkRgZg==
X-Received: by 2002:a9d:449:: with SMTP id 67mr16542892otc.333.1618261509666;
        Mon, 12 Apr 2021 14:05:09 -0700 (PDT)
Received: from [192.168.1.3] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id j11sm2409192ooo.45.2021.04.12.14.05.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 14:05:09 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 12 Apr 2021 16:04:58 -0500
Message-ID: <Mailbird-a3bc91ea-0bc8-4dd1-b716-36cdec12f1db@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "Brendan Horsfield" <brendan.horsfield@vectalabs.com>
In-Reply-To: <CALNMZ8Xe05G-G74266ENMoPVha-wirT0He5wmkJYUY0hGpe19A@mail.gmail.com>
References: <VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM@lists.ettus.com>
 <CALNMZ8Xe05G-G74266ENMoPVha-wirT0He5wmkJYUY0hGpe19A@mail.gmail.com>
User-Agent: Mailbird/2.9.27.0
X-Mailbird-ID: Mailbird-a3bc91ea-0bc8-4dd1-b716-36cdec12f1db@gmail.com
Message-ID-Hash: DUZU6EI6H2CFKPSR4VT5TP5A5442LOJJ
X-Message-ID-Hash: DUZU6EI6H2CFKPSR4VT5TP5A5442LOJJ
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUZU6EI6H2CFKPSR4VT5TP5A5442LOJJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5747052491295766222=="

--===============5747052491295766222==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_994823.118595540810"

------=_NextPart_994823.118595540810
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I had to go back and look! Yes, you are right. 400-500 kb sized files. Actu=
ally 359040 bytes is popular. You are getting more than twice mine. -p
On 4/11/2021 6:41:13 PM, Brendan Horsfield <brendan.horsfield@vectalabs.com=
> wrote:
Hi Page,=C2=A0=C2=A0

When you say "I can reliably capture 400-500k samples sized files", do you =
actually mean 400-500 kilobyte=C2=A0sized files?

Using tips received from yourself and others, I can now capture around 800 =
kilobytes of data before I see any overflows.=C2=A0 This is equivalent to:
* 100 kilosamples on 1 channel at 50 Msps
* 50 kilosamples on 2 channels at 25 Msps
Regards,
Brendan.



On Sat, Apr 3, 2021 at 11:59 PM <pageheller@gmail.com [mailto:pageheller@gm=
ail.com]> wrote:

Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was a qui=
te tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but 20-30. =
It took me 2 weeks, 8-hours a day to figure this out. I am operating on the=
 Raspberry Pi OS (formerly called Raspian). And, of course, as they upgrade=
 the OS, this process will only be good for a short period of time.
One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with the B=
-210 and I get an overflow when capturing 20MSPS on 2 channels at about 500=
k samples. I don=E2=80=99t know if this is hardware or software, but if any=
one knows of a solution, I=E2=80=99m all ears. Having said that, I can cons=
istently and reliably capture 400-500k samples sized files.
I=E2=80=99d be happy to share the install instructions. They are lengthy. -=
page
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com [mailto:usrp-users@li=
sts.ettus.com]
To unsubscribe send an email to usrp-users-leave@lists.ettus.com [mailto:us=
rp-users-leave@lists.ettus.com]

------=_NextPart_994823.118595540810
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000;text-align: left" dir=3D"ltr">=0A                       =
                 I had to go back and look! Yes, you are right. 400-500 kb =
sized files. Actually 359040 bytes is popular. You are getting more than tw=
ice mine. -p<div class=3D"mb_sig"></div>=0A                                =
        <blockquote class=3D"history_container" type=3D"cite" style=3D"bord=
er-left-style: solid;border-width: 1px;margin-top: 20px;margin-left: 0px;pa=
dding-left: 10px;min-width: 500px">=0A                        <p style=3D"c=
olor: #AAAAAA; margin-top: 10px;">On 4/11/2021 6:41:13 PM, Brendan Horsfiel=
d &lt;brendan.horsfield@vectalabs.com&gt; wrote:</p><div style=3D"font-fami=
ly:Arial,Helvetica,sans-serif"><div dir=3D"ltr">Hi Page,&nbsp;&nbsp;<div><b=
r></div><div>When you say "I can reliably capture 400-500k samples sized fi=
les", do you actually mean 400-500 <b><u>kilo</u></b><span style=3D"font-we=
ight:bold"><u>byte</u></span>&nbsp;sized files?</div><div><div><br></div><d=
iv>Using tips received from yourself and others, I can now capture around 8=
00 kilobytes of data before I see any overflows.&nbsp; This is equivalent t=
o:</div><div><ul><li>100 kilosamples on 1 channel at 50 Msps</li><li>50 kil=
osamples on 2 channels at 25 Msps</li></ul>Regards,</div></div><div>Brendan=
.</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 3, 2021 at 11:59 PM &lt;<a=
 href=3D"mailto:pageheller@gmail.com">pageheller@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8e=
x;border-left: 1px solid rgb(204,204,204);padding-left: 1ex;min-width: 500p=
x"><p>Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was=
 a quite tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but 2=
0-30. It took me 2 weeks, 8-hours a day to figure this out. I am operating =
on the Raspberry Pi OS (formerly called Raspian). And, of course, as they u=
pgrade the OS, this process will only be good for a short period of time.</=
p><p>One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with =
the B-210 and I get an overflow when capturing 20MSPS on 2 channels at abou=
t 500k samples. I don=E2=80=99t know if this is hardware or software, but i=
f anyone knows of a solution, I=E2=80=99m all ears. Having said that, I can=
 consistently and reliably capture 400-500k samples sized files.</p><p>I=E2=
=80=99d be happy to share the install instructions. They are lengthy.  -pag=
e</p>=0A=0A_______________________________________________<br>=0AUSRP-users=
 mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a><br>=0ATo unsubscribe send an email to =
<a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-=
users-leave@lists.ettus.com</a><br>=0A</blockquote></div>=0A</div></blockqu=
ote></div>
------=_NextPart_994823.118595540810--

--===============5747052491295766222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5747052491295766222==--
