Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CBD4974E3
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 20:06:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87EDF384F03
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 14:06:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=sagaxcommunications.com header.i=@sagaxcommunications.com header.b="o+vGspBH";
	dkim-atps=neutral
Received: from cpanel34.tarhelypark.hu (cpanel34.tarhelypark.hu [185.111.89.222])
	by mm2.emwd.com (Postfix) with ESMTPS id 11F3E384867
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 14:05:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sagaxcommunications.com; s=default; h=Content-Type:MIME-Version:Message-ID:
	Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aOGlMfiGldCYefP6I6y+bYzkO/Xthf730dPew3JisRg=; b=o+vGspBHIyrdnQDQ5bz2GksqTR
	vqCTqacYSUmjGhwtUMRv5Q+ruc36uPS2BUMYAbv9P+mhYZyLosQXHCo28gHjP2ObmuwhK9wI+fJIy
	TmcrmjK5OrbneKHEBdW+cS+BNm447QoewjZwldBXe5Nd0MK5vYnt+62rCSSSJzPvoZ47VAvdMFjn+
	mvqe38z3zBbbODnet+XY+uO5p5M5KSjUj/ZRQNDuxjSb0REH2f/nMMv+Hat15KRv5LbL1hidgyqPK
	plTgnjYdrdkH0nCJkhUVowXZ2ae2XK6rE4OAYWi8mtEcoOqd7CMJvdQ69AK2ZE6KQ4YQEUb498lXt
	N59frmVw==;
Received: from 1f2ece4f.catv.pool.telekom.hu ([31.46.206.79]:54655 helo=SGXNB01BEGED)
	by cpanel34.tarhelypark.hu with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bertalan.eged@sagaxcommunications.com>)
	id 1nBiBG-000n9q-G0; Sun, 23 Jan 2022 20:05:39 +0100
From: <bertalan.eged@sagaxcommunications.com>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com> <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com> <002901d81059$502b5320$f081f960$@sagaxcommunications.com> <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com> <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com> <e21e0da1-e55f-230f-a0a8-abccfa64220c@gmail.com> <007d01d81082$81e12b00$85a38100$@sagaxcommunications.com> <db55693f-29e1-3f36-cbdd-c3cb3b1541bd@gmail.com> <00c601d81089$1db82140$592863c0$@sagaxcommunications.com> <bec08fe4-8931-e3b8-1fbc-5178eeab666c@gmail.com>
In-Reply-To: <bec08fe4-8931-e3b8-1fbc-5178eeab666c@gmail.com>
Date: Sun, 23 Jan 2022 20:05:37 +0100
Message-ID: <00e701d8108c$356bc230$a0434690$@sagaxcommunications.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKyxz4Exbf96UgD0d16o7zVnlR1RQHxMgC5Arm0AqIB6kAOhgLH5Y7bAP6MKgMCBPl/cwJJ03lFAjhoxmcBeFhFyaoor/mQ
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
Message-ID-Hash: KTRMGZLTI3KMCG2EJ345CGP7SPV7OPVM
X-Message-ID-Hash: KTRMGZLTI3KMCG2EJ345CGP7SPV7OPVM
X-MailFrom: bertalan.eged@sagaxcommunications.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KTRMGZLTI3KMCG2EJ345CGP7SPV7OPVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3092421330290165346=="

This is a multipart message in MIME format.

--===============3092421330290165346==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00E8_01D81094.97335E80"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_00E8_01D81094.97335E80
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=20

=20

From: Marcus D. Leech <patchvonbraun@gmail.com>=20
Sent: Sunday, January 23, 2022 7:47 PM
To: bertalan.eged@sagaxcommunications.com; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: N310 reachable no error windows

=20

On 2022-01-23 13:43, bertalan.eged@sagaxcommunications.com =
<mailto:bertalan.eged@sagaxcommunications.com>  wrote:

=20

=20

