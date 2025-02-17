Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF8AA388FE
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 17:20:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15B8B385E67
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 11:20:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739809200; bh=kB5QU0Ndby1paBKOBywYxw36TazG1XQsjBrgIArMkyk=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=F4U+wkhszxttShD1khxgCen5E+d5oOe5bCBIQ3hFUHray5+nwMgJVc7UTf3fzY3fp
	 7ONoD8ocNIf3sOpTxACY+2FOZMYKNyhfWDVxi8m+gUJp4zVIKuS/8ScMONZDE/U5Hh
	 G6t9mch51/rxyUPc7fuWi6+HfU7PPofbA4oGCHrJ8dj2wT2OCDdxq5riPtup4jxxZb
	 ty7jWW7mhPA12kKkdMtrd9Vl6lySXtr+gyIJxbqlNVxOjHsOv0JLkoP0HFXMJ70/3O
	 figU2BbVyjoybuLtZCCe52iA0k39+kcRLjxjN+xJxfRki0PHoWJZh1xIxMmJ7NwC0a
	 VR+xIJ8I7vbhg==
Received: from mta-101a.earthlink-vadesecure.net (mta-101a.earthlink-vadesecure.net [51.81.61.60])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C3A6385E0B
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 11:19:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=earthlink.net header.i=@earthlink.net header.b="romKf5sq";
	dkim-atps=neutral
Authentication-Results: earthlink-vadesecure.net;
 auth=pass smtp.auth=fullbandwidth@earthlink.net smtp.mailfrom=SAustin@CriticalSoftwareSystems.com;
DKIM-Signature: v=1; a=rsa-sha256; bh=H72SU6WWQBNZoTc7qezfg1ib3Jrp2MLBc8p9wr
 3ZMH4=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-unsubscribe-post:
 list-subscribe:list-post:list-owner:list-archive; q=dns/txt;
 s=dk12062016; t=1739809195; x=1740413995; b=romKf5sqYFc/GTsPOpiwSf73LRv
 30uj0WwBKlNl5pQ9b44iCL/AVqaDFdzSDhhcpCg0TVdW2YKhVY8SkTM4rCrffIlM49+n4qm
 JCy0h6Z5n0sCmO4oBxV/pZhF2yVXhntpZuW154GwJPWlZmrClp2azrGl2Dvr8A5sieW92A6
 0ojYDZkkA9BaVVKRhIc6Eh3Y6tDSHnN+ehPhK4yQVjntZbQq7QMHE61AqesEB4TjU94EFkO
 G5+/ie25gpv5LKdnfeo7tUKWa3RWTAU3eNo1kxr/rgqKxs3adBld1/EpOMoFoTCyT946D9e
 roWro1nuPUuDjROy+Zibkahe/EIKekg==
Received: from Win10Pro32BitVM ([73.133.62.234])
 by vsel1nmtao01p.internal.vadesecure.com with ngmta
 id 02176aba-18250b3eaf055c68; Mon, 17 Feb 2025 16:19:55 +0000
From: "Stuart Austin" <SAustin@CriticalSoftwareSystems.com>
To: <john.achkar.r404@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <000801db8152$54ff4b00$fefde100$@gmail.com>
In-Reply-To: <000801db8152$54ff4b00$fefde100$@gmail.com>
Date: Mon, 17 Feb 2025 11:19:53 -0500
Organization: Critical Software Systems
Message-ID: <000901db8157$c73f64c0$55be2e40$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AduBUcrNuUY7vrwhQ/ixuLfwG8R0hgABdfwg
Content-Language: en-us
Message-ID-Hash: 5AZ2IUZOBQWD54ZOVBHST3VFC7UU2NLN
X-Message-ID-Hash: 5AZ2IUZOBQWD54ZOVBHST3VFC7UU2NLN
X-MailFrom: SAustin@CriticalSoftwareSystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: High power TX/RX same antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5AZ2IUZOBQWD54ZOVBHST3VFC7UU2NLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0112697590095719902=="

This is a multipart message in MIME format.

--===============0112697590095719902==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000A_01DB812D.DE695CC0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_000A_01DB812D.DE695CC0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you just add more attenuation between the output of the circulator =
port that goes to the RX port on the N310?=20

=20

From: john.achkar.r404@gmail.com [mailto:john.achkar.r404@gmail.com]=20
Sent: Monday, February 17, 2025 10:41 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] High power TX/RX same antenna

=20

Hi,

=20

I am using a N310, with OAI to transmit 5G signal. I want to transmit 40 =
dBm using one antenna connected on both TX and RX ports. The best =
circulator I found has 18 dB isolation, which isn=E2=80=99t sufficient =
considering -15 dBm USRP max input power.

What is the best approach to consider?

Thanks a lot.

=20

Best regards,

Charbel


------=_NextPart_000_000A_01DB812D.DE695CC0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3D"#0563C1" vlink=3D"#954F72">

<div class=3DSection1>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Can you just add more
attenuation between the output of the circulator port that goes to the =
RX port
on the N310? <o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>
john.achkar.r404@gmail.com [mailto:john.achkar.r404@gmail.com] <br>
<b>Sent:</b> Monday, February 17, 2025 10:41 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] High power TX/RX same =
antenna<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span lang=3DEN-GB>Hi,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB>I am using a N310, with OAI to =
transmit 5G
signal. I want to transmit 40 dBm using one antenna connected on both TX =
and RX
ports. The best circulator I found has 18 dB isolation, which =
isn=E2=80=99t sufficient
considering -15 dBm USRP max input power.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB>What is the best approach to =
consider?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB>Thanks a =
lot.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB>Best =
regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-GB>Charbel<o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_000A_01DB812D.DE695CC0--

--===============0112697590095719902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0112697590095719902==--
