Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A2A4F3D89
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 22:33:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3C9C384B59
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 16:33:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649190824; bh=AdC4Zv4csKdjW7bg/r/OMFxH/KI5hKBwlRcln1Xcjf4=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=tmXl5ZLZV0gyC2bmJpjsXeUMxcDXnmPB9Z071VvjKXaJh39Li6adaMUTrID9icZ8I
	 b5RoYH8k/GIoGIWYZrSdnTcHy6M3AxugGxE//uTAHWfqJuLIc9BRviG2/f2RRz5eHK
	 viQcAhW9BNBV4vY3ZDB9HKfiv7dGdlpGyrP/oiZrN2I9ivJ6muwltnLRGTNcJ9NYAX
	 /+xh84Zd5b/HLROLhuMPIzedObQkxq0+xKhKwP+MrKWwMCUD3h9yb9/tyoVCLmO/4/
	 djqUzBuS44pCEw25VtIZgjBRmohPZgyXtMGMNKNNd5nZ8WEOoouRcoYXqPbrUF0w2x
	 ia6dL9RwwwQ3w==
Received: from proofpoint7.lanl.gov (proofpoint7.lanl.gov [204.121.3.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CCD1384987
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 16:32:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="N5mRehws";
	dkim-atps=neutral
Received: from pps.filterd (proofpoint7.lanl.gov [127.0.0.1])
	by proofpoint7.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 235KHjiS175212
	for <usrp-users@lists.ettus.com>; Tue, 5 Apr 2022 14:32:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : content-type : mime-version; s=lanl;
 bh=Ec3wKXcHglHwW51AvwICV8jmRBXVxKkalK/S/CuAa64=;
 b=N5mRehwsmXg2O1nImiqJv2YbJHKgGVAuhXJg9Eo95KH1c5ObEjN1VbXpUV3KGSh4DZ7E
 5ORmpfPDvmyV6cdR/PMm5yM7J/hx3pZ05H4rwliQK9dpIITj2aWu8+zFYoVLPrCBSmM0
 JZNYNImRSTWnK4A3bopyL4Td42ddCWjlmY4iamRpIgdT3C/8nQNlhFOsliBwipYZOy4g
 JazWnUjmYNkC6EOy4UfaWG1ZkHN5PYPcGDmBFZGDz2kfCdjVBemUNzdJoVLkdw60g/yl
 qFpF7KS0deZq/jwBK3rTGSgCbLrVc/aS3SRBbmIDS/o0YFE429K1vfkzE9DITgl26jC4 zQ==
Received: from mailrelay1.lanl.gov (mailrelay1.lanl.gov [128.165.4.101])
	by proofpoint7.lanl.gov with ESMTP id 3f6mvc4r6k-1
	for <usrp-users@lists.ettus.com>; Tue, 05 Apr 2022 14:32:45 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 167691029908
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 14:32:45 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay1.lanl.gov
Received: from EXG16-P-MBX04.win.lanl.gov (exg16-p-mbx04.win.lanl.gov [128.165.106.184])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 01092102E93D
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 14:32:45 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX04.win.lanl.gov (128.165.106.184) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.24; Tue, 5 Apr 2022 14:32:44 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([::1]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::a80f:ed3d:60d:4352%7]) with mapi id
 15.01.2375.024; Tue, 5 Apr 2022 14:32:44 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: bricked e320
Thread-Index: AdhJK7hz+PX3swozTkyfFlI50d5fHg==
Date: Tue, 5 Apr 2022 20:32:44 +0000
Message-ID: <985ffb27934e4abca12f35f2d5f087c3@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: ZcXYIRGFpPdyYWEm7vxkpZyTHT0j760C
X-Proofpoint-ORIG-GUID: ZcXYIRGFpPdyYWEm7vxkpZyTHT0j760C
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425,18.0.850
 definitions=2022-04-05_07:2022-04-04,2022-04-05 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: APT3ABRNVU3LEO4S7CFQTLW4TMFI6SUS
X-Message-ID-Hash: APT3ABRNVU3LEO4S7CFQTLW4TMFI6SUS
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] bricked e320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/APT3ABRNVU3LEO4S7CFQTLW4TMFI6SUS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============3193870771871588444=="

--===============3193870771871588444==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_985ffb27934e4abca12f35f2d5f087c3lanlgov_"

--_000_985ffb27934e4abca12f35f2d5f087c3lanlgov_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I apparently loaded a bad bistream onto my e320 (in case)  and now it seems=
 bricked. I am trying to use the jtag programmer on vivado 2019.1 -> digile=
nt onboard jtag programmer -> reprogram the fpga. Unfortunately the stm32 t=
urns off the zynq as quickly as it comes up, is there a way to override thi=
s behavior? I can't connect long enough to program the fpga...

