Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39821497405
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 18:57:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15A76384E19
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 12:57:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=sagaxcommunications.com header.i=@sagaxcommunications.com header.b="b3rXweDw";
	dkim-atps=neutral
Received: from cpanel34.tarhelypark.hu (cpanel34.tarhelypark.hu [185.111.89.222])
	by mm2.emwd.com (Postfix) with ESMTPS id 3538B38456D
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 12:56:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sagaxcommunications.com; s=default; h=Content-Type:MIME-Version:Message-ID:
	Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Onl74VpaQSJ84bGeb31k7cf2n+In80R0y/Slvs8r85k=; b=b3rXweDw0kgQbYMSDcR636qQXe
	IgWKtMGJPL4MziylbjgigNwEyiVHdcuLJmRv+UIlOijQOsDaXdf2iXN0vKZTcKLv531S9XrEbC98F
	HdEO32k+t6fNEwp5EclAZdDhKdF4+etVzGsHCXiD2EDJrsbs+q3Q2b3HcHS0o4J/ATwZ52nqPYuqE
	lR5DuhIwSou9sYGpkFlvW/Tuoz+/JBzOIEZRwJHL/b8MAPhefc9mJzIPOjE3E3zFjWVBaeEgEneU0
	cKU92ENlIFyMCULiz2p0FHKwUiQsnenPC1gWVS2pCMHM9ruvWvHajDEoWK4GJqogDZjmjj579rMGi
	xxV/b8cw==;
Received: from 1f2ece4f.catv.pool.telekom.hu ([31.46.206.79]:52762 helo=SGXNB01BEGED)
	by cpanel34.tarhelypark.hu with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bertalan.eged@sagaxcommunications.com>)
	id 1nBh63-001WDP-Sa; Sun, 23 Jan 2022 18:56:12 +0100
From: <bertalan.eged@sagaxcommunications.com>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com> <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com> <002901d81059$502b5320$f081f960$@sagaxcommunications.com> <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com> <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com> <e21e0da1-e55f-230f-a0a8-abccfa64220c@gmail.com>
In-Reply-To: <e21e0da1-e55f-230f-a0a8-abccfa64220c@gmail.com>
Date: Sun, 23 Jan 2022 18:56:11 +0100
Message-ID: <007d01d81082$81e12b00$85a38100$@sagaxcommunications.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKyxz4Exbf96UgD0d16o7zVnlR1RQHxMgC5Arm0AqIB6kAOhgLH5Y7bAP6MKgOqaJlu4A==
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel34.tarhelypark.hu
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - sagaxcommunications.com
X-Get-Message-Sender-Via: cpanel34.tarhelypark.hu: authenticated_id: bertalan.eged@sagaxcommunications.com
X-Authenticated-Sender: cpanel34.tarhelypark.hu: bertalan.eged@sagaxcommunications.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-ID-Hash: DZR2U2LUDWXZAXLBHHRURPEZ4RUHLLXT
X-Message-ID-Hash: DZR2U2LUDWXZAXLBHHRURPEZ4RUHLLXT
X-MailFrom: bertalan.eged@sagaxcommunications.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZR2U2LUDWXZAXLBHHRURPEZ4RUHLLXT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4697609613925816605=="

This is a multipart message in MIME format.

--===============4697609613925816605==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_007E_01D8108A.E3A87930"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_007E_01D8108A.E3A87930
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=20

=20

From: Marcus D. Leech <patchvonbraun@gmail.com>=20
Sent: Sunday, January 23, 2022 6:27 PM
To: bertalan.eged@sagaxcommunications.com; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: N310 reachable no error windows

=20

On 2022-01-23 12:03, bertalan.eged@sagaxcommunications.com =
<mailto:bertalan.eged@sagaxcommunications.com>  wrote:

=20

=20

=20

=20

=20

It seems to be that the N300 is permanently available for the embedded =
computer,

