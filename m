Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBD5498A0F
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 20:02:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B22EB38458E
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 14:01:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L9YDFU+P";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C229384515
	for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 14:00:56 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id c15so8189703qtv.1
        for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 11:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=/OsJZhu8wHYbEpVXJBAB19VdM+xHPqyzMdHYTOchZPA=;
        b=L9YDFU+PsvqN9lMnyNJ/Fe9d88xATrcnnFv0aYMGqOLYNES8AAb93qe7ZsDeSar/z1
         2/EHXWXdt81iyC3qLYidcxHvy7FjkWkjL4q6MJ2Qb98M3jKUULWHNs0ZRqbWrrO8JDH1
         yf6qSnYGYj45b7Y1/wuYn5RefgjkjoAakm9YhfVJN+npx4NdSojyODgiWP/cip4oH1t9
         pG1Kn6w2lhVX2Lr00tJrG/oCCDvjDblv2fWurwToLPSkZp/8bx+/Tl7bza0gZ2PXAPwn
         sXdDIo7MBzux1JJD1AILSFCV7+TDp3pVe/Q+mHtwpDwwWLps5bOslJbDSeAEhiYN6EGk
         DdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=/OsJZhu8wHYbEpVXJBAB19VdM+xHPqyzMdHYTOchZPA=;
        b=sa4SCqK5Ltr9Q/xk9u6Mw/aCJqmUVNvOSaaD849NforFfqnPW1cwwOgxwr8E+XhEYa
         ilALJ+3zlw29KvJMC9mxGxC+F6hCHJYQw9ZoQQdeH17maqjgvmn5oIGefVpAsgr4pq0a
         6kb5oZZ3cgT5NsPIlLuC6sNGWsp6aOL17MCmP3iVvZ5eoLU9EJgRIIZHZmYvov/RLexT
         GrHX10VJlyqV4M5uviEqXMfIfodJtF9apXEIDV8g6azZ2GJAwOEyOlpFwM3J1/3LAMOc
         f7dfWGSuNTuEtOjP9dFsNMmbJU3OP0fltY+xanDLeTGFHDbnwZU7fWNuxxBWbDeBxIPD
         LaSA==
X-Gm-Message-State: AOAM531MmVi+SVrV6u4HyKDgYWWnSiDiZen3KH8XdyyIU75dcp5eU8gA
	DNhXGfDgzIE3nssVrQoOO7CAEpwNUIFCmw==
X-Google-Smtp-Source: ABdhPJyVRoTy/nj5DLoKEl+kf0Rg1Nw5tHucrLgCnnmUx+SBZ3bxRfModRRa6krZ/J4TwvGdlZ4i3g==
X-Received: by 2002:ac8:5c87:: with SMTP id r7mr8983071qta.56.1643050855660;
        Mon, 24 Jan 2022 11:00:55 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a14sm795168qti.79.2022.01.24.11.00.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 11:00:55 -0800 (PST)
Message-ID: <bea61b03-7229-dee0-01c2-061b7b4e2f4e@gmail.com>
Date: Mon, 24 Jan 2022 14:00:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <164305030384.11266.16739764613533549577@mm2.emwd.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <164305030384.11266.16739764613533549577@mm2.emwd.com>
Message-ID-Hash: GNKT3TXFI4U6PN6VBYOSHLQJCNWU23GF
X-Message-ID-Hash: GNKT3TXFI4U6PN6VBYOSHLQJCNWU23GF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 LO Offset tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GNKT3TXFI4U6PN6VBYOSHLQJCNWU23GF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6488019720546582025=="

This is a multi-part message in MIME format.
--===============6488019720546582025==
Content-Type: multipart/alternative;
 boundary="------------3V0Ttf651FmJ1O2i0ddLcitM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3V0Ttf651FmJ1O2i0ddLcitM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-24 13:51, Tillson, Bob (US) via USRP-users wrote:
>
> Is LO offset tuning supported by the N310?
>
> Using UHD 3.14.1.1 and with rx samples to file, I noticed the=20
> following output:
>
> Setting RX Freq: 350.000000 MHz...
>
> Setting RX LO Offset: 30.000000 MHz...
>
> Actual RX Freq: 350.000000 MHz...
>
> Using other values for LO Offset does not change Actual RX Freq either=E2=
=80=A6
>
> Thanks,
>
>
LO offset still delivers the desired center frequency to the host, but=20
what it does is rather than have LO=3D=3Ddesired, it sets the LO to
 =C2=A0 <specified_offset+desired>, and then uses the DDC machinery to ro=
tate=20
the resulting bandwidth down so that 0Hz is
 =C2=A0 right at your desired frequency.

This is used to side-step things like the DC offset that is inevitable=20
with direct-conversion receiver designs, as with N310.


--------------3V0Ttf651FmJ1O2i0ddLcitM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-24 13:51, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:164305030384.11266.16739764613533549577@mm2.emwd.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
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
        <p class=3D"MsoNormal">Is LO offset tuning supported by the N310?=
<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Using UHD 3.14.1.1 and with rx samples to
          file, I noticed the following output:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Setting RX Freq=
:
          350.000000 MHz...<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Setting RX LO
          Offset: 30.000000 MHz...<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">Actual RX Freq:
          350.000000 MHz...<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Using other values for LO Offset does not
          change Actual RX Freq either=E2=80=A6<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
    </blockquote>
    LO offset still delivers the desired center frequency to the host,
    but what it does is rather than have LO=3D=3Ddesired, it sets the LO =
to<br>
    =C2=A0 &lt;specified_offset+desired&gt;, and then uses the DDC machin=
ery
    to rotate the resulting bandwidth down so that 0Hz is<br>
    =C2=A0 right at your desired frequency.<br>
    <br>
    This is used to side-step things like the DC offset that is
    inevitable with direct-conversion receiver designs, as with N310.<br>
    <br>
    <br>
  </body>
</html>

--------------3V0Ttf651FmJ1O2i0ddLcitM--

--===============6488019720546582025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6488019720546582025==--
