Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A94F3D0E3C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jul 2021 13:57:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CF023843FE
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jul 2021 07:57:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rw9siIek";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 211DC38482B
	for <USRP-users@lists.ettus.com>; Wed, 21 Jul 2021 07:56:53 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id ay16so756165qvb.12
        for <USRP-users@lists.ettus.com>; Wed, 21 Jul 2021 04:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=qchaA0Q+ojNVkHhQnFMsl/BrjTGhnMnlCSVDTkR0pzE=;
        b=Rw9siIek/fJoKQQQ63oY3EoQwKEyXm249CBLBliZ/Vy06WQ6YWjorotcfsAORdQ0AA
         Vyd+IR78fNpoQiiyfemhV9C6SFidKWqjj54AhHVCsAF29FLD8a4LG7nTxWbK1VZfdtDj
         MGAHshK0jNWDYRo1ZTuW6t0YiaXC6pD7wyiOX+3UhjY+ZaWDPsSCFaqh90hUoWdNI0QG
         7IeOq+fAXcNTlOFBoAH1fIeyagnYL0hd3V1GN3FddFBtkkuZKbCvbs6emAdK2cGW7S6A
         MLRwtD8hG7CTdmJVq2Mukcs3pNxter7Qv4l/bZxJborFLdoS9V1gXIdAW/2oMyujF6A3
         iNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=qchaA0Q+ojNVkHhQnFMsl/BrjTGhnMnlCSVDTkR0pzE=;
        b=I3Rzo5330uTcC99NUtE6j1vtIqtdbSTTcWsNPEQNLUM9mbdUn5CH04PBr2xpqJTTMx
         M/+yX5C2L2D6x+qjvdd+EhsVGe3mPwQ55FMASTLBmiPBHBHyvKTGeGTc9d/BAuvXmEfx
         en0OpOrlHiO7Sw+3BiiqQg5mFHiLAFHlyuZyIe2lpiPtrgspwbJNrw/gRqFRHBXDVYQC
         l4kyylfk7nxWR2TGn35BHIEONXtmULJjK1IONLuv2Wr/tiRz15nI463azNL/bXcM5xVM
         035WCcbcep/Cjtk0h7ZIN9Haymi8POrsrb5PEYWBz/3kzL1dczPVzMxhALO5KPUU4T3f
         rlvw==
X-Gm-Message-State: AOAM532xUxmNUwAHBddLZ280gvm0+agONdxLBdYsRe4FKALy2xiMtkbe
	I/NbyOE48380FJfD4EHpQAI=
X-Google-Smtp-Source: ABdhPJyZnZI117T1sijWuitN3yDRCewc767HVbu3/w/5kbgq1sgOqWmoLo/OLJxVEbK2pGZo+34k6Q==
X-Received: by 2002:a05:6214:20ef:: with SMTP id 15mr35559265qvk.54.1626868613451;
        Wed, 21 Jul 2021 04:56:53 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id f2sm8923646qth.11.2021.07.21.04.56.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jul 2021 04:56:53 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 21 Jul 2021 07:56:52 -0400
Message-Id: <980AC0B2-6A7A-407D-BB83-19EF639C38CC@gmail.com>
References: <20de6ef8-a841-59bc-e365-f23a0340c949@cttc.es>
In-Reply-To: <20de6ef8-a841-59bc-e365-f23a0340c949@cttc.es>
To: Armin Ghani <aghani@cttc.es>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: VRCPOUV4P2KD53L4CG3J3FLHYWIOU3EX
X-Message-ID-Hash: VRCPOUV4P2KD53L4CG3J3FLHYWIOU3EX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmission and Reception samples synchronously in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VRCPOUV4P2KD53L4CG3J3FLHYWIOU3EX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3078500902564214098=="


--===============3078500902564214098==
Content-Type: multipart/alternative; boundary=Apple-Mail-BA2501C0-E967-4F51-8031-B9AB936C4D4A
Content-Transfer-Encoding: 7bit


--Apple-Mail-BA2501C0-E967-4F51-8031-B9AB936C4D4A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You can modify the generated Python code to use timed transmission and recep=
tion.=20

Sent from my iPhone

> On Jul 21, 2021, at 7:41 AM, Armin Ghani <aghani@cttc.es> wrote:
>=20
> =EF=BB=BF
> Dear Community
>=20
> I've been trying to transmit samples while trying to receive RX samples at=
 the same frequency which the delay between TX and RX samples suppose to be p=
