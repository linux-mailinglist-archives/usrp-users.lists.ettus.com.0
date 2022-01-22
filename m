Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B907D496B9F
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jan 2022 11:10:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78B913841F9
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jan 2022 05:10:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=sagaxcommunications.com header.i=@sagaxcommunications.com header.b="Q7KzamGI";
	dkim-atps=neutral
Received: from cpanel34.tarhelypark.hu (cpanel34.tarhelypark.hu [185.111.89.222])
	by mm2.emwd.com (Postfix) with ESMTPS id 6481338462E
	for <usrp-users@lists.ettus.com>; Sat, 22 Jan 2022 05:09:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sagaxcommunications.com; s=default; h=Content-Type:MIME-Version:Message-ID:
	Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RPsz256le+uvoVlZ66XYyUwdozluIFoYLqzOsnf586E=; b=Q7KzamGIZjTJf51Fqz6nUiShPN
	ikDvZtlEfgmNz+q0B3XFR/TL6sdxJ6MSyS9PmKgLiGKQfTHk11byfv16pO2ueONHD5J4OXlB8UCfC
	hD9tDeXZ5rFZsBSAym5c0orA2DfEGjYNZKfPXqQTPiMysdX2GZMArtRLaDeQH8VAgecUFdXCqtxuk
	2mg8hUy2vGNpP5XOjVRdRkRrfPzDhHSqwT98gwip5q8HgttjhmZFs8/sdMByizGShWs0I29xblH7u
	BRfpWYrYhd1lmvfa2lmx9lCxz6IJ1fLtZlSS9bLcGkkPrvc8EaExJhRSiAERAY56Gh4bh6K+SkSF5
	LJh89GGg==;
Received: from 1f2ece4f.catv.pool.telekom.hu ([31.46.206.79]:50341 helo=SGXNB01BEGED)
	by cpanel34.tarhelypark.hu with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bertalan.eged@sagaxcommunications.com>)
	id 1nBDKV-0001RI-Mr
	for usrp-users@lists.ettus.com; Sat, 22 Jan 2022 11:09:08 +0100
From: <bertalan.eged@sagaxcommunications.com>
To: <usrp-users@lists.ettus.com>
Date: Sat, 22 Jan 2022 11:09:07 +0100
Message-ID: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdgPeBdgDsBzkAkZQwCoTRN9OhMurw==
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
Message-ID-Hash: 53O7DWYL2H5GST25XVLTRWSRGCP4ZTSU
X-Message-ID-Hash: 53O7DWYL2H5GST25XVLTRWSRGCP4ZTSU
X-MailFrom: bertalan.eged@sagaxcommunications.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/53O7DWYL2H5GST25XVLTRWSRGCP4ZTSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3143832769575856976=="

This is a multipart message in MIME format.

--===============3143832769575856976==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_074D_01D80F80.799D1D80"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_074D_01D80F80.799D1D80
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear All, I have the same issue, and found this thread:

[USRP-users] Re: UHD 3.15 on Windows (mail-archive.com)
<https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.html> 

But without a solution at the end.

 

In my case:

 

C:\Users\sgx>uhd_find_devices

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;
UHD_4.1.0.4-release

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: 3178D22

    name: MyB200

    product: B200

    type: b200

 

 

--------------------------------------------------

-- UHD Device 1

--------------------------------------------------

Device Address:

    serial: 31B3599

    claimed: False

    mgmt_addr: 10.1.3.82

    mgmt_addr: 192.168.10.2

    product: n310

    reachable: No

    type: n3xx

 

 

C:\Users\sgx>uhd_usrp_probe

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;
UHD_4.1.0.4-release

[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD
session. Specify find_all to find all devices.

[INFO] [B200] Detected Device: B200

[INFO] [B200] Operating over USB 3.

[INFO] [B200] Initialize CODEC control...

[INFO] [B200] Initialize Radio control...

[INFO] [B200] Performing register loopback test...

[INFO] [B200] Register loopback test passed

[INFO] [B200] Setting master clock rate selection to 'automatic'.

[INFO] [B200] Asking for clock rate 16.000000 MHz...

[INFO] [B200] Actually got clock rate 16.000000 MHz.

[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD
session. Specify find_all to find all devices.

  _____________________________________________________

/

|       Device: B-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: B200

|   |   revision: 5

|   |   product: 1

|   |   name: MyB200

|   |   serial: 3178D22

 

(probe works well for B200, I just attached for cross probe the uhd
functionality.)

 

Any suggestions? Where should I use the sugested find_all parameter?

Tks,

/Bertalan

 


------=_NextPart_000_074D_01D80F80.799D1D80
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Helv;
	panose-1:2 11 6 4 2 2 2 3 2 4;}
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-mailStlus17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
class=3DMsoNormal><span lang=3DEN-GB>Dear All, I have the same issue, =
and found this thread:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB><a =
href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.=
html">[USRP-users] Re: UHD 3.15 on Windows =
(mail-archive.com)</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>But without a solution at the end.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>In my case:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-GB>C:\Users\sgx&gt;uhd_find_devices<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [UHD] Win32; Microsoft =
Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-GB>-- UHD Device =
0<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-GB>Device =
Address:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; serial: 3178D22<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; name: =
MyB200<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; product: B200<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; type: =
b200<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-GB>-- UHD Device =
1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>--------------------------------------------------<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-GB>Device =
Address:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; serial: 31B3599<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; claimed: =
False<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; mgmt_addr: =
10.1.3.82<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; mgmt_addr: =
192.168.10.2<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; product: n310<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp;&nbsp;&nbsp; <b>reachable: =
No<o:p></o:p></b></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>&nbsp;&nbsp;&nbsp; type: n3xx<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>C:\Users\sgx&gt;uhd_usrp_probe<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [UHD] Win32; Microsoft =
Visual C++ version 14.1; Boost_107000; =
UHD_4.1.0.4-release<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
lang=3DEN-GB>[INFO] [MPMD FIND] Found MPM devices, but none are =
reachable for a UHD session. Specify find_all to find all =
devices.<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Detected Device: B200<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [B200] Operating over USB =
3.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB>[INFO] =
[B200] Initialize CODEC control...<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>[INFO] [B200] Initialize Radio =
control...<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Performing register loopback =
test...<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Register loopback test =
passed<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Setting master clock rate selection to =
'automatic'.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Asking for clock rate 16.000000 =
MHz...<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>[INFO] [B200] Actually got clock rate 16.000000 =
MHz.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB>[INFO] =
[MPMD FIND] Found MPM devices, but none are reachable for a UHD session. =
Specify find_all to find all devices.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>&nbsp; =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-GB>/<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: B-Series =
Device<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp;&nbsp;&nbsp; =
_____________________________________________________<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-GB>|&nbsp;&nbsp;&nbsp; =
/<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: =
B200<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; revision: =
5<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; product: =
1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; name: =
MyB200<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>|&nbsp;&nbsp; |&nbsp;&nbsp; serial: =
3178D22<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>(probe works well for B200, I just attached for cross probe =
the uhd functionality&#8230;)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'font-size:10.0pt;font-family:"Helv",sans-serif'>Any =
suggestions? Where should I use the sugested find_all =
parameter?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB =
style=3D'font-size:10.0pt;font-family:"Helv",sans-serif'>Tks,<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-GB =
style=3D'font-size:10.0pt;font-family:"Helv",sans-serif'>/Bertalan<o:p></=
o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_000_074D_01D80F80.799D1D80--

--===============3143832769575856976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3143832769575856976==--
