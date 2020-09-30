Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 049CD27EB17
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 16:39:14 +0200 (CEST)
Received: from [::1] (port=35652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNdGA-000774-0I; Wed, 30 Sep 2020 10:39:10 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:44836)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kNdG5-00071o-LC
 for usrp-users@lists.ettus.com; Wed, 30 Sep 2020 10:39:05 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 077D66A731
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:38:25 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.118])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 E67936007E
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:38:14 +0000 (UTC)
Received: from us1-mdac16-30.ut7.mdlocal (unknown [10.7.66.237])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id E55DA200AD
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:38:14 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.32])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 47B4E4006E
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:38:14 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2050.outbound.protection.outlook.com [104.47.37.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 12895B40066
 for <usrp-users@lists.ettus.com>; Wed, 30 Sep 2020 14:38:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bc0UgL+BqgT/ngGX8LuqJroOkEeEv59KxfY1trwznMsL1Pt+qDFdVUNEPh1/bOG5iq1o2sFeE5Y7ZCdyW+RiOEcJSIJgr8a+cZ2qvfu1hrNbWWlu5vSPwU2c3W2zXT9AVgjvAUrQB3Yt87ccQukcrpxSGTpbmFgrtuemHkqum5xgydb78n3l02fRXR3a9Du5VIG9Q6mmAoDQVAbC5gWEKqsv7K7AEgfhqWR+obfniTw6QT9UozkYaKLWETspU7WvLrB37U8iOPU2+lRN8Q2tAR/DfzhS5O/fO8XLZuxWLSMSPrn5LE6ZuQYG/TcgxMBhOizRgsYLVRT2iGKgz83t6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1JN5WBxWHFfPvfuUdpUoMzmYyCPCY2Fbh6bVK8GxUz8=;
 b=BfzaQWCWWhiLB2AngY5VYrP03f6GuDb/tF23u3wEtEGUc1zgKtpVm909eqLbB9z/UGBErBA+HXgkKz4bx29mmQOLvcHTITXhocC2mNVptNfeyRS5Qu2BGwBvXwuORx6DEDA72bIuD8fli75vVPTWnz705er35IZ9wmyePrY5kwaBEAp566uRMbLto5QOjWYu68nb7taNZc/i8istTOuOaNbmq9cwmWOdOONNYCuiqaVAH5dbryzehsPkQfII6Q+VMRo3ddAHQsuomSYtlJOsycV8+WiHQSwLVRP0JFLqZFI8O75I5gKFeDqtvTI+kHyhlHkmyYVlIr0+a2QaJ1q8gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1JN5WBxWHFfPvfuUdpUoMzmYyCPCY2Fbh6bVK8GxUz8=;
 b=P12ZQyncGwfI4oFlv2Ob5GZ0eaYGuYrqZ0ghqwbY9vQEcU8U6cg3jGtC8ZYMiz5NgJE/UGHEio9O8JnEdShbddEh1dOdqi1mnD1lBhEQ6GwfKo+OmIg2RSz80KwVg+PNBLc24bASEjuItr0U4+lVi1WIJzohhxNfFOor6VPggC0=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3055.namprd12.prod.outlook.com (2603:10b6:208:d2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.35; Wed, 30 Sep
 2020 14:38:05 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5%3]) with mapi id 15.20.3412.029; Wed, 30 Sep 2020
 14:38:05 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Trouble getting custom RFNoC block to work with gnuradio 3.8 /
 uhd 4.0
