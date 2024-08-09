Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CF794D454
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2024 18:15:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51F22385D42
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2024 12:15:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723220139; bh=W1H47U/e6abEvhbaKYC9Gsk9HH17ktxhsnulnRGRMuo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tllz52nkAR/RqpCMqp5lF4pLblAkbcCDmMWm/Tx60Th5kJUp3gRoO/Upb6g6jQO+t
	 IBt7v6nrjDS38YGN91vrDReryM5JAkvM7tcQQnKwcIfrRJxhfCnfmwYw3/aDtBdpIN
	 bh+dPTp9iJ61kaBWJUga9PhUKwZcYhHNpM0SZqI1cDToUj/+1rfRVIP5zD/l/WODsi
	 y/jy/SOP7rZkKtdJxN8H8/LYSiIwoMMp4lX9bI6kNxsMy875qEElTSUh6lik5PpIQX
	 fWRz0NKmEmcz0IBZDr7Sd2iFB3ba6eRmbWXXoFR86CgJorMGzPjLbQxOWMHmrpTBI3
	 CRwSqwTSfHXdQ==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C5D1385C85
	for <usrp-users@lists.ettus.com>; Fri,  9 Aug 2024 12:15:30 -0400 (EDT)
Received: from 172.16.0.107 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Fri, 09 Aug 2024 16:15:29 GMT
Received: from mxsrv3.fe.hhi.de (172.16.0.106) by mxsrv4.fe.hhi.de
 (172.16.0.107) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 9 Aug
 2024 16:58:53 +0200
Received: from mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9]) by
 mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9%5]) with mapi id 15.02.1544.011;
 Fri, 9 Aug 2024 16:58:41 +0200
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: Martin Anderseck <Martin.Anderseck@ni.com>, "Panuski, Patrick"
	<patrick.panuski@str.us>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 Tx and Rx Power Constraints
Thread-Index: AdriiEO92bxfVU67TCOmm+FBO9U7+ABsodMQALjj5rAAa5aycABn3UiQ
Date: Fri, 9 Aug 2024 14:58:41 +0000
Message-ID: <5345af8e811a4c1e8ced700ce17f46a8@hhi.fraunhofer.de>
References: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
 <BN0P110MB101423D7A04A6F86EC58045E84B2A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
 <d16672fea2ee4379a73b9e5d1520bc2e@hhi.fraunhofer.de>
 <PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82@PH0PR04MB8311.namprd04.prod.outlook.com>
In-Reply-To: <PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82@PH0PR04MB8311.namprd04.prod.outlook.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: ID5RMWFVRZPNAWMKL2X44GKSS26WGNZZ
X-Message-ID-Hash: ID5RMWFVRZPNAWMKL2X44GKSS26WGNZZ
X-MailFrom: altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ID5RMWFVRZPNAWMKL2X44GKSS26WGNZZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5445101102597701976=="

--===============5445101102597701976==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5345af8e811a4c1e8ced700ce17f46a8hhifraunhoferde_"

--_000_5345af8e811a4c1e8ced700ce17f46a8hhifraunhoferde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thank you for clarifying the matter.

Then for the maximum input power, can we rely on KB (https://kb.ettus.com/U=
SRP_X410/X440_Getting_Started_Guide#:~:text=3DX440%3A%20Never%20apply%20mor=
e%20than%20%2B13%20dBm%20continuous%20%3C%3D2.5GHz%2C%20%2B17%20dBm%20conti=
nuous%20between%202.5GHz%20and%203.6%20GHz%2C%20or%20%2B20dBm%20continuous%=
20between%203.6%20GHz%20and%204%20GHz%20of%20power%20into%20any%20RF%20inpu=
t) and not the print in front of X440? On the front panel it says "RX IN MA=
X +10dBm".

Best regards,
Altug KAYA

From: Martin Anderseck <Martin.Anderseck@ni.com>
Sent: Wednesday, August 7, 2024 3:59 PM
To: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>; Panuski, Patrick <patrick.p=
anuski@str.us>; usrp-users@lists.ettus.com
Subject: RE: X440 Tx and Rx Power Constraints

