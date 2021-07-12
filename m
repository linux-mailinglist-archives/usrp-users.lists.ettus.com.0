Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A973C5B92
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:48:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2D60383FC3
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 07:48:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HXaKUS17";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EEC5383FA7
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 07:47:45 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id q190so17615434qkd.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 04:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=JQi0+kjaOP8mOu6CoCMKkj+jSudETDblkESnxV4vZPk=;
        b=HXaKUS17lnUDpfqdAwf6niWrkD5oeV+NKVZPHD9DeZXb6iiUYkYcQOToLbpxJ7Zm/A
         jku8j7Boi4zptPgLJr/kIumYt8luVEDxKAhmqCx2/4JtntIqqD41lhbogm9AkpR1iUt8
         wPI5p+PkfxsHKVNPm7CbYPzurKgXFh2XzHWASDF4os7C9JlggfhxMGyA/NfA8ZR1+Gkp
         ygQyiiLI+qTbY1MLPlslQeIjY/GqdjYAq0r/XVamUt5jksgmQSyXJ8/3CVUBrao8eqPg
         /e9Hk1niAt39/4IrGL1h/Wxh+3g9AV/D5lOIQDDVFmuCtf6gDwguFETfVfVyWB2mpCHt
         ZyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=JQi0+kjaOP8mOu6CoCMKkj+jSudETDblkESnxV4vZPk=;
        b=h4wg/xo5Z8YW1fwNdTGUFrmSTk40k1wAHlcrjw+BipwBIuAmBz6PrzkSewoLmZDalD
         LvWDicRTgGIQI+tmKtlc9vzjWaFRteOIhhAgRhNaHCC5vHL3U6muH8dDnfPP4LcUCCLS
         pp6VZV/fH1XPrcDmryF9s5ugp89oVZ7DwBklSsV6DxZXRqOGHobCD1Se+WiNA9Emnh4u
         t43VlAGwRYJNW7dv4xzV907LoP3MUt2Ykl9BGhT90GcXIg9HrA58EwVyL0jVzpi+wr1z
         8TMXBGsAz8z9tZ6Eg6UWD3gMATNFPX+hHJVTBQ2l7zuofcoJZmqIEqfqX0V/S+PJNogl
         M0Gg==
X-Gm-Message-State: AOAM530kM0zZOg+09+K2FHtp2/o1unCeEKuewWXAaDSyS9p40uQZedHg
	qx6TT0ke6BhFiJFI7CeQULM=
X-Google-Smtp-Source: ABdhPJw92CvAlzOnhgZC53m9xX79CejTa1lh9qf2ImgKQvfTHshUGIiEF5mfFKVuYVErr/bADorwoQ==
X-Received: by 2002:a05:620a:684:: with SMTP id f4mr19535992qkh.258.1626090464755;
        Mon, 12 Jul 2021 04:47:44 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:a4aa:bd5a:fc04:c253])
        by smtp.gmail.com with ESMTPSA id g17sm6435267qkm.34.2021.07.12.04.47.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 04:47:43 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Jul 2021 07:47:42 -0400
Message-Id: <85AE25D3-3755-4068-AC7E-2BE23817C293@gmail.com>
References: <ef868d72c8cd4f889c9efa8ed61d4db3@tudelft.nl>
In-Reply-To: <ef868d72c8cd4f889c9efa8ed61d4db3@tudelft.nl>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: T2WNP6FZVGHMBU2G5LX4NXVTI34TP2KA
X-Message-ID-Hash: T2WNP6FZVGHMBU2G5LX4NXVTI34TP2KA
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX Streamer issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2WNP6FZVGHMBU2G5LX4NXVTI34TP2KA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5458200324072778364=="


--===============5458200324072778364==
Content-Type: multipart/alternative; boundary=Apple-Mail-E2190271-52B1-4A00-8048-83C541B1B43D
Content-Transfer-Encoding: 7bit


--Apple-Mail-E2190271-52B1-4A00-8048-83C541B1B43D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Do you also have a DUC between the radio and streamer?

<end transmission>

> On Jul 12, 2021, at 07:41, Cherif Diouf <C.E.V.Diouf@tudelft.nl> wrote:
>=20
> =EF=BB=BF
> Hi,
> =20
> I am using an X310 device and I have freshly install RFNoC 4, (Vivado 2019=
.1, UHD 4.0, GNU Radio 3.8, gr-ettus )using the migration guide
> =20
> (https://kb.ettus.com/RFNoC_4_Migration_Guide#Prerequisites).
> =20
> I tried to build a simple GNU Radio flowgraph
> =20
> GNU Radio source signal (cosine) -> RFNoC TX streamer -> RFNoC Radio.
> But when I run the graph I obtain the following error:
> "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in m=
ake
>     return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chans, stream_arg=
s, vlen)
> RuntimeError: LookupError: KeyError: [convert] Cannot find an item size fo=
r: `'
> =20
> Do you have any idea where it should come from.
> =20
> Best Regards
> Cherif
> =20
> Below is the full tx script
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E2190271-52B1-4A00-8048-83C541B1B43D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Do you also have a DUC between the radio an=
d streamer?<br><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" sty=
le=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-compo=
sition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-=
color: rgba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 12, 2021, at 07:41, Cherif=
 Diouf &lt;C.E.V.Diouf@tudelft.nl&gt; wrote:<br><br></blockquote></div><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am using an X310 device and I h=
ave freshly install RFNoC 4, (Vivado 2019.1, UHD 4.0, GNU Radio 3.8, gr-ettu=
s )using the migration guide<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">(<a href=3D"https://kb.ettus.com=
/RFNoC_4_Migration_Guide#Prerequisites">https://kb.ettus.com/RFNoC_4_Migrati=
on_Guide#Prerequisites</a>).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I tried to build a simple GNU Ra=
dio flowgraph<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">GNU Radio source signal (cosine)=
 -&gt; RFNoC TX streamer -&gt; RFNoC Radio.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">But when I run the graph I obtai=
n the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"color:black">"/usr/l=
ocal/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in make<br>
&nbsp;&nbsp;&nbsp; return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chan=
s, stream_args, vlen)<br>
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for:=
 `'</span></b><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;color:black;=
mso-fareast-language:NL"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Do you have any idea where it sh=
ould come from.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best Regards<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Cherif<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Below is the full tx script<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-E2190271-52B1-4A00-8048-83C541B1B43D--

--===============5458200324072778364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5458200324072778364==--
