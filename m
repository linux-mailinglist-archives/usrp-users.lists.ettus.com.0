Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F083B5EA9
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 15:05:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9337A3844D2
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 09:05:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W+mzkCE6";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6851438434F
	for <USRP-users@lists.ettus.com>; Mon, 28 Jun 2021 09:04:38 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id bj15so27229613qkb.11
        for <USRP-users@lists.ettus.com>; Mon, 28 Jun 2021 06:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=CqXYUsUmaabDYgwYbn45l8C7V78sIxr3FHgBg8xxdLk=;
        b=W+mzkCE6RjXTJTGNHoR1i4u5gevkO1v1UsEtUKq3H2ITmHr8mawJJtV8VfipMVXlpg
         4YHjHMJv+H2CZjdkoVXjo2bDxUAQdiUeS6ZsXXePFp8veP5ZQBLeKH3Z2FO3ggSBL+rf
         uK8J7F92cpYvq75VgSKK7E/xmE5fM75+BBn2Q1JghBAUIK41lP/TjVOqAOg2IxRo3blK
         saYq4W7wxk7eAX90DJk1wmiYPuYdvMqjyaQRg/v+Zq4ShXyHuyZMpxr/a9MJxXof0AM3
         k8kd5KnJycks5SAzrEXl4dRNBtXTEsDHHfqsB9moKZMlwiyoRbk+3WhgsrQRwT4GjJ9t
         9YgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=CqXYUsUmaabDYgwYbn45l8C7V78sIxr3FHgBg8xxdLk=;
        b=T7AVwB7ERRLhJ1wW0/YfZtGBwLof2ai3o246QYbMBqudhxU2oqeXQb83m9VPfYDej9
         B2QWK8eMR4mqwufjyLky/8RFEfQwofDbfNd5r3lzn+/46B0fsissngyYtR00I4Mb8udX
         VCAaqPma1HCGG4Z7Zt5tIq2miZNL3o4kBrbQAZceGq1JPS624OlJQ73DilIyws6V+HvG
         KypWkViHN0xa891heabhBVy8benXlqLXrZMOU0cFcbwOSwyloO98Lm6L2a2ot8/7EBFX
         y/ZYAYobMK4/kPpdYp3GitGm8QFMPDdMV+jLFoAL6NXDXc7eWsAeDgpCIjYtcfI8eGSc
         qY/A==
X-Gm-Message-State: AOAM532looo4zifa6kyXWwRMyDPgwFAvAVcStWN8pYh+k1Zj6YJIQUSS
	dm728QCjyrHDqkhBL+XINvM=
X-Google-Smtp-Source: ABdhPJzG+Kk9mH+vk/vU20oCyETH8u5yqXXaNiBjGbSlyfkDNfllEYj5CIDOGdkqFjkv+PeBuq+UHw==
X-Received: by 2002:a37:5cc5:: with SMTP id q188mr20883903qkb.23.1624885477640;
        Mon, 28 Jun 2021 06:04:37 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l13sm2634272qtu.17.2021.06.28.06.04.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 06:04:37 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 28 Jun 2021 09:04:36 -0400
Message-Id: <903A1875-54EA-486C-800B-7E919FDA7712@gmail.com>
References: <6dc80cdae8b747aeb2dd1176481353f1@external.thalesgroup.com>
In-Reply-To: <6dc80cdae8b747aeb2dd1176481353f1@external.thalesgroup.com>
To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: SOIN2K2SCJCX6QNK3FLZDSXDTAWZAYAS
X-Message-ID-Hash: SOIN2K2SCJCX6QNK3FLZDSXDTAWZAYAS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com, Discuss-gnuradio@gnu.org
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LibUHD - Python API problem (RFNoC not found)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SOIN2K2SCJCX6QNK3FLZDSXDTAWZAYAS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6445881759541205872=="


--===============6445881759541205872==
Content-Type: multipart/alternative; boundary=Apple-Mail-A4F00FE4-53F1-4560-A631-8684BFEEB223
Content-Transfer-Encoding: 7bit


--Apple-Mail-A4F00FE4-53F1-4560-A631-8684BFEEB223
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

So the Python API not building is unrelated to any of those dependency failu=
res as far as I know.=20

But I don=E2=80=99t think the Python API is required for RFNOC support.=20

Could we see the build log for your gr-Ettus build attempt?

Sent from my iPhone