Thread-Index: AQHWlzD/szRnIpkcgEGMKWhdTurT5A==
Date: Wed, 30 Sep 2020 14:38:05 +0000
Message-ID: <MN2PR12MB3312CE95DBC33D5A21D8F294B8330@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8507471-1a9b-4029-dbf0-08d8654e7148
x-ms-traffictypediagnostic: MN2PR12MB3055:
x-microsoft-antispam-prvs: <MN2PR12MB3055A49679711C067438DE91B8330@MN2PR12MB3055.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PjHvFttyQQqbgSMxS6LuQ/Yttd2GC5XIEEizJ1sbp5ZFaLe8nAHO0g94nfTsiR6ye7zLoh/hjT7D4PmVgEEhvwvDf8J67FFsaRzvf5zGASQDE0JZH9cQM3DEndRzvoUC/Lv8h/pR/Cq0LILGJa6E17yQEc55Ik+NvMfJcJBS+pdGnlztnV726Y2Rraeou334O+uEgow1mG0hV4/aQ63ziIMx8cPhbYli7hZjRJL9v76DyYEV7Q19zR+ERDKbOckGQSYC7WLZnVgv8KqSG1BcgCsN79tJOPKn7yPJiVCyC8QIQ8R5lkADOSwhElGrRTe3sRWzpEZXkbznXgyG8MCPcx74uHFaALKBv8Rug7qMjTasZW9+u/BV+e+YPYuxR/Mh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39830400003)(346002)(136003)(366004)(2906002)(478600001)(6916009)(19627405001)(316002)(186003)(26005)(66946007)(8676002)(55016002)(66476007)(6506007)(66446008)(66556008)(9686003)(64756008)(86362001)(33656002)(83380400001)(71200400001)(7696005)(52536014)(76116006)(8936002)(5660300002)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: f3baOLKdbI1udss076YZV6UuPR8s82t3GEkKrDZsUOGCKb7VhZqSV3CmZ+t0SzhRmEaU+lC9TugUfrZvy5lmaUkWWXhGEDQGc5N3WV775uKqgzAhgPw0OBhkwDoFGlmjswRFEG56drPztDBx1y0RPmu0znwDSedW3Z+8F36OtLAt+tOWfbWUmGRSMn9tYe+Le6YZWFpZV1FP1Dl0kZMlRyU4p/ecm/oH+/kwTkTdEUXSkOCDjPnl7rkDU+9nOTXULOIFT6tA1gcdRZWN/1ZNha+DTKhVHKl0CwyfuHyQmF1q4V6NVv3galZaE3zG0G2G1dZTuHg011eJA4Komvy5vrJkQ/LblzxrUWOjQLKXFNQ35nQfucGKIstyieWeiqD3qL3SpptaCNSrunWYh3YSkMgKmQZTwRgeCDDUCc0h91h3DSO6uoi/2D/I2XH2yVD3E33zWWpB/1R1Hq9VWz937/NCVTZNj84Q+PeGkIgctwsHlTzF7cfiFeH3j9kvQE0xhNeVHQJZQAe9UAFsa8LmMKa3yVeAY+C9/S3qwuwUrceDZ8jt6945Plc86T0WCSp2Ln9HZ2HdEonmy8b/BHQ/NcvUzjhh9fBqDpuZGMkmEAHyoy7ny7+sBS4cF6U5X28xkyGyQ8xedjxQKip2RBOItw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8507471-1a9b-4029-dbf0-08d8654e7148
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2020 14:38:05.2871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 81vXC02maY4+vqS/R00vEzBKP9A3Qgqw9kqv6oYGN3Z/7yj1sskQ+j0Ly4OWTIdlj5vMmsXQle0NBuUSKXLovKn5Z5QDGD2YiCP4NuvSKAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3055
X-MDID: 1601476694-shjEVjjXTYC7
Subject: [USRP-users] Trouble getting custom RFNoC block to work with
 gnuradio 3.8 / uhd 4.0
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
From: Jim Palladino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Palladino <jim@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============3484873068862052608=="
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

--===============3484873068862052608==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312CE95DBC33D5A21D8F294B8330MN2PR12MB3312namp_"

--_000_MN2PR12MB3312CE95DBC33D5A21D8F294B8330MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Several weeks ago I went through the tutorial for producing the example "ga=
in" block using rfnoc 3.8 and uhd 3.15. There were some bumps, but I did ge=
t that working fine. For the past couple weeks, I've been working with UHD =
4.0 and the latest gr-ettus repo.

I posted a question a week or two ago since I couldn't get UHD to recognize=
 my custom block, as UHD doesn't look for the block yml file in the latest =
uhd 4.0 build. It just shows up as "0/Block#0" when probing. Thanks to Wade=
 F. for the quick response to that question and for suggesting I either jus=
t continue OOT and use the "Block" name to interface with it or build in-tr=
ee for now. I chose to stick with OOT and just use the "Block" naming.

I started with the gain example, but ended up simplifying it to literally j=
ust using what was generated by rfnocmodtool (just a pass through block in =
the FPGA) with no modifications. I made an rfnoc block, called "Block". I b=
uilt this for an E320, so I did have to modify the "XXX_x310_rfnoc_image_co=
re.yml" file accordingly.

I built/installed everything, but this is what is happening. When I create =
a gnuradio-companion "waveform", it does run, but I get the following behav=
ior:

1) If my setup is RFNoC_RX_Radio -> RFNoC_DDC_Block -> RFNoC_Block -> RFNoC=
_RX_Streamer -> QT_GUI_Freq_Sink:

Everything runs, but the following repeats over and over and the output plo=
t doesn't change:
----
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.
----

I put in some ILA probes and it seems that "ep4_to_xb_tready" is stuck low.=
 ep4 is the endpoint tied to the in and out of my custom "Block." I'm guess=
ing it didn't start low but a FIFO or something filled up somewhere.

I should mention that if I use this same setup, but remove my custom RFNoC_=
Block and directly connect the DDC to the RX_Streamer, everything works fin=
e. No errors, the spectrum looks fine, etc.


2) If my setup is Constant_Source(set to 4+9j) -> RFNoC_TX_Streamer -> RFNo=
C_Block -> RFNoC_RX_Streamer -> QT_GUI_Time_Sink:

Everything runs and I do not have a problem with any gnuradio warnings. Als=
o, TReady is high the entire time. But, the output plot for I and Q sit mos=
tly constant stuck at "1", with non-periodic blips down to "0". I'm not see=
ing the complex constant I set in gnuradio. If I look at the payload_tdata =
in an ILA for my "Block" when tvalid is high and tready is high, I see that=
 the data is sitting at 0x7fff7fff except when TLAST is high, tdata switche=
