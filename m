Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21671241BAC
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 15:43:21 +0200 (CEST)
Received: from [::1] (port=49338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5UYh-0004tr-Jb; Tue, 11 Aug 2020 09:43:19 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:58348)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1k5UYc-0004bj-4I
 for USRP-users@lists.ettus.com; Tue, 11 Aug 2020 09:43:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVXwX/WVW7UUKgXMkMjn+Jf/yJkOatsbcZn+7o0yo5k=; b=Svq61gSDveAO3ZoyngSUyuMwG
 xmP60//u33hMdZt1i+s1QUby3pU3JEiRxDcXE9CvjIkZVT9MOfc3Pga6rUBWBFIw/V9F2Hv39GPC7
 O4Vt+aCVHlfxDmuJCW7T1OTC/PooDZrFWDQMB80P64MeHn9AWiJRwIt6/bfJ5KBG/3zo34RNya47a
 X53x2ZnkjHmcD6dvOdE9oJP9oR7N7TfRopdw2fMc6ynZC/W1GvhDEuHhUyuxRhUxRAoAzH4PlzuDB
 wH1U16CUWRHkwL5OYkugjlHVJPezfSNAIg9jDJ45j+rpfLXTUZ461PE97Du1AODNCfNTVgFNriOKH
 6iJTtvAYA==;
