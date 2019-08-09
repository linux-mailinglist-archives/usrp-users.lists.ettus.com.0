Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B93874C1
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 11:03:18 +0200 (CEST)
Received: from [::1] (port=58666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw0nr-0000di-SO; Fri, 09 Aug 2019 05:03:15 -0400
Received: from mail-oln040092254054.outbound.protection.outlook.com
 ([40.92.254.54]:18258 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <retina999@hotmail.com>)
 id 1hw0nn-0000Z7-Nj
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 05:03:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRplg/+7bRLc14AI3lm1U0apfvmOEtLsFRO2M2kUvqOCUV/5wN30mmHjJsHF07aQSMlAPxVNlRC5DEqHTPlkpB0BsbQuBFrHheR63v4oHpPutgq7/NR1VLH4pAacOkrHHUODJQ/V5pOO8CZRgWufJsmuSrcKGwTUrrTp60KVV36Svth9k8uHz7dkgKlWXPW5JK/X8HLDBmG8wgACksDo7nhUm6jB5zkCUQqs5MKE0Q95kDidIsMwk3tsgVwE7hRHbMIFbmZ91IHKUuFPmUbFTN29gotBBLDhZr7M1/+0BUYwLR8BK6XDfqoI25xwX01DdkoIz6BwCM+HgMja8bVJag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MmCU88k5+3ToXZhkV69EzGBiZqS9rhXi7C35/CsfRHw=;
 b=cu3r3KqmId6V2TnsRFGybW/UUCyl4WcvU/H074e7OY30vUz99UFdjyCM++Cf/cOV3JemAA6kDh6/6Q0rbWA4+fF3N2l87GfLuOrRRH4905swhYEmilVbCKhuHPYqfLMfkchUTyRKpZssbAjR1GpJJLEpm0F3JkQ3IyIIljxlZy2MOO8KD149ey4Z/8vJoFoAV0YHc4QJY5FOhSk0RXYXQW3+RAfGVbViSQnXxgtTSa2DMzRBjWQdlVPxhpr/UdMzCZ5MUKKqPZBQnLqEyh624fISS2hqEyxYqoz9QbJbxI5S/iuQdFyDmgXJ6/zAgT4MUHa9ItBihG+z1nQCG5dH6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MmCU88k5+3ToXZhkV69EzGBiZqS9rhXi7C35/CsfRHw=;
 b=rxUDis0OSqzAtamLziGrngvmdQ4dliQMWaQJNjLNjFpmJmzioZM+rWA770AgasrZkDMX2RUZCMF+Ut4UPgV7zZmVldGIHMFCbREwq2s2+SneZZJrDmYEbyYDWkRTt0u3f5xRGhT9I7KYUjA5LJVlfDpRNI4dWk9mddr+pzBrM+n1E9+dWVOjG8B5OciktkKK8yV8ZvNkw8aZIF0QAb4V4ZR6St2GVJ4b+YAdPpHfb7Dcb82FyL0XGO4eTeE2n8Nu4fcXwkpdM9HFk7uJ3+jYSo5WEcs55+gpqZzs4llrI77kpjaUxr5IsAT/OpiySMDana3eV759TbTj6qFcL6YpBQ==
Received: from PU1APC01FT062.eop-APC01.prod.protection.outlook.com
 (10.152.252.59) by PU1APC01HT248.eop-APC01.prod.protection.outlook.com
 (10.152.253.209) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15; Fri, 9 Aug
 2019 09:02:28 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com (10.152.252.60) by
 PU1APC01FT062.mail.protection.outlook.com (10.152.253.51) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15 via Frontend Transport; Fri, 9 Aug 2019 09:02:28 +0000
Received: from HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689]) by HK0PR01MB2835.apcprd01.prod.exchangelabs.com
 ([fe80::e41a:f703:68f5:d689%4]) with mapi id 15.20.2157.015; Fri, 9 Aug 2019
 09:02:28 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Source Codes and SDK for N310 (Embedded Mode) 
