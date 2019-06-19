Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 974954C12E
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 21:05:38 +0200 (CEST)
Received: from [::1] (port=50224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdftj-0003mE-4D; Wed, 19 Jun 2019 15:05:31 -0400
Received: from email6-west.aero.org ([130.221.16.31]:33899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=066ce5e05=jessica.iwamoto@aero.org>)
 id 1hdftf-0003fE-9Y
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 15:05:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1560971127; x=1592507127;
 h=from:to:subject:date:message-id:mime-version;
 bh=Hwi8NTwIV0uQVDt6XaVEreU8V1ZRNF6h9jQ2PVjy76Q=;
 b=pBTGD7tayy4dLsZoUqeqcNjBsU8ngEcEqlh8w0wQNuY5kJLOtRTNdhAd
 esbY2pNBEBV7x9chiVPOw5Bkdk0pcGzvdjmA1j6uJgjIxaKP3RGNRMjOU
 osxRcXZ5cHITDTy7wSpOcuCVem0cTkmoBkkN/UvPFg1caav8t3ogE9HqU M=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9293"; a="2231206"
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208,217";a="2231206"
IronPort-PHdr: =?us-ascii?q?9a23=3Ac4nDtRbGCaJw/X9fXPEw+vP/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gCbRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8KavoYjchHc9LEl569nS8LU99EcvkYBvVuHLhpTM=3D?=
X-IPAS-Result: =?us-ascii?q?A2E9AwDchQpdhzI/L2hmHQEBHwUBBgGBTgKBExsCARFQb?=
 =?us-ascii?q?XIDBAsoCodTA4UxiS6VOoYBgSQDGDwJAQEBAQEBAQEBBwEtAgEBAoQ+AoJ8N?=
 =?us-ascii?q?gcOAQMBAQEEAQEBAQQBAgIQAQEBCA0JCCmKPgyDRTkyAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQI4URsTAQE4EQEMdCYBBBsagwABg?=
 =?us-ascii?q?R1NAx0BAqFOAoE4iF4BAYIhgnkBAQWFAxhTgT0JgTICAQEBhG6IRD+BV4dQg?=
 =?us-ascii?q?zqCJot9H4cZPJV4BwKCE1oEhQ6OApc0iXiaDAIEAgQFAg4BAQWBVwmCATMaM?=
 =?us-ascii?q?IMvgluDVopTQTGBKY0LAYEgAQE?=
Received: from mail-dm2gcc01lp2050.outbound.protection.outlook.com (HELO
 GCC01-DM2-obe.outbound.protection.outlook.com) ([104.47.63.50])
 by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-SHA384;
 19 Jun 2019 12:04:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector1-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TVJ0kHQukleRJwHUrMTzJr+I8mN+BRiLvcr4Ay4KYp0=;
 b=LSc2Fdee0MWuph/X2QNjk7xjtHL/yeygUnbKwqGOVwt1+XllUVC/84kaSEi/YXikCBLT95zcIk9IWjhI/DhPOwX8xhFLzBEY5grSf3ZFU+bvcmDgS/jnPks2BFYEbcPWnvmllte0z+urcum+rQ7b9HN0t3KNSoe/WBEpkc/PNEw=
Received: from SN6PR0901MB2318.namprd09.prod.outlook.com (52.132.115.147) by
 SN6PR0901MB2479.namprd09.prod.outlook.com (52.132.117.141) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 19 Jun 2019 19:04:43 +0000
Received: from SN6PR0901MB2318.namprd09.prod.outlook.com
 ([fe80::b5b7:fcc:f8ba:9a3a]) by SN6PR0901MB2318.namprd09.prod.outlook.com
 ([fe80::b5b7:fcc:f8ba:9a3a%7]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 19:04:43 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: RX/TX on 4 channels on N310
Thread-Index: AdUm0GxgSttLBeauSX6yQWz6H3x9ng==
Date: Wed, 19 Jun 2019 19:04:43 +0000
Message-ID: <SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0Flcm9zcGFjZUNvcnAiLCJpZCI6ImM5NjNmMDUwLThiODEtNGZlNS1hODk0LThlNDJjM2MxZjU0NyIsInByb3BzIjpbeyJuIjoiU2Vuc2l0aXZpdHkiLCJ2YWxzIjpbeyJ2YWx1ZSI6Ik5vbmUifV19LHsibiI6IlJlbGVhc2UiLCJ2YWxzIjpbXX0seyJuIjoiT3B0aW9uYWwiLCJ2YWxzIjpbXX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNi41LjExLjQiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ0RiNHd2ZXByaEZkV1VMMHVXTXJTT3dWRHoxckJNcmYydXNhejJHMTJTQT0ifQ==
x-tituslabs-classifications-30: TLPropertyRoot=AerospaceCorp; Sensitivity=None;
x-tituslabs-classificationhash-30: WKDGp7co52bOY5xzjcSTngGGw1C8z8nLaGhfD875/nELBlQ3qwEY891wMWHyqDEH8U9fg3fJF/v7ZNPcCg678gZrfLHex2H8fbAbljAKQF0t3RcifjiFr+jmq45wOAhfLwG5iWBY/rJTq/KVmLmfUphOqQGEcd2u
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jessica.iwamoto@aero.org; 
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd96217d-223e-4dae-17b3-08d6f4e8fd34
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR0901MB2479; 
x-ms-traffictypediagnostic: SN6PR0901MB2479:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <SN6PR0901MB247935F640A9927CE5DD9C069BE50@SN6PR0901MB2479.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(136003)(346002)(376002)(189003)(199004)(7736002)(8676002)(14454004)(25786009)(74316002)(2906002)(6916009)(9326002)(316002)(478600001)(26005)(186003)(33656002)(3846002)(102836004)(44832011)(6116002)(6506007)(86362001)(790700001)(7696005)(476003)(71190400001)(5660300002)(486006)(66476007)(66946007)(4744005)(99286004)(71200400001)(53936002)(66556008)(52536014)(256004)(8936002)(81166006)(9686003)(66446008)(54896002)(81156014)(68736007)(64756008)(6436002)(66066001)(76116006)(6306002)(55016002)(73956011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR0901MB2479;
 H:SN6PR0901MB2318.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JWaLGAufvmUzw81zkJxKl6eiDHEbIvwbUtEKiuCt7r8WkBu4o0WJvRQiFCjMyEM5QB98A2EiyMgUcacpGJbNV/qt3viSBqF69QGnvME3Lj4FAs3fVP/alxaKTCfijFd2lHfnXlDO+fJegI35TtiY421fYjKycC/RGScACIkfCJu2JTwINLSSxDk+nQXhdr/8KvUZTEij4pu9PyI5f74q5NZX5sT/gel5XoGKOUvMk5ei4/EuCa1Eqac63e0xP/ab8UP7iH0TfwNNGapk3dxjIUeJeqj5dvhqcxN7MP4DiWMNg0T0Gnf4AbzAZOWpcd/8TplnhWb1aDMdFhR5ZskyfhofRbJjOJ172ck+wm4Z5JMoBfpAE3DlmSUDGUsbVsnA3EKx98AY5ec69uanWdPrF+GCjZDOnNaGAYHMRPTuy4g=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-Network-Message-Id: dd96217d-223e-4dae-17b3-08d6f4e8fd34
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 19:04:43.6214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E30638@aero.org
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR0901MB2479
Subject: [USRP-users] RX/TX on 4 channels on N310
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
From: Jessica Iwamoto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jessica Iwamoto <jessica.iwamoto@aero.org>
Content-Type: multipart/mixed; boundary="===============0269365381281008997=="
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

--===============0269365381281008997==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50SN6PR0901MB2318_"

--_000_SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50SN6PR0901MB2318_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am getting a lot of underflows when trying to use dual RX/TX on 4 channel=
s on the N310. My application creates one multi_usrp object and 8 streamers=
 (4 RX, 4 TX) each on a different thread. Samples are received from the RX =
threads, put into buffers, and then transmitted in the TX threads. I can ru=
n it on 1 channel and 2 channels, but when I try using more channels, I get=
 a ton of underflows. When I use 2 channels, I also have to specify the sub=
device as "A:0 B:0 A:1 B:1", otherwise I will get a lot of underflows with =
the default subdevice spec of "A:0 A:1 B:0 B:1". I have tried the txrx_loop=
back_to_file example with 4 channels and it works fine, although this examp=
le only uses 2 streamers, each controlling 4 channels. Any suggestions on w=
hat to try to make this work? I am using UHD v3.13.1.0-rc1.

Thanks,

Jessica Iwamoto
Member of Technical Staff
The Aerospace Corporation


--_000_SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50SN6PR0901MB2318_
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am getting a lot of underflows when trying to use =
dual RX/TX on 4 channels on the N310. My application creates one multi_usrp=
 object and 8 streamers (4 RX, 4 TX) each on a different thread. Samples ar=
e received from the RX threads, put
 into buffers, and then transmitted in the TX threads. I can run it on 1 ch=
annel and 2 channels, but when I try using more channels, I get a ton of un=
derflows. When I use 2 channels, I also have to specify the subdevice as &#=
8220;A:0 B:0 A:1 B:1&#8221;, otherwise I will
 get a lot of underflows with the default subdevice spec of &#8220;A:0 A:1 =
B:0 B:1&#8221;. I have tried the txrx_loopback_to_file example with 4 chann=
els and it works fine, although this example only uses 2 streamers, each co=
ntrolling 4 channels. Any suggestions on what
 to try to make this work? I am using UHD<span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:#172B4D;background:white">&=
nbsp;v3.13.1.0-rc1.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jessica Iwamoto<o:p></o:p></p>
<p class=3D"MsoNormal">Member of Technical Staff<o:p></o:p></p>
<p class=3D"MsoNormal">The Aerospace Corporation<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50SN6PR0901MB2318_--


--===============0269365381281008997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0269365381281008997==--