From: Marcus D. Leech  <mailto:patchvonbraun@gmail.com> =
<patchvonbraun@gmail.com>=20
Sent: Sunday, January 23, 2022 7:01 PM
To: bertalan.eged@sagaxcommunications.com =
<mailto:bertalan.eged@sagaxcommunications.com> ; =
usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: Re: [USRP-users] Re: N310 reachable no error windows

=20

On 2022-01-23 12:56, bertalan.eged@sagaxcommunications.com =
<mailto:bertalan.eged@sagaxcommunications.com>  wrote:

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

OK, so, it's likely a "blockage" by your firewall configuration on the =
Windows PC.

if you:

uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"

Is it still unable to establish a session?


If so, then this is almost certainly your firewall blocking ports used =
by UHD to communicate with the N310

Your host needs to support UDP traffic on 49152 and 49153 ports.




=20

Sam as before:

C:\Users\sgx>uhd_usrp_probe --args =
"addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

Error: LookupError: KeyError: No devices found for ----->

Device Address:

    addr: 192.168.10.2

    type: n3xx

    product: n310

=20

let me check the firewall, however I used this machine with X310 =
recently=E2=80=A6

I switched off the firwall, and get other error:

C:\Users\sgx>uhd_usrp_probe --args =
"addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2

[WARNING] [MPM.RPCServer] A timeout event occured!

Error: rpc::timeout: Timeout of 2000ms while calling RPC function =
'set_device_id'

=20

C:\Users\sgx>uhd_usrp_probe

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D10.1.3.82,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claimed=
=3DFalse,addr=3D192.168.10.2

[WARNING] [MPM.RPCServer] A timeout event occured!

Error: rpc::timeout: Timeout of 2000ms while calling RPC function =
'set_device_id'





Check that the MTU on the N310 (defaults to 9000 for the SFP0 interface) =
and the MTU on your host match.

I increased to the jumbo frame support to 9000:

C:\Users\sgx>netsh interface ipv4 show subinterface

=20

   MTU  MediaSenseState   Bytes In  Bytes Out  Interface

------  ---------------  ---------  ---------  -------------

4294967295                1          0      53277  Loopback =
Pseudo-Interface 1

  9000                1       1319      10419  Ethernet 3

  1500                1  774750294   31919581  Ethernet 4

=20

But unfortunately no change:

C:\Users\sgx>uhd_usrp_probe --args =
"addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: =
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2

[WARNING] [MPM.RPCServer] A timeout event occured!

Error: rpc::timeout: Timeout of 2000ms while calling RPC function =
'set_device_id'

=20