Thread-Index: AQHVTo156Or21lZVsEaUNhFZUPkAyg==
Date: Fri, 9 Aug 2019 09:02:28 +0000
Message-ID: <HK0PR01MB2835F3D915230B4615A7F936F3D60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:06167CBBB1176CAFFEAFF6635CAA32B750D9570B9F2CABC1B881880312B0C264;
 UpperCasedChecksum:A4B11120119BD38BF5C02D7EE54FD8D98582BF788F9446634DD5FF051C900883;
 SizeAsReceived:6578; Count:40
x-tmn: [gTWC/61SPherzaITGUx7cZybtqNRw57k]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:PU1APC01HT248; 
x-ms-traffictypediagnostic: PU1APC01HT248:
x-microsoft-antispam-message-info: EHGujBQP99GgjLx5np6w9IKld6CbPrOhxKUGHo59EFXGGFPOPjrGQP78vJdDiL2jk2sYFHJmNAio5mkfYEKi7fOQ9pf/yjvBeDjE6TPibcxi27/rOe3xLz96LgsacqQ51AhLWHNYfqvU1wvGpY5fKpq8D+bZvC28cDUuoKmznB89phmJXfrd15745HmB0hdj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a16b9307-ba92-4544-f987-08d71ca84e0c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 09:02:28.5321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT248
Subject: [USRP-users] Source Codes and SDK for N310 (Embedded Mode)
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
From: retina999--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "retina999@hotmail.com" <retina999@hotmail.com>
Content-Type: multipart/mixed; boundary="===============3077640006661947942=="
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

--===============3077640006661947942==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR01MB2835F3D915230B4615A7F936F3D60HK0PR01MB2835apcp_"

--_000_HK0PR01MB2835F3D915230B4615A7F936F3D60HK0PR01MB2835apcp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

We are currently using N310 to design a prototype MIMO OFDM communications =
system. We plan to implemented the baseband in a custom RFNOC block. For th=
e MAC and network layers=92 functionalities, we hope to implement them on t=
he ARM within Zynq FPGA. So ARM should communicate with the custom RFNOC bl=
ock and config the RF chips. The baseband will get samples from the RF radi=
o and send TX samples to it. N310 should operate in the embedded mode like =
an e-series usrp equipment. (N310 supports both host and embedded modes).

But we could not find enough info on N310=92s embedded mode operations.
1)  Where can we get the SDK for N310 similar to that for E310?
2)  If we want to develop the AXI and SPI drivers for the ARM, where can we=
 get source codes of the Linux running on ARM (uboot, kernel, petalinux bsp=
 packages, etc. )

Many thanks in advance!

--_000_HK0PR01MB2835F3D915230B4615A7F936F3D60HK0PR01MB2835apcp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"ZH-CN">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt">Hi,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt">We a=
re currently using N310 to design a prototype MIMO OFDM communications syst=
em. We plan to implemented the baseband in a custom RFNOC block. For the MA=
C and network layers=92 functionalities,
 we hope to implement them on the ARM within Zynq FPGA. So ARM should commu=
nicate with the custom RFNOC block and config the RF chips. The baseband wi=
ll get samples from the RF radio and send TX samples to it. N310 should ope=
rate in the embedded mode like an
 e-series usrp equipment. (N310 supports both host and embedded modes). <o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt">But =
we could not find enough info on N310=92s embedded mode operations.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt">1)&n=
bsp; Where can we get the SDK for N310 similar to that for E310?<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt">2)&n=
bsp; If we want to develop the AXI and SPI drivers for the ARM, where can w=
e get source codes of the Linux running on ARM (uboot, kernel, petalinux bs=
p packages, etc. )<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:14.0pt">Many=
 thanks in advance</span><span lang=3D"EN-US">!</span></p>
</div>
</body>
</html>

--_000_HK0PR01MB2835F3D915230B4615A7F936F3D60HK0PR01MB2835apcp_--


--===============3077640006661947942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3077640006661947942==--

