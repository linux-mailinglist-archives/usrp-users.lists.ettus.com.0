Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C09D182CB
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 01:58:42 +0200 (CEST)
Received: from [::1] (port=45562 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOWSM-0005ed-Vf; Wed, 08 May 2019 19:58:38 -0400
Received: from mail.sysware.com ([69.71.211.13]:37392)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <michaeld@sysware.com>)
 id 1hOWRp-0005Ii-0W
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 19:58:35 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.sysware.com (Postfix) with ESMTP id 9A945C0054B6E;
 Wed,  8 May 2019 19:57:31 -0400 (EDT)
Received: from mail.sysware.com ([127.0.0.1])
 by localhost (mail.sysware.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ftF19PUaFzeS; Wed,  8 May 2019 19:57:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.sysware.com (Postfix) with ESMTP id 31947C0054BB5;
 Wed,  8 May 2019 19:57:31 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.sysware.com
Received: from mail.sysware.com ([127.0.0.1])
 by localhost (mail.sysware.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id u__-hV0_VaMR; Wed,  8 May 2019 19:57:31 -0400 (EDT)
Received: from mail.sysware.com (mail.sysware.com [172.20.2.25])
 by mail.sysware.com (Postfix) with ESMTP id 09A73C0054B6E;
 Wed,  8 May 2019 19:57:31 -0400 (EDT)
To: "Brian Padalino" <bpadalino@gmail.com>
References: <003201d505f5$b2dfb770$189f2650$@sysware.com>
 <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
In-Reply-To: <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
Thread-Topic: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
Date: Wed, 8 May 2019 19:57:30 -0400 (EDT)
Message-ID: <004a01d505f9$c7b437d0$571ca770$@sysware.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Mailer: Zimbra 8.8.6_GA_1906 (Zimbra-ZCO/8.8.10.1788 (10.0.17134 en-US)
 P1ea0 T14b0 R215)
Thread-Index: AQGS8Q/tAInys2zh1Q1PzxxoCuE8VQL0vUp2ps5q/WA=
Content-Language: en-us
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Michael Deacon via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Deacon <michaeld@sysware.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5333256996522337934=="
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

This is a multipart message in MIME format.

--===============5333256996522337934==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_004B_01D505BF.1B55D500"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_004B_01D505BF.1B55D500
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

I added some attenuation. The overload is gone but the condition persists.



Thanks,



Mike



From: Brian Padalino <bpadalino@gmail.com>
Sent: Wednesday, May 8, 2019 4:37 PM
To: Michael Deacon <michaeld@sysware.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Relationship between IQ values, gain and noise on 
B205mini transmitter



On Wed, May 8, 2019 at 7:28 PM Michael Deacon via USRP-users 
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hello,



I have a simple transmitter consisting of a file source connected to a USRP 
sink (attached image radio.png). The file contains interleaved floating 
point IQ representing a few seconds of LTE. The IQ amplitude values are 
normalized between +1.0 and -1.0. The sink is configured to 60db, 7.5MHz 
sample rate, 385MHz center frequency and 5MHz bandwidth. The output looks 
exactly like the original on a spectrum analyzer (see attached good.jpg). If 
I turn up the gain on the sink or increase the amplitude of the IQ data I 
get what looks to be noise on either side of the signal spectrum (see 
attached bad.jpg). Any idea what is going on here?



Your bad.jpg picture has the spectrum analyzer saying OLVD.  Try changing 
your reference level of the spectrum analyzer to be higher so you don't 
saturate the input of the spectrum analyzer.



Tell us if that fixes it for you.



Brian


------=_NextPart_000_004B_01D505BF.1B55D500
Content-Type: text/html;
	charset="utf-8"
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I added =
some attenuation. The overload is gone but the condition =
persists.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>From:</b> =
Brian Padalino &lt;bpadalino@gmail.com&gt; <br><b>Sent:</b> Wednesday, =
May 8, 2019 4:37 PM<br><b>To:</b> Michael Deacon =
&lt;michaeld@sysware.com&gt;<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] =
Relationship between IQ values, gain and noise on B205mini =
transmitter<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, May 8, 2019 at 7:28 PM Michael Deacon via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hello,<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I have a =
simple transmitter consisting of a file source connected to a USRP sink =
(attached image radio.png). The file contains interleaved floating point =
IQ representing a few seconds of LTE. The IQ amplitude values are =
normalized between +1.0 and -1.0. The sink is configured to 60db, 7.5MHz =
sample rate, 385MHz center frequency and 5MHz bandwidth. The output =
looks exactly like the original on a spectrum analyzer (see attached =
good.jpg). If I turn up the gain on the sink or increase the amplitude =
of the IQ data I get what looks to be noise on either side of the signal =
spectrum (see attached bad.jpg). Any idea what is going on =
here?<o:p></o:p></p></div></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Your bad.jpg picture has the spectrum analyzer saying =
OLVD.&nbsp; Try changing your reference level of the spectrum analyzer =
to be higher so you don't saturate the input of the spectrum =
analyzer.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Tell us if that fixes it for =
you.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Brian<o:p></o:p></p></div></div></div></div></body></ht=
ml>
------=_NextPart_000_004B_01D505BF.1B55D500--


--===============5333256996522337934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5333256996522337934==--

