Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42418895A62
	for <lists+usrp-users@lfdr.de>; Tue,  2 Apr 2024 19:08:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2DDA385006
	for <lists+usrp-users@lfdr.de>; Tue,  2 Apr 2024 13:08:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712077682; bh=3cVat0jtZSXynO2G8XFFA21UdyDlvZQjmcwl6GOb/20=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KlrbR17oF3F2NuD2GYprXWC/g0xml2b/BKDyMUxVci93eHBP2UrudetmofHB/MDIJ
	 GXJTYyyYxjcv+r+mD5alvrd7MrAYKPL4sWNmhc2TyWrvo33jqYjxmXfxQQtOWEVayX
	 YIcuwgREetKl4d8Tqp4bi7HsMDwEYSIHfmtYn4CmZsF6eM5K6auIfxTOrePdEEvBA9
	 vgKlorO6PNErb/mYbyiz1ahhRtoFrcz7J6KGcZSK4Z7UnTZ32EG6bPTfG2aO9qsLnp
	 pAZLlTSZVf9wLjV7AsMiA+anYXupzqjj9a7FXE+s5usQ9rLwn3RfSVfkEYsN1/o9SD
	 feGzNHevUvDzA==
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by mm2.emwd.com (Postfix) with ESMTPS id AB89B384DFA
	for <usrp-users@lists.ettus.com>; Tue,  2 Apr 2024 13:07:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=hawaii.edu header.i=@hawaii.edu header.b="jmarAGU8";
	dkim-atps=neutral
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6e6fb9a494aso4383243b3a.0
        for <usrp-users@lists.ettus.com>; Tue, 02 Apr 2024 10:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hawaii.edu; s=google; t=1712077654; x=1712682454; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BI8BhVYWeo+ZesF+pdg5Mva/eMWDXAc6cW0zWZk93x4=;
        b=jmarAGU83fnfhFjAR7NIvt8Y3ulN+MlzMb5iJoWrH/0yQZX1HNWM3sEN+fEmZilIKT
         cTTLjsj6TU/PLtUTzZFH6IdNcqOodFDc1BNx0aVlByngz6PpumJxOt/w31JAZWk2qaZv
         7BZcJDkho9j4KES5KBHukIN4T277AHcNgnyqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712077654; x=1712682454;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BI8BhVYWeo+ZesF+pdg5Mva/eMWDXAc6cW0zWZk93x4=;
        b=VGtHOEsBtqIrckLVOtn49V/ktMEj3J8qXV8RQEkhM6gYzPc8E6sCbVOTGSp9M6kNWd
         Mfx7JUNvsQCOmraBZsZLjufdIRdm1QsQn2Db91N3US+0LNQZYVG36X4Lz0dmVx9Y2RWc
         Fk5APks6avBnfOUohpIa5sM6sXEcYk9Z/LDvZiiiofvvbG2CmqmdqvCPAiIN9xZhw3wT
         1PqSwFBCTQh/eEzqxTWMh1jh726rjaZFaw1/LA8NbckgnVF5zZdQOKNgTh4oxKu9ZV2S
         6OFJKHOjJtsE5MRUFW0r1IWYgJN4vHkK0tQop2zBXCdljv849xfvHj0G7PGG8sSIZK+s
         wAnA==
X-Gm-Message-State: AOJu0YxNFe/AO2SW+i/kqahDHktjgDeHpfUPHpIKK4+6fQiX+Jv2+I67
	+j6kD7bFe0XZIJxxeX8WGeFwVe2cg35sfyxa7BXyEl6KzZpymQswCo/knkBxWFqFeQa9QezsbSQ
	JLtiJ3aSIbkt+0IOzFAi1c1TEIgnK4eocHRK1iS39bo8MB78RLIZ5VQHtEINHOHC/LApf7SVi/8
	VUnpSR0xwZ+kZSrzYW4VCNUBzekipOQTjL
X-Google-Smtp-Source: AGHT+IHOAaX7LMCmn/A88GTPg3/no3d8SKwGrzndqy9wyf3jVqKxd+x2HQufoQuqcPR5EgGQ55rcBQ==
X-Received: by 2002:a05:6a20:d90c:b0:1a6:fe01:5497 with SMTP id jd12-20020a056a20d90c00b001a6fe015497mr11125581pzb.26.1712077653862;
        Tue, 02 Apr 2024 10:07:33 -0700 (PDT)
Received: from smtpclient.apple (dhcp-141-239-168-174.hawaiiantel.net. [141.239.168.174])
        by smtp.gmail.com with ESMTPSA id k14-20020aa790ce000000b006e319d8c752sm10092045pfk.150.2024.04.02.10.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 10:07:32 -0700 (PDT)
