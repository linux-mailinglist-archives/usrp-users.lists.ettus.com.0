Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3A17EDED1
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 11:48:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E6E2384A29
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 05:48:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700131686; bh=a5eTfxpGDyWcl6GK6it85B9ZSQl5yQo2jkSVbvtAqmE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Tnhg8mMUDugpcKeWY3WyfLpWhH1yek8WigiE0ByqT0ZWJqAlQbpwqZ233lq32C/1X
	 cWIkVyEpSMIgPbNCYLrKceVv5Nldk85B3GnZgWlQZct1PPhzTqF871jIEBHMKtDuEd
	 19nQs22PPSzGplVEjelZBik0n8IIyYWLrLGdei0vwLeaoo8PeLCBVlWLQTXUEgHKjr
	 f/PLXCasKwpFMubw34kaAxifubL7FIeQ89PKwRGJpyLqp2PlqvKc1L10s7DBZTLkxq
	 OWjUm3sr3eiPFmPTso/Of75vFKU1GwkSMWc0NoNH0zUhD4TXEjdWr9SF4548LZKheV
	 +EwVe0l9wc+TQ==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2124.outbound.protection.outlook.com [40.107.223.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 45866383E1F
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 05:47:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="R51QQsLa";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTAdyYn4YvcYrZDSoUzszek60p2zJPeNEZcoYZ/1hAuNjVKPYb3EJHPb21anrJ7Xq4QRtDuP6DwWwC0xl9wJJER8xqijH10OGJAEjJflFynlBjgOWtp9qmZuz00gvb+zR5xiDr36Hez5GX8tw7sXBCHXAIgg96wLxBghEQt9UGbUE0tRR/JYBy0HQVQR6fokLdigMPQk6LeymXGCTMqK1o/2ij4pBoInPCFVNaZDhsxcW3VQbU923He/Io6sVPbpqn6PRFWVijFQgFKFxJnAlLAwCjW8NEwQEjSBRD7WYRiyAxICi9e/KkHW4da77OVPu6lHoy+TSUu3GbWnxdHyDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fJ6k96KIHJCHpevA52pj5njmK7+FSdAPHtE5FnHwhF8=;
 b=LjRMM+KuawKD9N/zbndbj19PWL/iOXeaiyy6aE2q1llll0u5Ok4YFUYL8zAyCTW3aNCeK1+k1ojkseslYXtkMK3VFtW409YrD57gswDp4utlddf5MFvg8RJbyOlYTOvb1QuIkDShjiVV91fHMuJ1nRJlL6aZDIXvC1OsAeSEUaKNQbo4VnWiyj2qGiSmOkIrTQ+FSKtiF+YyQk8quJn+i5Jea27bXVVh1EKaO6rOGJJfQ9bXmiQoT5Y64dkNOIO4OXDATWBInIlglaoe8pR3i4esw6ePkgr7m+7v+V3MlMKKJ7heQI3Ns5GKuqmMdI5FmVDZERdGEH+JuLQQLJZWHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJ6k96KIHJCHpevA52pj5njmK7+FSdAPHtE5FnHwhF8=;
 b=R51QQsLaGhYgv9OXLU/DYcmExSPYrzAeiIrQtjep5QN9eldD6vsdfsYGf+ReinyR90wtysb/ZYTu/Ql+XMvJfJ0OElPyJcyETiaejF2ouMz/CWj+geAb3LoP/LSJCFMp9LmQUxnrs8u82URplmZu48BV2RfKrxAqfm2Tawds7KA=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by SJ2PR04MB9022.namprd04.prod.outlook.com (2603:10b6:a03:53e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 10:47:22 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::3f4c:be8b:1cc0:fae7]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::3f4c:be8b:1cc0:fae7%3]) with mapi id 15.20.6977.029; Thu, 16 Nov 2023
 10:47:21 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: x410 stuck in reboot
Thread-Index: AQHaF/8EZp88EIgYa0i5HVTLWi5A7bB8uRrg
Date: Thu, 16 Nov 2023 10:47:21 +0000
Message-ID: 
 <PH0PR04MB83114E86234150E426E25E9DF3B0A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: e01ec84f-559f-4e09-97fa-13de71a19a91@gmail.com
 <6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o@lists.ettus.com>
