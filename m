Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C26B3462838
	for <lists+usrp-users@lfdr.de>; Tue, 30 Nov 2021 00:23:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86DD8384B6A
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 18:23:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="NC3Cm3xP";
	dkim-atps=neutral
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2081.outbound.protection.outlook.com [40.107.237.81])
	by mm2.emwd.com (Postfix) with ESMTPS id D61AD384652
	for <usrp-users@lists.ettus.com>; Mon, 29 Nov 2021 18:22:25 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VOvP09PIwpXeProhu+UlcJO5N5pWatBM8KtuibDpEnNoGoHoXagNUOHUXMaNQyRV+m4E+ZZyohCNRqSyziIMmZ1UEnST8EQgomTNXWVsPMX+qb/RJDdIazZNw2WlCgPn2gtvD1Mb0gwq0yul7KJpuo+KoyQKkn0WyaZB9xdsuDI/z04X47KAqJoBcXNkwhbC/HlF4tU1sOhCVCb8eC/RLDyzuOl3LvFmZ0Ibz20A8EKYhmWofF1wAkBp++MqBrmuMwlE6Zlvgh5fJR5WqU++ttNkM3rhjL/hURN+lFxff5elk/hg1kbKxY+Yn0LDPGcF0+KSSvoDPmkEnJE4IcZEvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mwouBI9FJUQNPUwfpGHvPquQlP1XtYdoDxyA5fhP/DY=;
 b=A6I8aDA5hxQvwHuj/CsUfFC73wjHtqqOYQ4CCyXycQIrW8/giQv+mh1EutvuA9ZB8glzMJLVsEUFXIw+Z5olrH+cpUyZwZi8wKNn9kM0bUlhG9tD9rzGbtXH0X259dbYfV0IJ1e5phEbGOxpHBADit7CFJP5D8quzVaqe7EmY8OpNJza4AER1nCG8jHQ2GOLTOhUfTbtWfC98Q9Xyq4jdXZISgWQxOzGY0iPpjbE9qJ5Xunh/e0xLLjO9Hav+HJw0FrzfaAXxz0z4BkRnkA16X0OMCB1vmnIEsjf0FMvi9vhSLOQtHAZLOkbEts6MXR8VDajQkwFOqpdgzeJ/8i0+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwouBI9FJUQNPUwfpGHvPquQlP1XtYdoDxyA5fhP/DY=;
 b=NC3Cm3xPSZoQe3tplEJgY3NJLlZxowK5Xm5gi7Ssy2nUWtguxjCOdUW83Rgt+Srs2jmEMvZ7crdXSEP6domeiD77Qf6JnOsjBB4Ji8LGkxp39hsqqV5Q0sYsZ3irlrQKoABAOfV9fL6Q/lEhZQHlToENz9sjgySQDZGrBvExQoM=