From: Dexter James Barit <djy@hawaii.edu>
Mime-Version: 1.0 (1.0)
Date: Tue, 2 Apr 2024 07:07:20 -1000
Message-Id: <03F2D09D-71FF-43F5-98F8-A6AA9C90DA1B@hawaii.edu>
References: <047601da84ef$62d33530$28799f90$@com>
In-Reply-To: <047601da84ef$62d33530$28799f90$@com>
To: Stuart Austin <SAustin@criticalsoftwaresystems.com>
X-Mailer: iPhone Mail (21D61)
Message-ID-Hash: 3SGWVQ5GVKY5R4DEQBZMQU6K3TW5SHBR
X-Message-ID-Hash: 3SGWVQ5GVKY5R4DEQBZMQU6K3TW5SHBR
X-MailFrom: djy@hawaii.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issues running generated GNU Radio ".py" file on E310 (Embedded Mode)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3SGWVQ5GVKY5R4DEQBZMQU6K3TW5SHBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3581716979393702964=="


--===============3581716979393702964==
Content-Type: multipart/alternative; boundary=Apple-Mail-C538FBAC-D23F-46E2-AE09-C95B6AF77537
Content-Transfer-Encoding: 7bit


--Apple-Mail-C538FBAC-D23F-46E2-AE09-C95B6AF77537
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Stuart! I=E2=80=99ll give that a try.=20