In-Reply-To: <6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=f3d2627c-6640-4a25-93ef-bd46586d0b9f;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-11-16T10:06:23Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|SJ2PR04MB9022:EE_
x-ms-office365-filtering-correlation-id: c7467fc5-15a9-4db0-a959-08dbe6916991
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7EP5QX5nytxb+tQA4RI9V+luhnPnzff78owBEN5LJWRHuQH1bh0yuihr11o/dy3Z+KL4gO8W+YTm7LEDl96LcjeC9Q5BNGOY7AmrqVgu3Hbzi/DFj1KxNBWDwOXEqwBOH7jjdDsmQ27etUhb2FB7x80kyGGDGZ0ogXpIv+amOkMZJONcCKPVWS4eEnQavbligxJu/w3iTrRVyZKbJUzf6/+AeajkDKmP11R8d34eplRTyCBWOc0oucjD1rO9fu9iO9gbkwLF/qGjq9i2WJQSk2yks1YfqPQzctBBEGGXzTl2vw12tUf6jO62G7nvAui+dtFpWDoEeqFznLqmDIYR8V8MMmCOAsflJYue95w0HGQ77vKky4U5Xa7YCMBQt8d14Ji+PoyIsCgCVfzTxsus6kS6mA1pMLcNuFwfgDj84OeCaj1+O4yXTsypt23xieSY/Vh2M5396E9zczN+ipz2x2Fp4gANPUPYs0Ta+MZXtW5/RBuNfQs3sJ8ntxxjSLUgMDorCbvWlzvt7Q/UUW3H7+xkoAjgptJK9o3knXUUmZWC5OzE3RJ+uYfqKpDL3nuHGM4/AtByJRbkalO3Wh3Iu1TZ0dBpYYmjt1zIfVUMRM8hTv8FZVt8uwQF08E9QcPb
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39860400002)(366004)(396003)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(66946007)(66556008)(66476007)(76116006)(41300700001)(66446008)(6916009)(64756008)(316002)(86362001)(5660300002)(2906002)(8676002)(52536014)(8936002)(33656002)(122000001)(66574015)(55016003)(83380400001)(38100700002)(38070700009)(71200400001)(478600001)(26005)(7696005)(6506007)(53546011)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?3LFbOwwBwS45ZWbbD/Qe2IjhhWB7IME1n6Y9Bsp9YUSFrt9/GuhKEIfQ1YSQ?=
 =?us-ascii?Q?GphJrb+gK/PeLOag9O2yXEJgz2PzQvIw/+sFqsGoHXtmcuLCS695h/MH9Gzx?=
 =?us-ascii?Q?Y5aDdElLwtSE6e2/EgYaiG2lwZylEWVr9w0Hwlmr6i7dKnCOSv9k3RtiWXfS?=
 =?us-ascii?Q?ktpqpz0GiOc9T5hpjwLVX1gjuRgdIWv5UXb405yw7z246faB/wM7TKvdi895?=
 =?us-ascii?Q?sE2TgidO0scUanJIamc5idGn2P+JzRGvJRpcTPVIPkXY5affZoNVMzxs2DEA?=
 =?us-ascii?Q?PRcdew/f/Ynol7RzuiqiIrmVVm3XcQjxgyNN1EjWsXte5SR5nuD5a5gqM+TG?=
 =?us-ascii?Q?4LrKVsrIhzpRvRBJUKlgDx41HHeZRqhUsSyQ2gbnin7ZgfCQ/+132yoVFY+N?=
 =?us-ascii?Q?9VKVW/ZzxNZPFcPkQSt32kuXt7AwoNmLC1lO5qWTkJyqYfMRlL3btfWz+/6n?=
 =?us-ascii?Q?1J/3nG3DbwnF+XA6gvHbFPYCrCdvHePEMyoKvChwFS4qrWWz6WB6K+v0D8Qt?=
 =?us-ascii?Q?5Z+Xnk/i+x1HsB8kh5KDkNB4QE/sQL3U7r8oR+vBFv9U0wu33T5+gGUerBuu?=
 =?us-ascii?Q?fu4c/aA1ffmxrrchLgS5eLIEKlk4OTppxR0+djrPUsI400QIKjoXJKr0+DH9?=
 =?us-ascii?Q?CjTzprSX07PnA0krba98829Dq3avJmUcR19HHcQt542KhySMfB3G3V4j0WC6?=
 =?us-ascii?Q?0WWJ5oULVyVMv3i3aqSBNluHLu5122L5t/taOsRdEcO7JVnemfcldKxSYUSQ?=
 =?us-ascii?Q?D+yC7p/bxUCwJw+Q0mBtlvuNbEzMBk7EnJ+s3H5wNoMc3fME9Si5nZJuuxle?=
 =?us-ascii?Q?8hE6F/6HSFDfdtK9SsSyRWow5fDvwyXVeJypEfm+mzj+7xvq3b/fVcsVQrtm?=
 =?us-ascii?Q?7xoaDqWFwc6p18bQjaMocTfTo56RTqXgUyIxkLFNaSQdljfQcVH0sK90muIE?=
 =?us-ascii?Q?p11w+RmteoaDSXuvTPkh7VSMExtkgu6onrRsf84fAaseMh2SgiGyt3DepNYg?=
 =?us-ascii?Q?E+iI3NV88h2NzofEgZmqbfqOMmitS2qKZRq/W4m2Av7fTFcoTRZ183AET9DU?=
 =?us-ascii?Q?eOVdmE9Yj/QlTLs0iDJ1/73r6ar03GfNlr+bDJUwZ37cbCc76HLbC/igtaoQ?=
 =?us-ascii?Q?XsshJA8Fc3ZEllr5qxreW1i0uxfQmrpw1ef1h6n6YpjJ+vrCGGBHIjvX9ND/?=
 =?us-ascii?Q?BMAxzYIMpl8AQvavoFg9gsuuoRHmwowdrIGItIxoF24BTxYVIkypeAX+OX2d?=
 =?us-ascii?Q?396A2GF7SDZ9UasGwLBn5O4qFPMM+vGZS8De5yuRLClzGFtKbXHZ78VCQE8k?=
 =?us-ascii?Q?hilsHRIO8AmbkmlJeggdKepcFea0eAZM4QEwMDNoOZiMJguhuskO1s5twGXj?=
 =?us-ascii?Q?QQS+ISTVRVxpFakdFngLE2z+vMPnezkCQPEnkH1NV6KdBEq1gIEpkUZJuNBE?=
 =?us-ascii?Q?QpAB4/kzBvZSeeQTAB/KKsEIa4LDuwLdWJk9Qh2oV+0/W6Kmr+ILJV738fnn?=
 =?us-ascii?Q?X+vQm7tAAml/+lScJ5cnNcWB493is3+eIeUJepJpyPFjfbgDm4M0KiSAeF5g?=
 =?us-ascii?Q?8hLL05NWSpN7ydteV4qVz3tpk+8x9XsBfril/wo7?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7467fc5-15a9-4db0-a959-08dbe6916991
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 10:47:21.8559
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aV00NlDIvpc+g5YT9WwLZB+aFAL60Ix5X4n3i72rmb0LKp8Tv0f8pLhuhAfmr5zXyhZxcZTi24u1RXu1loCXQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR04MB9022
Message-ID-Hash: 2YP2NYYAOX4YTDC3EVV3NHG3BMQ2NQZT
X-Message-ID-Hash: 2YP2NYYAOX4YTDC3EVV3NHG3BMQ2NQZT
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CAVBNFMPRIRNNQQHHUKJ2UDDPTMEIKFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4172829583204975615=="

