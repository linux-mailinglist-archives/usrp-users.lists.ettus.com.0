Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A0267C385
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 04:30:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E747C3843E0
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 22:29:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674703798; bh=SvoxLG2VSJyKZz7MYFWZp52YrRKGAjabKe3ZHzHoibs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AenCzYczuXExMBbNVJdvzB7NJC24hv93JVUb52WBPyF2AKdT3VPMFGEAwe2LCJ811
	 7n3P5zyr9UKo7FFKVE2fpEq5LFlBuyZ+A/n7AK/SPwz+pyDRz3TXUMx7ijUFnvGiRk
	 aCbe4uQbolHQsr6vIR2AyRcpCFndl6tqCcoq8qlQX6uJT+G4QLNTRdsTeM0+yljKSb
	 PKLYToNe/FE9lKE4dw052AvDpFHic/xVlb/nqJoeFI1o3rSdfTTxSZF8dyp8A7Pbsq
	 /xGTvYF46Ma8xZ6BDWz62ErsYTDKNLiZlAWnn7Y1/kocczRKCVUlQEZCc18parxXtL
	 qz9f3gXt8eqTA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C1B9384120
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 22:29:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZcAs+4fP";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id g16so433999qtu.2
        for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 19:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FwNrFtWz3r/dc7ddkfzab4hSOWwVrgkTn5N6P7+5d0M=;
        b=ZcAs+4fPEYu32vrTR4ZsA3AqlpPkd0bkL0YqXzZP2GdXvsq/+EOP5FfpTOi5y+Rp6f
         MAnI2YETLiGIdvjEOkuqnbTZW7bkch+Xj99SYfyVbPnd0aZP41gJ8Nk6GGNduO7dNm9U
         byC7pvJlQmaSe4ZwKJbKrojGDKreAH1NpigJDGpw7UPYwGTMI9eMaiLKYnPV1+vxikrp
         ypoWcmrv9loKfkwVqr6EPQSicQcE8k+WcFLXLwyhb/LUpS9PXbceaIq2lrTd19I1Z/TR
         UHRHGGsJJKg+uU1lAk09Ubum3OPNyp+hMdQJ4W61CA9Ya+lXE06EIGbxuF0PDG189ZU9
         CfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FwNrFtWz3r/dc7ddkfzab4hSOWwVrgkTn5N6P7+5d0M=;
        b=VevNR5Y/kN7Okpq2BTRMmSyzZI6zaOSg/4qjKWvdHf9qhwmrMeVTf9X9On5vr4D5/o
         Zpdn/+HGYwScn3uZgcAG/fsiyFlgYzramLdAEDT2yO1PQNbjiebYqX6PHwTxil5asO9t
         8B+WwAC4SqkPXXKouDkwNT0LvwOd8BSUWEGE/9iCTEGtsaibDRlEysO7SRy9aGwP5/4u
         kFQn2UEkrtVmZ9/9lnt5FMHHW1GAANlZvTcCDLEIMhHXSlPLAA0xNIYg3tFZYNKL6/Ab
         a7vDMXCVynIjEImE4s+O5mBV1+1Dsvmx8cl/lHcdEbSdut/rbB8J6RydTqkk38bd9vEy
         pV9w==
X-Gm-Message-State: AFqh2koJfWAFCDKlTH6xGhAISMCnqEafoygQTBnupUpyD+cmLCbO9NZW
	2c0oZDVxfWsOLluBxaJ2Gyyk6IL+Z94=
X-Google-Smtp-Source: AMrXdXv6uWLQ7GjTh6A4n7Oj6P8qpxLG8HLMGT0MR4xEKoBzMnebtgeIk3K+zn0QghPp02UeYfrNKw==
X-Received: by 2002:ac8:47d4:0:b0:3b6:94f7:4f7e with SMTP id d20-20020ac847d4000000b003b694f74f7emr36685275qtr.40.1674703743377;
        Wed, 25 Jan 2023 19:29:03 -0800 (PST)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id z18-20020ac86b92000000b003a7eb5baf3csm4473254qts.69.2023.01.25.19.29.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 19:29:02 -0800 (PST)