> On Apr 2, 2024, at 1:17=E2=80=AFAM, Stuart Austin <SAustin@criticalsoftwar=
esystems.com> wrote:
>=20
> =EF=BB=BF
> ssh into the radio
> run python
> =20
> >>> import sys
> >>> sys.path =20
> ['', '/usr/lib/python37.zip', '/usr/lib/python3.7', '/usr/lib/python3.7/li=
b-dynload', '/usr/lib/python3.7/site-packages']
> >>> quit()
> For each path reported by sys.path, search for the gnuradio package, on my=
 radio it shows up here:
>=20
> root@ni-e31x-313C4FB:~# find /usr/lib/python3.7 -iname gnu\*
> /usr/lib/python3.7/dbm/gnu.py
> /usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.pyc
> /usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-2.pyc
> /usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-1.pyc
> /usr/lib/python3.7/site-packages/gnuradio
> /usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.py
> /usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.pyo
> /usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.pyc
> /usr/lib/python3.7/site-packages/numpy/distutils/fcompiler/gnu.py
> /usr/lib/python3.7/site-packages/numpy/distutils/fcompiler/__pycache__/gnu=
.cpython-37.pyc
> =20
> so either:
> =C2=B7         you don=E2=80=99t have gnuradio in site-packages
> =C2=B7         site-package/gnuradio isn=E2=80=99t in your Python path
> =20
> I burned this image to my e310 literally in the last couple days, I used u=
hd_images_downloader and just burned whatever it gave me onto the SD card.=20=

> =20
> I think it=E2=80=99s possible you could use Python/pip to install the gnur=
adio package directly from your ssh session =E2=80=93 just like installing a=
ny Python package?
> =20
> Cheers
> Stuart
> =20
> =20
> From: djy@hawaii.edu [mailto:djy@hawaii.edu]
> Sent: Tuesday, April 02, 2024 4:04 AM
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Issues running generated GNU Radio ".py" file on E31=
0 (Embedded Mode)
> =20
> I=E2=80=99m trying to run my =E2=80=9C.py=E2=80=9D file that I generated f=
rom GNU Radio (Host Laptop) onto my E310 (locally via SSH@root) but I'm gett=
ing a error saying:
>=20
> "ImportError: No module named gnuradio".
>=20
> I=E2=80=99m currently using a newly flashed a SD image (e3xx_e310_sg3_sdim=
g_default-v4.4.0.0-rc1). =46rom a version check it shows that both UHD and G=
NU Radio is installed on my E310 image. But for some reason it doesn=E2=80=99=
t recognize the gnuradio-companion command on terminal. Is there something I=
 need to make this work?
>=20
> Current E310 Info/Version
>=20
> SDR Image: e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1
>=20
> GNU Radio: v 3.8.0.0
>=20
> UHD: v4.4.0.0-0-g5fac246b

--Apple-Mail-C538FBAC-D23F-46E2-AE09-C95B6AF77537
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr">Thanks Stuart! I=E2=80=99l=
l give that a try.&nbsp;</div><div dir=3D"ltr"><br><blockquote type=3D"cite"=
>On Apr 2, 2024, at 1:17=E2=80=AFAM, Stuart Austin &lt;SAustin@criticalsoftw=
aresystems.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite=
"><div dir=3D"ltr">=EF=BB=BF


<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style>@font-face { font-family: Wingdings; }
@font-face { font-family: "Cambria Math"; }
@font-face { font-family: Calibri; }
@font-face { font-family: Tahoma; }
p.MsoNormal, li.MsoNormal, div.MsoNormal { margin: 0in 0in 0.0001pt; font-si=
ze: 12pt; font-family: "Times New Roman", serif; }
a:link, span.MsoHyperlink { color: blue; text-decoration: underline; }
a:visited, span.MsoHyperlinkFollowed { color: purple; text-decoration: under=
line; }
p { margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: "Time=
s New Roman", serif; }
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph { margin: 0in 0=
in 0.0001pt 0.5in; font-size: 12pt; font-family: "Times New Roman", serif; }=

span.EmailStyle18 { font-family: Calibri, sans-serif; color: rgb(31, 73, 125=
); }
.MsoChpDefault { }
@page Section1 { size: 8.5in 11in; margin: 1in; }
div.Section1 { page: Section1; }
ol { margin-bottom: 0in; }
ul { margin-bottom: 0in; }</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->




<div class=3D"Section1">

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">ssh into the radio<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">run python<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&gt;&gt;&gt; import sys<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&gt;&gt;&gt; sys.path&nbsp;&nbsp; <o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">['', '/usr/lib/python37.zip', '/usr/lib/python3.7',
'/usr/lib/python3.7/lib-dynload', '/usr/lib/python3.7/site-packages']<o:p></=
o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">&gt;&gt;&gt; quit()<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">For each path reported by sys.path, search for the gnuradio
package, on my radio it shows up here:<br>
<br>
<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">root@ni-e31x-313C4FB:~# find /usr/lib/python3.7 -iname gnu\*<=
o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/dbm/gnu.py<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.pyc<o:p></o=
:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-2.pyc<o=
:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-1.pyc<o=
:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/site-packages/gnuradio<o:p></o:p></span></=
p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.p=
y<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.p=
yo<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.p=
yc<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/site-packages/numpy/distutils/fcompiler/gn=
u.py<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">/usr/lib/python3.7/site-packages/numpy/distutils/fcompiler/__=
pycache__/gnu.cpython-37.pyc<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">so either:<o:p></o:p></span></p>

<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">you don=E2=80=99t have gnuradio in site-packages<o:p></o:p></=
span></p>

<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level1=
 lfo1"><!--[if !supportLists]--><span style=3D"font-size:11.0pt;font-family:=
Symbol;color:#1F497D"><span style=3D"mso-list:Ignore">=C2=B7<span style=3D"f=
ont:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
</span></span></span><!--[endif]--><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">site-package/gnuradio isn=E2=80=99t in your Python path<o:p><=
/o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">I burned this image to my e310 literally in the last couple
days, I used uhd_images_downloader and just burned whatever it gave me onto t=
he
SD card.&nbsp; <o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">I think it=E2=80=99s possible you could use Python/pip to ins=
tall the
gnuradio package directly from your ssh session =E2=80=93 just like installi=
ng any
Python package?<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Cheers<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D">Stuart<o:p></o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,&quot;sans-serif&quot;;
color:#1F497D"><o:p>&nbsp;</o:p></span></p>

<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0=
in 0in">

<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot;=
Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> djy@hawaii.=
edu
[mailto:djy@hawaii.edu] <br>
<b>Sent:</b> Tuesday, April 02, 2024 4:04 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Issues running generated GNU Radio ".py"
file on E310 (Embedded Mode)<o:p></o:p></span></p>

</div>

<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>

<p>I=E2=80=99m trying to run my =E2=80=9C.py=E2=80=9D file that I generated f=
rom GNU Radio (Host
Laptop) onto my E310 (locally via SSH@root) but I'm getting a error saying:<=
o:p></o:p></p>

<p>"ImportError: No module named gnuradio". <o:p></o:p></p>

<p>I=E2=80=99m currently using a newly flashed a SD image
(e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1). =46rom a version check it shows t=
hat
both UHD and GNU Radio is installed on my E310 image. But for some reason it=

doesn=E2=80=99t recognize the gnuradio-companion command on terminal. Is the=
re
something I need to make this work? <o:p></o:p></p>

<p>Current E310 Info/Version<o:p></o:p></p>

<p>SDR Image: e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1<o:p></o:p></p>

<p>GNU Radio: v 3.8.0.0<o:p></o:p></p>

<p>UHD: v4.4.0.0-0-g5fac246b<o:p></o:p></p>

</div>




</div></blockquote></body></html>=

--Apple-Mail-C538FBAC-D23F-46E2-AE09-C95B6AF77537--

--===============3581716979393702964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3581716979393702964==--