--===============4172829583204975615==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB83114E86234150E426E25E9DF3B0APH0PR04MB8311namp_"

--_000_PH0PR04MB83114E86234150E426E25E9DF3B0APH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There's something wrong with the network configuration of your device.

networkctl list
will give you an overview of the activity of your network ports on the devi=
ce. My X410 reports this:

# networkctl list
IDX LINK   TYPE     OPERATIONAL SETUP
  1 lo     loopback carrier     unmanaged
  2 eth0   ether    routable    configured
73 int0   ether    routable    configured
74 sfp0   ether    routable    configured
75 sfp0_1 ether    no-carrier  configuring
76 sfp0_2 ether    no-carrier  configuring
77 sfp0_3 ether    no-carrier  configuring

7 links listed.
#

If you don't have a carrier on eth0 then this is your problem. Are the LEDs=
 at the RJ-45 connector on? After flashing your device, it should be in a f=
resh state, the 1 Gbps port is back to DHCP, and you can verify this with t=
he ip command.

/Martin


From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Wednesday, November 15, 2023 9:05 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: x410 stuck in reboot


I can not ping the non-working device even, either through RJ-45 or the SFP=
 port. To be clear, everything I am doing to network into the non-working d=
evice is through console JTAG. Before this problem started, I was able to s=
sh into the processing system(Embedded linux) through either RJ-45 port and=
 the SFP ports just fine.

