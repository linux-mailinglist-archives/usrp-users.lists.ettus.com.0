Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B80B22851F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:14:43 +0200 (CEST)
Received: from [::1] (port=41514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxuug-0003xk-6r; Tue, 21 Jul 2020 12:14:42 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:36307)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1jxuuZ-0003mn-LL
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:14:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EnLfTxF3FIntpev/f2UP0RwObqEvpzhnf7F+7W36gB0=; b=upv3xUL7uiFD0sqrV+PKyXV+q
 CwuGOwGSKna2tpH/cJ1Wr/ZYWT9mOjDxe9XKDQ+jeHK6Qgck5AMxNjaX5Du9YmE9aM2MuLiKROzoS
 kBiGX8boYqGjfmCQqKfcfp66LBfiOw0UZtkkwaoVtYl2DTAyMNe7PYfIxSE0S6Pked/M8KSG2GSIN
 ItAJ9h42p6JC1bsXv6LXw1qWtAuZz1vcmlnmwmelyJqTKM1gcjtlfEb5u5rWiGdR6X028Pa9lOO2J
 eAAZVueglecQ0qmHISqV4ev8ElCPVe1OFi+1R+4jJJheoolqYHriC6xOZSi7xo6+lmBPdGCJWA3US
 q3rzOWZ+A==;
Received: from [183.83.140.209] (port=24806 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1jxutl-005Tqk-TM; Tue, 21 Jul 2020 21:43:46 +0530
To: "'Prasad'" <kpras@trilcomm.com>,
	<usrp-users@lists.ettus.com>
Cc: "'Rao Yenamandra'" <yrao@trilcomm.com>
References: 
In-Reply-To: 
Date: Tue, 21 Jul 2020 21:43:48 +0530
Message-ID: <001b01d65f79$eae66ea0$c0b34be0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZbe1z4FSkZK7XOSDCVw4ZJs8BH+QDJjBtAADYUyAA=
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
Content-Type: multipart/mixed; boundary="===============9070437490657991123=="
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

--===============9070437490657991123==
Content-Type: multipart/related;
	boundary="----=_NextPart_000_001C_01D65FA8.049EAAA0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_001C_01D65FA8.049EAAA0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_001D_01D65FA8.049EAAA0"


------=_NextPart_001_001D_01D65FA8.049EAAA0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

During the synchronization procedure, we observe atleast 1  (Sampling =
Time)
drift in rx streamer in every  ~40ms time period.

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


------=_NextPart_001_001D_01D65FA8.049EAAA0
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
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	font-family:"Tahoma","sans-serif";}
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

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Soft =
reminder!<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Prasad
[mailto:kpras@trilcomm.com] <br>
<b>Sent:</b> Monday, July 20, 2020 7:58 PM<br>
<b>To:</b> 'usrp-users@lists.ettus.com'<br>
<b>Cc:</b> 'Rao Yenamandra'<br>
<b>Subject:</b> 1 Ts delay in USRP B210<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Dear =
Team.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Hope you are doing =
well and
safe.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>We are bringing up =
our NR-5G UE
stack with USRP B210.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>If time permits, =
would you pls.
reply to below concern with your valuable information. =
<o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>During the =
synchronization
procedure, we observe atleast </span><!--[if gte msEquation =
12]><m:oMath><i><span=20
 style=3D'font-family:"Cambria =
Math","serif";color:#1F497D'><m:r>=B1</m:r></span></i></m:oMath><![endif]=
--><![if !msEquation]><span
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";position:rel=
ative;
top:2.5pt;mso-text-raise:-2.5pt'><img width=3D11 height=3D17 =
id=3D"_x0000_i1025"
src=3D"cid:image001.png@01D65FA8.03B6BBA0"></span><![endif]><span
style=3D'color:#1F497D'>1 </span><!--[if gte msEquation =
12]><m:oMath><m:sSub><m:sSubPr><span=20
   style=3D'font-family:"Cambria =
Math","serif";color:#1F497D;font-style:italic'><m:ctrlPr></m:ctrlPr></spa=
n></m:sSubPr><m:e><i><span=20
   style=3D'font-family:"Cambria =
Math","serif";color:#1F497D'><m:r>T</m:r></span></i></m:e><m:sub><i><span=
=20
   style=3D'font-family:"Cambria =
