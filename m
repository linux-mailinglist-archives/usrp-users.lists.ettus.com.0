Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C3577BC39
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 17:00:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 698C4384A86
	for <lists+usrp-users@lfdr.de>; Mon, 14 Aug 2023 11:00:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692025202; bh=6W4PxIrAyo2HiKWAbwoUzyU3hIiuVkTrESYhAr9x1v4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PJOPYlS84NKhKm0RUDkK1HtIE6iD5zpt3XZPWxjM3DLXuZgqdcyaQ2K27Lyn18jJg
	 0JAdwZTFUdXRC2EgzC+rAQ7bbQNOV2QV9YE9zHnLTApDqJQfqxA/wDaKNLX0UgHc7R
	 MNQa47PrIf48q85QXynSizyLhaEi/W3PpfRXgcGUHc8yWTD+fMBKnaPoQDl0SqQ3QJ
	 sFB7+KCI56qwE4d1JOGiTp8DaKqy3P882JnDgUJ7h3DISH8DXN3LGWBYNSouWqunvQ
	 djfNMUnatVfTL3dU3rJulFnkl5fz/e4SZgbhL1NaDjPQ8y08rjzYU0rEPAMRhdcpYz
	 VmMDRZublL25A==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CF02380C3D
	for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 10:59:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KxdF5RCD";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76d198deb34so35866985a.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Aug 2023 07:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692025170; x=1692629970;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L8qb4I2iMtpBba9HSfmUUjx2IU01QjiUObNmtp9Xoks=;
        b=KxdF5RCD9yPJ5yxsFVpgM50bYuLyDg/rLLa4leT3dsAZm3DLTy9i+90qxfvjMM2h3K
         Nq/ushvxGCv9mBnfBbHlxe/db3tiW1FwgBEiusGgR5Nb0Ht4iUw3l8rWRT9eralWjhZS
         3GdRDQfCGY6TRceT7nL2O+MVIj9A04kbqpTZIUIvVG9YfQt0ab39nKLosjEDovSFM1JI
         SA1jXNn5NiwIgJOrX/2OCOyNo50BXHVTI6qh2wJQAob/XR23sQFn548zqwLMZvRMwg5R
         xM+UvH4t7EJ/cCrDBhPkSFRuZt9Yp8U6qlC0dxcV+mupTKlCrFLOAjbsYlqFKwTTWHsc
         xKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692025170; x=1692629970;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8qb4I2iMtpBba9HSfmUUjx2IU01QjiUObNmtp9Xoks=;
        b=QVzxkl0A6M9cp40Fm6NAM7mLOOgcxLTW/Bo3bAceKX37JMZPiqbi/RJ295msNXklhC
         8/bdqs9OhaLcyHDdTlPI/CX6niWASeT4G0PO3X6WQtWkqZnabkJTKtnwEkuBMYF9cUR3
         yDQ0GUAnCiKOrOKoov9C4L+j5W9zqSRfy9gAYq5UKImmwPmkwcJ1By7Og1q9ZMtG2CeR
         SpBAgfFl70kwVO7t8MohoAjWL8pCX5rB8+Kp40JZzaKfGvyyRxuKR7PKQW02ZsFgi4pk
         ERRf7vlDlFY2hz29lB7suFiHSSTfmssmxmmlYPkvOrAp7cwAvss9rmdLHCrLNbhSQQ2G
         FXmw==
X-Gm-Message-State: AOJu0YyBLy12LejA8wo8bmJLQlpie41c2FkOjL9sDBcoQXj/Bs1SXnh8
	ZQjmf/zVXNTDmGD8ezvTB2GDoggmFgw=
X-Google-Smtp-Source: AGHT+IHPMMISlpPxq62g1GrnLe1VT85ACiT4WRhBUw9052pZ2y+1DmeLVJM8vI+ArxhcBpM4H1hVmw==
X-Received: by 2002:a05:620a:1a04:b0:76c:ed4e:ac10 with SMTP id bk4-20020a05620a1a0400b0076ced4eac10mr13466630qkb.6.1692025169996;
        Mon, 14 Aug 2023 07:59:29 -0700 (PDT)
Received: from ?IPv6:::1? ([2607:fb91:1cc6:5a6a:8af6:c1c6:1d07:657c])
        by smtp.gmail.com with ESMTPSA id u21-20020ae9c015000000b007654bb4a842sm3051530qkk.104.2023.08.14.07.59.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 07:59:29 -0700 (PDT)
Date: Mon, 14 Aug 2023 14:59:25 +0000
From: Clint Scarborough <clinton.scarborough@gmail.com>
To: usrp-users@lists.ettus.com, Paul Atreides <maud.dib1984@gmail.com>,
 "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