Hi Altug, hi Patrick,

The explanations by Patrick make sense to me. The MMPX connectors were requ=
ired to fit the available space, although they may not be as rigid as the S=
MAs unfortunately.

The power question is as follows: To use the full amplitude in the tx_wavef=
orms example you need to pass an amplitude value of sqrt(2), so roundabout =
1.4142. This should get you closer to our numbers. The FPGA image should no=
t make a difference when using the same rates.

For the KB article you're right and I just updated it. Most of our USRPs ar=
e safe if you put the attenuator between TX and RX, but the X440 should not=
 be able to destroy itself even without this.

/Martin

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraun=
hofer.de>>
Sent: Monday, August 5, 2024 12:40 PM
To: Panuski, Patrick <patrick.panuski@str.us<mailto:patrick.panuski@str.us>=
>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints

Hi Patrick,

Thank you for your detailed answer based on your experience. Please find my=
 last, and probably the final, findings about this topic.


  1.  I checked the MMPX connection once again. It is definitely not the be=
st type of connector if your setup consists of SMA-type attenuators/analog =
filters. They might bend the MMPX-to-SMA cable around and cause lose connec=
tions, you are right. In addition, the MCR was set to 368.64 MHz in order t=
o set a converter rate of 2.94912 MHz. Furthermore, instead of measuring th=
e power of the constant wave at 500 MHz with a marker of the spectrum analy=
zer, I started to use a Power Meter from Rohde & Schwarz to consider the co=
ntribution of aliases due to having a RF Sampling device. Moreover, I used =
two different X440's and their 2 possible Tx ports (4 ports in total due to=
 CG_1600 image) to eliminate port specific problems.

Unfortunately, I still measure around -5.2 dBm instead of around -2 dBm dBm=
 (according to this graph given for 2.94912 GSps https://www.ni.com/docs/de=
-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DFigure%202.%20TX=
%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94912%20GSps%20Conver=
ter%20Rate%2C%200%20Hz%20Waveform%20Frequency). Apparently, I have to live =
with the current status of this setup.


  1.  I agree. An update on the knowledge base page (https://kb.ettus.com/U=
SRP_X410/X440_Getting_Started_Guide#:~:text=3DX440%3A%20Always%20use%20at%2=
0least%2030dB%20attenuation%20if%20operating%20in%20loopback%20configuratio=
n) can certainly clear this confusion.

From: Panuski, Patrick <patrick.panuski@str.us<mailto:patrick.panuski@str.u=
s>>
Sent: Thursday, August 1, 2024 8:31 PM
To: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunho=
fer.de>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: RE: X440 Tx and Rx Power Constraints

Hi Altug,


  1.  Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison?  Also in my ex=
perience, a weak MMPX connection can cause at least a 3dB loss... You can s=
ometimes see the observed Tx power jump around when you wiggle or adjust th=
e connectors. My X440 currently has one transmit channel that transmits abo=
ut 3 dB less power than the others, and I think I've narrowed this down to =
the particular MMPX connector on that channel being weak/faulty. I'd sugges=
t trying a different cable and also testing transmission on other channels,=
 but overall I wouldn't be surprised if the different clock rate was having=
 an effect here.
  2.  On the X440, you're probably okay directly connecting Tx to Rx. I thi=
nk the 30 dB attenuator recommendation is left over from older USRP devices=
 and is less applicable to the X440 architecture. The older USRPs had separ=
ate RF front ends with amplifiers on the transmit side and LNAs on the rece=
ive side that could be individually controlled in software, so it was possi=
ble to set transmit/receive gains too high for a loopback configuration and=
 the device could damage itself. With a 30 dB attenuator, virtually no soft=
ware settings could make the device damage itself in a loopback configurati=
on. However on the X440, the entire front end is integrated into the RFSoC =
and the daughter card is now just a passthrough. This means that your UHD p=
rogram cannot change amplifiers and gains so the max transmit power will be=
 capped in hardware around 0 dBm which is significantly below the sustained=
 Rx damage threshold.
  3.  Disclaimer: I'm not an expert here, just a user