Math","serif";color:#1F497D'><m:r>s</m:r></span></i></m:sub></m:sSub></m:=
oMath><![endif]--><![if !msEquation]><span
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";position:rel=
ative;
top:2.5pt;mso-text-raise:-2.5pt'><img width=3D13 height=3D17 =
id=3D"_x0000_i1025"
src=3D"cid:image002.png@01D65FA8.03B6BBA0"></span><![endif]><span
style=3D'color:#1F497D'>&nbsp;(Sampling Time) drift in rx streamer in =
every
&nbsp;~40ms time period.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Are we missing any =
time_spec
during &nbsp;<i>uhd_rx_streamer_recv</i> api or in =
<i>uhd_tx_streamer_send</i>
?<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Master clock rate: =
30.72e6<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Sampling rate: =
&nbsp;&nbsp;
30.72e6<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Carrier frequency: =
3.8e9<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>We use one B210 to =
transmit time
domain samples back to back and others to receive.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Log =
snippet:<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: <i>4469</i>
(<i>PSS detection offset from the slot boundary</i> =
)<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4469<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4469<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4469<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4470
</span><span =
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span
style=3D'color:#1F497D'> 1 Ts drift<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4470<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4470<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4471
</span><span =
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span
style=3D'color:#1F497D'> 1 Ts drift.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4472</span><span
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span =
style=3D'color:#1F497D'>
1 Ts drift<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4472<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4472<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Init PSS detected =
with lag: 4484
</span><span =
style=3D'font-family:Wingdings;color:#1F497D'>=E0</span><span
style=3D'color:#1F497D'> 12 Ts drift<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>sss has been =
detected<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Thanks! in =
advance.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Prasad.<o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

------=_NextPart_001_001D_01D65FA8.049EAAA0--

------=_NextPart_000_001C_01D65FA8.049EAAA0
Content-Type: image/png;
	name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D65FA8.03B6BBA0>

iVBORw0KGgoAAAANSUhEUgAAAAsAAAARCAYAAAAL4VbbAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAGmSURBVChT
nZI9SBxRFIXPe3PfOLo7LIuEgPiXJQRckmrBSrFJQBQr2cImgoWpImIlJAzugKAYxMbGxkaMhSnS
pFAsRFQsRlHBsZIg/hBFFt3dyf7MznPsZJeo8Ta3+TiXe86hRCKBpw49Fbzjng8bhsGSlqXNWGBW
OJZ7a5vF+5dLlWscebOuVOgiHMNH2Fh5CCbGeIMQKriCytJ/SpVdxpAvunmVNBTKYMNo4uPDR4Fx
C2hePQhFqIBsvoDr31fBX2uOnkyG0T8Wx9j7SIbw/aA+5/EZYi6Gpn5o0dog/UkTLlbWvniCPomA
g3QS8LX6CT3R44rdo25Xqpgc7KqL0NnOoh1QD9+9GV3/OrFUyOgIhoEYkCHTtD1UITXYCrS3Ra/P
ty+hqQKhxup0b2tVCsgBG3MwN8pDISmhKqTCzUI85saVril7CvPEywacl7vR5IQSW4EP0/seZjtH
2IuQ+JbKgmUXfr6W+eIrJ6Mg/rkXffHGZd/nyqBkssOTHqQ/J5d/Xc4liPuxMMk5mL/cu4Q2ybTZ
KdfRN9Ci/LuAh/NYNP+zdbendpNSqLWa5QAAAABJRU5ErkJggg==

------=_NextPart_000_001C_01D65FA8.049EAAA0
Content-Type: image/png;
	name="image002.png"
Content-Transfer-Encoding: base64
Content-ID: <image002.png@01D65FA8.03B6BBA0>

iVBORw0KGgoAAAANSUhEUgAAAA0AAAARCAYAAAAG/yacAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAIkSURBVDhP
Y2lsbGQgFbCQqgGknjxNdbm5XOmurgyLnmmx/3j+4y8Dw70/DIIgw4yZGN7f++Wye/c/22NNP5Bd
xPLj97PbrDpB7AIKrM/Uef8wf/lmLPDhP+t7AeYvP9mZ1SUUvr18VldXZ93U1PQLppGFg4VZ6omU
xVdpC4uy1ULr87uOSWg9M7fbOdtw/6Ode5Xrn4qziQMVM6HYdOf6y6qNosqnGy/07LnI+a/4M58+
Q5wZKx8XJ9vmL8zMP3Wk2D8BNfxG0bRs78H2RoaDDHV1UWmrJpwwvPj+z5NmToaOpqZDZxkYDp29
fwFIogUxIvTevzF5xyokLCMqcnV6U9MZfFEB1/T26Mm399+rM5jaCQj/uIs/9sCagKGjd3PtEtvr
H//9ceFlm44Svlj0Q216bPaFQ9z6FQ/n9/xNbEA/ooL6+uMsjY2Wf4CGMwNl/rHU1UWwvdizV2bd
yZ8M/GJWnNVOP8wY1jAcBWnLy3abPGfCHRsNl09v1j9V0RA68/lZjglvMNCmR+KnH/y1mn74wQEJ
6V8MKqoy8cCIAWt6tP20xUk+XZ2YaqNKQ1aGP3W7X88GanrO0tR07DFQ3q3AkRNIvWdgODkZ7jY9
edY2b66/K7bufpx+z8io/Uyl6AVgyviLM8Gmq7MHzWQLs0sP4qqSebO67Twj69w9DAxZQBOn49T0
/t0Py3v3duXzlF287upqxSQs8HvhPwaGZSBnAACn9tFi1/T6uQAAAABJRU5ErkJggg==

------=_NextPart_000_001C_01D65FA8.049EAAA0--



--===============9070437490657991123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9070437490657991123==--


