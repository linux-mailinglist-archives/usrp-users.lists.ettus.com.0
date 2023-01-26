Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEC667C37E
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 04:26:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 926FD384340
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 22:26:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674703564; bh=fUOwJA+fW0/rJMhTGXkgoRHolY2AYgw8fbGQSHXKPfA=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IZfpzDIjOoZIfZQbmPugORRkMqb06AHmAv+ZrThVlfEL2vgetFrzxRvxhMEn9u1lV
	 RM0dAWDOrGGEGbibJcnyPmvISaRYeBSiZlKhEoZD/Pv/8f67ZeFeJxld0taVc6/TRW
	 8zIjSvz8aOflBQnyxoywOxIX6JygbzQ4brjRRgXbDqtDaM4I+jI/ypQxg7uIXzsZ28
	 fsIYpmXms+VDvK9wiNr043Y7nTZdh16uT4DAhtxrCg3ry0M9HMO2TMiCcKQoBWDOrM
	 HRaG3IW3cpc2aonfo8ik9T6eKPyCdcR0vxl29hCFsyx+MCl7fS7BVszrnoa9k+n+QE
	 2IToF52jvq41A==
Received: from sonic317-33.consmr.mail.ne1.yahoo.com (sonic317-33.consmr.mail.ne1.yahoo.com [66.163.184.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E3903840FB
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 22:25:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.b="HJPTsGw0";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1674703555; bh=9XaZteaQ3hLfL3MsyywjmH5nZqURkZb7NGy2kB6+EB8=; h=From:To:References:In-Reply-To:Subject:Date:From:Subject:Reply-To; b=HJPTsGw04eq1+Np5lo39V472RkACiILSdv+dzqf8PumPD6FwEx9RXnxq5WRX2dFYyzOp558ez15tbGKE8u8+udHJlaiC8l1tnyTFcwfcJALTI8xSI3nmjpwQgqbihXZAwPYbN+aS+RyqjI2rB4FncksS4RroPTW4ML0p2dW4R94CqkvvHpPehYOJhDAQws8ufI8u6Lxi5AQny/C6zkBRniIfIkhiPt2HBP/MnIih5yz9JXcA0oc6p2wV6E+mQASaDCSY2mWuIo/PUUl/7mY9ZN7rMNkOo0BTtd8bWy190O6oLIK3etwv0xlZAvWJKV8rtNN82B9zEMQU17rJ2jrJPA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1674703555; bh=c4zhrEztmgoYIHf/pvpDKg2SusRIUwsBuA/dg0BE6vP=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=WoEfe+AdHkhg51yPMY9HzrSEzZAjGTL2FquEN5IAyU53MuGb273gbVlgRpz3yAW5XFc18F5ykL7PNOyI/CFPD2UAfRRWmSUv85gGkoSakQs5N3bvoLzDSG7ZRXDI0LM+r70C3WxKflytXx89gLtmEynKEluUSSGideRIHxWVl551D/yubM5B3A2LNP/IgIiA9HKoywxuilNSq36khCgM+9eKBieFAl+X26ohS1WYuZ9qA6mfZGHU2AsVjvpXgTC9JeFohZgk01bDbCjejKkBBgjff8tA6YLNlXwNiMDimnQMyj/vx9fO/yIqYwwhlz9ECvaDRNm7xMvUzHDBDU2Clw==
X-YMail-OSG: 6_RhShMVM1kn5Y8bG0Is_xZ8eYHyGWvBTMsb0wqMtIirsXUAYSy04OZtOz_vvP8
 9WQcVcpBBcrb_Ge0AgPvae5Nwwe2qXbeE0k36HDmBelrO8oU0hBgB5FYb64iONiQ1qkGfsUf1oTE
 6Riksxe8HoOXIMpKGiBNM1ryEamsTCV72zxzA5MZ1dk2bGAUFW9B4NLF4l_eRaf0F_orKfPDkyul
 LUjUR4OClwV3.5heBB_lAM6PCN7bbYsLpKW1tr1qBukdyuXFXfVL1Ebhyhw0D9Sjw4et.wzYnued
 G717zhMLl0UAYanGfA.WBjqK6UGKqmpn2JeuIWr7LatkiMmRk.7t66hrMNyHgZN_Dyh5hy3ZA8o1
 KMckNQVdlZsX5hQOJ_CnF5PTFj3xPF4gQFY67rnZ9OXhHx0Ga48D2VF5R5vVD5k7KmSaOpuc8Knv
 dUM0eY.oNoDeR5WGbB7S34vWjY2w5uLjzTD4gXMiajGx867HPlIATWAKf2v3oGgUI7RegFY6Gn5G
 n_ijqGhI9HmXQOCUWc3ug1CUV1iHLXWbjxGCsAWEhPmtyRuavIS6VlVfXZlRGd.4J4kx__0q9C.q
 tA7JEGg6CYaU3hxxo4BNbR05Pov15wvtYa8qr8UXxyaQzg.DQWE0Foso.VGp.LtaOLxKTBisRXU5
 xoYGQ04ectw5VLPG3ms_Hcx8sOtqc4wUhYsPgrz052TyWfqBbCeyhkdGrT06nJygSgm4apprwPAe
 2_jetZ8lh91UqkmBD0OH_dH7P5UOkIf0ouVp96Jt5TO2qou5gG6h6RkkgWSsArya2yDqKm7yNqEj
 B6tKXz8j3fEcROEjPX9oLDuDvznQ0PN2t5Ls.DKNdDLTkffYJmXr2BFBXh9d7lMugQAiUVHJP9sR
 5L11kALhYutD794d1tu21tKTOJiw.OVlXcb0gaQO7G3JWhCjMx9qUnn7u7QTlmkr2cs6L_t3kV4b
 m3UOTiwnvPMuukPlkpME8mq4Fuv_oqsqDdLZeOejWvl..6YDYg1MaBwMH6SIrJ6sc2._P9gT.1pe
 BXr9_ea87kx8ZXRkvRroA3J4P58L2NVxWp_J3xmoVN12DAHHe4SeytEeEY.GkC2Ff91m_I8Qsb4h
 4bjyt3H5wdKSRmA3crwj98nXWlIh1jI3mc_T.ZfUVEHNiTgkvbTnUE2qBkAXTPokXAaimHlvYBi9
 7xnutLm64.BBzxA0W.DI.ZQ7tVAJQdsfd37g39Hv.v2Qu1MooGmNOJ9onr.9I8_9X_AmVEBMIuSZ
 EQM2F0g5V27EA42NdMb1NahPx0PixLLkDcpiR2UpA6OoCaeTUHFZ2.12P7Y_iN7fOQiiwsE_PzQR
 heX6BXjhvnIMbmRLlE5RN8Pl0Ep6oJhk1tjHp1JaEh0s9c2wk2UD5gRrSY4JLm7YnIagTZk_2J35
 AWewolWheesaGIvYQqoQ6y8frVxgNmZ.3MZ.mhXB5iGeL3g0SonlG55xW8eeO48GydO7Qx36j3AE
 M6BWXwyhuXMSfVHnGFLLKUvCbouZWdNvYfscyiIuTrZwD_ngx8vZxFqSP3UpmubP.xhE8jDcoFxH
 JEHzfJcYygb3yPwKQCEUyOcsQBDD.jXXi6YfypUwBJqE8rodY.G.UJpLIF9SrFzuCAUqBxMSs92M
 VqWRMFDVDCv.GrULnTWg.1PyoHxwM2JH5wTvYgLLuKwAHYanAk7cBzEduXOhVo641ow2dVUhlSQO
 Ip0rl0YdTCCTzERdXASG9rJfai02EmMm0E9HjZswQE6l9fuiw0i1.peqiO7boaDWy80vICCl3yTo
 KLQiPA8eHi8OQNlj6NCkBoAIgfY4Lln9bafdYqGhOT_6_Cyf9tL6SiOuscrGrENJKI4If81mqreY
 5bhL2nzB8uBqRKQ50J3o4DK8DsiwnC9Jq3JiF5Hqn6Vjf6ygeGE0yRiLiOSNtoWzaqDVEOAfqisr
 6JxPJt4FGUubspkQlTyxBHlwsZLfY0G2MHvbxbyLaT2KlISKqtUvqqFPNyFBfo3APSxRH8Yq6ejD
 c9ILiKI8KvY_bj5GRyhCp4QEyAdh4zx.A.4YmP4XVUGeMMQTnJtWSSYgMXvdw2N.rrMK6NzmvsXQ
 Wu.girSB.jVg7lBUEuIABsJxQBDJuUj9ewN.CNjTWh_v5NTO1w7CzRwI5V_VL9HWE6vm6g2fPTac
 bbO5nrFcalouHwJXzP126HU8WgyE6IPgt3rh23BXdF506oWZgBycM9LjLi7YAIZr9TBJgOSBclCf
 TT0Y8L0hCK4tNDVyNd_iVrY6f75wCL3E-
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.ne1.yahoo.com with HTTP; Thu, 26 Jan 2023 03:25:55 +0000
Received: by hermes--production-bf1-57c96c66f6-l6456 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID bdb06917d6d3b6d20e175dd442e568c2;
          Thu, 26 Jan 2023 03:25:53 +0000 (UTC)
To: "'Jim Palladino'" <jim@gardettoengineering.com>,
	<usrp-users@lists.ettus.com>
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net> <00c001d9115b$55bcc130$01364390$@verizon.net> <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com> <MN2PR12MB3312A4D66FE8688652AC9774B8E69@MN2PR12MB3312.namprd12.prod.outlook.com> 
In-Reply-To: 
Date: Wed, 25 Jan 2023 22:25:54 -0500
Message-ID: <050601d93135$e6c3ce40$b44b6ac0$@verizon.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHrQSIkEz8FGhps96We5qE3ABy7qAGf7IL+AqmqsMIBvjFvhwIqD/lwrkpXUtA=
Content-Language: en-us
Message-ID-Hash: FMWCWNIDFCW6L6ABTQP2OLUNPOXNA3LC
X-Message-ID-Hash: FMWCWNIDFCW6L6ABTQP2OLUNPOXNA3LC
X-MailFrom: mikerd1@verizon.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FMWCWNIDFCW6L6ABTQP2OLUNPOXNA3LC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============1316372491120414352=="

This is a multipart message in MIME format.

--===============1316372491120414352==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0507_01D9310B.FDEFE920"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0507_01D9310B.FDEFE920
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

This is an update from a previous thread.  I also found another error in the
yaml file, ettus_rfnoc_graph.block.yml.  I'm running GNU Radio 3.8 and UHD
4.2.  The file is located in:

"gr-ettus/grc/ettus_rfnoc_graph.block.yml".  I found this because the
commands in the "Device Args" parameter were not being processed correctly.

 

The line is associated with the following "if" statement (line 19):

  If dev_args_s:

     graph_args += f",{clock_source_s}"

 

The "clock_source_s" should be "dev_args_s".

 

I found this because I'm trying to send specific initialization commands to
my N320.  As a side note, can anyone explain how to configure "subdev" from
a GRC flow graph so that I can enable the RF1 side of the N320?

 

Thanks,

Mike

 

From: Mike <mikerd1@verizon.net> 
Sent: Friday, December 16, 2022 10:54 AM
To: 'Jim Palladino' <jim@gardettoengineering.com>;
'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: RE: [USRP-users] Re: Did anyone else need to do this?

 

Jim,

 

Thanks for taking care of this.  I'll just fix it on my end and wait for the
eventual updates in the repository.

 

Thanks,

Mike

 

From: Jim Palladino <jim@gardettoengineering.com
<mailto:jim@gardettoengineering.com> > 
Sent: Friday, December 16, 2022 10:04 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> ; Mike
<mikerd1@verizon.net <mailto:mikerd1@verizon.net> >
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


------=_NextPart_000_0507_01D9310B.FDEFE920
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
p.xxmsonormal, li.xxmsonormal, div.xxmsonormal
	{mso-style-name:x_x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.contentpasted0
	{mso-style-name:contentpasted0;}
span.xelementtoproof
	{mso-style-name:x_elementtoproof;}
span.EmailStyle23
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
class=3DWordSection1><p class=3DMsoNormal>All,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>This is an =
update from a previous thread.&nbsp; I also found another error in the =
yaml file, ettus_rfnoc_graph.block.yml.&nbsp; I&#8217;m running GNU =
Radio 3.8 and UHD 4.2.&nbsp; The file is located in:<o:p></o:p></p><p =
class=3DMsoNormal>&#8220;gr-ettus/grc/ettus_rfnoc_graph.block.yml&#8221;.=
&nbsp; I found this because the commands in the &#8220;Device =
Args&#8221; parameter were not being processed =
correctly.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>The line is associated with the following =
&#8220;if&#8221; statement (line 19):<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; If dev_args_s:<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp; graph_args +=3D =
f&#8221;,{clock_source_s}&#8221;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The =
&#8220;clock_source_s&#8221; should be =
&#8220;dev_args_s&#8221;.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I found this =
because I&#8217;m trying to send specific initialization commands to my =
N320.&nbsp; As a side note, can anyone explain how to configure =
&#8220;subdev&#8221; from a GRC flow graph so that I can enable the RF1 =
side of the N320?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Mike =
&lt;mikerd1@verizon.net&gt; <br><b>Sent:</b> Friday, December 16, 2022 =
10:54 AM<br><b>To:</b> 'Jim Palladino' =
&lt;jim@gardettoengineering.com&gt;; 'usrp-users@lists.ettus.com' =
&lt;usrp-users@lists.ettus.com&gt;<br><b>Subject:</b> RE: [USRP-users] =
Re: Did anyone else need to do this?<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Jim,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks for =
taking care of this.&nbsp; I&#8217;ll just fix it on my end and wait for =
the eventual updates in the repository.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Jim Palladino &lt;<a =
href=3D"mailto:jim@gardettoengineering.com">jim@gardettoengineering.com</=
a>&gt; <br><b>Sent:</b> Friday, December 16, 2022 10:04 AM<br><b>To:</b> =
<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
; Mike &lt;<a =
href=3D"mailto:mikerd1@verizon.net">mikerd1@verizon.net</a>&gt;<br><b>Sub=
ject:</b> Re: [USRP-users] Re: Did anyone else need to do =
this?<o:p></o:p></p></div></div><p =
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
align=3Dcenter style=3D'text-align:center'><hr size=3D1 width=3D"98%" =
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
sResearch/gr-ettus/issues/69</a><o:p></o:p></span></span></p><div><div =
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
align=3Dcenter style=3D'text-align:center'><hr size=3D1 width=3D"98%" =
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
------=_NextPart_000_0507_01D9310B.FDEFE920--

--===============1316372491120414352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1316372491120414352==--
