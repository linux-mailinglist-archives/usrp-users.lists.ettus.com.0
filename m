Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A716E64EE46
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 16:54:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A59893844BC
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 10:54:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671206075; bh=lVQMy6H2IHez/FJBhM/F69Xgp/CK50HWTkj3oWhcQYo=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=loL8JJH3AN0S43lroPlCloE8EAvQHSuBIRpPFN2zm8T2V6LmGNpYOT6zBh7sPmleD
	 pUP1d6JWlLJ7X2+HV9JqB6WnKudYySYTOqLYx6Yud/NdBIHta6x4TeVbhWSZ/0Ua+l
	 Z6ZU94R6ee6LBD+4Vh3Ufhcm+DXRQZWwylR3/gqEOMEmuGwWl+9lFtJpREF9ft4pue
	 aVSlfIh0wwctLQR/MUtMuUQuTOBC68AIVh6HMJGn/fM6hIjlPhXDFsgZOEz2XI0Byi
	 25xKpTCyvBSNrM2H+H0xmqycf+R5cjT8wlEwyAP+ZcLsTWtySqGUEQLUKv01ud+rma
	 dR6FMKTCxuMHA==
Received: from sonic307-9.consmr.mail.ne1.yahoo.com (sonic307-9.consmr.mail.ne1.yahoo.com [66.163.190.32])
	by mm2.emwd.com (Postfix) with ESMTPS id BB0683843E8
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 10:54:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.b="Y+C1XAq3";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1671206066; bh=u4RPktGxR9AQ1FLhuzhfkBGmI6LirHn+4v7dkDyi7E4=; h=From:To:References:In-Reply-To:Subject:Date:From:Subject:Reply-To; b=Y+C1XAq3+tH32M7pQ+LDhOVUiHBHjy6BooR/IzR2iz7qnA7zZX49h7OuE3AuWiqznJqC88ZXtc7IV4JIr1+a7YdFoCerTMMew1kTWKYm6FNQnduXJFOr7/ORJzmSusOOWQ5/QCkC+MeqVkIPCBuUhzL2mlfrLhqoaR7LEuwPOjrhawZ4f+/0kBw1LXs9oho0lIIiGuDzw8wA2ZSCEZikRBaS9ksaNTExME8dcL8Tpj3iK1V6G5xn2KsPtBkQtWClhsuD651lvHeQAyPkFhnJl9MzQOD/obw6Hjy3HtfVylF6epdd1zny/3iOYLGUxM/+WCaxunblcYJFrDpXMC2aRg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1671206066; bh=C/p4wFaX2SwgO2hjf/7ClZc9U5TucwIjy7+4FJsL8mr=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=oRG4Ljb5BMhKOOL0WFy7djz9xBzUjI2+FJ7aPqkYaiB6bLKZ4lAX2X2ka34mhR0sFIXlQBKLaR0WuxSHnHDifgu9FwNUnPbH8v+G6FMYvskCMKdlmN1PU/8i0n91RQfn9fMUgrgII2xSE5wV7CUpj+YV4gMAKj5QvYN3ay71VqKS8VZ4GnuJnloTU4a13DW9kqU75EUS0yotdwSIRoWDXxEcCgKGa2df4wNL3oGcEOJKS0G1kNp3QSmkzgZhJYoNcFmXsfMW1mx+LwErGBYBecvV7bPS9o6VpnygZF2MmhhmIIn3zyLPlAvLGZ9GRsB3Llr2zhrxqXP4+sCDzAEbyA==
X-YMail-OSG: 4Wx_wm8VM1nlS43i3pEy0yPQ2I7ANRzbeQH3kU3m4UENnTREJFB8.G8C54b7YVg
 wxaHyvNXp.aWYhBc.QdGwM4uUH6F3Kw_WxXhGfW0JFzv2TCNd6nTdkAfMfW4jMAGXlPRBm4wWo6s
 69LmWFFRktAp8EpOqbp8iTDWK86Gqwfjbt8uSHuWx6Xzx39zTJdWrD.d_Sk3g6zP3KCs6.8vT4AY
 EYSbx0.ID1QaPZ5NdI7rSCbm7SRMHKNlXrFNcvRqls2QNtsTKTI.at4QAfzGaYAIu5cKFTfqN1zf
 By_2zC7Kg6PPBFJmehpNY_oB.R2y1CBIWJzJaFB3Gpk28ylYqy1ADjAAs4Ss0BKULNgsRmbS3iH.
 yyoaSJ522hIbqjHwidMMkup7YucJeXWlSnWmzh1LrrkDYRuhea0apet14lRrBkYNmNNnWVFnzTiP
 6Hf4WlJ5UtWh2MXeDuy1.WSsZTnYfkFywha71ruyMIhVHD.KdkrTCPAYICEQ52fng4Us0ZqORjFM
 plGUoS5zM30C20e.KCbw35ZWhfD09gVm1p1JgOIpyDkU1339.Z2cD1EEC27_2k7OgH77xEhJZPYn
 Lgrej.sbJmDNULqHtcdCTrwPUzQWI.m9NuRNTiSBLkf9LnJa8FJNCwxPPdnlRIvoY_lK1De3cNl7
 nfe2DGiSaY1QkRtIxwPchSkNvf7MDgXQEtnKwpfcPShnUZETqMnVvINakIrizigIGXKnDEY8xjpH
 CdN2sa9b58vuU3stIxXaSf6HwN5aMNssLfvhDUixvsxKu2UjQvXmIJSn6ajscfBFXXOoarHIy9m7
 PDvpTuqr2OrCnnz8PeR8HQtx8Eij1Yxu5WxbG54vffwlrOowqR7s_4xp8r63hVoD.Dec7RvXubpN
 wDGMd0aRcjxdUkmIZG7_6c8xjum7xJuw7kUx00AzZvQghz1Wk1a.nGoj3rCPTnT15FrWGaK93R1k
 6fIHXxXtOgJwCvrQ8cXBnePmcekqneXlgaKw.zihylSzuZ8t0T268K1lfeihuTKOuPu8MrhYCwga
 QufqrICVtv1U3ofjvyRMeTNIhZno9pVIiSMRm0U39FF2KAHmDNlI74wtFgVujIRzTktMwkiOtOaZ
 VPnBXKx0lwBhxdzUU41N.NxSbDEal.W25wd2ZtPMnKEpOdCkAZOiDDjnNRVw5uurh31VD2MNUnNO
 .9UFubpzwcAIefoABXyQCjmLTxX37mTVD.d0zHz1al7HGQyF9_SxEuUq1wFPb2ExburnanIEd9Fo
 rUIeNO2TLUzYmwFV.TJRfUyPL9XMaSGuu.8PhF0Ld.XwBHaJUI8qv2jTDdC.xoZiw_UshcHfAqdS
 dVV2zQvwDsZcfsvk6TxeB2g1GNWwSW_Ard3axPWSqGj47BpHQLH0AM05uQahj.9fSI2JGKc.Qdit
 zUyV6zK4vEAhBKPYV8Y0JZN09qBIi411rDmGWDBSgyObH.geQIdI43HRYCcCVnVignx8sWq33LDX
 2jAGJpbzFLF0F0j5JQ26y_U9i9Lf.RjSYBsdhaM7AQOiwwwRnn.HHQO.464G7Rg2SMznfI93gFOf
 nz6VsmcuiSlZYP74WXM4kKYrqFz7RmP9o7pmEKAGwuKDxhotbQydglQu_fHXjSbMMRLE.txjfOOx
 SzM50yN_XDy7.Qcd0ui3LDuLPbByMdIgOpGXq2WDRgQWF2Fh6yWcyHNZ3EqfNy5FCD9rEmueyiIC
 zLgsosDAf1n5_rKog3p0p2R.ABbbmDa7lZdTyC_bzP3S2ex1C5xeg8dG7li8r3sJw4T0dyuf2M48
 yAclDRglPNY3OKtMXmkGIsvY_RYEHjIRYsH0auRByL_Be4OMkrSw5lRT0HZS9x2E0xaw8bpa8M0r
 uDQq6jrYUl3qjVSvEymimza2aKY32A8cAogE_eUgkYUh1Nz3rggOtu_UIF.b2mpMD7vE6Sgu9WeS
 CfdyFbHV.lptZckAq4.p.XE0Jdk1g4DosGR8HmU.YOPFuQ.hnw7EID5c5AQE_GygEhW_9q0qH5U7
 GDp9tUWHP3k6pcCbw6OIraGkWM9XC76e0XLu5r4H8qqcN6tCkjpACH1XFm3Oxxjo1ESjlG.Ykaf_
 BWVdqmkmlfo_b3aX47tU58VpyDDri7E0u7I8HG04buFfhmx45Ebgqcvz_73elLCp1Nq.uCAX5h.q
 wYoDVYX22ma1Q7aWhOAWWCvvrQ6zKEX3BJ3AIrQw8hvLz6MzY2Ng8I8fTXoz1s5pWix9_pp60M2w
 xLk2LJRcA_w3mitGiz42PRGLAGzDabA2VwAh6
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ne1.yahoo.com with HTTP; Fri, 16 Dec 2022 15:54:26 +0000
Received: by hermes--production-bf1-5458f64d4-2b7vw (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 24c8c7701be5ff5fab72e4400cd84618;
          Fri, 16 Dec 2022 15:54:21 +0000 (UTC)
To: "'Jim Palladino'" <jim@gardettoengineering.com>,
	<usrp-users@lists.ettus.com>
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net> <00c001d9115b$55bcc130$01364390$@verizon.net> <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com> <MN2PR12MB3312A4D66FE8688652AC9774B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312A4D66FE8688652AC9774B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Fri, 16 Dec 2022 10:54:19 -0500
Message-ID: <00dd01d91166$a8f0ccb0$fad26610$@verizon.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHrQSIkEz8FGhps96We5qE3ABy7qAGf7IL+AqmqsMIBvjFvh64cC9FA
Content-Language: en-us
Message-ID-Hash: 4GBWLRBIK5SDGQNZ6JDJQJ43P6HRVT2C
X-Message-ID-Hash: 4GBWLRBIK5SDGQNZ6JDJQJ43P6HRVT2C
X-MailFrom: mikerd1@verizon.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GBWLRBIK5SDGQNZ6JDJQJ43P6HRVT2C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============5579487626854063442=="

This is a multipart message in MIME format.

--===============5579487626854063442==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00DE_01D9113C.C02042F0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_00DE_01D9113C.C02042F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jim,

 

Thanks for taking care of this.  I'll just fix it on my end and wait for the
eventual updates in the repository.

 

Thanks,

Mike

 

From: Jim Palladino <jim@gardettoengineering.com> 
Sent: Friday, December 16, 2022 10:04 AM
To: usrp-users@lists.ettus.com; Mike <mikerd1@verizon.net>
Subject: Re: [USRP-users] Re: Did anyone else need to do this?

 

Mike,

My last comment was related to gr-ettus (ettus_rfnoc_graph.block.yml), which
I installed with gnuradio 3.8 / uhd 4.1. But I do see that gnuradio 3.10 has
the exact same issue (as you found) in uhd_rfnoc_graph.block.yml:

https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_gr
aph.block.yml


 
<https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_g
raph.block.yml> 

 
<https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc_g
raph.block.yml> gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 .
gnuradio/gnuradio

GNU Radio - the Free and Open Software Radio Ecosystem -
gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 . gnuradio/gnuradio

github.com

So, it looks like we've run into the same issue in different
implementations. I can post and issue on the gnuradio github page as well.

Jim

 

  _____  

From: Jim Palladino <jim@gardettoengineering.com
<mailto:jim@gardettoengineering.com> >
Sent: Friday, December 16, 2022 9:38 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> >; Mike
<mikerd1@verizon.net <mailto:mikerd1@verizon.net> >
Subject: [USRP-users] Re: Did anyone else need to do this? 

 

Hi Mike,

 

Yes, I've run into that. I posted an issue last week here:
https://github.com/EttusResearch/gr-ettus/issues/69
<https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_EttusResear
ch_gr-2Dettus_issues_69&d=DwMF-g&c=euGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfii
MM&r=XUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=8R8d8AptGNR6pvwu09qYQOqR4
yaqR90_EK56v2z-xLM&s=xyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&e=> 


 
<https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_EttusResear
ch_gr-2Dettus_issues_69&d=DwMF-g&c=euGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfii
MM&r=XUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=8R8d8AptGNR6pvwu09qYQOqR4
yaqR90_EK56v2z-xLM&s=xyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&e=> 

 
<https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_EttusResear
ch_gr-2Dettus_issues_69&d=DwMF-g&c=euGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfii
MM&r=XUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=8R8d8AptGNR6pvwu09qYQOqR4
yaqR90_EK56v2z-xLM&s=xyYFrqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&e=> syntax
error in ettus_rfnoc_graph.block.yml . Issue #69 . EttusResearch/gr-ettus

Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch (and
possibly others) looks like: self.rfnoc_graph = ${id} =
ettus.rfnoc_graph(uhd.device_addr(&quot;${graph_args}&quot;))) You...

