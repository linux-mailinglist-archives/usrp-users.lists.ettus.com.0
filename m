Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB912285B7
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:32:39 +0200 (CEST)
Received: from [::1] (port=41850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxvC2-0007bu-A9; Tue, 21 Jul 2020 12:32:38 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:38728)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1jxvBy-0007Uv-84
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:32:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9R9YTSFTrD/7JxP7h82btTKsn7rHbkYOtoJovTLBwg=; b=vVXLvRqNZ/a+MQH1KBS3rp9iF
 x43Ffrr7aEkYYHtUIj2TOwFf3/GMQjsjFw4SbElQEdkbIlv72J3DZw8xmiTwWnrq7YEW7hKEEhC72
 7KlC5GpGyUkiOVsxa3U8MX61BDnskL4cn/wIkOXCaTZ2jF1HAcUdK2BDecavlUIlLuJcG17hGwllZ
 AipBpEz/VU8FYjsq8+ZMBDm7cvbJ3RPrWc+slGHMA6RkpFEhe2uwDnz9V4+GCJR9thq0I0RJHkgyT
 y2gIvfM8YXnO7KyzcDHSzvdPmEh1X8lPaXR9kf4Vi5ne+fnr2LHvB71pQOdXpKpHqPEi+84qzZXVp
 k7nDJ82qg==;
Received: from [183.83.140.209] (port=23631 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1jxvBG-005bm2-7j; Tue, 21 Jul 2020 22:01:50 +0530
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>, <usrp-users@lists.ettus.com>
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
In-Reply-To: <5F17172A.9040600@gmail.com>
Date: Tue, 21 Jul 2020 22:01:52 +0530
Message-ID: <004301d65f7c$7138a750$53a9f5f0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZfe8caNhiR/T/gS+6WFCoIIcv8ogAADWAQ
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
Subject: Re: [USRP-users] 1 Ts delay in USRP B210
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
Content-Type: multipart/mixed; boundary="===============6747638729354934842=="
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

--===============6747638729354934842==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0044_01D65FAA.8AF0E350"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0044_01D65FAA.8AF0E350
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Then how we can handle this drift in our 5G-NR stack by using
uhd_rx_streamer_issue_stream_cmd?

Or we should go with GPSDO/external clock?

=20

Thanks,

From: Marcus D. Leech [mailto:patchvonbraun@gmail.com]=20
Sent: Tuesday, July 21, 2020 9:56 PM
To: Prasad; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] 1 Ts delay in USRP B210

=20

On 07/21/2020 12:25 PM, Prasad wrote:

We are using internal clock, don=92t use any GPSDO or external clock.

So for internal clock is this expected?

=20

Thanks,

=20

The internal clock is specced to +/- 2PPM.   You're seeing much less =
than
that, so it's within spec.





=20

From: USRP-users [mailto:usrp-users-bounces@lists.ettus.com] On Behalf =
Of
Marcus D. Leech via USRP-users
Sent: Tuesday, July 21, 2020 9:49 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] 1 Ts delay in USRP B210

=20

On 07/21/2020 12:13 PM, Prasad via USRP-users wrote:

Soft reminder!

=20

Thanks,

=20

From: Prasad [mailto:kpras@trilcomm.com]=20
Sent: Monday, July 20, 2020 7:58 PM
To: 'usrp-users@lists.ettus.com'
Cc: 'Rao Yenamandra'
Subject: 1 Ts delay in USRP B210

=20

Dear Team.

=20

Hope you are doing well and safe.

=20

We are bringing up our NR-5G UE stack with USRP B210.

If time permits, would you pls. reply to below concern with your =
valuable
information.=20

=20

During the synchronization procedure, we observe atleast =B11 Ts =
(Sampling
Time) drift in rx streamer in every  ~40ms time period.

Are we missing any time_spec during  uhd_rx_streamer_recv api or in
uhd_tx_streamer_send ?

=20

Master clock rate: 30.72e6

Sampling rate:    30.72e6

Carrier frequency: 3.8e9

=20

We use one B210 to transmit time domain samples back to back and others =
to
receive.

=20

Log snippet:

Init PSS detected with lag: 4469 (PSS detection offset from the slot
boundary )

sss has been detected

Init PSS detected with lag: 4469

sss has been detected

Init PSS detected with lag: 4469

sss has been detected

Init PSS detected with lag: 4469

sss has been detected

Init PSS detected with lag: 4470 =E0 1 Ts drift

sss has been detected

Init PSS detected with lag: 4470

sss has been detected

Init PSS detected with lag: 4470

sss has been detected

Init PSS detected with lag: 4471 =E0 1 Ts drift.

sss has been detected

Init PSS detected with lag: 4472=E0 1 Ts drift

sss has been detected

Init PSS detected with lag: 4472

sss has been detected