> On Jun 28, 2021, at 1:55 AM, COURANT Frederique - Contractor <frederique.c=
ourant@external.thalesgroup.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> I cannot share my log file but I will share what doesn=E2=80=99t work :
> =20
> -- checking for module =E2=80=98libgps=E2=80=99
> --            package =E2=80=98libgps=E2=80=99 not found
> -- checking for module =E2=80=98libgps >=3D 3.11=E2=80=99
>               Package =E2=80=98libgs >=3D 3.11=E2=80=99 not found
> -- could NOT find LIBGPS (missing: LIBGPS_LIBRARY_LIBGPS_INCLUDE_DIR)
> -- could NOT find LIBERIO (missing: LIBERIO_LIBRARY_LIBERIO_INCLUDE_DIR)
> -- could NOT find dpdk (missing: DPDK_INCLUDE_DIR)
> --
> -- Configuring LIBERIO support=E2=80=A6
> --           Dependency ENABLE_LIBUHD =3D ON
> --           Dependency LIBERIO_FOUND =3D FALSE
> --           Disabling LIBERIO support.
> --           Override with =E2=80=93DENABLE_LIBERIO=3DON/OFF
> =E2=80=A6
> -- Configuring GSPD support=E2=80=A6
> --           Dependency ENABLE_LIBUHD =3D ON
> --           Dependency ENABLE_GSPD =3D
> --           Dependency LIBGPS_FOUND =3D FALSE
> --           Disabling GSPD support.
> --           Override with =E2=80=93DENABLE_E300=3DON/OFF
> =E2=80=A6
> -- Configuring E300 support=E2=80=A6
> --           Dependency ENABLE_LIBUHD =3D ON
> --           Disabling E300 support.
> --           Override with =E2=80=93DENABLE_GSPD=3DON/OFF
> =E2=80=A6
> =20
> -- Configuring DPDK support=E2=80=A6
> --           Dependency ENABLE_MPMD =3D ON
> --           Dependency DPDK_FOUND =3D FALSE
> --           Disabling DPDK support.
> --           Override with =E2=80=93DENABLE_DPDK=3DON/OFF
> --
> --
> -- Could NOT find UDEV (missing: UDEV_INCLUDE_DIR_UDEV_LIBS)
> =E2=80=A6
> #########################################################
> # UHD Disabled components
> #########################################################
> * LibUHD =E2=80=93 Python API
> * LIBERIO
> * GSPD
> * E300
> * DPDK
> =20
> I think my problem is with libUHD =E2=80=93 Python API but I=E2=80=99m not=
 sure.
> =20
> De : Marcus D Leech <patchvonbraun@gmail.com>=20
> Envoy=C3=A9 : vendredi 25 juin 2021 14:37
> =C3=80 : COURANT Frederique - Contractor <frederique.courant@external.thal=
esgroup.com>
> Cc : USRP-users@lists.ettus.com; Discuss-gnuradio@gnu.org
> Objet : Re: [USRP-users] LibUHD - Python API problem (RFNoC not found)
> =20
> Could you share the log from CMake? That might tell us why.=20
>=20
> Sent from my iPhone
> =20
>=20
> On Jun 25, 2021, at 1:56 AM, COURANT Frederique - Contractor via USRP-user=
s <usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello users,
> =20
> When I try to install UHD 3.14.0.0 on RedHat 7.5 system, I can=E2=80=99t e=
nabled components LibUHD =E2=80=93 Python API. For GNU Radio=E2=80=99s insta=
llation I don=E2=80=99t have problem.
> For the install I have follow this tutorials :
> =C2=B7       https://files.ettus.com/manual_archive/v3.14.0.0/html/page_bu=
ild_guide.html#build_instructions_unix
> =C2=B7       https://www.gnuradio.org/doc/doxygen-3.7/build_guide.html#dep=
endencies
> I have try to add -DENABLE_PYTHON_API=3DON.
> =20
> I have also install python3-devel like it is mentioned at this link : USRP=
 Hardware Driver and USRP Manual: Python API (ettus.com)
> =20
> If someone has ever had this problem could you explain me how to solve thi=
s please, because when I try to build my block I cannot find ettus and after=
 if I try to build gr-ettus I cannot find RFNoC. So I suppose that the probl=