Received: from [183.83.141.206] (port=46712 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1k5UXo-009zCP-Fi; Tue, 11 Aug 2020 19:12:24 +0530
To: "'Marcus D Leech'" <patchvonbraun@gmail.com>
Cc: <USRP-users@lists.ettus.com>,
	"'Rao Yenamandra'" <yrao@trilcomm.com>
References: <001201d66f36$b4160f30$1c422d90$@com>
 <BF8AEB98-F90B-4A41-BA65-CC3C944E6A6D@gmail.com>
In-Reply-To: <BF8AEB98-F90B-4A41-BA65-CC3C944E6A6D@gmail.com>
Date: Tue, 11 Aug 2020 19:12:25 +0530
Message-ID: <000301d66fe5$405aba50$c1102ef0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZvOEbCq/XzB0EHRAeLGgs8USRsYwArLIgw
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
Subject: Re: [USRP-users] [USRP B210] Getting zero samples from received
 stream for 2 RX channel
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
Content-Type: multipart/mixed; boundary="===============7676303546221069209=="
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

--===============7676303546221069209==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0004_01D67013.5A12F650"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0004_01D67013.5A12F650
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

=20

Please find the below info.

=20

Yes! We use our own software.

=20

Usb_prob outputs:=20

  _____________________________________________________

 /

|       Device: B-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: B210

|   |   serial: 311B3EB

|   |   name: MyB210

|   |   product: 2

|   |   revision: 4

|   |   FW Version: 8.0

|   |   FPGA Version: 16.0

|   |  =20

|   |   Time sources:  none, internal, external, gpsdo

|   |   Clock sources: internal, external, gpsdo

|   |   Sensors: ref_locked

|   |     _____________________________________________________

|   |    /

|   |   |       RX DSP: 0

|   |   |  =20

|   |   |   Freq range: -8.000 to 8.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       RX DSP: 1

|   |   |  =20

|   |   |   Freq range: -8.000 to 8.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       RX Dboard: A

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: A

|   |   |   |   Name: FE-RX2

|   |   |   |   Antennas: TX/RX, RX2

|   |   |   |   Sensors: temp, rssi, lo_locked

|   |   |   |   Freq range: 50.000 to 6000.000 MHz

|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB

|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Frontend: B

|   |   |   |   Name: FE-RX1

|   |   |   |   Antennas: TX/RX, RX2

|   |   |   |   Sensors: temp, rssi, lo_locked

|   |   |   |   Freq range: 50.000 to 6000.000 MHz

|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB

|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       RX Codec: A

|   |   |   |   Name: B210 RX dual ADC

|   |   |   |   Gain Elements: None

|   |     _____________________________________________________

|   |    /

|   |   |       TX DSP: 0

|   |   |  =20

|   |   |   Freq range: -8.000 to 8.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       TX DSP: 1

|   |   |  =20

|   |   |   Freq range: -8.000 to 8.000 MHz

|   |     _____________________________________________________

|   |    /

|   |   |       TX Dboard: A

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: A

|   |   |   |   Name: FE-TX2

|   |   |   |   Antennas: TX/RX

|   |   |   |   Sensors: temp, lo_locked

|   |   |   |   Freq range: 50.000 to 6000.000 MHz

|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB

|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Frontend: B

|   |   |   |   Name: FE-TX1

|   |   |   |   Antennas: TX/RX

|   |   |   |   Sensors: temp, lo_locked

|   |   |   |   Freq range: 50.000 to 6000.000 MHz

|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB

|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz

|   |   |   |   Connection Type: IQ

|   |   |   |   Uses LO offset: No

|   |   |     _____________________________________________________

|   |   |    /

|   |   |   |       TX Codec: A

|   |   |   |   Name: B210 TX dual DAC

|   |   |   |   Gain Elements: None

Regards,

Prasad.

=20

From: Marcus D Leech [mailto:patchvonbraun@gmail.com]=20
Sent: Monday, August 10, 2020 10:33 PM
To: Prasad
Cc: USRP-users@lists.ettus.com; Rao Yenamandra
Subject: Re: [USRP-users] [USRP B210] Getting zero samples from received =
stream for 2 RX channel

=20

What are you using to receive? Your own software? gnu Radio? UHD =
examples?

=20

Please share the output of usrp_probe with us.=20

=20

=20

=20

Sent from my iPhone





On Aug 10, 2020, at 12:53 PM, Prasad via USRP-users =
<usrp-users@lists.ettus.com> wrote:

=EF=BB=BF=20

Hi Everyone,

=20

Getting zero samples from received stream, when number of RX channel set =
to 2.

=20

Bellows are the USRP setting:

Master-clock-rate: 30.72e6

Rate:

               Channel0: 30.72e6

               Channel1: 30.72e6

Gain:=20

               Channel0: 45

               Channel1: 45

Frequency:

               Channel0: 3.8GHz

Channel1: 3.8GHz

=20

Thanks,

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------=_NextPart_000_0004_01D67013.5A12F650
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Hi =
Marcus,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Please find the below =
info.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Yes! We use our own =
software.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>Usb_prob outputs: =
<o:p></o:p></span></p>

<div>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>=C2=A0/<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: =
B-Series Device<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0=C2=A0 =
/<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 |=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mboard: B210<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 serial: 311B3EB<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 name: MyB210<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 product: 2<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 revision: 4<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 FW Version: 8.0<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 FPGA Version: 16.0<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Time sources:=C2=A0 none,
internal, external, gpsdo<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Clock sources: internal,
external, gpsdo<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 Sensors: ref_locked<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX DSP: =
0<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -8.000
to 8.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX DSP: =
1<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -8.000
to 8.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard: =
A<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX =
Frontend:
A<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: =
FE-RX2<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX,
RX2<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: temp,
rssi, lo_locked<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range:
50.000 to 6000.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA:
0.0 to 76.0 step 1.0 dB<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range:
200000.0 to 56000000.0 step 0.0 Hz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:
IQ<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset:
No<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX =
Frontend:
B<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: =
FE-RX1<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: TX/RX,
RX2<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: temp,
rssi, lo_locked<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range:
50.000 to 6000.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA:
0.0 to 76.0 step 1.0 dB<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range:
200000.0 to 56000000.0 step 0.0 Hz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:
IQ<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset:
No<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX =
Codec: A<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: B210 RX
dual ADC<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements:
None<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX DSP: =
0<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -8.000
to 8.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX DSP: =
1<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -8.000
to 8.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0 =
=C2=A0|=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard: =
A<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX =
Frontend:
A<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: =
FE-TX2<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: =
TX/RX<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: temp,
lo_locked<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range:
50.000 to 6000.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA:
0.0 to 89.8 step 0.2 dB<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range:
200000.0 to 56000000.0 step 0.0 Hz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:
IQ<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset:
No<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX =
Frontend:
B<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: =
FE-TX1<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: =
TX/RX<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: temp,
lo_locked<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range:
50.000 to 6000.000 MHz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range PGA:
0.0 to 89.8 step 0.2 dB<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range:
200000.0 to 56000000.0 step 0.0 Hz<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type:
IQ<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset:
No<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 =
_____________________________________________________<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX =
Codec: A<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: B210 TX
dual DAC<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#1F497D'>|=C2=A0=C2=A0 =
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements:
None<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Prasad.<o:p></o:p></span></p>

</div>

<p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Marcus D =
Leech
[mailto:patchvonbraun@gmail.com] <br>
<b>Sent:</b> Monday, August 10, 2020 10:33 PM<br>
<b>To:</b> Prasad<br>
<b>Cc:</b> USRP-users@lists.ettus.com; Rao Yenamandra<br>
<b>Subject:</b> Re: [USRP-users] [USRP B210] Getting zero samples from =
received
stream for 2 RX channel<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>What are you using to receive? Your own software? =
gnu Radio?
UHD examples?<o:p></o:p></p>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>Please share the output of usrp_probe with =
us.&nbsp;<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<p class=3DMsoNormal>Sent from my iPhone<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><br>
<br>
<o:p></o:p></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>On Aug 10, 2020, at =
12:53 PM,
Prasad via USRP-users &lt;usrp-users@lists.ettus.com&gt; =
wrote:<o:p></o:p></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'>

<div>

<p class=3DMsoNormal>=EF=BB=BF <span =
style=3D'font-size:12.0pt;font-family:"Times New =
Roman","serif"'><o:p></o:p></span></p>

<p class=3DMsoNormal>Hi Everyone,<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<p class=3DMsoNormal>Getting zero samples from received stream, when =
number of RX
channel set to 2.<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<p class=3DMsoNormal>Bellows are the USRP setting:<o:p></o:p></p>

<p class=3DMsoNormal>Master-clock-rate: 30.72e6<o:p></o:p></p>

<p class=3DMsoNormal>Rate:<o:p></o:p></p>

<p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Channel0: 30.72e6<o:p></o:p></p>

<p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Channel1: 30.72e6<o:p></o:p></p>

<p class=3DMsoNormal>Gain: <o:p></o:p></p>

<p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Channel0: 45<o:p></o:p></p>

<p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Channel1: 45<o:p></o:p></p>

<p class=3DMsoNormal>Frequency:<o:p></o:p></p>

<p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Channel0: 3.8GHz<o:p></o:p></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'>Channel1: =
3.8GHz<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<p class=3DMsoNormal>Thanks,<o:p></o:p></p>

<p class=3DMsoNormal><span style=3D'font-size:12.0pt;font-family:"Times =
New Roman","serif"'>_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<o:p></=
o:p></span></p>

</div>

</blockquote>

</div>

</div>

</div>

</body>

</html>

------=_NextPart_000_0004_01D67013.5A12F650--



--===============7676303546221069209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7676303546221069209==--