Message-ID: <c6e2fb04-61d1-e6fc-704d-00c32cadf0e8@gmail.com>
Date: Wed, 25 Jan 2023 22:29:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net>
 <00c001d9115b$55bcc130$01364390$@verizon.net>
 <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312A4D66FE8688652AC9774B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <050601d93135$e6c3ce40$b44b6ac0$@verizon.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <050601d93135$e6c3ce40$b44b6ac0$@verizon.net>
Message-ID-Hash: 5VMHX2GUWLOXMBBBP7AIOSOXNRYFNML6
X-Message-ID-Hash: 5VMHX2GUWLOXMBBBP7AIOSOXNRYFNML6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VMHX2GUWLOXMBBBP7AIOSOXNRYFNML6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5085358338662515106=="

This is a multi-part message in MIME format.
--===============5085358338662515106==
Content-Type: multipart/alternative;
 boundary="------------N0izfl0Svu3mJVHHEkanUd0R"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------N0izfl0Svu3mJVHHEkanUd0R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/01/2023 22:25, Mike via USRP-users wrote:
>
> All,
>
> This is an update from a previous thread. I also found another error=20
> in the yaml file, ettus_rfnoc_graph.block.yml.=C2=A0 I=E2=80=99m runnin=
g GNU Radio=20
> 3.8 and UHD 4.2.=C2=A0 The file is located in:
>
> =E2=80=9Cgr-ettus/grc/ettus_rfnoc_graph.block.yml=E2=80=9D. I found thi=
s because the=20
> commands in the =E2=80=9CDevice Args=E2=80=9D parameter were not being =
processed=20
> correctly.
>
> The line is associated with the following =E2=80=9Cif=E2=80=9D statemen=
t (line 19):
>
> =C2=A0 If dev_args_s:
>
> =C2=A0=C2=A0=C2=A0=C2=A0 graph_args +=3D f=E2=80=9D,{clock_source_s}=E2=
=80=9D
>
> The =E2=80=9Cclock_source_s=E2=80=9D should be =E2=80=9Cdev_args_s=E2=80=
=9D.
>
> I found this because I=E2=80=99m trying to send specific initialization=
=20
> commands to my N320.=C2=A0 As a side note, can anyone explain how to=20
> configure =E2=80=9Csubdev=E2=80=9D from a GRC flow graph so that I can =
enable the RF1=20
> side of the N320?
>
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Subde=
vice_Specification_Mapping


