Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC61128ED3
	for <lists+usrp-users@lfdr.de>; Sun, 22 Dec 2019 17:12:18 +0100 (CET)
Received: from [::1] (port=52940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ij3q3-000501-NY; Sun, 22 Dec 2019 11:12:15 -0500
Received: from mail-eopbgr20080.outbound.protection.outlook.com
 ([40.107.2.80]:63301 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Roman.Melnikov@verint.com>)
 id 1ij3pz-0004pw-Go
 for usrp-users@lists.ettus.com; Sun, 22 Dec 2019 11:12:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuo2RKtZjkGQCzrLjUjN6WBp+rM/YRhpPid/lQzFIBfc198pSleN7RGKzsFlRdCo1AClEOHmY+JTdUqy7TPf2Mv7LrOfdSKAyJBrkp8Qx22OJmvJHpV0YX/sUtfLTGsdOOUgwXP5pXP+2szROJfJZ39d5v0ESOLwA9POfvQMz54+L/mgX31hnrqtAPqdT8gIDlnOPFGGJfr91NlPxNnkpNs11YyrifRZMbfLaxSZ7NIzUflwS3zM9Mz9RDGQMQZuuvEsG1yZZxfTqRQDmqp3WuzmG4nx88lj8Z25YnuYbuRzIepnSEPmk7zSEX1HXYfCkPpVByet5ES1uMateTmexg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7NqvF9VusyzIUzCt8i7u8hsVmgamkrM5XZRckpgtHk=;
 b=HVhW7PWrDnAixJLdmn9G+r9h3EJuwgFwsEn1qIJJczB37ZAW4K5qYS9aVB74MzEhT/f17yRwSQ2THSbcK8E0LZ3ZBQn+n52MFJ+XIHDpdGP6APQ0UmCDp6sg23kJVQd9RoiDZMDrsBQgpfv/hw9OqbdFP8Pc0DXviogLlDGLSTIKqem0ty/uF3uKb4N1/4vbf8WlKOgBFNrsAbRy6t4YGpMRNLldf7pH1PlP/JTSdb4XgCjoNTwDbW0VA0BPnv5P7MeEEvcVrWbKjvfofZ6yyzDN+hUZS2dwynBxS4QETAIOasUaRepunaexzIacRWdpeTEOAmaDt2Yy7ibFOt4Jvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.27.93.20) smtp.rcpttodomain=lists.ettus.com smtp.mailfrom=verint.com;
 dmarc=bestguesspass action=none header.from=verint.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verint.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7NqvF9VusyzIUzCt8i7u8hsVmgamkrM5XZRckpgtHk=;
 b=lvEVO/jznJ494mzesAhnpPNZrcopzjQMBBLpY1gZJ+W0Pgbw0h3hidqFowby/RrkQy3BiYinsywpNpRMllABSKJ3kl+pfXKRnzNtpnFNGB0YrMGi7s4s0VrxH7qOXqune4pq68ICDLOMPjf3JcUSzAQfwb6vHKa7fwx1A35Yn1U=
Received: from AM5PR0102CA0020.eurprd01.prod.exchangelabs.com
 (2603:10a6:206::33) by DB7PR01MB4729.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:63::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Sun, 22 Dec
 2019 16:11:27 +0000
