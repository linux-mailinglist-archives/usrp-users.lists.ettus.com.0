Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 188568951A2
	for <lists+usrp-users@lfdr.de>; Tue,  2 Apr 2024 13:18:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E99B0384C23
	for <lists+usrp-users@lfdr.de>; Tue,  2 Apr 2024 07:18:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712056692; bh=nCK+D1pmclLkByhVeGcx5TlaRZaQPWpDKDpZVewmOPA=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pVtk8qsq0iOc9BykoemVZFwCa26Kk7fEALbnMx4UAfwwOa0er1/SyDiuTL7mQW+cj
	 mc8WU16zwk5bl4si88IcJ1YheVKN/vLYS00HZt+ZIzdlhuzqEpGICYz0vQyi2XCE6e
	 jDW7H/edWHbMvKVKO78NQ2U8TpnIXfSm+hkhYYiSiKVBXDxPM3NdpFlXi90g3IqEiD
	 YeX+Kb9rIs7dL//e1T5mgzo/zsf1+d5H8ZP9hQt7HprmVWgBJ0LovgK7I12lq5V2ys
	 AZgu0IxQbHRNZ+uXyjoHIEWc76U/Si2igjymgSkG7DSJEnbajh//Ni3Cs+KSxBJh+1
	 LP9M0eftoglbQ==
Received: from mta-102a.earthlink-vadesecure.net (mta-102a.earthlink-vadesecure.net [51.81.61.66])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C799380F17
	for <usrp-users@lists.ettus.com>; Tue,  2 Apr 2024 07:17:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=earthlink.net header.i=@earthlink.net header.b="NrcO5UUJ";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; bh=LhkufXi+bA6+/ffna5RtiV4o87JdFPBoFNsVy6
 uqFA4=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-subscribe:list-post:
 list-owner:list-archive; q=dns/txt; s=dk12062016; t=1712056665;
 x=1712661465; b=NrcO5UUJ/leZ7uhosxf4r45JctyFlOyMj9I0Q3g5t95G7lwae4WRk1j
 D1s5+xhGMGe3zCb0wdbHnGjata5HiQLfbb9w90ToOuIGqyfWSv1DnHMtPF6npz+oToaJ3/V
 nKlGsU/v0jAJ8RazX3aICugZ4p87mexyA9XCaqT8bfBY0CqKw9lV8c/dmA554d6oI2iGMyv
 qWbpCahmkOMEbwRZFDg50s6bAIovplHm6bEe0ZRp3E01Gd7poYFMJTi+wPoLZKgER88g0+I
 Hi6dtnH4AfZVEOsNvrGTNbmI+zdLoAiUq6LQvEUI0Tb6pE7ShxXQcYLXGxDnULuVR6NOV/f
 tiA==
Authentication-Results: earthlink-vadesecure.net;
 auth=pass smtp.auth=fullbandwidth@earthlink.net smtp.mailfrom=SAustin@CriticalSoftwareSystems.com;
Received: from Win10Pro32BitVM ([73.133.62.234])
 by vsel1nmtao02p.internal.vadesecure.com with ngmta
 id e1c52a7f-17c272774405647a; Tue, 02 Apr 2024 11:17:45 +0000
From: "Stuart Austin" <SAustin@CriticalSoftwareSystems.com>
To: <djy@hawaii.edu>,
	<usrp-users@lists.ettus.com>
References: <EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4@lists.ettus.com>
In-Reply-To: <EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4@lists.ettus.com>
Date: Tue, 2 Apr 2024 07:17:44 -0400
Organization: Critical Software Systems
Message-ID: <047601da84ef$62d33530$28799f90$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdqE1GtcQGxJruYmSvqm4gH1kbn/2gAGgl/A
Content-Language: en-us
Message-ID-Hash: DKPJNONLDDDL4WNMC2BZHPKG5NTRL3AM
X-Message-ID-Hash: DKPJNONLDDDL4WNMC2BZHPKG5NTRL3AM
X-MailFrom: SAustin@CriticalSoftwareSystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issues running generated GNU Radio ".py" file on E310 (Embedded Mode)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKPJNONLDDDL4WNMC2BZHPKG5NTRL3AM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9139103148777657476=="

This is a multipart message in MIME format.

--===============9139103148777657476==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0477_01DA84CD.DBC19530"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0477_01DA84CD.DBC19530
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ssh into the radio

run python

=20

>>> import sys

>>> sys.path  =20

['', '/usr/lib/python37.zip', '/usr/lib/python3.7', =
'/usr/lib/python3.7/lib-dynload', '/usr/lib/python3.7/site-packages']

>>> quit()

For each path reported by sys.path, search for the gnuradio package, on =
my radio it shows up here:



root@ni-e31x-313C4FB:~# find /usr/lib/python3.7 -iname gnu\*

/usr/lib/python3.7/dbm/gnu.py

/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.pyc

/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-2.pyc

/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-1.pyc

/usr/lib/python3.7/site-packages/gnuradio

/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.py

/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.pyo

/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freqz.pyc

/usr/lib/python3.7/site-packages/numpy/distutils/fcompiler/gnu.py