> Thanks,
>
> Mike
>
> *From:* Mike <mikerd1@verizon.net>
> *Sent:* Friday, December 16, 2022 10:54 AM
> *To:* 'Jim Palladino' <jim@gardettoengineering.com>;=20
> 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
> *Subject:* RE: [USRP-users] Re: Did anyone else need to do this?
>
> Jim,
>
> Thanks for taking care of this.=C2=A0 I=E2=80=99ll just fix it on my en=
d and wait=20
> for the eventual updates in the repository.
>
> Thanks,
>
> Mike
>
> *From:* Jim Palladino <jim@gardettoengineering.com>
> *Sent:* Friday, December 16, 2022 10:04 AM
> *To:* usrp-users@lists.ettus.com; Mike <mikerd1@verizon.net>
> *Subject:* Re: [USRP-users] Re: Did anyone else need to do this?
>
> Mike,
>
> My last comment was related to gr-ettus (ettus_rfnoc_graph.block.yml),=20
> which I installed with gnuradio 3.8 / uhd 4.1. But I do see that=20
> gnuradio 3.10 has the exact same issue (as you found) in=20
> uhd_rfnoc_graph.block.yml:
>
> https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfn=
oc_graph.block.yml
>
> <https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rf=
noc_graph.block.yml>
>
> =09
>
> gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 =C2=B7 gnuradio/gnurad=
io=20
> <https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rf=
noc_graph.block.yml>
>
> GNU Radio =E2=80=93 the Free and Open Software Radio Ecosystem -=20
> gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 =C2=B7 gnuradio/gnurad=
io
>
> github.com
>
> So, it looks like we've run into the same issue in different=20
> implementations. I can post and issue on the gnuradio github page as we=
ll.
>
> Jim
>
> -----------------------------------------------------------------------=
-
>
> *From:*Jim Palladino <jim@gardettoengineering.com>
> *Sent:* Friday, December 16, 2022 9:38 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Mike=20
> <mikerd1@verizon.net>
> *Subject:* [USRP-users] Re: Did anyone else need to do this?
>
> Hi Mike,
>
> Yes, I've run into that. I posted an issue last week here:
> https://github.com/EttusResearch/gr-ettus/issues/69=20
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Ettu=
sResearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d=
8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArR=
lIAu8Sx0l3QxaM&e=3D>
>
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Ettu=
sResearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d=
8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArR=
lIAu8Sx0l3QxaM&e=3D>
>
> =09
>
> syntax error in ettus_rfnoc_graph.block.yml =C2=B7 Issue #69 =C2=B7=20
> EttusResearch/gr-ettus=20
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Ettu=
sResearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d=
8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArR=
lIAu8Sx0l3QxaM&e=3D>
>
> Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch=20
> (and possibly others) looks like: self.rfnoc_graph =3D ${id} =3D=20
> ettus.rfnoc_graph(uhd.device_addr(&quot;${graph_args}&quot;))) You...
>
> github.com
>
> I ended up just modifying the yml file in source and then reinstalling=20
> gr-ettus.
>
> Jim
>
> -----------------------------------------------------------------------=
-
>
> *From:*Mike via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Friday, December 16, 2022 9:33 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Did anyone else need to do this?
>
> Hi all,
>
> This goes in the category of =E2=80=9CDid anyone else need to do this?=E2=
=80=9D.
>
> I=E2=80=99m running Ubuntu 20.04.5 LTS with GNURadio 3.8 (Maint) and UH=
D 4.0.=C2=A0=20
> I recently upgraded UHD to 4.2.=C2=A0 I ran into a gnuradio issue start=
ing=20
> a =E2=80=9CRFNoC=E2=80=9D flow graph with a syntax error for an unmatch=
ed =E2=80=98)=E2=80=99:
>
> Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D=20
> ettus.rfnoc_graph(uhd.device_addr(=E2=80=9Caddr=3Dxxx,type-n3xx=E2=80=9D=
)))
>
> I was able to manually edit the generated python code to remove one of=20
> the parentheses and see the code work.
>
> I then upgraded gnuradio to 3.10 which had the same issue.
>
> I then compared the =E2=80=9Cuhd_rfnoc_graph.block.yml=E2=80=9D block f=
iles between=20
> UHD4.0 and 4.2.=C2=A0 It=E2=80=99s significantly different as 4.0 uses =
python .join=20
> to build the argument list and UHD 4.2 uses the python module =E2=80=9C=
ast=E2=80=9D to=20
> generate the argument list. But the final line on the 4.2 version had=20
> the syntax error of the extra =E2=80=98)=E2=80=99:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 self.rfnoc_graph =3D ${id} =3D=20
> uhd.rfnoc_graph(uhd.device_addr(=E2=80=9C${graph_args}=E2=80=9D)))
>
> I removed one =E2=80=98)=E2=80=99 then reinstalled gnuradio (make insta=
ll) from the=20
> build directory and everything seemed to work after that.
>
> So, it seems like it is a simple syntax error.=C2=A0 But normally somet=
hing=20
> like this (in my experience) indicates that I might have missed some=20
> configuration step somewhere and have yet to see the other errors.
>
> So, has anyone seen something like this?
>
> Thanks,
>
> Mike
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------N0izfl0Svu3mJVHHEkanUd0R
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/01/2023 22:25, Mike via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:050601d93135$e6c3ce40$b44b6ac0$@verizon.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
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
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}@font-face
	{font-family:"Segoe UI Light";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}p.xxmsonormal, li.xxmsonormal, div.xxmsonorma=