s to 0xfffc7ff7.

I'm at a bit of a loss trying to figure out what is happening. Could it be =
that UHD is not interfacing properly to my block (given that UHD doesn't lo=
ok for my OOT yml file)? I did not change any block controller code or anyt=
hing else. Oh, and the user_register that is included as part of the defaul=
t design designated by rfnocmodtool seems to work fine. I can change the re=
gister value in gnuradio and I can see it change appropriately via and ILA.

For reference, this is what I've been working with:
1) UHD (v4.0.0.0 tag)
2) gnuradio (3.8.2.0 tag)
3) gr-ettus (maint-3.8-uhd4.0 branch)

RFNoC is new to me, so any thoughts on what could be wrong or how I could g=
o about debugging this would be greatly appreciated. Hopefully, I'm just mi=
ssing something simple.

Thanks,
Jim


--_000_MN2PR12MB3312CE95DBC33D5A21D8F294B8330MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Several weeks ago I went through the tutorial for producing the example &qu=
ot;gain&quot; block using rfnoc 3.8 and uhd 3.15. There were some bumps, bu=
t I did get that working fine. For the past couple weeks, I've been working=
 with UHD 4.0 and the latest gr-ettus repo.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I posted a question a week or two ago since I couldn't get UHD to recognize=
 my custom block, as UHD doesn't look for the block yml file in the latest =
uhd 4.0 build. It just shows up as &quot;0/Block#0&quot; when probing. Than=
ks to Wade F. for the quick response to that
 question and for suggesting I either just continue OOT and use the &quot;B=
lock&quot; name to interface with it or build in-tree for now. I chose to s=
tick with OOT and just use the &quot;Block&quot; naming.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I started with the gain example, but ended up simplifying it to literally j=
ust using what was generated by rfnocmodtool (just a pass through block in =
the FPGA) with no modifications. I made an rfnoc block, called &quot;Block&=
quot;. I built this for an E320, so I did
 have to modify the &quot;XXX_x310_rfnoc_image_core.yml&quot; file accordin=
gly.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I built/installed everything, but this is what is happening. When I create =
a gnuradio-companion &quot;waveform&quot;, it does run, but I get the follo=
wing behavior:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
1) If my setup is RFNoC_RX_Radio -&gt; RFNoC_DDC_Block -&gt; RFNoC_Block -&=
gt; RFNoC_RX_Streamer -&gt; QT_GUI_Freq_Sink:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Everything runs, but the following repeats over and over and the output plo=
t doesn't change:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
----</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
<div>[ERROR] [STREAMER] The receive transport caught a value exception.<br>
</div>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
<div>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received erro=
r ERROR_CODE_BAD_PACKET (Code: 0xf)</div>
<div>[ERROR] [STREAMER] The receive transport caught a value exception.</di=
v>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
----<br>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I put in some ILA probes and it seems that &quot;ep4_to_xb_tready&quot; is =
stuck low. ep4 is the endpoint tied to the in and out of my custom &quot;Bl=
ock.&quot; I'm guessing it didn't start low but a FIFO or something filled =
up somewhere.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I should mention that if I use this same setup, but remove my custom RFNoC_=
Block and directly connect the DDC to the RX_Streamer, everything works fin=
e. No errors, the spectrum looks fine, etc.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
2) If my setup is Constant_Source(set to 4+9j) -&gt; RFNoC_TX_Streamer -&gt=
; RFNoC_Block -&gt; RFNoC_RX_Streamer -&gt; QT_GUI_Time_Sink:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Everything runs and I do not have a problem with any gnuradio warnings. Als=
o, TReady is high the entire time. But, the output plot for I and Q sit mos=
tly constant stuck at &quot;1&quot;, with non-periodic blips down to &quot;=
0&quot;. I'm not seeing the complex constant I set in
 gnuradio. If I look at the payload_tdata in an ILA for my &quot;Block&quot=
; when tvalid is high and tready is high, I see that the data is sitting at=
 0x7fff7fff except when TLAST is high, tdata switches to 0xfffc7ff7.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm at a bit of a loss trying to figure out what is happening. Could it be =
that UHD is not interfacing properly to my block (given that UHD doesn't lo=
ok for my OOT yml file)? I did not change any block controller code or anyt=
hing else. Oh, and the user_register
 that is included as part of the default design designated by rfnocmodtool =
seems to work fine. I can change the register value in gnuradio and I can s=
ee it change appropriately via and ILA.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
For reference, this is what I've been working with:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
1) UHD (v4.0.0.0 tag)</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
2) gnuradio (3.8.2.0 tag)</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
3) gr-ettus (maint-3.8-uhd4.0 branch)</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
RFNoC is new to me, so any thoughts on what could be wrong or how I could g=
o about debugging this would be greatly appreciated. Hopefully, I'm just mi=
ssing something simple.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR12MB3312CE95DBC33D5A21D8F294B8330MN2PR12MB3312namp_--


--===============3484873068862052608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3484873068862052608==--