In-Reply-To: <7B734608-0C92-4F35-A0E2-1383CEFAC07B@gmail.com>
References: <97acfc9d5ea24e50bf7c2a43dea11a66@iis.fraunhofer.de> <7B734608-0C92-4F35-A0E2-1383CEFAC07B@gmail.com>
Message-ID: <73ABF78F-0D3F-4596-8631-EEE0C89DF2AD@gmail.com>
MIME-Version: 1.0
Message-ID-Hash: OBYUBDN5A2255AMSOFEIC3N6WERP3ONW
X-Message-ID-Hash: OBYUBDN5A2255AMSOFEIC3N6WERP3ONW
X-MailFrom: clinton.scarborough@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4: RFNoC FFT Block in GNU Radio companion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBYUBDN5A2255AMSOFEIC3N6WERP3ONW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8780724558500534711=="

--===============8780724558500534711==
Content-Type: multipart/alternative;
 boundary=----9CISUCKC6V9MQSDJK3UHXJ5WWGQ7WN
Content-Transfer-Encoding: 7bit

------9CISUCKC6V9MQSDJK3UHXJ5WWGQ7WN
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I had a similar problem a few weeks back=2E  I don't remember all the detai=
ls, but I was only able to get it to work for smaller FFT lengths=2E  In ad=
dition to keeping spp consistent, I'd also try shorter FFT lengths (with co=
rresponding shorter spp)=2E  I was working with UHD 4=2E4 and GNURadio's ma=
in branch=2E

-- Clint