redictable aka fixed value .
>=20
> In the UHD host code examples there are two example source files where one=
 transmits TX samples in specific time in future, the other does this in RX s=
ide.
>=20
> I am pretty aware how timing commands works but since I've been developing=
 my system in GRC environment, I prefer to do it in GRC.
>=20
> When I put USRP sink and source blocks in the flowgraph, and try to transm=
it 1ms tone signal every 1 second, the delay which TX samples will be in RX s=
amples are fixed during one run but variable randomly when I run it for mult=
iple times.
>=20
> I'm looking for a trick in GRC to synchronize USRP sink and source blocks w=
here I'd like to be sure when transmitting TX signals (assuming at the same f=
requency reception), I'll have those samples in the RX stream which is delay=
ed equal to end-to-end propagation delay of USRPs.
>=20
> If you have any tips/tricks to do it in GRC, I'll be more than thankfull.
>=20
> Regards.
>=20
> --=20
> <bbknokionefeeele.jpeg>
> Armin Ghani
> Research Engineer | Communication Systems Division (CSD)
> aghani@cttc.es | +34 93 645 29 08 (2143)
> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
> 08860 - Castelldefels (Barcelona, Spain)
> www.cttc.cat
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-BA2501C0-E967-4F51-8031-B9AB936C4D4A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You can modify the generated Python code to=
 use timed transmission and reception.&nbsp;<br><br><div dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 21, 2=
021, at 7:41 AM, Armin Ghani &lt;aghani@cttc.es&gt; wrote:<br><br></blockquo=
te></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <div class=3D"moz-forward-container">
      <p>Dear Community</p>
      <p>I've been trying to transmit samples while trying to receive RX
        samples at the same frequency which the delay between TX and RX
        samples suppose to be predictable aka fixed value .</p>
      <p>In the UHD host code examples there are two example source
        files where one transmits TX samples in specific time in future,
        the other does this in RX side.</p>
      <p>I am pretty aware how timing commands works but since I've been
        developing my system in GRC environment, I prefer to do it in
        GRC.</p>
      <p>When I put USRP sink and source blocks in the flowgraph, and
        try to transmit 1ms tone signal every 1 second, the delay which
        TX samples will be in RX samples are fixed during one run but
        variable randomly when I run it for multiple times.</p>
      <p>I'm looking for a trick in GRC to synchronize USRP sink and
        source blocks where I'd like to be sure when transmitting TX
        signals (assuming at the same frequency reception), I'll have
        those samples in the RX stream which is delayed equal to
        end-to-end propagation delay of USRPs.</p>
      <p>If you have any tips/tricks to do it in GRC, I'll be more than
        thankfull.</p>
      <p>Regards.<br>
      </p>
      <div class=3D"moz-signature">-- <br>
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <title></title>
        <p> </p>
        <p>
          <meta name=3D"ProgId" content=3D"Word.Document">
          <meta name=3D"Generator" content=3D"Microsoft Word 15">
          <meta name=3D"Originator" content=3D"Microsoft Word 15">
          <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:"Arial Black";
	panose-1:2 11 10 4 2 1 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610612049 1073772795 0 0 159 0;}@font-face
	{font-family:Aharoni;
	mso-font-charset:177;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.=
MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}div.WordSection1
	{page:WordSection1;}</style> </p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><div>&lt;bbknokionefeeele.jpeg&gt;</div><span style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
            Ghani</span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Research
            Engineer | Communication Systems Division (CSD)</span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><a href=3D"mailto:aghani@cttc.es" moz-do-not-send=3D"true"><span style=3D"=
font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">aghani@c=
ttc.es</span></a><span style=3D"font-size: 9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> | +34
            93 645 29 08 (2143)</span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Centre
            Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</span><=
/p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av.
            Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><span style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">08860
            - Castelldefels (Barcelona, Spain)</span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:normal=
"><a moz-do-not-send=3D"true"><span style=3D"font-size:9.0pt;font-family:&qu=
ot;Arial
              Black&quot;,sans-serif;
              mso-bidi-font-family:Aharoni;mso-ansi-language:ES" lang=3D"ES"=
>www.cttc.cat</span></a><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al
            Black&quot;,sans-serif;mso-bidi-font-family:
            Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
      </div>
    </div>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-BA2501C0-E967-4F51-8031-B9AB936C4D4A--

--===============3078500902564214098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3078500902564214098==--