Thanks,
Patrick

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraun=
hofer.de>>
Sent: Wednesday, July 31, 2024 5:57 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] X440 Tx and Rx Power Constraints

*** WARNING: This message originates from outside the STR organization. ***
*** Please take appropriate care in opening any links or attachments. ***

Dear USRP Mailing List Members,

I have two questions regarding power constraints of X440:


  1.  I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps.  I used an UHD example call=
ed "tx_waveforms" to verify the maximum output power. To compare the result=
s with the specification sheet, a constant ('CONST') wave of 500 MHz freque=
ncy with an amplitude of 1 is used. While expecting a single tone whose pow=
er is around -2 dBm (according to this graph given for 2.94912 GSps https:/=
/www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=
=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94=
912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency), it is ar=
ound -5 dBm. Does the output power vary that much between the converter rat=
es of 2.94912 GSps and 2.88 GSps?



  1.  I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10 dBm. This is further elaborated down to=
 the operational frequency in this webpage (https://www.ni.com/docs/de-DE/b=
undle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DMaximum%20input%20pow=
er%2C%20damage%20level). On the other hand, in the loop back configuration,=
 >30dB attenuation between ports were recommended.


What is the difference between connecting the Tx port of one X440 to the Rx=
 port of another X440 and connecting Tx&Rx ports of different daughter boar=
ds of the same X440? Why does the maximum receiver power requirement change=
? The maximum one can transmit from a Tx port of X440 is 0 dBm. According t=
o my understanding, it should be safe to connect Tx and Rx ports (of either=
 same or different X440s) to each other as long as I am working with a cons=
tant waveform with a PAPR of 0 dB.

I am grateful for your time and effort. If anything is unclear and you are =
willing to help, I can provide further details.

Best regards,
Altug KAYA