em is LibUHD =E2=80=93 Python API but I not sure. When I launch my flowgraph=
 GNU Radio doesn=E2=80=99t recognize Radio, DDC, DUC and my own block that I=
 can=E2=80=99t build.
> My program works on Ubuntu 18.04 system with UHD-3.14.0.0 and GNU Radio 3.=
7.11.1.
> =20
> Thanks for your help.
> =20
> Regards.
> =20
> Fred
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A4F00FE4-53F1-4560-A631-8684BFEEB223
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">So the Python API not building is unrelated=
 to any of those dependency failures as far as I know.&nbsp;<div><br></div><=
div>But I don=E2=80=99t think the Python API is required for RFNOC support.&=
nbsp;</div><div><br></div><div>Could we see the build log for your gr-Ettus b=
uild attempt?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Jun 28, 2021, at 1:55 AM, COURANT Frede=
rique - Contractor &lt;frederique.courant@external.thalesgroup.com&gt; wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:484515225;
	mso-list-type:hybrid;
	mso-list-template-ids:1723261954 67895297 67895299 67895301 6789529=
7 67895299 67895301 67895297 67895299 67895301;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I cannot=
 share my log file but I will share what doesn=E2=80=99t work :<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- check=
ing for module =E2=80=98libgps=E2=80=99<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; package =E2=80=98lib=
gps=E2=80=99 not found<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- check=
ing for module =E2=80=98libgps &gt;=3D 3.11=E2=80=99<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Packa=
ge =E2=80=98libgs &gt;=3D 3.11=E2=80=99 not found<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- could=
 NOT find LIBGPS (missing: LIBGPS_LIBRARY_LIBGPS_INCLUDE_DIR)<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- could=
 NOT find LIBERIO (missing: LIBERIO_LIBRARY_LIBERIO_INCLUDE_DIR)<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- could=
 NOT find dpdk (missing: DPDK_INCLUDE_DIR)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- Confi=
guring LIBERIO support=E2=80=A6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency ENABLE_LIB=
UHD =3D ON<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency LIBERIO_FO=
UND =3D FALSE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disabling LIBERIO sup=
port.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Override with =E2=80=93=
DENABLE_LIBERIO=3DON/OFF<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">=E2=80=A6=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- Confi=
guring GSPD support=E2=80=A6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency ENABLE_LIB=
UHD =3D ON<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency ENABLE_GSP=
D =3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency LIBGPS_FOU=
ND =3D FALSE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disabling GSPD suppor=
t.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Override with =E2=80=93=
DENABLE_E300=3DON/OFF<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">=E2=80=A6=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- Confi=
guring E300 support=E2=80=A6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency ENABLE_LIB=
UHD =3D ON<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disabling E300 suppor=
t.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Override with =E2=80=93=
DENABLE_GSPD=3DON/OFF<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">=E2=80=A6=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- Confi=
guring DPDK support=E2=80=A6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency ENABLE_MPM=
D =3D ON<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dependency DPDK_FOUND=
 =3D FALSE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disabling DPDK suppor=
t.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Override with =E2=80=93=
DENABLE_DPDK=3DON/OFF<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">--<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">-- Could=
 NOT find UDEV (missing: UDEV_INCLUDE_DIR_UDEV_LIBS)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">=E2=80=A6=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">########=
#################################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"># UHD Di=
sabled components<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">########=
#################################################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">* LibUHD=
 =E2=80=93 Python API<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">* LIBERI=
