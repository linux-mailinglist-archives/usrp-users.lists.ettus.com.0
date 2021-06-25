Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FA43B4374
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 14:37:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3551E383E24
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 08:37:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GnLIJliK";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D0584383BF4
	for <USRP-users@lists.ettus.com>; Fri, 25 Jun 2021 08:36:35 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id 65so1437685qko.5
        for <USRP-users@lists.ettus.com>; Fri, 25 Jun 2021 05:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=AGkAsVPfAmO24SGhOBDe3fjpXIBYnlsXx58uJQaOCNk=;
        b=GnLIJliKCnxIttkxv/fFhVL6BSnVCRq21UvuZd3nUjj+iVz5imqqFjPuCZA06d5WC/
         nRpe3Zgzh8YWO4ysSQMF9VO6qtXswLhLyPMmS5m0fT4yX9WcQysEuny2SYzkusCF3NZR
         R4TOzYty3CLnR2Sbr6ngYpeaBtvWfEAJX6Q/HU+CkI0HfdS+0Qj/af+WLwICyV1Fchgr
         MRNriVLExGNSC47tNhJdLaDYl9YY2YtunT6Sju/Q/j93vxoDgkfq4SAuTZYgFcFmtYn/
         TvK4o9SL1RlPGgPBcUiJBQkL7sXuAP8h+7PmluwKBpHA+BMsWgQe3JiC/GxBb7nEsdjI
         inNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=AGkAsVPfAmO24SGhOBDe3fjpXIBYnlsXx58uJQaOCNk=;
        b=CR2jPcAO//YtE5P6XcL/olR8bQfq9WLChg5Fk9aenSev8ZuZEmhXAnc3XRky113j09
         E8NlDhAJ+kmTp3iLiD5O/w6tAwiKNukBBCDWd+skb+CkmZNE9Gpzhl6Hy1Mop5bEFXsJ
         spHmiz+Uiu65fQ7PXhzLu2EM6qPXHcP8pHt7y6kAai4/YOA6s5B6EVwobc7PkojTy2fM
         c12DTtD034CSiXBkNsNJDqxxLjNG8e/MtWGdCTZNVFE27PXFr3MDoWJtOSaPKNLc9CPm
         VJlvRyTqh9LO3bmX9PVSdelS0WAReBel4BXaXdaTTXEcsEFNnRcKp16XCAkigTx9bdEl
         ssug==
X-Gm-Message-State: AOAM533REfztvkZ1FhG3ojl843BBBVE1Dw3iE5KQkARm8avicyPK9XHF
	+Vm9zV5eBV7zBIkkxsQDpnk=
X-Google-Smtp-Source: ABdhPJxH4gGTPXooIxMSa1yBolK4b2GgKQhy05Nwqfn1cQTaESYS4gIVTqqRpkz/eJtQWn2rintDWg==
X-Received: by 2002:a37:d88:: with SMTP id 130mr10822235qkn.302.1624624595275;
        Fri, 25 Jun 2021 05:36:35 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id k20sm4798542qko.113.2021.06.25.05.36.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jun 2021 05:36:34 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 25 Jun 2021 08:36:33 -0400
Message-Id: <8BA3E099-A6AE-4200-8A36-A9A13C0B9C05@gmail.com>
References: <2ea431f8bcfc4d1eb4431e45172401d3@external.thalesgroup.com>
In-Reply-To: <2ea431f8bcfc4d1eb4431e45172401d3@external.thalesgroup.com>
To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: FNFW4WI6LLD7JNEQG4TASGEN7UFHQTNR
X-Message-ID-Hash: FNFW4WI6LLD7JNEQG4TASGEN7UFHQTNR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com, Discuss-gnuradio@gnu.org
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LibUHD - Python API problem (RFNoC not found)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNFW4WI6LLD7JNEQG4TASGEN7UFHQTNR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6283756627339032770=="


--===============6283756627339032770==
Content-Type: multipart/alternative; boundary=Apple-Mail-D539AA00-596D-4CB2-AFDB-015DBB997834
Content-Transfer-Encoding: 7bit


--Apple-Mail-D539AA00-596D-4CB2-AFDB-015DBB997834
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Could you share the log from CMake? That might tell us why.=20

Sent from my iPhone

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

--Apple-Mail-D539AA00-596D-4CB2-AFDB-015DBB997834
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Could you share the log from CMake? That mi=
ght tell us why.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 25, 2021, at 1:56 AM, COUR=
ANT Frederique - Contractor via USRP-users &lt;usrp-users@lists.ettus.com&gt=
; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

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
/* List Definitions */
@list l0
	{mso-list-id:484515225;
	mso-list-type:hybrid;
	mso-list-template-ids:1723261954 67895297 67895299 67895301 6789529=
7 67895299 67895301 67895297 67895299 67895301;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
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
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
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
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
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
	mso-level-text:\F0A7;
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
<p class=3D"MsoNormal">Hello users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to install UHD 3.14.0=
.0 on RedHat 7.5 system, I can=E2=80=99t enabled components LibUHD =E2=80=93=
 Python API. For GNU Radio=E2=80=99s installation I don=E2=80=99t have probl=
em.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For the install I have follow th=
is tutorials :<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 level=
1 lfo1"><!--[if !supportLists]--><span lang=3D"EN-US" style=3D"font-family:S=
ymbol"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><!--[endif]--><a href=3D"https://files.ettus.com/manual=
_archive/v3.14.0.0/html/page_build_guide.html#build_instructions_unix"><span=
 lang=3D"EN-US">https://files.ettus.com/manual_archive/v3.14.0.0/html/page_b=
uild_guide.html#build_instructions_unix</span></a><span lang=3D"EN-US"><o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 level=
1 lfo1"><!--[if !supportLists]--><span lang=3D"EN-US" style=3D"font-family:S=
ymbol"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"font:7.0pt &quot=
;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><!--[endif]--><a href=3D"https://www.gnuradio.org/doc/d=
oxygen-3.7/build_guide.html#dependencies"><span lang=3D"EN-US">https://www.g=
nuradio.org/doc/doxygen-3.7/build_guide.html#dependencies</span></a><span la=
ng=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have try to add -DENABLE_PYTHO=
N_API=3DON.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also install python3-deve=
l like it is mentioned at this link :
</span><a href=3D"https://files.ettus.com/manual/page_python.html"><span lan=
g=3D"EN-US">USRP Hardware Driver and USRP Manual: Python API (ettus.com)</sp=
an></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If someone has ever had this pro=
blem could you explain me how to solve this please, because when I try to bu=
ild my block I cannot find ettus and after if I try to build gr-ettus I cann=
ot find RFNoC. So I suppose that
 the problem is LibUHD =E2=80=93 Python API but I not sure. When I launch my=
 flowgraph GNU Radio doesn=E2=80=99t recognize Radio, DDC, DUC and my own bl=
ock that I can=E2=80=99t build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My program works on Ubuntu 18.04=
 system with UHD-3.14.0.0 and GNU Radio 3.7.11.1.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fred<o:p></o:p></span></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-D539AA00-596D-4CB2-AFDB-015DBB997834--

--===============6283756627339032770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6283756627339032770==--