National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: Sabrina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Registered =
Office): Dresden; HRB (Commercial Register No.): 22081; Registergericht (Re=
gistration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_5345af8e811a4c1e8ced700ce17f46a8hhifraunhoferde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:Aptos;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:420183726;
	mso-list-type:hybrid;
	mso-list-template-ids:-1053519324 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:776415424;
	mso-list-type:hybrid;
	mso-list-template-ids:-1446986388 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:2070299612;
	mso-list-type:hybrid;
	mso-list-template-ids:853935170 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Martin,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for clarifying the matter.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then for the maximum input power, can we rely on KB =
(<a href=3D"https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#:~:te=
xt=3DX440%3A%20Never%20apply%20more%20than%20%2B13%20dBm%20continuous%20%3C=
%3D2.5GHz%2C%20%2B17%20dBm%20continuous%20between%202.5GHz%20and%203.6%20GH=
z%2C%20or%20%2B20dBm%20continuous%20between%203.6%20GHz%20and%204%20GHz%20o=
f%20power%20into%20any%20RF%20input">https://kb.ettus.com/USRP_X410/X440_Ge=
tting_Started_Guide#:~:text=3DX440%3A%20Never%20apply%20more%20than%20%2B13=
%20dBm%20continuous%20%3C%3D2.5GHz%2C%20%2B17%20dBm%20continuous%20between%=
202.5GHz%20and%203.6%20GHz%2C%20or%20%2B20dBm%20continuous%20between%203.6%=
20GHz%20and%204%20GHz%20of%20power%20into%20any%20RF%20input</a>)
 and not the print in front of X440? On the front panel it says &#8220;RX I=
N MAX &#43;10dBm&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Martin Anderseck &lt;Martin.Anderseck@n=
i.com&gt; <br>
<b>Sent:</b> Wednesday, August 7, 2024 3:59 PM<br>
<b>To:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhofer.de&gt;; Panuski, Patri=
ck &lt;patrick.panuski@str.us&gt;; usrp-users@lists.ettus.com<br>
<b>Subject:</b> RE: X440 Tx and Rx Power Constraints<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-family:Aptos">Hi Alt=
ug, hi Patrick,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-family:Aptos"><o:p>&=
nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos">The explanations b=
y Patrick make sense to me. The MMPX connectors were required to fit the av=
ailable space, although they may not be as rigid as the SMAs unfortunately.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos">The power question=
 is as follows: To use the full amplitude in the tx_waveforms example you n=
eed to pass an amplitude value of sqrt(2), so roundabout 1.4142. This shoul=
d get you closer to our numbers. The
 FPGA image should not make a difference when using the same rates.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos">For the KB article=
 you&#8217;re right and I just updated it. Most of our USRPs are safe if yo=
u put the attenuator between TX and RX, but the X440 should not be able to =
destroy itself even without this.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos">/Martin<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Aptos"><o:p>&nbsp;</o:p><=
/span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kaya, Altug &lt;<a href=3D"mailto:altug=
.kaya@hhi.fraunhofer.de">altug.kaya@hhi.fraunhofer.de</a>&gt;
<br>
<b>Sent:</b> Monday, August 5, 2024 12:40 PM<br>
<b>To:</b> Panuski, Patrick &lt;<a href=3D"mailto:patrick.panuski@str.us">p=
atrick.panuski@str.us</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Subject:</b> [USRP-users] Re: X440 Tx and Rx Power Constraints<o:p></o:p=
></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Hi Patrick,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for your detailed answer based on your exp=
erience. Please find my last, and probably the final, findings about this t=
opic.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">I checked the MMPX connection once again. It is definitely not the be=
st type of connector if your setup consists of SMA-type attenuators/analog =
filters. They might bend the MMPX-to-SMA
 cable around and cause lose connections, you are right. In addition, the M=
CR was set to 368.64 MHz in order to set a converter rate of 2.94912 MHz. F=
urthermore, instead of measuring the power of the constant wave at 500 MHz =
with a marker of the spectrum analyzer,
 I started to use a Power Meter from Rohde &amp; Schwarz to consider the co=
ntribution of aliases due to having a RF Sampling device. Moreover, I used =
two different X440&#8217;s and their 2 possible Tx ports (4 ports in total =
due to CG_1600 image) to eliminate port specific
 problems.<o:p></o:p></li></ol>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Unfortunately, I still me=
asure around -5.2 dBm instead of around -2 dBm dBm (according to this graph=
 given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
). Apparently, I have to live with
 the current status of this setup.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">I agree. An update on the knowledge base page (<a href=3D"https://kb.=
ettus.com/USRP_X410/X440_Getting_Started_Guide#:~:text=3DX440%3A%20Always%2=
0use%20at%20least%2030dB%20attenuation%20if%20operating%20in%20loopback%20c=
onfiguration">https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#:~:=
text=3DX440%3A%20Always%20use%20at%20least%2030dB%20attenuation%20if%20oper=
ating%20in%20loopback%20configuration</a>)
 can certainly clear this confusion.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Panuski, Patrick &lt;<a href=3D"mailto:=
patrick.panuski@str.us">patrick.panuski@str.us</a>&gt;
<br>
<b>Sent:</b> Thursday, August 1, 2024 8:31 PM<br>
<b>To:</b> Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">=
altug.kaya@hhi.fraunhofer.de</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Subject:</b> RE: X440 Tx and Rx Power Constraints<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Altug,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo2">Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison? &nbsp;Also in =
my experience, a weak MMPX connection can
 cause at least a 3dB loss&#8230; You can sometimes see the observed Tx pow=
er jump around when you wiggle or adjust the connectors. My X440 currently =
has one transmit channel that transmits about 3 dB less power than the othe=
rs, and I think I&#8217;ve narrowed this down
 to the particular MMPX connector on that channel being weak/faulty. I&#821=
7;d suggest trying a different cable and also testing transmission on other=
 channels, but overall I wouldn&#8217;t be surprised if the different clock=
 rate was having an effect here.<o:p></o:p></li><li class=3D"MsoListParagra=
