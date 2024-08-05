Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E16A09479F8
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2024 12:39:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A501B3854AE
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2024 06:39:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722854389; bh=hy0yumZZ1XB8BiqUfWWwU6CnwTql+WGf+lr6q9USg2M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uRoeltK6q+mz4rHLN96cVWtP4gwvHz4UuetqviDArZuFxTBkXtDa93uZ0SUcIJp1H
	 rrDqtybCNFxl3ahstmSx38Bqy2GmGW+kZWnvR7hE+KzPrsjJ/e6A3GS+HWUHTQQDEr
	 udnxyD/YboCXcAv09r744jQ+evOHExB839sMVJeVxl2MKJY1cUJ8d5jhcIM6aWaVAL
	 fgQ2XTa1Xb98EsFmVU/x0dCKmOP0JH5C0CqhmBhc5XvuW1zGH3EnSeai/oIXhg2veq
	 vrNPnHZzSjZbvIPemj9RLuDuV4RilV7sjMJSCubAx1MRIo/9MTX8OyOfIDyPwS5zpj
	 0dSKkGzqPdzdQ==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 5944538532B
	for <usrp-users@lists.ettus.com>; Mon,  5 Aug 2024 06:39:41 -0400 (EDT)
Received: from 172.16.0.106 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Mon, 05 Aug 2024 10:39:39 GMT
Received: from mxsrv2.fe.hhi.de (172.16.0.105) by mxsrv3.fe.hhi.de
 (172.16.0.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Mon, 5 Aug
 2024 12:39:37 +0200
Received: from mxsrv2.fe.hhi.de ([fe80::a6ac:c6a3:8cbe:4317]) by
 mxsrv2.fe.hhi.de ([fe80::a6ac:c6a3:8cbe:4317%6]) with mapi id 15.02.1544.011;
 Mon, 5 Aug 2024 12:39:37 +0200
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: "Panuski, Patrick" <patrick.panuski@str.us>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 Tx and Rx Power Constraints
Thread-Index: AdriiEO92bxfVU67TCOmm+FBO9U7+ABsodMQALjj5rA=
Date: Mon, 5 Aug 2024 10:39:37 +0000
Message-ID: <d16672fea2ee4379a73b9e5d1520bc2e@hhi.fraunhofer.de>
References: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
 <BN0P110MB101423D7A04A6F86EC58045E84B2A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB101423D7A04A6F86EC58045E84B2A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: SCX5FQBYMZCLBS26BUN2MXIPIJCC7ZB7
X-Message-ID-Hash: SCX5FQBYMZCLBS26BUN2MXIPIJCC7ZB7
X-MailFrom: altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SCX5FQBYMZCLBS26BUN2MXIPIJCC7ZB7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8611179042288174555=="

--===============8611179042288174555==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d16672fea2ee4379a73b9e5d1520bc2ehhifraunhoferde_"

--_000_d16672fea2ee4379a73b9e5d1520bc2ehhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

From: Panuski, Patrick <patrick.panuski@str.us>
Sent: Thursday, August 1, 2024 8:31 PM
To: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>; usrp-users@lists.ettus.com
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



--_000_d16672fea2ee4379a73b9e5d1520bc2ehhifraunhoferde_
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
	font-family:"Calibri",sans-serif;
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
	{mso-list-id:608971564;
	mso-list-template-ids:-592140060;}
@list l1:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2
	{mso-list-id:742064292;
	mso-list-template-ids:-1582037894;}
@list l2:level1
	{mso-level-start-at:2;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3
	{mso-list-id:776415424;
	mso-list-type:hybrid;
	mso-list-template-ids:-1446986388 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l4
	{mso-list-id:1886408277;
	mso-list-template-ids:-1328494992;}
@list l4:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5
	{mso-list-id:2070299612;
	mso-list-type:hybrid;
	mso-list-template-ids:853935170 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l5:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l5:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l5:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level9
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
<p class=3D"MsoNormal">Hi Patrick,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for your detailed answer based on your exp=
erience. Please find my last, and probably the final, findings about this t=
opic.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l3 level1 =
lfo8">I checked the MMPX connection once again. It is definitely not the be=
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
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l3 level1 =
lfo8">I agree. An update on the knowledge base page (<a href=3D"https://kb.=
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
<p class=3D"MsoNormal"><b>From:</b> Panuski, Patrick &lt;patrick.panuski@st=
r.us&gt; <br>
<b>Sent:</b> Thursday, August 1, 2024 8:31 PM<br>
<b>To:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhofer.de&gt;; usrp-users@lis=
ts.ettus.com<br>
<b>Subject:</b> RE: X440 Tx and Rx Power Constraints<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Altug,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l5 level1 =
lfo3">Have you tried setting your converter rate to 2.94912 GHz and compari=
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
ph" style=3D"margin-left:0in;mso-list:l5 level1 lfo3">On the X440, you&#821=
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
5 level1 lfo3">Disclaimer: I&#8217;m not an expert here, just a user<o:p></=
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
lfo6">I set the master clock rate to 360 MHz and made sure that the convert=
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
lfo6">I will use another X440 to capture the single tone (and the aliases d=
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
</div>
</body>
</html>

--_000_d16672fea2ee4379a73b9e5d1520bc2ehhifraunhoferde_--

--===============8611179042288174555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8611179042288174555==--