github.com

I ended up just modifying the yml file in source and then reinstalling
gr-ettus.

 

Jim

 

  _____  

From: Mike via USRP-users <usrp-users@lists.ettus.com
<mailto:usrp-users@lists.ettus.com> >
Sent: Friday, December 16, 2022 9:33 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> >
Subject: [USRP-users] Did anyone else need to do this? 

 

Hi all,

 

This goes in the category of "Did anyone else need to do this?".

 

I'm running Ubuntu 20.04.5 LTS with GNURadio 3.8 (Maint) and UHD 4.0.  I
recently upgraded UHD to 4.2.  I ran into a gnuradio issue starting a
"RFNoC" flow graph with a syntax error for an unmatched ')':

  Self.rfnoc_graph=ettus_rfnoc_graph_0 =
ettus.rfnoc_graph(uhd.device_addr("addr=xxx,type-n3xx")))

 

I was able to manually edit the generated python code to remove one of the
parentheses and see the code work.

I then upgraded gnuradio to 3.10 which had the same issue.

 

I then compared the "uhd_rfnoc_graph.block.yml" block files between UHD4.0
and 4.2.  It's significantly different as 4.0 uses python .join to build the
argument list and UHD 4.2 uses the python module "ast" to generate the
argument list.  But the final line on the 4.2 version had the syntax error
of the extra ')':

              self.rfnoc_graph = ${id} =
