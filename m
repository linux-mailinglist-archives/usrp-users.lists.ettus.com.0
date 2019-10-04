Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95187CC1B9
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2019 19:27:35 +0200 (CEST)
Received: from [::1] (port=38442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iGRMc-0006FG-Dd; Fri, 04 Oct 2019 13:27:34 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:43554)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iGRMY-000673-Df
 for usrp-users@lists.ettus.com; Fri, 04 Oct 2019 13:27:30 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 D28F9C2F6E
 for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2019 17:26:49 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2057.outbound.protection.outlook.com [104.47.32.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us3.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id C710448006A;
 Fri,  4 Oct 2019 17:26:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJkh3jRRnjLuggeiGzl5WFSk0NjqAL8jCUhjDJQOr+K4X97rox5Z7fDo0BQjzWvL5+lOg17KZ07Y7tA9RrGBQDqPRADLlZQgCtO/L+kOtiU2j6cJ9KzZQKKZdK9X+nW5PWJxoiEmPcOlpuNLq9jhTWqvt7m31ty+efK+CGqE9mIP6pWzsRMKCepJ5WEjn6tYpvqpWxZZAaK0h0HR0//69KMCO6DDMs/PEN5IM3gKCiUqv5a1KCGvKBgpetppeMMDXkCOcZt6e6pWL5oS/rZPT8xBaNMpd7FUABc4eNy2K2AABf3HFrAnt/WF4XktXVixw9BAw5wf6sctKnJalEc8mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJBoY/Uf1HEkQhmH5VrvsLIol73D5Gk9nPawRQoXRpg=;
 b=N48ymh48UwC996pyLD5RlpBTFXsmx1rsS+keEtHlXERmN6PrR4x6yg1Bq65GA/XHxyZsXdlnRo3FsHpAeqEGUqK+e8zOMMnt24kOjsBEYGZhUo0qNiKqQRKFqRArq/Tg6/JzaH5/vlrtBxc5s0CuHFXlWu3AYBtvehu0Rnm7vAKLpwb45SLbJsDo1KxN+WMsRJszYBWNGXve4AwW6yi9ZQyYH/NsTwxFH0MCWVpEQY8i/8TDT9HdLm7avG8AyMxJJYNSouU2PaSz61YLUtx2ehmWuSdCvGzEENyhn/XS/NZXB29vKWChLB4yUHmVnmXSIf+ivthF5vz1TpG8myH9xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gJBoY/Uf1HEkQhmH5VrvsLIol73D5Gk9nPawRQoXRpg=;
 b=ffhnNMfrwrenP4eJZBxGcqzyAP57DIMGvUc2zN6uKAdjM1+s1M0RPL3xsavoNOteHwMMsa4KiFT1TVOH3uQJ0JVD7EfLEFvr8jb3o1oI+E06KDYB3lwHstSjqERK656MJakXIsqLfrsCwIFOmyamZ94y9UFfS4m3lA/zjZqpHxo=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2482.namprd12.prod.outlook.com (52.132.9.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 17:26:28 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 17:26:28 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Mark Koenig
 <mark.koenig@iubelttechnologies.com>
Thread-Topic: usrp probe and find commands
Thread-Index: AQHVeteU0A98AhWslUKY/Ax1lUtsf6dKum8o
Date: Fri, 4 Oct 2019 17:26:28 +0000
Message-ID: <BL0PR12MB2340444D469284F01C5F57E8AF9E0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com>
In-Reply-To: <A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffd70911-9e2d-464e-0f02-08d748effd7f
x-ms-traffictypediagnostic: BL0PR12MB2482:
x-microsoft-antispam-prvs: <BL0PR12MB24824E73E010D18085ECA36EAF9E0@BL0PR12MB2482.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(396003)(346002)(39830400003)(136003)(51914003)(199004)(189003)(33656002)(9686003)(476003)(486006)(76176011)(6436002)(11346002)(446003)(6246003)(74316002)(6116002)(2501003)(256004)(3846002)(66066001)(53546011)(52536014)(6506007)(81156014)(71200400001)(71190400001)(105004)(8676002)(229853002)(5660300002)(508600001)(99286004)(64756008)(8936002)(25786009)(19627405001)(110136005)(55016002)(66476007)(316002)(7736002)(66946007)(66446008)(102836004)(66556008)(186003)(7696005)(81166006)(14454004)(76116006)(4744005)(54896002)(26005)(86362001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2482;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pwTwAowtpuMU1HGlZRppPT4qr9YPL8MGZnFIAdpjyjfBhuxcroE5FL1Q59JnHuF+fhjBM0Xi0I2xa6bZA4TnGfyUprcwfR77LYBzcM7qX0ZHGIH9l8yTu9JbUCcMhF1FEEm0O8dgISaqFyhEBVFGNzVWTuLill3fYL4fep0czkUuioxO7ZmBaxc1ze5P4eIEhX6PRFzCJxm/LRcfsQIZdBwV8XqtgsP74Vu9nVE4EhU5GMXDuiEN/uBpESBR+b2lgThdZ3GhtpsOW/ZnDPmJdtBSZk4VuCXVStmSbI2AjzIatIoASEWQdE7pHSPGEAbWY/A97dapmD+46BAnjRuICtq/AOR5JcHSY1Zl5KqF5umYwgjSqrV+2GmXC6Obyg3Hu1xmfi1EIeWciw3IGkQkzH0BJs+og1csbkrZ4oe5xCo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffd70911-9e2d-464e-0f02-08d748effd7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 17:26:28.3011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Ed5nglz4JFSHDYuM8pCRspTFSCBeKm8Q9yUpOnsHFd3tSOA/6zeSU1CbP08QiEZaxfR8LqzmaJxE43gE0EhruDk62WY0o7o5lHxdTgbYgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2482
X-MDID: 1570209999-C4m6hm3W2xRR
Subject: Re: [USRP-users] usrp probe and find commands
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============2059413855231092104=="
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

--===============2059413855231092104==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340444D469284F01C5F57E8AF9E0BL0PR12MB2340namp_"

--_000_BL0PR12MB2340444D469284F01C5F57E8AF9E0BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Is your firewall blocking the port that UHD needs?  I feel like I had a ser=
ial problem in the past and that was the issue.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Mark Koe=
nig via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, October 4, 2019 1:17 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] usrp probe and find commands


Does anyone have any idea why I can only probe my radio if I include the ad=
dress string?



Uhd_usrp_probe --> yields no results



Uhd_usrp_probe =96args =93addr=3D192.168.10.2=94 --> find the radio and yie=
lds results





Also, the uhd_find_devices command does not return anything.



Thanks for the quick feedback.



Mark

--_000_BL0PR12MB2340444D469284F01C5F57E8AF9E0BL0PR12MB2340namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Is your firewall blocking the port that UHD needs?&nbsp; I feel like I had =
a serial problem in the past and that was the issue.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Mark Koenig via USRP-users &l=
t;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, October 4, 2019 1:17 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] usrp probe and find commands</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US" style=3D"background-color:white">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Does anyone have any idea why I can only p=
robe my radio if I include the address string?
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Uhd_usrp_probe </span><span style=3D"font-=
size:11.0pt; font-family:Wingdings">=E0</span><span style=3D"font-size:11.0=
pt"> yields no results</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Uhd_usrp_probe =96args =93addr=3D192.168.1=
0.2=94 </span><span style=3D"font-size:11.0pt; font-family:Wingdings">=E0</=
span><span style=3D"font-size:11.0pt"> find the radio and yields results</s=
pan></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Also, the uhd_find_devices command does no=
t return anything.</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Thanks for the quick feedback.</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Mark</span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340444D469284F01C5F57E8AF9E0BL0PR12MB2340namp_--


--===============2059413855231092104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2059413855231092104==--