ph" style=3D"margin-left:0in;mso-list:l2 level1 lfo2">On the X440, you&#821=
7;re probably okay directly connecting Tx to Rx. I think the 30 dB attenuat=
or recommendation is left over from older USRP devices and is less applicab=
le to the X440
 architecture. The older USRPs had separate RF front ends with amplifiers o=
n the transmit side and LNAs on the receive side that could be individually=
 controlled in software, so it was possible to set transmit/receive gains t=
oo high for a loopback configuration
 and the device could damage itself. With a 30 dB attenuator, virtually no =
software settings could make the device damage itself in a loopback configu=
ration. However on the X440, the entire front end is integrated into the RF=
SoC and the daughter card is now
 just a passthrough. This means that your UHD program cannot change amplifi=
ers and gains so the max transmit power will be capped in hardware around 0=
 dBm which is significantly below the sustained Rx damage threshold.<o:p></=
o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l=
2 level1 lfo2">Disclaimer: I&#8217;m not an expert here, just a user<o:p></=
o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<br>
Patrick <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kaya, Altug &lt;<a href=3D"mailto:altug=
.kaya@hhi.fraunhofer.de">altug.kaya@hhi.fraunhofer.de</a>&gt;
<br>
<b>Sent:</b> Wednesday, July 31, 2024 5:57 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] X440 Tx and Rx Power Constraints<o:p></o:p></p=
>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:dotted #003333 1.5pt;padding:2.0pt 2.0pt 2.0pt 2.0pt">
<p class=3D"MsoNormal" style=3D"background:pink"><b><span style=3D"font-siz=
e:12.0pt;font-family:&quot;Courier New&quot;;color:black">*** WARNING: This=
 message originates from outside the STR organization. ***
<br>
*** Please take appropriate care in opening any links or attachments. ***</=
span></b><span style=3D"color:black">
</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have two questions regarding power constraints of =
X440:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3">I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps. &nbsp;I used an UHD example=
 called &#8220;tx_waveforms&#8221; to verify the maximum
 output power. To compare the results with the specification sheet, a const=
ant (&#8216;CONST&#8217;) wave of 500 MHz frequency with an amplitude of 1 =
is used. While expecting a single tone whose power is around -2 dBm (accord=
ing to this graph given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
), it is around -5 dBm.
<b>Does the output power vary that much between the converter rates of 2.94=
912 GSps and 2.88 GSps?</b><o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3">I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10
 dBm. This is further elaborated down to the operational frequency in this =
webpage (<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-sp=
ecs/page/specs.html#:~:text=3DMaximum%20input%20power%2C%20damage%20level">=
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DMaximum%20input%20power%2C%20damage%20level</a>).
 On the other hand, in the loop back configuration, &gt;30dB attenuation be=
tween ports were recommended.
<o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>What is the difference=
 between connecting the Tx port of one X440 to the Rx port of another X440 =
and connecting Tx&amp;Rx ports of different daughter boards of the same X44=
0? Why does the maximum receiver power requirement
 change? </b>The maximum one can transmit from a Tx port of X440 is 0 dBm. =
According to my understanding, it should be safe to connect Tx and Rx ports=
 (of either same or different X440s) to each other as long as I am working =
with a constant waveform with a
 PAPR of 0 dB.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am grateful for your time and effort. If anything =
is unclear and you are willing to help, I can provide further details.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"DE">National Instruments Dresden GmbH;=
 Gesch=E4ftsf=FChrer (Managing Directors): Sabrina Gilman, Kathleen Heard S=
purck, Carl Schumacher; Sitz (Registered Office): Dresden; HRB (Commercial =
Register No.): 22081; Registergericht (Registration
 Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.&nbsp; <o:p>
</o:p></span></p>
</div>
</body>
</html>

--_000_5345af8e811a4c1e8ced700ce17f46a8hhifraunhoferde_--

--===============5445101102597701976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5445101102597701976==--