Received: from DB5EUR01FT003.eop-EUR01.prod.protection.outlook.com
 (2a01:111:f400:7e02::202) by AM5PR0102CA0020.outlook.office365.com
 (2603:10a6:206::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Sun, 22 Dec 2019 16:11:27 +0000
Authentication-Results: spf=pass (sender IP is 193.27.93.20)
 smtp.mailfrom=verint.com; lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=bestguesspass action=none
 header.from=verint.com;
Received-SPF: Pass (protection.outlook.com: domain of verint.com designates
 193.27.93.20 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.27.93.20; helo=mail.verint.com;
Received: from mail.verint.com (193.27.93.20) by
 DB5EUR01FT003.mail.protection.outlook.com (10.152.4.101) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 16:11:26 +0000
Received: from TLVPEXCH1.Verint.Corp.Verintsystems.com (10.61.241.30) by
 TLVPEXCH1.verint.corp.verintsystems.com (10.61.241.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.1847.3; Sun, 22 Dec 2019 18:11:26 +0200
Received: from TLVPEXCH1.Verint.Corp.Verintsystems.com ([10.61.241.30]) by
 TLVPEXCH1.verint.corp.verintsystems.com ([10.61.241.30]) with mapi id
 15.01.1847.003; Sun, 22 Dec 2019 18:11:26 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP B205 mini + uhd::usrp::multi_usrp_uhd + multithreading 
Thread-Index: AdW44hysSz94NxP/TDODMk9P27Y5bQ==
Date: Sun, 22 Dec 2019 16:11:25 +0000
Message-ID: <14079f7f31174b1092aa00039ba9602b@verint.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.61.241.83]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.27.93.20; IPV:; CTRY:IL; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(53754006)(199004)(189003)(24736004)(81166006)(2906002)(336012)(86362001)(356004)(8676002)(8936002)(81156014)(2616005)(108616005)(70206006)(36906005)(70586007)(5660300002)(316002)(478600001)(36756003)(4743002)(186003)(6916009)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR01MB4729; H:mail.verint.com; FPR:;
 SPF:Pass; LANG:en; PTR:bzq-193.27.93-20.bgp.bezeqint.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3da2f419-304e-4277-8fe1-08d786f9991f
X-MS-TrafficTypeDiagnostic: DB7PR01MB4729:
X-Microsoft-Antispam-PRVS: <DB7PR01MB47299E138B2C7CAAEAD2E485E72F0@DB7PR01MB4729.eurprd01.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 02596AB7DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j5vs3t6FIN9dNb4NrZ7HKDBzR2Bwgc9X4A1QN3PqLh/ycxdcR4vkYw72aWjkhx2W1EHIgK0V8Kp5qLFluiYRH0KKYlfAX2bLW5PDDnktM4PQVZkyF+eqLWeOwgWe3TiGllBQNWYjTOrLyI5oBSxVQBqRASKFbCHiR0pZHH+erICxYuKVbb8G+4uzYqAHF0fVHy6TPlwceu+7gTVXRwEfl7vdc8XAqb0xZOIcXxe203gwbzu+B2A9wVwDUVtoSrfcADBXaGkXndB0uyosUvCiQzRZ6bOQx/SX5crxsIXFCoEHbeqHPGjD3hBN4c4D12Yv7oSTGwcktkzGlIppacTGM36CV2uw8ecRIKsLVrbozxhvxXNkMb7sEdRhvVPXz7cc0WYfAb9X41mBrD3CP5ohEPGKwXbchamR3zxyunGNQHW2ZDI12NXyU6wF69Sn5RYjmtTbhSEhJHGwkpH7Bht1bQS083Y1NUjHqGFuyJXB+jqD3WrufWwb187405+0HCp7
X-OriginatorOrg: verint.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2019 16:11:26.8394 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3da2f419-304e-4277-8fe1-08d786f9991f
X-MS-Exchange-CrossTenant-Id: bb2ed304-4099-49cf-b081-cbb7a3a580ca
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bb2ed304-4099-49cf-b081-cbb7a3a580ca; Ip=[193.27.93.20];
 Helo=[mail.verint.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR01MB4729
Subject: [USRP-users] USRP B205 mini + uhd::usrp::multi_usrp_uhd +
 multithreading
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Melnikov, Roman via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Melnikov, Roman" <Roman.Melnikov@verint.com>
Content-Type: multipart/mixed; boundary="===============3800860966834121091=="
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

--===============3800860966834121091==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_14079f7f31174b1092aa00039ba9602bverintcom_"

--_000_14079f7f31174b1092aa00039ba9602bverintcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I have 8 b205mini devices, and I use uhd::usrp::multi_usrp::make(...)

I try to read from each device from different thread

When I run the profiler what I see is that libusb has single thread that do=
 polling !

When I run 8 applications each in different process my performance is OK. S=
ince I really have multiple contexts ( libusb polling ) receiving data.

Here is peace of code I run for each USRP device:

sprintf ( args,
              "type=3Db200,enable_user_regs,serial=3D%X,master_clock_rate=
=3D%d,recv_buff_size=3D%d,fpga=3D%s",
              this->Id,
              ( int ) MaxMasterClockRate,
              ( int ) RECV_BUFFER_SIZE_BYTES,
              fpga_path );

_usrp =3D uhd::usrp::multi_usrp::make ( uhd::device_addr_t ( args ) );

// configuration ....

_stream =3D _usrp->get_rx_stream ( stream_args );

I have 8 streamers objects each in its own thread, doing

_stream->recv ( ... ) call

Will appreciate any help.

Roma M.




This electronic message may contain proprietary and confidential informatio=
n of Verint Systems Inc., its affiliates and/or subsidiaries. The informati=
on is intended to be for the use of the individual(s) or entity(ies) named =
above. If you are not the intended recipient (or authorized to receive this=
 e-mail for the intended recipient), you may not use, copy, disclose or dis=
tribute to anyone this message or any information contained in this message=
. If you have received this electronic message in error, please notify us b=
y replying to this e-mail.

--_000_14079f7f31174b1092aa00039ba9602bverintcom_
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone, <o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have 8 b205mini devices, and =
I use uhd::usrp::multi_usrp::make(&#8230;)
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I try to read from each device =
from different thread
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run the profiler what I =
see is that libusb has
<span style=3D"background:yellow;mso-highlight:yellow">single</span> thread=
 that do polling !
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run 8 applications each =
in different
<span style=3D"background:yellow;mso-highlight:yellow">process</span> my pe=
rformance is OK. Since I really have multiple contexts ( libusb polling ) r=
eceiving data.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Here is peace of code I run for=
 each USRP device:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sprintf ( args,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;type=3Db200,enable_us=
er_regs,serial=3D%X,master_clock_rate=3D%d,recv_buff_size=3D%d,fpga=3D%s&qu=
ot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this-&gt;Id,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( int ) MaxMasterClockRate,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( int ) RECV_BUFFER_SIZE_BY=
TES,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fpga_path );<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_usrp =3D uhd::usrp::multi_usrp=
::make ( uhd::device_addr_t ( args ) );<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">// configuration &#8230;. <o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_stream =3D _usrp-&gt;get_rx_st=
ream ( stream_args );<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have 8 streamers objects each=
 in its own thread, doing
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_stream-&gt;recv ( &#8230; ) ca=
ll <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Will appreciate any help.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Roma M. &nbsp;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
<br>
<br>
This electronic message may contain proprietary and confidential informatio=
n of Verint Systems Inc., its affiliates and/or subsidiaries. The informati=
on is intended to be for the use of the individual(s) or entity(ies) named =
above. If you are not the intended
 recipient (or authorized to receive this e-mail for the intended recipient=
), you may not use, copy, disclose or distribute to anyone this message or =
any information contained in this message. If you have received this electr=
onic message in error, please notify
 us by replying to this e-mail.
</body>
</html>

--_000_14079f7f31174b1092aa00039ba9602bverintcom_--


--===============3800860966834121091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3800860966834121091==--