On August 14, 2023 2:35:19 PM UTC, Paul Atreides <maud=2Edib1984@gmail=2Ec=
om> wrote:
>Luca:
>At one point I was trying a Fosphor FPGA image and I remember it was impo=
rtant to set the spp block parameter to be equal in all the blocks that wou=
ld accept that parameter=2E So spp=3D1024 or whatever your FFT size is=2E T=
hat may have changed since 4=2E0 but that was the case in the past=2E=20
>
><end transmission>
>
>> On Aug 14, 2023, at 10:29, Bachmaier, Luca <luca=2Ebachmaier@iis=2Efrau=
nhofer=2Ede> wrote:
>>=20
>> =EF=BB=BF
>> Hello everyone,
>> =20
>> I=E2=80=99m currently developing a GNU Radio flowgraph with RFNoC 4=2E3=
 which uses the RFNoC FFT block=2E According to this workshop (https://www=
=2Eyoutube=2Ecom/watch?v=3D4XXqk0yGvCI @ 18:10) there are five runtime para=
meters you have to set for the FFT block: magnitude, direction, length, fft=
_scaling, shift_config=2E
>> I=E2=80=99m not exactly sure where in the flowgraph I can set these pro=
perties=2E E=2Eg=2E is setting the =E2=80=9CBlock Args=E2=80=9D parameter o=
f the FFT block to =E2=80=9Cmagnitude=3Dcomplex,direction=3D1,length=3D1024=
=E2=80=9D correct? If not, what is the right way to set the runtime paramet=
ers?
>> =20
>> After setting them as I described I get two python errors when trying t=
o run the flowgraph:
>> =20
>> 1=2E Setting magnitude=3Dcomplex causes this:
>>              RuntimeError: RuntimeError: Property magnitude:RuntimeErro=
r: Cannot convert `complex' to int!
>> In the flowgraph, the output of the RFNoC FFT block is connected direct=
ly to an RFNoC Rx Streamer block=2E It seems that all default RFNoC blocks =
only accept an int input=2E This error seems strange and that=E2=80=99s why=
 I doubt that I set the magnitude parameter correctly=2E
>> =20
>> 2=2E No matter what parameter I set for the FFT, I get the following er=
ror:
>>              RuntimeError: ValueError: samples per package must not be =
smaller than atomic item size
>> I was not able to find any sufficient information about this online unf=
ortunately=2E
>> =20
>> I hope I was able to describe my problems clearly and would be glad to =
receive help regarding any of those=2E
>> =20
>> Thank you in advance and regards
>> Luca
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists=2Eettus=2Ecom
>> To unsubscribe send an email to usrp-users-leave@lists=2Eettus=2Ecom

------9CISUCKC6V9MQSDJK3UHXJ5WWGQ7WN
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto"><div dir=3D"auto">I had a similar probl=
em a few weeks back=2E=C2=A0 I don't remember all the details, but I was on=
ly able to get it to work for smaller FFT lengths=2E=C2=A0 In addition to k=
eeping spp consistent, I'd also try shorter FFT lengths (with corresponding=
 shorter spp)=2E=C2=A0 I was working with UHD 4=2E4 and GNURadio's main bra=
nch=2E<br></div><div dir=3D"auto">-- Clint</div><br><br><div class=3D"gmail=
_quote"><div dir=3D"auto">On August 14, 2023 2:35:19 PM UTC, Paul Atreides =
&lt;maud=2Edib1984@gmail=2Ecom&gt; wrote:</div><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204,=
 204, 204); padding-left: 1ex;">
Luca:<div>At one point I was trying a Fosphor FPGA image and I remember it=
 was important to set the spp block parameter to be equal in all the blocks=
 that would accept that parameter=2E So spp=3D1024 or whatever your FFT siz=
e is=2E That may have changed since 4=2E0 but that was the case in the past=
=2E&nbsp;</div><div><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-spa=
n" style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0=2E296875); -web=
kit-composition-fill-color: rgba(175, 192, 227, 0=2E230469); -webkit-compos=
ition-frame-color: rgba(77, 128, 180, 0=2E230469); ">end transmission&gt;</=
span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 14, 2023, =
at 10:29, Bachmaier, Luca &lt;luca=2Ebachmaier@iis=2Efraunhofer=2Ede&gt; wr=
ote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style>@font-face { font-family: "Cambria Math"; }
@font-face { font-family: Calibri; }
p=2EMsoNormal, li=2EMsoNormal, div=2EMsoNormal { margin: 0cm 0cm 0=2E0001p=
t; font-size: 11pt; font-family: Calibri, sans-serif; }
a:link, span=2EMsoHyperlink { color: rgb(5, 99, 193); text-decoration: und=
erline; }
a:visited, span=2EMsoHyperlinkFollowed { color: rgb(149, 79, 114); text-de=
coration: underline; }
p=2EMsoListParagraph, li=2EMsoListParagraph, div=2EMsoListParagraph { marg=
in: 0cm 0cm 0=2E0001pt 36pt; font-size: 11pt; font-family: Calibri, sans-se=
rif; }
span=2EE-MailFormatvorlage17 { font-family: Calibri, sans-serif; color: wi=
ndowtext; }
=2EMsoChpDefault { font-family: Calibri, sans-serif; }
@page WordSection1 { size: 612pt 792pt; margin: 70=2E85pt 70=2E85pt 2cm; }
div=2EWordSection1 { page: WordSection1; }</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently developi=
ng a GNU Radio flowgraph with RFNoC 4=2E3 which uses the RFNoC FFT block=2E=
 According to this workshop (<a href=3D"https://www=2Eyoutube=2Ecom/watch?v=
=3D4XXqk0yGvCI">https://www=2Eyoutube=2Ecom/watch?v=3D4XXqk0yGvCI</a>
 @ 18:10) there are five runtime parameters you have to set for the FFT bl=
ock: magnitude, direction, length, fft_scaling, shift_config=2E<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m not exactly sure w=
here in the flowgraph I can set these properties=2E E=2Eg=2E is setting the=
 =E2=80=9CBlock Args=E2=80=9D parameter of the FFT block to =E2=80=9Cmagnit=
ude=3Dcomplex,direction=3D1,length=3D1024=E2=80=9D correct? If not, what is=
 the right way
 to set the runtime parameters?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After setting them as I descri=
bed I get two python errors when trying to run the flowgraph:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1=2E Setting magnitude=3Dcompl=
ex causes this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: RuntimeError: Prop=
erty magnitude:RuntimeError: Cannot convert `complex' to int!<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the flowgraph, the output o=
f the RFNoC FFT block is connected directly to an RFNoC Rx Streamer block=
=2E It seems that all default RFNoC blocks only accept an int input=2E This=
 error seems strange and that=E2=80=99s why I doubt
 that I set the magnitude parameter correctly=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2=2E No matter what parameter =
I set for the FFT, I get the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RuntimeError: ValueError: sample=
s per package must not be smaller than atomic item size<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was not able to find any suf=
ficient information about this online unfortunately=2E<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I hope I was able to describe =
my problems clearly and would be glad to receive help regarding any of thos=
e=2E<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance and regar=
ds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span></p>
</div>


<span>_______________________________________________</span><br><span>USRP=
-users mailing list -- usrp-users@lists=2Eettus=2Ecom</span><br><span>To un=
subscribe send an email to usrp-users-leave@lists=2Eettus=2Ecom</span><br><=
/div></blockquote></div></blockquote></div></body></html>
------9CISUCKC6V9MQSDJK3UHXJ5WWGQ7WN--

--===============8780724558500534711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8780724558500534711==--