However I like to use it in networked mode with an external, more =
prowerful computer.

=20

It is written that MPM is responsible for that:

USRP Hardware Driver and USRP Manual: The Module Peripheral Manager =
(MPM) Architecture (ettus.com) =
<https://files.ettus.com/manual/page_mpm.html>=20
however I was not able to understand how it works, and how can I switch =
between embedded vs networked mode.

=20

This is what I am looking for to switch my device from embedded to =
networked mode of operation.=20

Tks,

/Bertalan

=20

You simply establish a session from an external host, there's no special =
"configuration switching" that needs to happen.

AGAIN, PLEASE:

What does:

ping 192.168.10.2

yield from your host PC?



=20

For sure ping works=E2=80=A6

=20

C:\Users\sgx>ping 192.168.10.2

=20

Pinging 192.168.10.2 with 32 bytes of data:

Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64

Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64

Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64

Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64

=20

Ping statistics for 192.168.10.2:

    Packets: Sent =3D 4, Received =3D 4, Lost =3D 0 (0% loss),

Approximate round trip times in milli-seconds:

    Minimum =3D 1ms, Maximum =3D 1ms, Average =3D 1ms

=20

C:\Users\sgx>


------=_NextPart_000_007E_01D8108A.E3A87930
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.E-mailStlus18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.E-mailStlus19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.E-mailStlus20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.E-mailStlus21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span lang=3DHU>From:</span></b><span =
lang=3DHU> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; =
<br><b>Sent:</b> Sunday, January 23, 2022 6:27 PM<br><b>To:</b> =
bertalan.eged@sagaxcommunications.com; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] Re: N310 =
reachable no error windows<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
2022-01-23 12:03, <a =
href=3D"mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagax=
communications.com</a> wrote:<span =
style=3D'font-size:12.0pt'><o:p></o:p></span></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt'>It seems to be that =
the N300 is permanently available for the embedded =
computer,</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>However I like to use it in <b>networked =
mode</b> with an external, more prowerful =
computer.</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt'>It is written that =
MPM is responsible for that:</span><o:p></o:p></p><p =
class=3DMsoNormal><a =
href=3D"https://files.ettus.com/manual/page_mpm.html">USRP Hardware =
Driver and USRP Manual: The Module Peripheral Manager (MPM) Architecture =
(ettus.com)</a><span style=3D'font-size:12.0pt;font-family:"Times New =
Roman ,serif",serif'><br><span style=3D'color:#1F497D'>however I was not =
able to understand how it works, and how can I switch between =
</span></span><span style=3D'color:#1F497D'>embedded vs networked =
mode.</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>This is what I am =
looking for to switch my device from embedded to networked mode of =
operation.&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt'>Tks,</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>/Bertalan</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman",serif'>You =
simply establish a session from an external host, there's no special =
&quot;configuration switching&quot; that needs to happen.<br><br>AGAIN, =
PLEASE:<br><br>What does:<br><br>ping 192.168.10.2<br><br>yield from =
your host PC?<br><br><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>For sure =
ping works=E2=80=A6<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;ping =
192.168.10.2<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Pinging =
192.168.10.2 with 32 bytes of data:<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>Reply from 192.168.10.2: bytes=3D32 time=3D1ms =
TTL=3D64<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Reply from =
192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>Reply from 192.168.10.2: bytes=3D32 time=3D1ms =
TTL=3D64<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Reply from =
192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Ping =
statistics for 192.168.10.2:<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>=C2=A0=C2=A0=C2=A0 Packets: Sent =3D 4, Received =
=3D 4, Lost =3D 0 (0% loss),<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Approximate =
round trip times in milli-seconds:<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>=C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, Maximum =3D =
1ms, Average =3D 1ms<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;<o:p></o:p></span></p></div></bod=
y></html>
------=_NextPart_000_007E_01D8108A.E3A87930--

--===============4697609613925816605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4697609613925816605==--
