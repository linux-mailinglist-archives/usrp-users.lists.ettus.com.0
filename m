Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4404B6E96D4
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 16:17:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 546A2383FD9
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 10:17:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682000247; bh=/Dgegs/KW1iD/+js8NY71PRPn9TAxWbQV0VaJaPr7fU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nJ5mF8symvOLrjbG0wuDZBdt5vbGEYNxrsxPyx2lHcY+U8SaHmDIU/RVvJBF5K2P8
	 qfDZaKiFRTXAwAQt5czIQK9zYWncu2oncIdizo4N3qkU/iGhnp+cQO9FYd4GaM4yWo
	 Fc9jCO9Zz85OX7uj34dCnghpkGoSJQa5G4F6XTjzlQo52aa82gI9NYGnBEcsRTgf1W
	 3BBH4gGK23vi/WthTQEjmV0iLkvTDAk50GINXff01X6E+2hjLVEOLtZ8BXXuJK6o5d
	 OsHymTFZD0Z4p7uY97Tks5mszb9k70hJpvKt8d8u20d3gC4jjnz22FnTYsQ2LjQPIW
	 CMKnYrykCT7Iw==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id 84B73383FD9
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 10:17:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="uyUrslT5";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2106.outbound.protection.outlook.com [104.47.70.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id B288E340074
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 14:17:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MH2wPaI8FRKHY3SIBM43Sf0+xcs8s7B5OOAO5SMBh5nf7zmUgylFH3XmtqFLAXm8fFgrZ6qrG0tIS6Z1GJen2WZ0ZC1sjuGlbwuss2gJ9YwW3fSU0+2sQjBKwV9LVLbMtfsWEMXwgCrYcClUi2nXdC7v8esMjLTBSbiWxHC3tlfi/opone9AhHwP6VED8CSgkq+YcILqQ7RduDcmvEfBaXpVOgWlIix7A4Inj1PuYMJl3MLt3Wm5dUc9WrPJjOUEvabB64tNqK06lcH5LFLOG5ya5s0B+GfWF/dr1dYVNBw5siJVj+pjpQGnKPq3G8U5HW+NU3yAv9pQz8KvzvLqzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FhlENtJNw0Chc/PpfY6CGp4k+/n1wmxBTpo4RVMVKo0=;
 b=ZYVYCw35YTBEDIaQgq7PBpBML1fJIsuP0Xbjkcgg70BHI4d8skyuJNUz9N9KalyBXOzcrzYJP4s5y+RnBGRFXOU/iou19WBbq3L0Iia1nF4jMCi+ZSlkWWoyOaHIgkznG6kn8OGGT5Le2w17OhgrUhS8WEHCiI/T7N787E6BBelx9B8LjEEd1cUIk70zwv1IDxhnAb9dG4TNiZLEMNwE7//8KLggH2aNAddf+EQ9hDA2RdREhYpL3GEkufWX6G3OJiqvCysnsSJ3fPNOqT/sy4Jt5kq1tsM/mfLi9P15JjWGWJJ/v/BTb8w2ybJdA051ChaV1rPF690VMvRaaENbGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FhlENtJNw0Chc/PpfY6CGp4k+/n1wmxBTpo4RVMVKo0=;
 b=uyUrslT5TZLkYc7BMLxgjQe1GttlZ7Rwye+pfRZDZXaYyCLuzDYgQO3OgOpJQt/K8ELTGr8rULKP7dlSyxu8k23khfQSfkRG39tyIeBk7lvQY0bzFhGzKcx9WEmGSFey2Ymlb0lfGp9hgIsl62WPQ29FCJaANfCgq3IXbcnaf54=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by CH0PR12MB5329.namprd12.prod.outlook.com (2603:10b6:610:d4::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 14:17:18 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::faa2:a0cd:6825:d50f]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::faa2:a0cd:6825:d50f%4]) with mapi id 15.20.6298.030; Thu, 20 Apr 2023
 14:17:18 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320 SFP MAC issue
Thread-Index: AQHZc42xO0n+DcHBGEG8MLnjd0jq+g==
Date: Thu, 20 Apr 2023 14:17:18 +0000
Message-ID: 
 <MN2PR12MB331268F8C3D8C7217ACCCE37B8639@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3312:EE_|CH0PR12MB5329:EE_