In general, the x410 automatically sets the SFP ports 1-4 to 192.168.10.1-4=
 respectively. This is something I generally rely to not only log into the =
device, but when I want to run UHD software. If I ever want to use the RJ-4=
5 port, I usually have to manually set the ip address using ifconfig, but t=
his is pretty trivial.

Now, the device does not set the SFP addresses automatically, and I suspect=
 it has something to do with the ssh service not starting. Additionally, if=
 I use the Console JTAG port to manually set the address of the RJ-45 port,=
 then try to ping that address from my host device, the address is not reac=
hable.

National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Jo=
hn Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (Regi=
stered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeri=
cht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB83114E86234150E426E25E9DF3B0APH0PR04MB8311namp_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:none;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">There&#8217;s something wrong with the network configuration of your =
device.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">networkctl list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">will give you an overview of the activity of your network ports on th=
e device. My X410 reports this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"># networkctl list<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">IDX LINK&nbsp;&nbsp; TYPE&nbsp;&nbsp;&nbsp;&nbsp; OPERATIONAL SETUP<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">&nbsp; 1 lo&nbsp;&nbsp;&nbsp;&nbsp; loopback carrier&nbsp;&nbsp;&nbsp=
;&nbsp; unmanaged<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">&nbsp; 2 eth0&nbsp;&nbsp; ether&nbsp;&nbsp;&nbsp; routable&nbsp;&nbsp=
;&nbsp; configured<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">73 int0&nbsp;&nbsp; ether&nbsp;&nbsp;&nbsp; routable&nbsp;&nbsp;&nbsp=
; configured<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">74 sfp0&nbsp;&nbsp; ether&nbsp;&nbsp;&nbsp; routable&nbsp;&nbsp;&nbsp=
; configured<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">75 sfp0_1 ether&nbsp;&nbsp;&nbsp; no-carrier&nbsp; configuring<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">76 sfp0_2 ether&nbsp;&nbsp;&nbsp; no-carrier&nbsp; configuring<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">77 sfp0_3 ether&nbsp;&nbsp;&nbsp; no-carrier&nbsp; configuring<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">7 links listed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">#<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">If you don&#8217;t have a carrier on eth0 then this is your problem. =
Are the LEDs at the RJ-45 connector on? After flashing your device, it shou=
ld be in a fresh state, the 1 Gbps port is back
 to DHCP, and you can verify this with the ip command.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;
<br>
<b>Sent:</b> Wednesday, November 15, 2023 9:05 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: x410 stuck in reboot<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p><span lang=3D"EN-US">I can not ping the non-working device even, either =
through RJ-45 or the SFP port. To be clear, everything I am doing to networ=
k into the non-working device is through console JTAG. Before this problem =
started, I was able to ssh into the
 processing system(Embedded linux) through either RJ-45 port and the SFP po=
rts just fine.<o:p></o:p></span></p>
<p><span lang=3D"EN-US">In general, the x410 automatically sets the SFP por=
ts 1-4 to 192.168.10.1-4 respectively. This is something I generally rely t=
o not only log into the device, but when I want to run UHD software. If I e=
ver want to use the RJ-45 port, I
 usually have to manually set the ip address using ifconfig, but this is pr=
etty trivial.
<o:p></o:p></span></p>
<p><span lang=3D"EN-US">Now, the device does not set the SFP addresses auto=
matically, and I suspect it has something to do with the ssh service not st=
arting. Additionally, if I use the Console JTAG port to manually set the ad=
dress of the RJ-45 port, then try
 to ping that address from my host device, the address is not reachable.<o:=
p></o:p></span></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; =
Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; Re=
gistergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB83114E86234150E426E25E9DF3B0APH0PR04MB8311namp_--

--===============4172829583204975615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4172829583204975615==--