Received: from MN2PR16MB3502.namprd16.prod.outlook.com (2603:10b6:208:16c::17)
 by BL0PR16MB2386.namprd16.prod.outlook.com (2603:10b6:207:3f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Mon, 29 Nov
 2021 23:22:24 +0000
Received: from MN2PR16MB3502.namprd16.prod.outlook.com
 ([fe80::9965:5476:4a53:1ec9]) by MN2PR16MB3502.namprd16.prod.outlook.com
 ([fe80::9965:5476:4a53:1ec9%5]) with mapi id 15.20.4734.024; Mon, 29 Nov 2021
 23:22:24 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP streaming data performance
Thread-Index: AdflZS8SPk98EMhZSeapQkkyV27f3g==
Date: Mon, 29 Nov 2021 23:22:24 +0000
Message-ID: 
 <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 162cc36d-e927-4521-c019-08d9b38f19f5
x-ms-traffictypediagnostic: BL0PR16MB2386:
x-microsoft-antispam-prvs: 
 <BL0PR16MB2386FFB9D67F71CFB0E9EA8DB9669@BL0PR16MB2386.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Z84UbY8POE8LYhHGPbGEIfvTFIyt48SMVvgFZzalVnDa+A33k+UeeCGN3aYCWmod79MVvlcwsRuvRxo0pQ+c0vameUdWUev7zH84/eNdH4n0CChyDI5BqxRaPV1JhwnJEe67bdChKae32UrTM/h1KkL+DzwjXcmNNOpYJtVP+bykarBOhoXzXQEbQ+k7AP2rzIe6PTQIplV/6oK8hjbdyCKhO3ZWIkeG43nD9Hsc5RrkrDVhevHGCT4YOPozZkMbPVFLvrq0xZWEvl7jtPqSeCrV4MjiG9KRJqM+FopxhvLGX8ia0hoSPB72pjyP4vYQScWb2uId3IVVPt/h4E+jk+/JaB4HJS2hBNqVMXPM4Q9TyDUdTAJ0gD8y1eFtYLNeBzaNoeMy7lnE2P8gKVUpERvf4mBpzuWQjjjVr2XjRqOQEZydIojYwfvVf3MD1VSSf7grTVmJkmHyeBmBlCjDDGY5GtbDnsocLChgmzp8hFGoQI7ELVfJWs1eKHwasAWO2+F3EevrNnYgQ6mE62S9RHc585UuayJdOKkd5ZcqPHTLUSQ1aFw3COgFXyQ8hyTQeMbRvJbdyjG5k18nVqgB7bNELdEvrMpEQ14kAjFfTZn+v8GZYTB6Gp4hpnxFLE/3NEcyXu+ojW2Rjs0PPgjBVwKgQoWVNm7EJXoA/ZbJajTkeWLMEA4Udiz5eQ19bVrwSpGdI0s9R61Aa77YyScyNw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR16MB3502.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(346002)(376002)(396003)(39830400003)(5660300002)(55016003)(66946007)(33656002)(6916009)(38100700002)(71200400001)(3480700007)(2906002)(7696005)(508600001)(52536014)(316002)(38070700005)(9686003)(66446008)(64756008)(86362001)(66556008)(76116006)(8936002)(122000001)(8676002)(83380400001)(26005)(66476007)(6506007)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Tcefghh8erKCyJUjzO7v80QS/s1RkWKEbS0ctuQ7x0NNq0GA5Y4cT3mYa/w6?=
 =?us-ascii?Q?2j78KVxoOa7woeDzmpIT4kRK4a8sZIokTMWEqOCY3ZbcESfcrv6Dbrh+hhEO?=
 =?us-ascii?Q?he96Hgq4N+IYIS9Ku1JHqCmfZRn657EqRMYuq34M7tB3QF+oq8NSW1/eQkJB?=
 =?us-ascii?Q?tuaTZAG8TyyMuyQOpLoKezNTU/N8At2U+ABpQYIpi63wV06rTcRspIHXJd9f?=
 =?us-ascii?Q?DeMf8LgN5ayanh4LgRapq5lyxfxgeGvSPyajYnwR2vGKuA5EuvyeA6w9Gocc?=
 =?us-ascii?Q?mi551jIecc4d0b3TqDbDP3OSE3v3MW96RNOPt2/ablI++JonubxB/MMEsnn7?=
 =?us-ascii?Q?wg9/Z4FrNboI/Q5tEowYDEBGIfs3+3IeGqdfPZ6xvmIkLyQBL1ONrP6P7GRR?=
 =?us-ascii?Q?yaxdMD+6zbz50k9bG3cTDpKMcQ82uJ4MerXs6tP53GZHiAhssQ5O0A/5Pcfl?=
 =?us-ascii?Q?47FIuPGPk8NpFd+NelgHYU4MNI9iW6vH7JMnPhOSrECiRi0ssd7fIrsUh5ie?=
 =?us-ascii?Q?xvWortGF9WcfQYNgyEMXFD6McMHwh6gJX5EtYvZmzHNJQEQTY+ZRfD8obEYz?=
 =?us-ascii?Q?zpDfILhrWHwaSO6ZIYlOXtUyw16UK0dAQiIWY/IVOMF7KV/10TffMCexQqf2?=
 =?us-ascii?Q?ioAsKoKiGUl7hnsdXIW2b0Hn9Ujf4NnF8ozsalUR+oU7bUbPuR3FG6GMFF42?=
 =?us-ascii?Q?DwQ6Qf6JmVlP7X9oJjLDVfScIXOlnOhFUEKo57eGYrSXJB2I1IEgbg9kn7Ji?=
 =?us-ascii?Q?LOHnMikwamwsxLS4yi0rgP0B0luWpAmJEEMh8ytLKiY1r0rQuSEfOiCTKqcC?=
 =?us-ascii?Q?iOsYopXCPi7V+0HAexysgWe4Z5+qbqCSY06Y7DTwdaonYbI6S2x3kKzZ+4nU?=
 =?us-ascii?Q?2bd7qSO/N151uKyFAUbYFBrmwypdTMA/vS2FVb5oHcBpJcUu/9gLUUSETQdO?=
 =?us-ascii?Q?8qGjMiUGHFX36NeUEMns/3H9PP5HpxwfAfE8bnfaSjSfJ0vKBW4lICn12Z5X?=
 =?us-ascii?Q?sIlzCVdyshdnHNidBKrmA0gJ8S09aZeP1duW3Lmu1V7ufAx0l88V08U6IAkk?=
 =?us-ascii?Q?0jqiD24Ht61sHsYBTGtVATlpTE9Y0te3VOhbaQDmZ/kRxJnYWvHC/p8eFkKF?=
 =?us-ascii?Q?/dt8jXkgweKTr+FHuiRb1flFnKrg3bvKSPYlu00P/QJM4jmo7pYoP287piHM?=
 =?us-ascii?Q?vn4uCM8VppocAmM2zD+ltDGu02TyqpItft6bhTLnTb5svbGFScDFQRmCMisC?=
 =?us-ascii?Q?AeRdowBy31uXkIzKLdKDv8HowqY//foPHUxXOEHPn5rkXY3WlJrDPsrRLpRk?=
 =?us-ascii?Q?ByZvtEA1POlZttkdQsCFbmJDBVeyRBWZuF36jpDuJ8+WJbi/ZkiNqVHq62tA?=
 =?us-ascii?Q?agfkcnYFCnIpmVR593el1XJWtmEd1PsVbBDWgwpPw9FczVLIXBoVTX8JskJH?=
 =?us-ascii?Q?08KXLL0PTg9gkaJncphl4RdM6Aj5tp3WvlhwBQtUkFgjfHcFydFd3ZAez8xA?=
 =?us-ascii?Q?C1w2SuIGWuT+Qe9i3BD/90V4nFSp6dDc5/iWarG0etcYQo48iT/FndvwWGt5?=
 =?us-ascii?Q?60UqaVRdxjD2E4rtik8d2cq8s39Czp6T4GAgBSYf8qYmUih7hwn+zJVEB6TE?=
 =?us-ascii?Q?wg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3502.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 162cc36d-e927-4521-c019-08d9b38f19f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2021 23:22:24.5677
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9IIYXrJKmocdnjRQCDVEvzf9+CGNwAdM3jQvX2H1WZAuCUzVkLiOVtI1bheuRY5ygk4aYpf9K0YyafUVx5FBlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR16MB2386
Message-ID-Hash: DGC3NMJ5FZV7KOWUHGE5C33NSLOIXZNN
X-Message-ID-Hash: DGC3NMJ5FZV7KOWUHGE5C33NSLOIXZNN
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP streaming data performance
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KVIOJ5JROXXM7X63YFPUVMXZ53RFIYIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9150065101052319869=="

--===============9150065101052319869==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR16MB350290C9B8C095A24BB79358B9669MN2PR16MB3502namp_"

--_000_MN2PR16MB350290C9B8C095A24BB79358B9669MN2PR16MB3502namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are looking to develop a standalone sdr platform connecting an nVidia Je=
tson AGX Xavier to a USRP X310. The X310 has two dual receiver boards insta=
lled but we are only trying to stream data from one core at this time.

The Xavier is an octacore ARM platform with all cores enabled and running c=
lose to 1.5GHz.
The connection between the two devices is via ethernet running at 1Gbit. Th=
e xavier has a x16 PCIe interface connector and we are using a NIC with 1Gb=
ps SFP module - we intend to run the link at 10Gbit in the future. The onbo=
ard 1Gbps ethernet is connected to our LAN

The Xavier is running ubuntu 18.04 for arm. This is the development platfor=
m that nVidia provides. uhd 4.0.0, gnuradio 3.8 and RfNoC 4 have been insta=
lled on the Xavier.
The Xavier is given a simple flow to run under gnuradio-companion which con=
sists of a USRP Source connected directly to  the QT GUI Frequency sink (or=
 Null Sink)
The network buffers and mtu on the xavier are increased to at least those r=
ecommended.

The result we get is a whole lot of 'D's output if we increase the sample r=
ate beyond 2MSPS.  The same result is found if we run the flow from the com=
mand line (without the gui).

For comparison we have done a similar setup with a USRP E312 - connected to=
 a xavier, a ubuntu 20 virtual machine and directly to a computer running u=
buntu 20.04. In each case when we increase the sample rate beyond 2MSPS we =
get 'O's output.

Can anyone please indicate what setup is required to achieve the 25MSPS tha=
t should be possible across this link?

Thanks in advance

--_000_MN2PR16MB350290C9B8C095A24BB79358B9669MN2PR16MB3502namp_
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-AU" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">We are looking to develop a standalone sdr platform =
connecting an nVidia Jetson AGX Xavier to a USRP X310. The X310 has two dua=
l receiver boards installed but we are only trying to stream data from one =
core at this time.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Xavier is an octacore ARM platform with all core=
s enabled and running close to 1.5GHz.<o:p></o:p></p>
<p class=3D"MsoNormal">The connection between the two devices is via ethern=
et running at 1Gbit. The xavier has a x16 PCIe interface connector and we a=
re using a NIC with 1Gbps SFP module &#8211; we intend to run the link at 1=
0Gbit in the future. The onboard 1Gbps ethernet
 is connected to our LAN <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Xavier is running ubuntu 18.04 for arm. This is =
the development platform that nVidia provides. uhd 4.0.0, gnuradio 3.8 and =
RfNoC 4 have been installed on the Xavier.<o:p></o:p></p>
<p class=3D"MsoNormal">The Xavier is given a simple flow to run under gnura=
dio-companion which consists of a USRP Source connected directly to &nbsp;t=
he QT GUI Frequency sink (or Null Sink)<o:p></o:p></p>
<p class=3D"MsoNormal">The network buffers and mtu on the xavier are increa=
sed to at least those recommended.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The result we get is a whole lot of &#8216;D&#8217;s=
 output if we increase the sample rate beyond 2MSPS. &nbsp;The same result =
is found if we run the flow from the command line (without the gui).<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For comparison we have done a similar setup with a U=
SRP E312 &#8211; connected to a xavier, a ubuntu 20 virtual machine and dir=
ectly to a computer running ubuntu 20.04. In each case when we increase the=
 sample rate beyond 2MSPS we get &#8216;O&#8217;s output.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone please indicate what setup is required to=
 achieve the 25MSPS that should be possible across this link?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
</div>
</body>
</html>

--_000_MN2PR16MB350290C9B8C095A24BB79358B9669MN2PR16MB3502namp_--

--===============9150065101052319869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9150065101052319869==--