uhd.rfnoc_graph(uhd.device_addr("${graph_args}")))

 

I removed one ')' then reinstalled gnuradio (make install) from the build
directory and everything seemed to work after that.

 

So, it seems like it is a simple syntax error.  But normally something like
this (in my experience) indicates that I might have missed some
configuration step somewhere and have yet to see the other errors.

 

So, has anyone seen something like this?

 

Thanks,

Mike


------=_NextPart_000_00DE_01D9113C.C02042F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><!--[if !mso]><style>v\:* =
{behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:"Segoe UI Light";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.contentpasted0
	{mso-style-name:contentpasted0;}
span.xelementtoproof
	{mso-style-name:x_elementtoproof;}
p.xxmsonormal, li.xxmsonormal, div.xxmsonormal
	{mso-style-name:x_x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Jim,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks for =
taking care of this.&nbsp; I&#8217;ll just fix it on my end and wait for =
the eventual updates in the repository.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Jim Palladino =
&lt;jim@gardettoengineering.com&gt; <br><b>Sent:</b> Friday, December =
16, 2022 10:04 AM<br><b>To:</b> usrp-users@lists.ettus.com; Mike =
&lt;mikerd1@verizon.net&gt;<br><b>Subject:</b> Re: [USRP-users] Re: Did =
anyone else need to do this?<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black;background:white'>Mike,</span><o:p>=
</o:p></p></div><div><p class=3DMsoNormal><span =
class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'>My last comment =
was related to gr-ettus (ettus_rfnoc_graph.block.yml), which I installed =
with gnuradio 3.8 / uhd 4.1. But I do see that gnuradio 3.10 has the =
exact same issue (as you found) in =
uhd_rfnoc_graph.block.yml:</span></span><o:p></o:p></p></div><div><p =
class=3DMsoNormal><span class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'><a =
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml">https://github.com/gnuradio/gnuradio/blob/maint=
-3.10/gr-uhd/grc/uhd_rfnoc_graph.block.yml</a></span></span><o:p></o:p></=
p></div><div><div><div =
style=3D'margin-top:12.0pt;margin-bottom:12.0pt;min-width: 424px' =
id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL2dudXJhZGlvL2dudXJhZGlvL2Jsb2Iv=
bWFpbnQtMy4xMC9nci11aGQvZ3JjL3VoZF9yZm5vY19ncmFwaC5ibG9jay55bWw."><table =
class=3DMsoNormalTable border=3D1 cellspacing=3D4 cellpadding=3D0 =
width=3D"100%" style=3D'width:100.0%;border:solid #C8C8C8 1.0pt'><tr><td =
valign=3Dtop style=3D'border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt'><div =
style=3D'margin-right:9.0pt;overflow:hidden' =
id=3DLPImageContainer926969><p class=3DMsoNormal><a =
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml" target=3D"_blank"><span =
style=3D'text-decoration:none'><img border=3D0 width=3D240 height=3D120 =
style=3D'width:2.5in;height:1.25in' id=3D"_x0000_i1030" =
src=3D"https://repository-images.githubusercontent.com/3030065/919b3680-5=
0c1-11ea-8e39-e96d4449c2cd"></span></a><o:p></o:p></p></div></td><td =
width=3D"100%" valign=3Dtop =
style=3D'width:100.0%;border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt'><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt' id=3DLPTitle926969><p =
class=3DMsoNormal><span style=3D'font-size:16.0pt;font-family:"Segoe UI =
Light",sans-serif'><a =
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml" target=3D"_blank"><span =
style=3D'text-decoration:none'>gnuradio/uhd_rfnoc_graph.block.yml at =
maint-3.10 &middot; =
gnuradio/gnuradio</span></a><o:p></o:p></span></p></div><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt;max-height: =
100px;overflow:hidden' id=3DLPDescription926969><p =
class=3DMsoNormal><span style=3D'font-size:10.5pt;font-family:"Segoe =
UI",sans-serif;color:#666666'>GNU Radio &#8211; the Free and Open =
Software Radio Ecosystem - gnuradio/uhd_rfnoc_graph.block.yml at =
maint-3.10 &middot; gnuradio/gnuradio<o:p></o:p></span></p></div><div =
id=3DLPMetadata926969><p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;font-family:"Segoe =
UI",sans-serif;color:#A6A6A6'>github.com<o:p></o:p></span></p></div></td>=
</tr></table></div></div><p class=3DMsoNormal><span =
class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'>So, it looks =
like we've run into the same issue in different implementations. I can =
post and issue on the gnuradio github page as =
well.</span></span><o:p></o:p></p></div><div><p class=3DMsoNormal><span =
class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'>Jim</span></span>=
<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><hr size=3D2 width=3D"98%" =
align=3Dcenter></div><div id=3DdivRplyFwdMsg><p =
class=3DMsoNormal><b><span style=3D'color:black'>From:</span></b><span =
style=3D'color:black'> Jim Palladino &lt;<a =
href=3D"mailto:jim@gardettoengineering.com">jim@gardettoengineering.com</=
a>&gt;<br><b>Sent:</b> Friday, December 16, 2022 9:38 AM<br><b>To:</b> =
<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
 &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt;; Mike &lt;<a =
href=3D"mailto:mikerd1@verizon.net">mikerd1@verizon.net</a>&gt;<br><b>Sub=
ject:</b> [USRP-users] Re: Did anyone else need to do this?</span> =
<o:p></o:p></p><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal><span class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>Hi =
Mike,</span></span><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>Yes, I've run =
into that. I posted an issue last week here:</span></span><span =
style=3D'font-size:12.0pt;color:black;background:white'><br><span =
class=3Dxelementtoproof><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D">https://github.com/Ettu=
sResearch/gr-ettus/issues/69</a></span></span><span =
class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'><o:p></o:p></span=
></span></p><div><div =
style=3D'margin-top:12.0pt;margin-bottom:12.0pt;min-width:424px' =
id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMv=
aXNzdWVzLzY5"><table class=3DMsoNormalTable border=3D1 cellspacing=3D4 =
cellpadding=3D0 width=3D"100%" style=3D'width:100.0%;border:solid =
#C8C8C8 1.0pt'><tr><td valign=3Dtop style=3D'border:none;padding:9.0pt =
27.0pt 9.0pt 9.0pt'><div style=3D'margin-right:9.0pt;overflow:hidden' =
id=3DLPImageContainer455494><p class=3DMsoNormal><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D" =
target=3D"_blank"><span style=3D'text-decoration:none'><img border=3D0 =
width=3D240 height=3D120 style=3D'width:2.5in;height:1.25in' =
id=3D"_x0000_i1029" =
src=3D"https://opengraph.githubassets.com/5b58487cd101d233e77dea3debf24f9=
7c1326803f405d696532fef76e41550f5/EttusResearch/gr-ettus/issues/69"></spa=
n></a><o:p></o:p></p></div></td><td width=3D"100%" valign=3Dtop =
style=3D'width:100.0%;border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt'><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt' id=3DLPTitle455494><p =
class=3DMsoNormal><span style=3D'font-size:16.0pt;font-family:"Segoe UI =
Light",sans-serif'><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D" =
target=3D"_blank"><span style=3D'text-decoration:none'>syntax error in =
ettus_rfnoc_graph.block.yml &middot; Issue #69 &middot; =
EttusResearch/gr-ettus</span></a><o:p></o:p></span></p></div><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt;max-height:100px;overflow=
:hidden' id=3DLPDescription455494><p class=3DMsoNormal><span =
style=3D'font-size:10.5pt;font-family:"Segoe =
UI",sans-serif;color:#666666'>Line 25 of ettus_rfnoc_graph.block.yml in =
the maint-3.8-uhd4.0 branch (and possibly others) looks like: =
self.rfnoc_graph =3D ${id} =3D =
ettus.rfnoc_graph(uhd.device_addr(&amp;quot;${graph_args}&amp;quot;))) =
You...<o:p></o:p></span></p></div><div id=3DLPMetadata455494><p =
class=3DMsoNormal><span style=3D'font-size:10.5pt;font-family:"Segoe =
UI",sans-serif;color:#A6A6A6'>github.com<o:p></o:p></span></p></div></td>=
</tr></table></div></div><p class=3DMsoNormal><span =
class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>I ended up just =
modifying the yml file in source and then reinstalling =
gr-ettus.</span></span><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><span class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>Jim</span></span>=
<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><hr size=3D2 width=3D"98%" =
align=3Dcenter></div><div id=3D"x_divRplyFwdMsg"><p =
class=3DMsoNormal><b><span style=3D'color:black'>From:</span></b><span =
style=3D'color:black'> Mike via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt;<br><b>Sent:</b> Friday, December 16, 2022 9:33 AM<br><b>To:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
 &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt;<br><b>Subject:</b> [USRP-users] Did anyone else need to do =
this?</span> <o:p></o:p></p><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3Dxxmsonormal>Hi all,<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>This =
goes in the category of &#8220;Did anyone else need to do =
this?&#8221;.<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>I&#8217;m running Ubuntu 20.04.5 LTS with GNURadio =
3.8 (Maint) and UHD 4.0.&nbsp; I recently upgraded UHD to 4.2.&nbsp; I =
ran into a gnuradio issue starting a &#8220;RFNoC&#8221; flow graph with =
a syntax error for an unmatched &#8216;)&#8217;:<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp; Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D =
ettus.rfnoc_graph(uhd.device_addr(&#8220;addr=3Dxxx,type-n3xx&#8221;)))<o=
:p></o:p></p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>I was able to manually edit the generated python =
code to remove one of the parentheses and see the code =
work.<o:p></o:p></p><p class=3Dxxmsonormal>I then upgraded gnuradio to =
3.10 which had the same issue.<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>I then =
compared the &#8220;uhd_rfnoc_graph.block.yml&#8221; block files between =
UHD4.0 and 4.2.&nbsp; It&#8217;s significantly different as 4.0 uses =
python .join to build the argument list and UHD 4.2 uses the python =
module &#8220;ast&#8221; to generate the argument list.&nbsp; But the =
final line on the 4.2 version had the syntax error of the extra =
&#8216;)&#8217;:<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph =3D ${id} =3D =
uhd.rfnoc_graph(uhd.device_addr(&#8220;${graph_args}&#8221;)))<o:p></o:p>=
</p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>I =
removed one &#8216;)&#8217; then reinstalled gnuradio (make install) =
from the build directory and everything seemed to work after =
that.<o:p></o:p></p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>So, it seems like it is a simple syntax error.&nbsp; =
But normally something like this (in my experience) indicates that I =
might have missed some configuration step somewhere and have yet to see =
the other errors.<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>So, has =
anyone seen something like this?<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>Thanks,<o:p></o:p></p><p =
class=3Dxxmsonormal>Mike<o:p></o:p></p></div></div></div></div></body></h=
tml>
------=_NextPart_000_00DE_01D9113C.C02042F0--

--===============5579487626854063442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5579487626854063442==--