l
	{mso-style-name:x_x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.contentpasted0
	{mso-style-name:contentpasted0;}span.xelementtoproof
	{mso-style-name:x_elementtoproof;}span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">All,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">This is an update from a previous thread.=C2=
=A0
          I also found another error in the yaml file,
          ettus_rfnoc_graph.block.yml.=C2=A0 I=E2=80=99m running GNU Radi=
o 3.8 and
          UHD 4.2.=C2=A0 The file is located in:<o:p></o:p></p>
        <p class=3D"MsoNormal">=E2=80=9Cgr-ettus/grc/ettus_rfnoc_graph.bl=
ock.yml=E2=80=9D.=C2=A0
          I found this because the commands in the =E2=80=9CDevice Args=E2=
=80=9D
          parameter were not being processed correctly.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The line is associated with the following
          =E2=80=9Cif=E2=80=9D statement (line 19):<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0 If dev_args_s:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0 graph_args +=3D f=
=E2=80=9D,{clock_source_s}=E2=80=9D<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The =E2=80=9Cclock_source_s=E2=80=9D shoul=
d be
          =E2=80=9Cdev_args_s=E2=80=9D.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I found this because I=E2=80=99m trying to=
 send
          specific initialization commands to my N320.=C2=A0 As a side no=
te,
          can anyone explain how to configure =E2=80=9Csubdev=E2=80=9D fr=
om a GRC flow
          graph so that I can enable the RF1 side of the N320?</p>
      </div>
    </blockquote>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Subdevice_Specification_Mapping">ht=
tps://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Subdevi=
ce_Specification_Mapping</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:050601d93135$e6c3ce40$b44b6ac0$@verizon.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">Mike<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Mike
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:mikerd1@v=
erizon.net">&lt;mikerd1@verizon.net&gt;</a> <br>
              <b>Sent:</b> Friday, December 16, 2022 10:54 AM<br>
              <b>To:</b> 'Jim Palladino'
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jim@garde=
ttoengineering.com">&lt;jim@gardettoengineering.com&gt;</a>;
              '<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>'
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject:</b> RE: [USRP-users] Re: Did anyone else need
              to do this?<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Jim,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks for taking care of this.=C2=A0 I=E2=
=80=99ll just
          fix it on my end and wait for the eventual updates in the
          repository.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">Mike<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Jim Palladino &lt;<a
                href=3D"mailto:jim@gardettoengineering.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
jim@gardettoengineering.com</a>&gt;
              <br>
              <b>Sent:</b> Friday, December 16, 2022 10:04 AM<br>
              <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>;
              Mike &lt;<a href=3D"mailto:mikerd1@verizon.net"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
mikerd1@verizon.net</a>&gt;<br>
              <b>Subject:</b> Re: [USRP-users] Re: Did anyone else need
              to do this?<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;color:black;background:white">Mik=
e,</span><o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span class=3D"contentpasted0"><span
                style=3D"font-size:12.0pt;color:black;background:white">M=
y
                last comment was related to gr-ettus
                (ettus_rfnoc_graph.block.yml), which I installed with
                gnuradio 3.8 / uhd 4.1. But I do see that gnuradio 3.10
                has the exact same issue (as you found) in
                uhd_rfnoc_graph.block.yml:</span></span><o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span class=3D"contentpasted0"><span
                style=3D"font-size:12.0pt;color:black;background:white"><=
a
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfn=
oc_graph.block.yml</a></span></span><o:p></o:p></p>
        </div>
        <div>
          <div>
            <div
              style=3D"margin-top:12.0pt;margin-bottom:12.0pt;min-width:
              424px"
id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL2dudXJhZGlvL2dudXJhZGlvL2Jsb2Iv=
bWFpbnQtMy4xMC9nci11aGQvZ3JjL3VoZF9yZm5vY19ncmFwaC5ibG9jay55bWw.">
              <table class=3D"MsoNormalTable"
                style=3D"width:100.0%;border:solid #C8C8C8 1.0pt"
                width=3D"100%" cellspacing=3D"4" cellpadding=3D"0" border=
=3D"1">
                <tbody>
                  <tr>
                    <td style=3D"border:none;padding:9.0pt 27.0pt 9.0pt
                      9.0pt" valign=3D"top">
                      <div style=3D"margin-right:9.0pt;overflow:hidden"
                        id=3D"LPImageContainer926969">
                        <p class=3D"MsoNormal"><a
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml"
                            target=3D"_blank" moz-do-not-send=3D"true"><s=
pan
                              style=3D"text-decoration:none"><img
                                style=3D"width:2.5in;height:1.25in"
                                id=3D"_x0000_i1030"
src=3D"https://repository-images.githubusercontent.com/3030065/919b3680-5=
0c1-11ea-8e39-e96d4449c2cd"
                                moz-do-not-send=3D"true" width=3D"240"
                                height=3D"120" border=3D"0"></span></a><o=
:p></o:p></p>
                      </div>
                    </td>
                    <td style=3D"width:100.0%;border:none;padding:9.0pt
                      27.0pt 9.0pt 9.0pt" width=3D"100%" valign=3D"top">
                      <div
                        style=3D"margin-right:6.0pt;margin-bottom:9.0pt"
                        id=3D"LPTitle926969">
                        <p class=3D"MsoNormal"><span
                            style=3D"font-size:16.0pt;font-family:&quot;S=
egoe
                            UI Light&quot;,sans-serif"><a
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml"
                              target=3D"_blank" moz-do-not-send=3D"true">=
<span
                                style=3D"text-decoration:none">gnuradio/u=
hd_rfnoc_graph.block.yml
                                at maint-3.10 =C2=B7 gnuradio/gnuradio</s=
pan></a><o:p></o:p></span></p>
                      </div>
                      <div
                        style=3D"margin-right:6.0pt;margin-bottom:9.0pt;m=
ax-height:
                        100px;overflow:hidden" id=3D"LPDescription926969"=
>
                        <p class=3D"MsoNormal"><span
                            style=3D"font-size:10.5pt;font-family:&quot;S=
egoe
                            UI&quot;,sans-serif;color:#666666">GNU Radio
                            =E2=80=93 the Free and Open Software Radio Ec=
osystem
                            - gnuradio/uhd_rfnoc_graph.block.yml at
                            maint-3.10 =C2=B7 gnuradio/gnuradio<o:p></o:p=
></span></p>
                      </div>
                      <div id=3D"LPMetadata926969">
                        <p class=3D"MsoNormal"><span
                            style=3D"font-size:10.5pt;font-family:&quot;S=
egoe
                            UI&quot;,sans-serif;color:#A6A6A6">github.com=
<o:p></o:p></span></p>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <p class=3D"MsoNormal"><span class=3D"contentpasted0"><span
                style=3D"font-size:12.0pt;color:black;background:white">S=
o,
                it looks like we've run into the same issue in different
                implementations. I can post and issue on the gnuradio
                github page as well.</span></span><o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span class=3D"contentpasted0"><span
                style=3D"font-size:12.0pt;color:black;background:white">J=
im</span></span><o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <div class=3D"MsoNormal" style=3D"text-align:center" align=3D"cen=
ter">
          <hr width=3D"98%" size=3D"1" align=3D"center"></div>
        <div id=3D"divRplyFwdMsg">
          <p class=3D"MsoNormal"><b><span style=3D"color:black">From:</sp=
an></b><span
              style=3D"color:black"> Jim Palladino &lt;<a
                href=3D"mailto:jim@gardettoengineering.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
jim@gardettoengineering.com</a>&gt;<br>
              <b>Sent:</b> Friday, December 16, 2022 9:38 AM<br>
              <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>
              &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>&gt;;
              Mike &lt;<a href=3D"mailto:mikerd1@verizon.net"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
mikerd1@verizon.net</a>&gt;<br>
              <b>Subject:</b> [USRP-users] Re: Did anyone else need to
              do this?</span> <o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          </div>
        </div>
        <div>
          <div>
            <p class=3D"MsoNormal"><span class=3D"xelementtoproof"><span
                  style=3D"font-size:12.0pt;color:black;background:white"=
>Hi
                  Mike,</span></span><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                class=3D"xelementtoproof"><span
                  style=3D"font-size:12.0pt;color:black;background:white"=
>Yes,
                  I've run into that. I posted an issue last week here:</=
span></span><span
                style=3D"font-size:12.0pt;color:black;background:white"><=
br>
                <span class=3D"xelementtoproof"><a
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D"
                    moz-do-not-send=3D"true">https://github.com/EttusRese=
arch/gr-ettus/issues/69</a><o:p></o:p></span></span></p>
            <div>
              <div
                style=3D"margin-top:12.0pt;margin-bottom:12.0pt;min-width=
:424px"
id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMv=
aXNzdWVzLzY5">
                <table class=3D"MsoNormalTable"
                  style=3D"width:100.0%;border:solid #C8C8C8 1.0pt"
                  width=3D"100%" cellspacing=3D"4" cellpadding=3D"0"
                  border=3D"1">
                  <tbody>
                    <tr>
                      <td style=3D"border:none;padding:9.0pt 27.0pt 9.0pt
                        9.0pt" valign=3D"top">
                        <div style=3D"margin-right:9.0pt;overflow:hidden"
                          id=3D"LPImageContainer455494">
                          <p class=3D"MsoNormal"><a
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D"
                              target=3D"_blank" moz-do-not-send=3D"true">=
<span
                                style=3D"text-decoration:none"><img
                                  style=3D"width:2.5in;height:1.25in"
                                  id=3D"_x0000_i1029"
src=3D"https://opengraph.githubassets.com/5b58487cd101d233e77dea3debf24f9=
7c1326803f405d696532fef76e41550f5/EttusResearch/gr-ettus/issues/69"
                                  moz-do-not-send=3D"true" width=3D"240"
                                  height=3D"120" border=3D"0"></span></a>=
<o:p></o:p></p>
                        </div>
                      </td>
                      <td style=3D"width:100.0%;border:none;padding:9.0pt
                        27.0pt 9.0pt 9.0pt" width=3D"100%" valign=3D"top"=
>
                        <div
                          style=3D"margin-right:6.0pt;margin-bottom:9.0pt=
"
                          id=3D"LPTitle455494">
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:16.0pt;font-family:&quot=
;Segoe
                              UI Light&quot;,sans-serif"><a
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D"
                                target=3D"_blank" moz-do-not-send=3D"true=
"><span
                                  style=3D"text-decoration:none">syntax
                                  error in ettus_rfnoc_graph.block.yml =C2=
=B7
                                  Issue #69 =C2=B7 EttusResearch/gr-ettus=
</span></a><o:p></o:p></span></p>
                        </div>
                        <div
style=3D"margin-right:6.0pt;margin-bottom:9.0pt;max-height:100px;overflow=
:hidden"
                          id=3D"LPDescription455494">
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10.5pt;font-family:&quot=
;Segoe
                              UI&quot;,sans-serif;color:#666666">Line 25
                              of ettus_rfnoc_graph.block.yml in the
                              maint-3.8-uhd4.0 branch (and possibly
                              others) looks like: self.rfnoc_graph =3D
                              ${id} =3D
                              ettus.rfnoc_graph(uhd.device_addr(&amp;quot=
;${graph_args}&amp;quot;)))
                              You...<o:p></o:p></span></p>
                        </div>
                        <div id=3D"LPMetadata455494">
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10.5pt;font-family:&quot=
;Segoe
                              UI&quot;,sans-serif;color:#A6A6A6">github.c=