x-ms-office365-filtering-correlation-id: 969dea39-97b0-4af7-486c-08db41a9f301
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DjTXRBp7sRJzBlirmReysUOXKtuUTgTbzMm1LL3SBqbxDIzpge2KCh39lFdo7V2/uPI5QAXttM2V/TAPZQjZW/DZVncF862AQFwql9M97Tp7JrUH/P6gYjRZ/nIjcMoLbiuL4Tdcc+LEHpKDTzdbtufFuKzS7idOFAiz6qX7suzGxGpb+Nk5o7II7O8rr3Z2dpmlIe2yVYHNPjiFkGG4VPuDEX7NxmcfYmztYuHn7dxytKXMOxcStAHcalmQozPzK9dJjvp4dfrJlE4i/m8Lhq2F4IcZWkkfE18D/FOEwxdt8i2ry8+9N/e6O2EPKjCOTsPrZlv2kUTTzxQ/XIpk/IyRa+e1UeK1Z+JXSgGoUjFvUpQKUye9xsNxkqi52kPkTVxED+I2/eBvK/ERs+rSCgJKLS+HQwU++CTF1ze2T2ZfXDRBUXTfWFfaaR5EYdnX3htUqAcTMTot9CBcQcmvWPm06lBXWClTeZ+H0EMMTH0OQpIki61UbpPhy0xA9o+ECdwsbwNeoV2BeJvInXPfHAzbglGNDJLJF6A2gS9PAMVlgHgj3y3jeRjw+Uk+YouU45PHGFZdK2+USaabG0xQ1RpT5/L6kv52trpvQ7r3mMXxg/88fEHlrlXPDiML7gCI
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(346002)(366004)(396003)(39830400003)(376002)(451199021)(19627405001)(83380400001)(478600001)(7696005)(55016003)(26005)(6506007)(9686003)(71200400001)(6916009)(64756008)(316002)(186003)(66446008)(66476007)(66556008)(76116006)(66946007)(5660300002)(52536014)(8936002)(2906002)(8676002)(38100700002)(122000001)(38070700005)(41300700001)(33656002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?jz+O9AD9AYn0ZGnGHrMQ1DlpoNO4KFc9SCLSdI0QnaKL5HGNxN+SqeZgUG?=
 =?iso-8859-1?Q?T3qDMKJ4UHMIIkWJK5Lr2n/XyqO72ea8J5ez7w9dZ2KCZDywpoiGedXiUr?=
 =?iso-8859-1?Q?JKjsqycbyGnPg2rQ7j2Fqv8wBiWmMJh7RXR29RDP+L5tRMHtC1XuLEhTSL?=
 =?iso-8859-1?Q?1V/jzCPnPkPVNKAlq/TNaDybYwB51iJInaMtG9FUm5LRYreO+nySqCxcl5?=
 =?iso-8859-1?Q?pJLWSx0k0eN0UwI2/Ly4r5fuFmljv7M3xH5ju2ghiyqCCCYkzsvuo2h3Uk?=
 =?iso-8859-1?Q?cbQw5aLXJd6GNErEZ8WPwEeI6j4oMMfflXRvqeHGyqGfqwI8Mdm/0DpdSq?=
 =?iso-8859-1?Q?4KK6DR49X3XJweHZG9+zYmgg20NXLGvhwfBeNiNcxA8md69pcsEOeNo0+U?=
 =?iso-8859-1?Q?kfYAeLMAF0F2zLOf4yeIoEa8kinmytRar55lNktcwMsMco8Hnj7Vcd80bI?=
 =?iso-8859-1?Q?FmGRDan3ib6bmBLEtSxMCnk5oJMxa0ru3CDITyytp4ewRv0bGOP9V5CKpd?=
 =?iso-8859-1?Q?JSyaO6RM9lIKh+hY0B8FTtc6B2K4DGh6iDT/0T6dCIXPMy1sHPI5SW5wtx?=
 =?iso-8859-1?Q?m8E8iSfEtv89j2d9rOaK2myUf5DqNEajhJvqVwOaL9WgO8m41NivCFrdzg?=
 =?iso-8859-1?Q?YXSNOM3AzBhrnwC9Eesm4whieZc4O58R8gW8uQhSe46i/vbS6lLJJHp8Zm?=
 =?iso-8859-1?Q?ZrmfxUU2hGe4yplKn72XFpgsxIfdH/ReXZHacj1MSCbOIrFWjhU7nDzv7R?=
 =?iso-8859-1?Q?CNRegeBzPRKcG1r0eJP1WdcHDvdHwprIOC0TfHVDGQ7y515RKycruWYgyj?=
 =?iso-8859-1?Q?s5wmgOE9i+5bKzohiV83TPXafWi05mGn6eUvuTEgMxL3MvbLmFehP8kHB6?=
 =?iso-8859-1?Q?fmOjnUIw6aFYX+U2DDLjFMKS43QFCO0Jj3DRAwzRyKbaxoiWy8+4+KYjwT?=
 =?iso-8859-1?Q?FHC9Y/8AgibP8P4MZDH0a7yYwh9W2APUUpQrof+V3xaCwW6J7BzxiB2ZIo?=
 =?iso-8859-1?Q?KiPpMgykxmglbDu+BVgiUzyVGhFz9bKHUBCFwnncNFXsHPJ3MGZvhHmz7y?=
 =?iso-8859-1?Q?bCoOrSQtMEeLi29Es/945c4twgemJMDlP+ZCTadg9RrzzZZVsZyOYtqhko?=
 =?iso-8859-1?Q?1oDWtLxlfxA8KiSQd6kyPg05oLRxP24enczG2CQ3qH+Ez1E+RCaOikkZxy?=
 =?iso-8859-1?Q?BzpESWNK5lzO/CPNZLXQ+koinoYGBF5XCVNFwhJDZ6JOMOmIt2wPw+4+Z0?=
 =?iso-8859-1?Q?Nse5rE1xh37OqRjlOadYhNMK9Noj/tow6asEpHE+1NyQppdKwxNt4gPsmz?=
 =?iso-8859-1?Q?t0Txi0MHw2TL5tYTRAr0IMqOZrG1gjViVjLtRKVNdYvbEPL6QlYECVE6Fk?=
 =?iso-8859-1?Q?3i4mUq1mugaM1tHoVXVyuTI9Lz7NXl+ioLBGbyfmdCawNZH2+FtlJOSwzi?=
 =?iso-8859-1?Q?YbXWDiVA59+M4/wEF5vgoPHW9zIdV8vgnKkAWlH6Ol0NRjuQL1z7pHg5bi?=
 =?iso-8859-1?Q?bNNvzuAwJjwri1BhVWSKNMXaklPNiyMWfWWw8WUSTKMCHMF8Z6sfSbSOR3?=
 =?iso-8859-1?Q?6sqsUgFeIIfdfsnqe+2ATCvTIrfSggLyx4Hsq05GUAXzyoxtEnlpUpfTqp?=
 =?iso-8859-1?Q?iUK67cYSQVUuJJQ3WlHO2Qq8hWuvyfyu27?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 969dea39-97b0-4af7-486c-08db41a9f301
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 14:17:18.5150
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R0J+CaevMSijiNctRTBeNK5qDMBLHBF4qJr6NsN51nDqWYIchTNyQdbxhSaN25kmUV3oENPk6YsrGzJIJBs0QavRfuxup7geaqcTYCTeVTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5329
X-MDID: 1682000241-FdyneIGKZVoG
X-MDID-O: 
 us1;at1;1682000241;FdyneIGKZVoG;<jim@gardettoengineering.com>;e704d01f87cea27037df32747797d545
Message-ID-Hash: 3H2F42YN52ZGZ6I4IRV4KSHHMQEWPHII
X-Message-ID-Hash: 3H2F42YN52ZGZ6I4IRV4KSHHMQEWPHII
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 SFP MAC issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBLGESPQ2KKTHDP4SREBFEE5Q7HRFLMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2546183386563046966=="

--===============2546183386563046966==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331268F8C3D8C7217ACCCE37B8639MN2PR12MB3312namp_"

--_000_MN2PR12MB331268F8C3D8C7217ACCCE37B8639MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We have multiple N320's connected to a managed 100Gbps switch. Each switch =
port has a QSFP -- so 4 10Gbps connections per port. We're connecting and u=
sing both 10Gbps SFP interfaces on each N320 radio to the switch. Basically=
, one 100Gbps port on the switch will handle 2 N320's via the QSFP. This ha=
s been working reliably for over a year using UHD 4.1.0.5.

Recently, we updated to UHD 4.4.0.0. Now, everything seems to work fine for=
 a finite amount of time (hours/days), but then port security on our switch=
 gets tripped for one of the ports. That radio's corresponding SFP interfac=
e is then unusable until that port gets reset on our managed switch. What s=
eems to be happening is that our switch is configured to only allow 1 MAC a=
ddress per "interface". If a different MAC address ever shows up, port secu=
rity trips. Due to security constaints, we're required to run with this MAC=
 limitation.

To debug this issue, our network administrators temporarily increased the n=
umber of allowed MAC addresses per 10Gbps interface to be set to 3 instead =
of 1. They were able to see in switch logs that eventually a MAC other than=
 that programmed in the N320s EEPROM showed up on that port. The offending =
MAC (not the proper MAC for that SFP N320 SFP interface) was "00:00:b8:ce:f=
6:22". We can't figure out where this is coming from, and haven't been able=
 to determine if this happens when rebooting a radio, loading the FPGA, bri=
nging up the SFP interfaces, randomly during streaming, or what.

A thought is that at some point (when the FPGA is programmed and or the SFP=
 interface comes up) some garbage bits come out of the interface -- maybe t=
he switch interprets this as some sort of malformed packet?

I've been running tests at my desk with an N320 connected directly to a 10G=
bps interface on my desk PC trying to somewhat reproduce the issue. I've be=
en running loops that reboot the N320, stream samples from the N320, reboot=
 while streaming, try to start streaming before the SFP interface is up, et=
c, etc. With wireshark I've been watching and have not seen any packets wit=
h MACs other than the proper MAC that the N320 should assign to that interf=
ace. However we're wondering if maybe we wouldn't see a malformed packet on=
 wireshark (might get blocked by the interface and not get passed up the st=
ack?). However, maybe in our normal setup the CISCO switch might see it? We=
 haven't been able to get logs from the switch that show anything beyond th=
e fact that another MAC showed up on that port at some point.

Sorry for all the words, but this has been a tough one to debug/reproduce. =
We've had these issues with all 5 N320s we have connected to the switch. Ag=
ain, we never saw this before updating to UHD 4.4.0.0. So either this is re=
lated to N320 behavior that changed when updating UHD 4.4.0.0 or something =
else coincidentally happened at/around the same time as the update.

If anyone has any ideas it would be appreciated.

Thanks,
Jim







--_000_MN2PR12MB331268F8C3D8C7217ACCCE37B8639MN2PR12MB3312namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
We have multiple N320's connected to a managed 100Gbps switch. Each switch =
port has a QSFP -- so 4 10Gbps connections per port. We're connecting and u=
sing both 10Gbps SFP interfaces on each N320 radio to the switch. Basically=
, one 100Gbps port on the switch
 will handle 2 N320's via the QSFP. This has been working reliably for over=
 a year using UHD 4.1.0.5.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Recently, we updated to UHD 4.4.0.0. Now, everything seems to work fine for=
 a finite amount of time (hours/days), but then port security on our switch=
 gets tripped for one of the ports. That radio's corresponding SFP interfac=
e is then unusable until that port
 gets reset on our managed switch. What seems to be happening is that our s=
witch is configured to only allow 1 MAC address per &quot;interface&quot;. =
If a different MAC address ever shows up, port security trips. Due to secur=
ity constaints, we're required to run with
 this MAC limitation.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
To debug this issue, our network administrators temporarily increased the n=
umber of allowed MAC addresses per 10Gbps interface to be set to 3 instead =
of 1. They were able to see in switch logs that eventually a MAC other than=
 that programmed in the N320s EEPROM
 showed up on that port. The offending MAC (not the proper MAC for that SFP=
 N320 SFP interface) was &quot;00:00:b8:ce:f6:22&quot;. We can't figure out=
 where this is coming from, and haven't been able to determine if this happ=
ens when rebooting a radio, loading the FPGA,
 bringing up the SFP interfaces, randomly during streaming, or what.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
A thought is that at some point (when the FPGA is programmed and or the SFP=
 interface comes up) some garbage bits come out of the interface -- maybe t=
he switch interprets this as some sort of malformed packet?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
I've been running tests at my desk with an N320 connected directly to a 10G=
bps interface on my desk PC trying to somewhat reproduce the issue. I've be=
en running loops that reboot the N320, stream samples from the N320, reboot=
 while streaming, try to start streaming
 before the SFP interface is up, etc, etc. With wireshark I've been watchin=
g and have not seen any packets with MACs other than the proper MAC that th=
e N320 should assign to that interface. However we're wondering if maybe we=
 wouldn't see a malformed packet
 on wireshark (might get blocked by the interface and not get passed up the=
 stack?). However, maybe in our normal setup the CISCO switch might see it?=
 We haven't been able to get logs from the switch that show anything beyond=
 the fact that another MAC showed
 up on that port at some point.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Sorry for all the words, but this has been a tough one to debug/reproduce. =
We've had these issues with all 5 N320s we have connected to the switch. Ag=
ain, we never saw this before updating to UHD 4.4.0.0. So either this is re=
lated to N320 behavior that changed
 when updating UHD 4.4.0.0 or something else coincidentally happened at/aro=
und the same time as the update.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
If anyone has any ideas it would be appreciated.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
<div><br class=3D"ContentPasted0">
</div>
<br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB331268F8C3D8C7217ACCCE37B8639MN2PR12MB3312namp_--

--===============2546183386563046966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2546183386563046966==--