------=_NextPart_000_00E8_01D81094.97335E80
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.E-mailStlus22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.E-mailStlus23
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
<br><b>Sent:</b> Sunday, January 23, 2022 7:47 PM<br><b>To:</b> =
bertalan.eged@sagaxcommunications.com; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] Re: N310 =
reachable no error windows<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
2022-01-23 13:43, <a =
href=3D"mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagax=
communications.com</a> wrote:<span =
style=3D'font-size:12.0pt'><o:p></o:p></span></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span lang=3DHU>From:</span></b><span =
lang=3DHU> Marcus D. Leech <a =
href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</=
a> <br><b>Sent:</b> Sunday, January 23, 2022 7:01 PM<br><b>To:</b> <a =
href=3D"mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagax=
communications.com</a>; <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b> Re: [USRP-users] Re: N310 reachable no error =
windows</span><o:p></o:p></p></div></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal>On =
2022-01-23 12:56, <a =
href=3D"mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagax=
communications.com</a> wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;ping =
192.168.10.2</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Pinging =
192.168.10.2 with 32 bytes of data:</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>Reply from 192.168.10.2: bytes=3D32 time=3D1ms =
TTL=3D64</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Reply from =
192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>Reply from 192.168.10.2: bytes=3D32 time=3D1ms =
TTL=3D64</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Reply from =
192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Ping =
statistics for 192.168.10.2:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; Packets: Sent =3D 4, Received =
=3D 4, Lost =3D 0 (0% loss),</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Approximate =
round trip times in milli-seconds:</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; Minimum =3D 1ms, Maximum =3D =
1ms, Average =3D 1ms</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;</span><o:p></o:p></p></blockquot=
e><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman =
,serif",serif'>OK, so, it's likely a &quot;blockage&quot; by your =
firewall configuration on the Windows PC.<br><br>if =
you:<br><br>uhd_usrp_probe --args =
&quot;addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310&quot;<br><br>Is it =
still unable to establish a session?<br><br><br>If so, then this is =
almost certainly your firewall blocking ports used by UHD to communicate =
with the N310<br><br>Your host needs to support UDP traffic on 49152 and =
49153 ports.<br><br><br></span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Sam as =
before:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;uhd_usrp_probe --args =
&quot;addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310&quot;</span><o:p></o=
:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [UHD] Win32; Microsoft Visual C++ version =
14.1; Boost_107000; UHD_4.1.0.4-release</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>Error: LookupError: KeyError: No devices found =
for -----&gt;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Device =
Address:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; addr: =
192.168.10.2</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; type: =
n3xx</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; product: =
n310</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>let me =
check the firewall, however I used this machine with X310 =
recently=E2=80=A6</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>I switched =
off the firwall, and get other error:</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;uhd_usrp_probe --args =
&quot;addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310&quot;</span><o:p></o=
:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [UHD] Win32; Microsoft Visual C++ version =
14.1; Boost_107000; UHD_4.1.0.4-release</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [MPMD] Initializing 1 device(s) in =
parallel with args: =
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[WARNING] [MPM.RPCServer] A timeout event =
occured!</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Error: =
rpc::timeout: Timeout of 2000ms while calling RPC function =
'set_device_id'</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;uhd_usrp_probe</span><o:p></o:p><=
/p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [UHD] Win32; Microsoft Visual C++ version =
14.1; Boost_107000; UHD_4.1.0.4-release</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [MPMD] Initializing 1 device(s) in =
parallel with args: =
mgmt_addr=3D10.1.3.82,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claimed=
=3DFalse,addr=3D192.168.10.2</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>[WARNING] =
[MPM.RPCServer] A timeout event occured!</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>Error: rpc::timeout: Timeout of 2000ms while =
calling RPC function 'set_device_id'</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><br><br></span><o:p></o:p></p></blockquote><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman",serif'>Check =
that the MTU on the N310 (defaults to 9000 for the SFP0 interface) and =
the MTU on your host match.<span =
style=3D'color:#1F497D'><o:p></o:p></span></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>I increased to the jumbo frame support to =
9000:<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;netsh interface ipv4 show =
subinterface<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>=C2=A0=C2=A0 MTU=C2=A0 =
MediaSenseState=C2=A0=C2=A0 Bytes In=C2=A0 Bytes Out=C2=A0 =
Interface<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>------=C2=A0 ---------------=C2=A0 =
---------=C2=A0 ---------=C2=A0 -------------<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>4294967295=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 53277=C2=A0 Loopback Pseudo-Interface =
1<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>=C2=A0 =
9000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
1319=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10419=C2=A0 Ethernet =
3<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>=C2=A0 =
1500=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 774750294=C2=A0=C2=A0 31919581=C2=A0 =
Ethernet 4<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>But =
unfortunately no change:<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>C:\Users\sgx&gt;uhd_usrp_probe --args =
&quot;addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310&quot;<o:p></o:p></sp=
an></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [UHD] Win32; Microsoft Visual C++ version =
14.1; Boost_107000; UHD_4.1.0.4-release<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[INFO] [MPMD] Initializing 1 device(s) in =
parallel with args: =
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'>[WARNING] [MPM.RPCServer] A timeout event =
occured!<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span style=3D'color:#1F497D'>Error: =
rpc::timeout: Timeout of 2000ms while calling RPC function =
'set_device_id'<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman",serif'><br><br><br><o:p></o:p></span></p></div></body></html>
------=_NextPart_000_00E8_01D81094.97335E80--

--===============3092421330290165346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3092421330290165346==--