O<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">* GSPD<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">* E300<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">* DPDK<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I think m=
y problem is with libUHD =E2=80=93 Python API but I=E2=80=99m not sure.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&nb=
sp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0=
cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:FR">De&nbsp;:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language:=
FR"> Marcus D Leech &lt;</span><a href=3D"mailto:patchvonbraun@gmail.com"><s=
pan lang=3D"EN-US" style=3D"mso-fareast-language:FR">patchvonbraun@gmail.com=
</span></a><span lang=3D"EN-US" style=3D"mso-fareast-language:FR">&gt;
<br>
<b>Envoy=C3=A9&nbsp;:</b> vendredi 25 juin 2021 14:37<br>
<b>=C3=80&nbsp;:</b> COURANT Frederique - Contractor &lt;</span><a href=3D"m=
ailto:frederique.courant@external.thalesgroup.com"><span lang=3D"EN-US" styl=
e=3D"mso-fareast-language:FR">frederique.courant@external.thalesgroup.com</s=
pan></a><span lang=3D"EN-US" style=3D"mso-fareast-language:FR">&gt;<br>
<b>Cc&nbsp;:</b> </span><a href=3D"mailto:USRP-users@lists.ettus.com"><span l=
ang=3D"EN-US" style=3D"mso-fareast-language:FR">USRP-users@lists.ettus.com</=
span></a><span lang=3D"EN-US" style=3D"mso-fareast-language:FR">;
</span><a href=3D"mailto:Discuss-gnuradio@gnu.org"><span lang=3D"EN-US" styl=
e=3D"mso-fareast-language:FR">Discuss-gnuradio@gnu.org</span></a><span lang=3D=
"EN-US" style=3D"mso-fareast-language:FR"><br>
<b>Objet&nbsp;:</b> Re: [USRP-users] LibUHD - Python API problem (RFNoC not f=
ound)<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Could you share the lo=
g from CMake? That might tell us why.&nbsp;<span style=3D"font-size:12.0pt;m=
so-fareast-language:FR"><o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Jun 25, 2021, at 1:=
56 AM, COURANT Frederique - Contractor via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<o:p></=
o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <span style=3D"font-size:12.0pt;font-family=
:&quot;Times New Roman&quot;,serif;mso-fareast-language:FR">
<o:p></o:p></span></p>
<p class=3D"MsoNormal">Hello users,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to install UHD 3.14.0=
.0 on RedHat 7.5 system, I can=E2=80=99t enabled components LibUHD =E2=80=93=
 Python API. For GNU Radio=E2=80=99s installation I don=E2=80=99t have probl=
em.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For the install I have follow th=
is tutorials :</span><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 level=
1 lfo2"><!--[if !supportLists]--><span style=3D"font-family:Symbol"><span st=
yle=3D"mso-list:Ignore">=C2=B7<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><!--[endif]--><a href=3D"https://files.ettus.com/manual=
_archive/v3.14.0.0/html/page_build_guide.html#build_instructions_unix"><span=
 lang=3D"EN-US">https://files.ettus.com/manual_archive/v3.14.0.0/html/page_b=
uild_guide.html#build_instructions_unix</span></a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 level=
1 lfo2"><!--[if !supportLists]--><span style=3D"font-family:Symbol"><span st=
yle=3D"mso-list:Ignore">=C2=B7<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><!--[endif]--><a href=3D"https://www.gnuradio.org/doc/d=
oxygen-3.7/build_guide.html#dependencies"><span lang=3D"EN-US">https://www.g=
nuradio.org/doc/doxygen-3.7/build_guide.html#dependencies</span></a><o:p></o=
:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have try to add -DENABLE_PYTHO=
N_API=3DON.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also install python3-deve=
l like it is mentioned at this link :
</span><a href=3D"https://files.ettus.com/manual/page_python.html"><span lan=
g=3D"EN-US">USRP Hardware Driver and USRP Manual: Python API (ettus.com)</sp=
an></a><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If someone has ever had this pro=
blem could you explain me how to solve this please, because when I try to bu=
ild my block I cannot find ettus and after if I try to build gr-ettus I cann=
ot find RFNoC. So I suppose that
 the problem is LibUHD =E2=80=93 Python API but I not sure. When I launch my=
 flowgraph GNU Radio doesn=E2=80=99t recognize Radio, DDC, DUC and my own bl=
ock that I can=E2=80=99t build.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My program works on Ubuntu 18.04=
 system with UHD-3.14.0.0 and GNU Radio 3.7.11.1.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif;mso-fareast-language:FR">__________________________=
_____________________<br>
USRP-users mailing list -- </span><a href=3D"mailto:usrp-users@lists.ettus.c=
om"><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,=
serif;mso-fareast-language:FR">usrp-users@lists.ettus.com</span></a><span st=
yle=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fa=
reast-language:FR"><br>
To unsubscribe send an email to </span><a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com"><span style=3D"font-size:12.0pt;font-family:&quot;Times New R=
oman&quot;,serif;mso-fareast-language:FR">usrp-users-leave@lists.ettus.com</=
span></a><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&q=
uot;,serif;mso-fareast-language:FR"><o:p></o:p></span></p>
</div>
</blockquote>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-A4F00FE4-53F1-4560-A631-8684BFEEB223--

--===============6445881759541205872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6445881759541205872==--