[0.000402 Inits done]
[0.034887 SW 0x01]
Enclosure version ... using alternative thermal parameters
Console is enabled; type HELP for help.
> [0.045631 power state 4 =3D G3->S5, in 0x0000]
[0.045802 power state 1 =3D S5, in 0x0000]
[0.045943 power state 5 =3D S5->S3, in 0x0000]
[0.046128 event set 0x00002000]
[0.046246 hostcmd init 0x2000]
[0.060204 power state 2 =3D S3, in 0x0002]
[0.074684 power state 6 =3D S3->S0, in 0x01fe]
[1.074914 AP didn't come up, shutdown]
[1.075083 power state 7 =3D S0->S3, in 0x01fe]
[1.091168 Watchdog timeout, warm reset the AP]
[1.091308 event set 0x00100000]
[1.108303 power state 2 =3D S3, in 0x0002]
[1.108489 power state 8 =3D S3->S5, in 0x0002]
[1.108706 power state 1 =3D S5, in 0x0000]
[1.108857 power state 9 =3D S5->G3, in 0x0000]
[1.109018 power state 0 =3D G3, in 0x0000]
[1.319702 power state 4 =3D G3->S5, in 0x0000]
[1.319895 power state 1 =3D S5, in 0x0000]
[1.320047 power state 5 =3D S5->S3, in 0x0000]
[1.334169 power state 2 =3D S3, in 0x0002]
[1.348719 power state 6 =3D S3->S0, in 0x01fe]
[2.348960 AP didn't come up, shutdown]
[2.349132 power state 7 =3D S0->S3, in 0x01fe]
[2.365217 Watchdog timeout, warm reset the AP]
[2.382343 power state 2 =3D S3, in 0x0002]
[2.382531 power state 8 =3D S3->S5, in 0x0002]
[2.382750 power state 1 =3D S5, in 0x0000]
[2.382904 power state 9 =3D S5->G3, in 0x0000]
[2.383068 power state 0 =3D G3, in 0x0000]

Thanks for any suggestions- Mike


--_000_985ffb27934e4abca12f35f2d5f087c3lanlgov_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I apparently loaded a bad bistream onto my e320 (in =
case)&nbsp; and now it seems bricked. I am trying to use the jtag programme=
r on vivado 2019.1 -&gt; digilent onboard jtag programmer -&gt; reprogram t=
he fpga. Unfortunately the stm32 turns off the
 zynq as quickly as it comes up, is there a way to override this behavior? =
I can&#8217;t connect long enough to program the fpga&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[0.000402 Inits done]<o:p></o:p></p>
<p class=3D"MsoNormal">[0.034887 SW 0x01]<o:p></o:p></p>
<p class=3D"MsoNormal">Enclosure version ... using alternative thermal para=
meters<o:p></o:p></p>
<p class=3D"MsoNormal">Console is enabled; type HELP for help.<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt; [0.045631 power state 4 =3D G3-&gt;S5, in 0x000=
0]<o:p></o:p></p>
<p class=3D"MsoNormal">[0.045802 power state 1 =3D S5, in 0x0000]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[0.045943 power state 5 =3D S5-&gt;S3, in 0x0000]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[0.046128 event set 0x00002000]<o:p></o:p></p>
<p class=3D"MsoNormal">[0.046246 hostcmd init 0x2000]<o:p></o:p></p>
<p class=3D"MsoNormal">[0.060204 power state 2 =3D S3, in 0x0002]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[0.074684 power state 6 =3D S3-&gt;S0, in 0x01fe]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[1.074914 AP didn't come up, shutdown]<o:p></o:p></p=
>
<p class=3D"MsoNormal">[1.075083 power state 7 =3D S0-&gt;S3, in 0x01fe]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[1.091168 Watchdog timeout, warm reset the AP]<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[1.091308 event set 0x00100000]<o:p></o:p></p>
<p class=3D"MsoNormal">[1.108303 power state 2 =3D S3, in 0x0002]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[1.108489 power state 8 =3D S3-&gt;S5, in 0x0002]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[1.108706 power state 1 =3D S5, in 0x0000]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[1.108857 power state 9 =3D S5-&gt;G3, in 0x0000]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[1.109018 power state 0 =3D G3, in 0x0000]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[1.319702 power state 4 =3D G3-&gt;S5, in 0x0000]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[1.319895 power state 1 =3D S5, in 0x0000]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[1.320047 power state 5 =3D S5-&gt;S3, in 0x0000]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[1.334169 power state 2 =3D S3, in 0x0002]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[1.348719 power state 6 =3D S3-&gt;S0, in 0x01fe]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[2.348960 AP didn't come up, shutdown]<o:p></o:p></p=
>
<p class=3D"MsoNormal">[2.349132 power state 7 =3D S0-&gt;S3, in 0x01fe]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[2.365217 Watchdog timeout, warm reset the AP]<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[2.382343 power state 2 =3D S3, in 0x0002]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[2.382531 power state 8 =3D S3-&gt;S5, in 0x0002]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[2.382750 power state 1 =3D S5, in 0x0000]<o:p></o:p=
></p>
<p class=3D"MsoNormal">[2.382904 power state 9 =3D S5-&gt;G3, in 0x0000]<o:=
p></o:p></p>
<p class=3D"MsoNormal">[2.383068 power state 0 =3D G3, in 0x0000]<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Thanks for any suggestions- Mike<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_985ffb27934e4abca12f35f2d5f087c3lanlgov_--

--===============3193870771871588444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3193870771871588444==--
