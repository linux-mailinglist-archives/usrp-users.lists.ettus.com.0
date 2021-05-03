Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E76371907
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 18:17:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF267384438
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 12:17:02 -0400 (EDT)
Received: from mx-relay87-hz1.antispameurope.com (mx-relay87-hz1.antispameurope.com [94.100.132.254])
	by mm2.emwd.com (Postfix) with ESMTPS id 69113383DC1
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 12:16:04 -0400 (EDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by mx-relay87-hz1.antispameurope.com;
 Mon, 03 May 2021 18:16:03 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.212.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 8DD9B2400082;
	Mon,  3 May 2021 18:15:58 +0200 (CEST)
Received: from mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a) by
 mailn1.iis.fhg.de (2001:638:a0a:2111:5807:dd5d:920c:76e8) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 3 May 2021 18:15:58 +0200
Received: from mail03.iis.fhg.de ([fe80::314f:f22c:4a37:b25a]) by
 mail03.iis.fhg.de ([fe80::314f:f22c:4a37:b25a%12]) with mapi id
 15.00.1497.015; Mon, 3 May 2021 18:15:57 +0200
From: "Nieland, Michael" <nielanml@iis.fraunhofer.de>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Changing RX frequency (B210) at runtime using
 the message interface (GnuRadio)
Thread-Index: AddAAT8Y8CpLcP+CTWi7VF4SeDHhrgAFqeiAAAfrIJA=
Date: Mon, 3 May 2021 16:15:56 +0000
Message-ID: <e87436c5f82941029ffff1010d60632a@mail03.iis.fhg.de>
References: <026715b28cc84de89c7f38eb4d82bffa@mail03.iis.fhg.de>
 <609008AF.7080803@gmail.com>
In-Reply-To: <609008AF.7080803@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [153.96.171.210]
MIME-Version: 1.0
X-cloud-security-sender: nielanml@iis.fraunhofer.de
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay87-hz1.antispameurope.com with A6638E267A1
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1, IP=153.96.172.4
X-cloud-security-Digest: 3dfa7f5c0b34ca74235a6994a5e5eafc
X-cloud-security: scantime:1.786
Message-ID-Hash: VT2H3OM4VKC7PJNIVUYKIDT6AWASXTDB
X-Message-ID-Hash: VT2H3OM4VKC7PJNIVUYKIDT6AWASXTDB
X-MailFrom: prvs=0750a4bd61=nielanml@iis.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Changing RX frequency (B210) at runtime using the message interface (GnuRadio)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VT2H3OM4VKC7PJNIVUYKIDT6AWASXTDB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7143092228642489964=="

--===============7143092228642489964==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_e87436c5f82941029ffff1010d60632amail03iisfhgde_"

--_000_e87436c5f82941029ffff1010d60632amail03iisfhgde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Yep I tried that as well, no issues if I am not using the message interface=
 (Just a QT Gui Range for instance). So it seems like it has something to d=
o with the message interface.

BR
Michael


Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Montag, 3. Mai 2021 16:29
An: usrp-users@lists.ettus.com
Betreff: [USRP-users] Re: Changing RX frequency (B210) at runtime using the=
 message interface (GnuRadio)

On 05/03/2021 05:47 AM, Nieland, Michael wrote:
Dear all,
I am using two B210 USRP's to generate and receive DQPSK Signals around 1.5=
3 GHz (two TX and two  RX channels). The USRP's use FW Version 8.0 and FPGA=
 Version 16.0 (Hardware Revision 4). I am having some trouble properly chan=
ging the RX frequency at runtime using the message interface. When the RX f=
requency is varied using a QT Gui Range slider I encounter no issues. Howev=
er, in my application I have to use the message interface. In general, I as=
sume that my pmt message structure must be correct, since it works fine whe=
n the frequency is only changed by a few MHz.  Also other commands (like se=
tting tx and rx gains) work as expected. If, however, the frequency is requ=
ested to be set to let's say 2 GHz from 1.53 GHz, an overflow is indicated =
and the respective USRP Channel completely stops streaming (does not restar=
t).
I tried using the "freq" command (both with indicating the channel and with=
out since it should not make a difference on the B210) and the tune_request=
. I tried several different message structures but for some reason it only =
works for the TX Usrp (When using the message port of the TX Usrp to change=
 frequency it is indicating some underflows right when the frequency is cha=
nged and is then working fine without any underflows or other issues).
To eliminate the error I am right now testing in an isolated FG with only a=
 USRP source and a Message Edit Box (FG is attached) and the issue occurs h=
