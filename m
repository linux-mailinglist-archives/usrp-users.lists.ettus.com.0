Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBFC24EECB
	for <lists+usrp-users@lfdr.de>; Sun, 23 Aug 2020 18:27:23 +0200 (CEST)
Received: from [::1] (port=44578 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9sq0-0004qb-KB; Sun, 23 Aug 2020 12:27:20 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:37981)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1k9spw-0004k2-5n
 for usrp-users@lists.ettus.com; Sun, 23 Aug 2020 12:27:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZfwbiSSOKdAtGEiAkA8x3mh9ZUXel5R4xGKts2Rtngg=; b=KrdmlJGB4I23u4lkZPPzPcE3d
 OPK5j/2s3fQVlKwsYHZE4IABme8Rd7qmmnUBLmjY9bkoSHh0QpuRXJaX39QTNU95kQBl0DgAPm0F9
 rdFM6Rc9SHSEyfizjv6CGxD4o3Zv1oeHj+nIx4VR7xPBd9DKqQ3PpRAoemaBjMumcVvP2rLcVwloL
 +wprmHBVjOBxQoSx2xDSZYmNGJT6wk39fgChrtzIfBU7giw7aPBlkKkzJUe0xW+FrXDEFGGJQxrJG
 wlPicwDrHsi5WADVsEVhxmwnNgl+wmSgXvIc15vONPF89gnYr9kHgYYgvgNrxnHyHjVozVHeIgb3R
 /9LjLt8/Q==;
Received: from [183.83.141.206] (port=46328 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1k9spE-0001UD-7W; Sun, 23 Aug 2020 21:56:32 +0530
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>, <usrp-users@lists.ettus.com>
References: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
 <5F41C5B7.9030201@gmail.com> <000301d67948$f6b23a50$e416aef0$@com>
 <5F428F1C.1030103@gmail.com> <001101d67964$be070570$3a151050$@com>
 <5F42952C.4040200@gmail.com>
In-Reply-To: <5F42952C.4040200@gmail.com>
Date: Sun, 23 Aug 2020 21:56:33 +0530
Message-ID: <003a01d6796a$2ac62010$80526030$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZ5aCgUN5sG021ZRKaT0WmMV+sTigAAO+Pg
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - ns13-777.999servers.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - trilcomm.com
X-Get-Message-Sender-Via: ns13-777.999servers.com: authenticated_id:
 kpras@trilcomm.com
X-Authenticated-Sender: ns13-777.999servers.com: kpras@trilcomm.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually
 increase delay
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Prasad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Prasad <kpras@trilcomm.com>
Content-Type: multipart/mixed; boundary="===============7950650651176341449=="
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

--===============7950650651176341449==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_003B_01D67998.447E5C10"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_003B_01D67998.447E5C10
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

From: Marcus D. Leech [mailto:patchvonbraun@gmail.com]=20
Sent: Sunday, August 23, 2020 9:41 PM
To: Prasad; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually =
increase delay

=20

On 08/23/2020 11:47 AM, Prasad wrote:

=20

From: Marcus D. Leech [mailto:patchvonbraun@gmail.com]=20
Sent: Sunday, August 23, 2020 9:16 PM
To: Prasad; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually =
increase delay

=20

On 08/23/2020 08:28 AM, Prasad wrote:

Dear Marcus,

=20

Verified the code couple of time even tested bypassing USRP and it works =
fine.

So, suspecting any time_spec either in RX or TX missing in the code?

=20

Regards,

Prasad.

What is your sample rate?  Over what time scales do you see an apparent =
"time slip"?
30.72e6.

Nearly 40ms one-four sample delay.




=20

You're seeing a one to four-sample slip over a period of 40ms, unless I =
misunderstand what you're saying.

At 30.72e6 SPS, that amounts to between 0.8 and 2.4PPM, which is within =
spec for the B210 without an external clock.

The clock quality necessarily determines not only frequency accuracy of =
the RF components, but also of everything else in the system
  including sampling.

I understand it is within the time spec. But the delay goes incremented =
linearly, it means if we wait for 30mins we are getting expected signal =
after 0.5milliseconds from the desire time boundary=20

So do we need to use rx streamer command to adjust it?.


------=_NextPart_000_003B_01D67998.447E5C10
Content-Type: text/html;
	charset="utf-8"
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
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

<body bgcolor=3Dwhite lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
color:windowtext'>From:</span></b><span =
style=3D'font-size:10.0pt;font-family:
"Tahoma","sans-serif";color:windowtext'> Marcus D. Leech
[mailto:patchvonbraun@gmail.com] <br>
<b>Sent:</b> Sunday, August 23, 2020 9:41 PM<br>
<b>To:</b> Prasad; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] USRP B210: getting RX samples with =
gradually
increase delay<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<p class=3DMsoNormal>On 08/23/2020 11:47 AM, Prasad =
wrote:<o:p></o:p></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
color:windowtext'>From:</span></b><span =
style=3D'font-size:10.0pt;font-family:
"Tahoma","sans-serif";color:windowtext'> Marcus D. Leech [<a
href=3D"mailto:patchvonbraun@gmail.com">mailto:patchvonbraun@gmail.com</a=
>] <br>
<b>Sent:</b> Sunday, August 23, 2020 9:16 PM<br>
<b>To:</b> Prasad; <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br>
<b>Subject:</b> Re: [USRP-users] USRP B210: getting RX samples with =
gradually
increase delay</span><o:p></o:p></p>

</div>

</div>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<div>

<p class=3DMsoNormal>On 08/23/2020 08:28 AM, Prasad =
wrote:<o:p></o:p></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Dear Marcus,</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Verified the code couple of time even tested bypassing =
USRP and
it works fine.</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>So, suspecting any time_spec either in RX or TX missing =
in the
code?</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Regards,</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Prasad.</span><o:p></o:p></p>

</div>

</blockquote>

<p class=3DMsoNormal>What is your sample rate?&nbsp; Over what time =
scales do you
see an apparent &quot;time slip&quot;?<br>
<span style=3D'color:#1F497D'>30.72e6.</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Nearly 40ms one-four =
sample
delay.</span><br>
<br>
<br>
<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</blockquote>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>You're seeing a one =
to
four-sample slip over a period of 40ms, unless I misunderstand what =
you're
saying.<br>
<br>
At 30.72e6 SPS, that amounts to between 0.8 and 2.4PPM, which is within =
spec
for the B210 without an external clock.<br>
<br>
The clock quality necessarily determines not only frequency accuracy of =
the RF
components, but also of everything else in the system<br>
&nbsp; including sampling.<o:p></o:p></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:11.0pt;
font-family:"Calibri","sans-serif";color:#1F497D'>I understand it is =
within the
time spec. But the delay goes incremented linearly, it means if we wait =
for
30mins we are getting expected signal after 0.5milliseconds from the =
desire
time boundary <o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:11.0pt;
font-family:"Calibri","sans-serif";color:#1F497D'>So do we need to use =
rx
streamer command to adjust it?.<o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_003B_01D67998.447E5C10--



--===============7950650651176341449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7950650651176341449==--