om<o:p></o:p></span></p>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <p class=3D"MsoNormal"><span class=3D"xelementtoproof"><span
                  style=3D"font-size:12.0pt;color:black;background:white"=
>I
                  ended up just modifying the yml file in source and
                  then reinstalling gr-ettus.</span></span><o:p></o:p></p=
>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span class=3D"xelementtoproof"><span
                  style=3D"font-size:12.0pt;color:black;background:white"=
>Jim</span></span><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div class=3D"MsoNormal" style=3D"text-align:center"
            align=3D"center">
            <hr width=3D"98%" size=3D"1" align=3D"center"></div>
          <div id=3D"x_divRplyFwdMsg">
            <p class=3D"MsoNormal"><b><span style=3D"color:black">From:</=
span></b><span
                style=3D"color:black"> Mike via USRP-users &lt;<a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>&gt;<br>
                <b>Sent:</b> Friday, December 16, 2022 9:33 AM<br>
                <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
                &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>&gt;<br>
                <b>Subject:</b> [USRP-users] Did anyone else need to do
                this?</span> <o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            </div>
          </div>
          <div>
            <div>
              <p class=3D"xxmsonormal">Hi all,<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">This goes in the category of =E2=80=
=9CDid
                anyone else need to do this?=E2=80=9D.<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">I=E2=80=99m running Ubuntu 20.04.5=
 LTS with
                GNURadio 3.8 (Maint) and UHD 4.0.=C2=A0 I recently upgrad=
