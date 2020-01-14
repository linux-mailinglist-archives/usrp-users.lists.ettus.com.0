Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC3813A7F6
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 12:08:36 +0100 (CET)
Received: from [::1] (port=53762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irK3i-0007wv-Bi; Tue, 14 Jan 2020 06:08:30 -0500
Received: from smtpout01-ext3.partage.renater.fr ([194.254.240.34]:52686
 helo=smtpout01-ext1.partage.renater.fr)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <Thomas.Harder@oca.eu>) id 1irK3e-0007tA-8E
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 06:08:26 -0500
Received: from zmtaauth01.partage.renater.fr (zmtaauth01.partage.renater.fr
 [194.254.240.25])
 by smtpout10.partage.renater.fr (Postfix) with ESMTP id 753E761F88
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 12:07:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTP id 6E1D31400CA
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 12:07:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at zmtaauth01.partage.renater.fr
Received: from zmtaauth01.partage.renater.fr ([127.0.0.1])
 by localhost (zmtaauth01.partage.renater.fr [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id TdqbOZ9z36ns for <usrp-users@lists.ettus.com>;
 Tue, 14 Jan 2020 12:07:43 +0100 (CET)
Received: from [IPv6:::ffff:10.252.71.233] (unknown [194.254.241.250])
 by zmtaauth01.partage.renater.fr (Postfix) with ESMTPA id 34AAD1400E0
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 12:07:43 +0100 (CET)
MIME-Version: 1.0
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Tue, 14 Jan 2020 12:07:43 +0100
Importance: normal
X-Priority: 3
Message-Id: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
Subject: [USRP-users] using GPIO output to trigger external RF switches
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Thomas Harder via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas Harder <Thomas.Harder@oca.eu>
Content-Type: multipart/mixed; boundary="===============1154575041289507609=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1154575041289507609==
Content-Type: multipart/alternative;
	boundary="_8FC6CABD-0E29-405E-996E-31BB6464888B_"

--_8FC6CABD-0E29-405E-996E-31BB6464888B_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,
I am continuously transmitting a waveform with several RF with 200MSPS with=
 my USRP X310 (modified code on the basis of =E2=80=9Ctx_samples_from_file.=
cpp=E2=80=9D with a waveform in a .dat file). I would like to get a trigger=
 signal from the USRP when it is changing the tx- frequency which I set in =
my .dat file.=20
Could the GPIO deliver this trigger without changing the image?=20
I am using the SRAM image with UHD 3.14.1

A second question is concerning the GPIO example on https://files.ettus.com=
/manual/page_gpio_api.html.
I copied and paced it in the =E2=80=9Ctx_waveforms=E2=80=9D example just ch=
anging the usrp device handle to =E2=80=9Cusrp=E2=80=9D but when I compiled=
 it and started tx, I couldn=E2=80=99t measure any tension on PIN 4 and 6 a=
s defined in the example. Are there more examples how to program the GPIO?
Thank you,
Thomas

--_8FC6CABD-0E29-405E-996E-31BB6464888B_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3D"#0563C1" vlink=3D"#954F72"><di=
v class=3DWordSection1><p class=3DMsoNormal>Hi,</p><p class=3DMsoNormal>I a=
m continuously transmitting a waveform with several RF with 200MSPS with my=
 USRP X310 (modified code on the basis of =E2=80=9Ctx_samples_from_file.cpp=
=E2=80=9D with a waveform in a .dat file). I would like to get a trigger si=
gnal from the USRP when it is changing the tx- frequency which I set in my =
.dat file. </p><p class=3DMsoNormal>Could the GPIO deliver this trigger wit=
hout changing the image? </p><p class=3DMsoNormal>I am using the SRAM image=
 with UHD 3.14.1</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMs=
oNormal>A second question is concerning the GPIO example on <a href=3D"http=
s://files.ettus.com/manual/page_gpio_api.html">https://files.ettus.com/manu=
al/page_gpio_api.html</a>.</p><p class=3DMsoNormal>I copied and paced it in=
 the =E2=80=9Ctx_waveforms=E2=80=9D example just changing the usrp device h=
andle to =E2=80=9Cusrp=E2=80=9D but when I compiled it and started tx, I co=
uldn=E2=80=99t measure any tension on PIN 4 and 6 as defined in the example=
. Are there more examples how to program the GPIO?</p><p class=3DMsoNormal>=
Thank you,</p><p class=3DMsoNormal>Thomas</p></div></body></html>=

--_8FC6CABD-0E29-405E-996E-31BB6464888B_--



--===============1154575041289507609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1154575041289507609==--