ere as well.
Any help would be appreciated and maybe someone was/is facing the same issu=
e?
Best regards
Michael

Have you tried using the "direct" interface for tuning--bypassing, for now,=
 the message infrastructure?  Just use your rx_freq
  variable directly in the UHD source block frequency input field?  If that=
 also produces overruns during tuning, then the issue
  is deeper inside than the message interface.




--_000_e87436c5f82941029ffff1010d60632amail03iisfhgde_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
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
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.E-MailFormatvorlage18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Hi Marc=
us, <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Yep I t=
ried that as well, no issues if I am not using the message interface (Just =
a QT Gui Range for instance). So it seems like it has something to do with =
the message interface.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">BR<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Michael=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:0cm;margin-bottom:.0001pt;lin=
e-height:normal">
<b><span style=3D"color:windowtext;mso-fareast-language:DE">Von:</span></b>=
<span style=3D"color:windowtext;mso-fareast-language:DE"> Marcus D. Leech &=
lt;patchvonbraun@gmail.com&gt;
<br>
<b>Gesendet:</b> Montag, 3. Mai 2021 16:29<br>
<b>An:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> [USRP-users] Re: Changing RX frequency (B210) at runtime us=
ing the message interface (GnuRadio)<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 05/03/2021 05:47 AM, Nieland, Michael wrote:<span=
 style=3D"font-size:12.0pt;line-height:105%;mso-fareast-language:DE"><o:p><=
/o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
Dear all, </span>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using two B210 USRP&#8217;=
s to generate and receive DQPSK Signals around 1.53 GHz (two TX and two &nb=
sp;RX channels). The USRP&#8217;s use FW Version 8.0 and FPGA Version 16.0 =
(Hardware Revision 4). I am having some trouble properly
 changing the RX frequency at runtime using the message interface. When the=
 RX frequency is varied using a QT Gui Range slider I encounter no issues. =
However, in my application I have to use the message interface. In general,=
 I assume that my pmt message structure
 must be correct, since it works fine when the frequency is only changed by=
 a few MHz.&nbsp; Also other commands (like setting tx and rx gains) work a=
s expected. If, however, the frequency is requested to be set to let&#8217;=
s say 2 GHz from 1.53 GHz, an overflow is indicated
 and the respective USRP Channel completely stops streaming (does not resta=
rt).&nbsp; </span>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried using the &#8220;freq&#=
8221; command (both with indicating the channel and without since it should=
 not make a difference on the B210) and the tune_request. I tried several d=
ifferent message structures but for some reason
 it only works for the TX Usrp (When using the message port of the TX Usrp =
to change frequency it is indicating some underflows right when the frequen=
cy is changed and is then working fine without any underflows or other issu=
es).
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To eliminate the error I am rig=
ht now testing in an isolated FG with only a USRP source and a Message Edit=
 Box (FG is attached) and the issue occurs here as well.&nbsp;
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any help would be appreciated a=
nd maybe someone was/is facing the same issue?</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Michael</span><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:normal"><s=
pan style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif=
;mso-fareast-language:DE">Have you tried using the &quot;direct&quot; inter=
face for tuning--bypassing, for now, the message infrastructure?&nbsp;
 Just use your rx_freq<br>
&nbsp; variable directly in the UHD source block frequency input field?&nbs=
p; If that also produces overruns during tuning, then the issue<br>
&nbsp; is deeper inside than the message interface.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_e87436c5f82941029ffff1010d60632amail03iisfhgde_--

--===============7143092228642489964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7143092228642489964==--