/usr/lib/python3.7/site-packages/numpy/distutils/fcompiler/__pycache__/gn=
u.cpython-37.pyc

=20

so either:

=C2=B7         you don=E2=80=99t have gnuradio in site-packages

=C2=B7         site-package/gnuradio isn=E2=80=99t in your Python path

=20

I burned this image to my e310 literally in the last couple days, I used =
uhd_images_downloader and just burned whatever it gave me onto the SD =
card. =20

=20

I think it=E2=80=99s possible you could use Python/pip to install the =
gnuradio package directly from your ssh session =E2=80=93 just like =
installing any Python package?

=20

Cheers

Stuart

=20

=20

From: djy@hawaii.edu [mailto:djy@hawaii.edu]=20
Sent: Tuesday, April 02, 2024 4:04 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Issues running generated GNU Radio ".py" file on =
E310 (Embedded Mode)

=20

I=E2=80=99m trying to run my =E2=80=9C.py=E2=80=9D file that I generated =
from GNU Radio (Host Laptop) onto my E310 (locally via SSH@root) but I'm =
getting a error saying:

"ImportError: No module named gnuradio".=20

I=E2=80=99m currently using a newly flashed a SD image =
(e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1). From a version check it =
shows that both UHD and GNU Radio is installed on my E310 image. But for =
some reason it doesn=E2=80=99t recognize the gnuradio-companion command =
on terminal. Is there something I need to make this work?=20

Current E310 Info/Version

SDR Image: e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1

GNU Radio: v 3.8.0.0

UHD: v4.4.0.0-0-g5fac246b


------=_NextPart_000_0477_01DA84CD.DBC19530
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns:xsd=3D"http://www.w3.org/2001/XMLSchema" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:2093620975;
	mso-list-type:hybrid;
	mso-list-template-ids:464565794 572549480 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:192;
	mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>ssh into the radio<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>run python<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>&gt;&gt;&gt; import sys<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>&gt;&gt;&gt; sys.path=C2=A0=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>['', '/usr/lib/python37.zip', '/usr/lib/python3.7',
'/usr/lib/python3.7/lib-dynload', =
'/usr/lib/python3.7/site-packages']<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>&gt;&gt;&gt; quit()<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>For each path reported by sys.path, search for the =
gnuradio
package, on my radio it shows up here:<br>
<br>
<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>root@ni-e31x-313C4FB:~# find /usr/lib/python3.7 -iname =
gnu\*<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/dbm/gnu.py<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.pyc<o:p>=
</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-2.py=
c<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/dbm/__pycache__/gnu.cpython-37.opt-1.py=
c<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/site-packages/gnuradio<o:p></o:p></span=
></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freq=
z.py<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freq=
z.pyo<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/site-packages/gnuradio/gru/gnuplot_freq=
z.pyc<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/site-packages/numpy/distutils/fcompiler=
/gnu.py<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>/usr/lib/python3.7/site-packages/numpy/distutils/fcompiler=
/__pycache__/gnu.cpython-37.pyc<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>so either:<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 =
level1 lfo1'><![if !supportLists]><span
style=3D'font-size:11.0pt;font-family:Symbol;color:#1F497D'><span
style=3D'mso-list:Ignore'>=C2=B7<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>you don=E2=80=99t have gnuradio in =
site-packages<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l0 =
level1 lfo1'><![if !supportLists]><span
style=3D'font-size:11.0pt;font-family:Symbol;color:#1F497D'><span
style=3D'mso-list:Ignore'>=C2=B7<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>site-package/gnuradio isn=E2=80=99t in your Python =
path<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>I burned this image to my e310 literally in the last =
couple
days, I used uhd_images_downloader and just burned whatever it gave me =
onto the
SD card.=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>I think it=E2=80=99s possible you could use Python/pip to =
install the
gnuradio package directly from your ssh session =E2=80=93 just like =
installing any
Python package?<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Cheers<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Stuart<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
djy@hawaii.edu
[mailto:djy@hawaii.edu] <br>
<b>Sent:</b> Tuesday, April 02, 2024 4:04 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Issues running generated GNU Radio =
&quot;.py&quot;
file on E310 (Embedded Mode)<o:p></o:p></span></p>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p>I=E2=80=99m trying to run my =E2=80=9C.py=E2=80=9D file that I =
generated from GNU Radio (Host
Laptop) onto my E310 (locally via SSH@root) but I'm getting a error =
saying:<o:p></o:p></p>

<p>&quot;ImportError: No module named gnuradio&quot;. <o:p></o:p></p>

<p>I=E2=80=99m currently using a newly flashed a SD image
(e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1). From a version check it =
shows that
both UHD and GNU Radio is installed on my E310 image. But for some =
reason it
doesn=E2=80=99t recognize the gnuradio-companion command on terminal. Is =
there
something I need to make this work? <o:p></o:p></p>

<p>Current E310 Info/Version<o:p></o:p></p>

<p>SDR Image: e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1<o:p></o:p></p>

<p>GNU Radio: v 3.8.0.0<o:p></o:p></p>

<p>UHD: v4.4.0.0-0-g5fac246b<o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0477_01DA84CD.DBC19530--

--===============9139103148777657476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9139103148777657476==--