ed
                UHD to 4.2.=C2=A0 I ran into a gnuradio issue starting a
                =E2=80=9CRFNoC=E2=80=9D flow graph with a syntax error fo=
r an unmatched
                =E2=80=98)=E2=80=99:<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0
                Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D
                ettus.rfnoc_graph(uhd.device_addr(=E2=80=9Caddr=3Dxxx,typ=
e-n3xx=E2=80=9D)))<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">I was able to manually edit the
                generated python code to remove one of the parentheses
                and see the code work.<o:p></o:p></p>
              <p class=3D"xxmsonormal">I then upgraded gnuradio to 3.10
                which had the same issue.<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">I then compared the
                =E2=80=9Cuhd_rfnoc_graph.block.yml=E2=80=9D block files b=
etween UHD4.0
                and 4.2.=C2=A0 It=E2=80=99s significantly different as 4.=
0 uses
                python .join to build the argument list and UHD 4.2 uses
                the python module =E2=80=9Cast=E2=80=9D to generate the a=
rgument list.=C2=A0
                But the final line on the 4.2 version had the syntax
                error of the extra =E2=80=98)=E2=80=99:<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rfnoc_graph =3D
                ${id} =3D
                uhd.rfnoc_graph(uhd.device_addr(=E2=80=9C${graph_args}=E2=
=80=9D)))<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">I removed one =E2=80=98)=E2=80=99 =
then reinstalled
                gnuradio (make install) from the build directory and
                everything seemed to work after that.<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">So, it seems like it is a simple
                syntax error.=C2=A0 But normally something like this (in =
my
                experience) indicates that I might have missed some
                configuration step somewhere and have yet to see the
                other errors.<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">So, has anyone seen something like
                this?<o:p></o:p></p>
              <p class=3D"xxmsonormal">=C2=A0<o:p></o:p></p>
              <p class=3D"xxmsonormal">Thanks,<o:p></o:p></p>
              <p class=3D"xxmsonormal">Mike<o:p></o:p></p>
            </div>
          </div>
        </div>
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

--------------N0izfl0Svu3mJVHHEkanUd0R--

--===============5085358338662515106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5085358338662515106==--