Init PSS detected with lag: 4472

sss has been detected

Init PSS detected with lag: 4484 =E0 12 Ts drift

sss has been detected

=20

Thanks! in advance.

=20

Regards,

Prasad.

=20

Are you just using the on-board reference clock, or using something like =
a
GPS module?

The drift you show is roughly 0.8PPM (if I've done my math correctly), =
which
is well within spec for this board without a better reference clock.





=20


------=_NextPart_000_0044_01D65FAA.8AF0E350
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Diso-8859-1">
<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>

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
@font-face
	{font-family:"Times New Roman \, serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	color:black;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
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

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Then how we can =
handle this
drift in our 5G-NR stack by using =
<i>uhd_rx_streamer_issue_stream_cmd</i>?<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Or we should go with
GPSDO/external clock?<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
color:windowtext'>From:</span></b><span =
style=3D'font-size:10.0pt;font-family:
"Tahoma","sans-serif";color:windowtext'> Marcus D. Leech
[mailto:patchvonbraun@gmail.com] <br>
<b>Sent:</b> Tuesday, July 21, 2020 9:56 PM<br>
<b>To:</b> Prasad; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] 1 Ts delay in USRP =
B210<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<p class=3DMsoNormal>On 07/21/2020 12:25 PM, Prasad =
wrote:<o:p></o:p></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>We are using internal =
clock,
don&#8217;t use any GPSDO or external clock.</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>So for internal clock =
is this
expected?</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

</blockquote>

<p class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman","serif"'>The
internal clock is specced to +/- 2PPM.&nbsp;&nbsp; You're seeing much =
less than
that, so it's within spec.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
color:windowtext'>From:</span></b><span =
style=3D'font-size:10.0pt;font-family:
"Tahoma","sans-serif";color:windowtext'> USRP-users [<a
href=3D"mailto:usrp-users-bounces@lists.ettus.com">mailto:usrp-users-boun=
ces@lists.ettus.com</a>]
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Tuesday, July 21, 2020 9:49 PM<br>
<b>To:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br>
<b>Subject:</b> Re: [USRP-users] 1 Ts delay in USRP =
B210</span><o:p></o:p></p>

</div>

</div>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<div>

<p class=3DMsoNormal>On 07/21/2020 12:13 PM, Prasad via USRP-users =
wrote:<o:p></o:p></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Soft =
reminder!</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Prasad [<a
href=3D"mailto:kpras@trilcomm.com">mailto:kpras@trilcomm.com</a>] <br>
<b>Sent:</b> Monday, July 20, 2020 7:58 PM<br>
<b>To:</b> '<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
'<br>
<b>Cc:</b> 'Rao Yenamandra'<br>
<b>Subject:</b> 1 Ts delay in USRP B210</span><o:p></o:p></p>

</div>

</div>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Dear =
Team.</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Hope you are doing =
well and safe.</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>We are bringing up =
our NR-5G UE
stack with USRP B210.</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>If time permits, =
would you pls.
reply to below concern with your valuable information. =
</span><o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>During the =
synchronization
procedure, we observe atleast </span><i>=B1</i><span =
style=3D'color:#1F497D'>1 </span><i>Ts</i><span
style=3D'color:#1F497D'>&nbsp;(Sampling Time) drift in rx streamer in =
every
&nbsp;~40ms time period.</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Are we missing any =
time_spec
during &nbsp;<i>uhd_rx_streamer_recv</i> api or in =
<i>uhd_tx_streamer_send</i> ?</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Master clock rate: =
30.72e6</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Sampling rate: =
&nbsp;&nbsp;
30.72e6</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Carrier frequency: =
3.8e9</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>We use one B210 to =
transmit time
domain samples back to back and others to receive.</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Log =
snippet:</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: <i>4469</i>
(<i>PSS detection offset from the slot boundary</i> =
)</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4469</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4469</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4469</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4470
</span><span =
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span
style=3D'color:#1F497D'> 1 Ts drift</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4470</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4470</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4471
</span><span =
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span
style=3D'color:#1F497D'> 1 Ts drift.</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4472</span><span
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span =
style=3D'color:#1F497D'>
1 Ts drift</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4472</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4472</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4484
</span><span =
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span
style=3D'color:#1F497D'> 12 Ts drift</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Thanks! in =
advance.</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,</span><o:p></o:p></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Prasad.</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman , serif","serif"'>&nbsp;</span><o:p></o:p></p>

</blockquote>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif"'>Are you just using the on-board
reference clock, or using something like a GPS module?<br>
<br>
The drift you show is roughly 0.8PPM (if I've done my math correctly), =
which is
well within spec for this board without a better reference clock.<br>
<br>
<br>
<br>
</span><o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman","serif"'><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_0044_01D65FAA.8AF0E350--



--===============6747638729354934842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6747638729354934842==--


