Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C03AE1A391F
	for <lists+usrp-users@lfdr.de>; Thu,  9 Apr 2020 19:48:48 +0200 (CEST)
Received: from [::1] (port=48658 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMbIE-0004N5-Ck; Thu, 09 Apr 2020 13:48:46 -0400
Received: from mail-dm6nam10on2063.outbound.protection.outlook.com
 ([40.107.93.63]:11509 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <minutolo@caltech.edu>)
 id 1jMbIA-0004AK-Gu
 for usrp-users@lists.ettus.com; Thu, 09 Apr 2020 13:48:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/DsnVr9gwp219RyDhJcqQFYry74HSgOGuP5nb0Ig/XSXIRtilvvig/iSRZRY7p1Izoyg6wywP0/FYyuoUtxJ/xt1uG1DH/g0NzFPG4s9GAHKkW/XtjCLsRhvM0qPvbCdX83JIjYXTGP70mQtVAPkuyrNBY39ebdpjxQKAGfLaJjkIZcYuJc/IgRl6gU2KZBceiKMj28LL14WibqIT4fAXa/CdLL5MXBiW6dJR9w4J+Qh2EihIx47vraSksA3I7ktWfVRyFfUFx8mLSieTO5lY5VGvg1fuTruw9IMm8neG+rsjLQu6tDquu3pAyTSMT4uH2rGzx/zkLhci+BHchdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzv0duFEeEZ5EotulW9GmzwANZUk4pyoovY2DQjWRno=;
 b=eOkTJocKa5PMbM4MyiK3Ghnk3pI8FvF1LPVJtccRz4vgy+pIZPmOcq3GzgHqD9baElvCF56pKRPMZSlOI96a7cfpMLONig8+wSTwqOoXE6eE9WfxHV6C1eXBTTj8ACKiH+VK04axUZ0FOLWY7CTI698z0HfqmHCtWTZT6DYHZPMPoLBM5ELi1Hvv4rtMzcNQvZFglNgfe5qTKKmDdsEofibJIl29TRiJ/D9L2Tamb40UauUs/dAT2DLkTlb2kjBLd7O281vB64yyoK4jQ0CZq5678wBqk/2FP0bH+6dH+j3DhzlVIAo2roe0QKkgfnen3hxxrz71q11tHNWaaoqn2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzv0duFEeEZ5EotulW9GmzwANZUk4pyoovY2DQjWRno=;
 b=ZXlY6so7Bosqff/TEQyPjn6k78dhD8p6u/A7O7YVu70spEwr/VJwC4mDCAucoXVAJcikaStbyp/6eDAlDoKaZ0z59gu9BjWbmxN1JS2me3bY3kwW3pkSPFSoJi24VwIdzBVEPrZftRl692IutQqv7bbGGGRvVNRbTwEsnwQ1so4=
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BYAPR03MB4486.namprd03.prod.outlook.com (2603:10b6:a03:c8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 9 Apr
 2020 17:48:00 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::74ee:3c4f:9e64:b4ae]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::74ee:3c4f:9e64:b4ae%6]) with mapi id 15.20.2878.023; Thu, 9 Apr 2020
 17:48:00 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Francisco
 Salomon <fsalomon@mathworks.com>
Thread-Topic: E312 fails to run uhd_usrp_probe from host
Thread-Index: AQHWDoyBZqBu4cu+/Uy4/sNpG7j+P6hxD8wx
Date: Thu, 9 Apr 2020 17:48:00 +0000
Message-ID: <BYAPR03MB4678BE943BAAE738CFFB24B4D3C10@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <MN2PR05MB6158024B384B2167EDE0F3A1CCC10@MN2PR05MB6158.namprd05.prod.outlook.com>
In-Reply-To: <MN2PR05MB6158024B384B2167EDE0F3A1CCC10@MN2PR05MB6158.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=minutolo@caltech.edu; 
x-originating-ip: [2600:6c50:4080:32:d1ea:9961:dd9f:9a2c]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 361b0716-f3eb-4a76-9530-08d7dcae259a
x-ms-traffictypediagnostic: BYAPR03MB4486:
x-microsoft-antispam-prvs: <BYAPR03MB448665F5192960F4EAC6C2D5D3C10@BYAPR03MB4486.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR03MB4678.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39860400002)(366004)(396003)(136003)(376002)(346002)(5660300002)(66446008)(55016002)(52536014)(64756008)(66556008)(66476007)(19627405001)(66946007)(8936002)(8676002)(81156014)(81166007)(76116006)(9686003)(7696005)(75432002)(186003)(2906002)(478600001)(71200400001)(33656002)(6506007)(316002)(110136005)(786003)(53546011)(966005)(86362001)(19623455009);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: caltech.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bJa1NYFq8BbwPFunzOR+SRTgnQkUSvDbaeGfdLLLswGmpqwjNM8RQqd4AtjrjDOTNkF2txLzXRmtkyuaWn2RKIl3X72OXlk8X80QnZVOKx4UNPw721Ig9dOoE864lvWfXY7G6ZeApwa03mydQhjw/BSc8fQyA6OHTk3QSFU/BwCt2uGJiHXMUSyePwfP1V9spI3dfyx4rN6R41VZC6DdIZm9VSvxjWYTalRErotH8Qg3cbwfSeprF2s0i9wPH+nU7SGmjKwEHD5a+kRNDZiatW4NwfDGuMEMVhTRM+M9U6L1eeO691TcYyaay2p52Ub+MeYkuhX6fZZtc9dT1luQ4hnTXWpbK1XoRQjb/pBLEfhrVIrBV5wG/DJrNYbpb5ZeWcBg1xjfLdUpwR04tiqW1n3GO1aCqGyjm9uJszWhFGgAM1NzTUpdofJm/Zj2MajWgP/XWdzBV2GMCIWDb7U8W1BZImcLDtHFwxLpPFQAxTGBRrfjAvWwNjPLbuwEFCC7xbXpdSGw96542leQzCRV3GME8MbhzkdDTmNgeIrBImP6ZaDRBVJUumpAidw9qh+Uqd7USmHMhg6FWrEozOqDgg==
x-ms-exchange-antispam-messagedata: QN49paP5WlFTpVEY/rQseDO6N/esBH9SEfSrIki1UTgNofHaMxGAAgfJTnM6bww8qgpgkfoHS26hpUXp1uSkW1Wo9NrwqqEGn80dve6LVv3sI4ZeeAn4a9lXxGePwPGjnFFZXUVqTNqZg9hFOb2+jQI22aOk0146yREMIjiu8Lt7FGrZ+u5wjcDuRhWc70oAkpzwhDbyb6g0FNizSc/KVQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 361b0716-f3eb-4a76-9530-08d7dcae259a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 17:48:00.7643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K8ITA4yxP9qHPC15ySAnqYFiL4AOE1vQPJR5hyFy04VpxAKMZq6GQFoOH2xD/rX3KjS2NCP8Lr4QKRQB2jqBhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4486
Subject: Re: [USRP-users] E312 fails to run uhd_usrp_probe from host
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
From: "Minutolo, Lorenzo via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Content-Type: multipart/mixed; boundary="===============6083662830287119072=="
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

--===============6083662830287119072==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678BE943BAAE738CFFB24B4D3C10BYAPR03MB4678namp_"

--_000_BYAPR03MB4678BE943BAAE738CFFB24B4D3C10BYAPR03MB4678namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Francisco,
I had the same problem with a brand new N321. Deleting, downloading again a=
nd reloading the FPGA image from the host did the trick in my case.
Note: I did't try to reproduce the condition so I'm not 100% sure of validi=
ty of the solution, just saying it's worth a test.

Best,
Lorenzo
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Francisc=
o Salomon via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, April 9, 2020 9:36 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] E312 fails to run uhd_usrp_probe from host

Hi all,
I'm trying uhd_usrp_probe on my host to get information of my E312 (when I =
run it locally on the E312 it's fine), and it fails to get the data with th=
e following error:

me@myhost: ~/rfnoc/uhd$ uhd_usrp_probe --args type=3De3xx,addr=3D192.168.3.=
2
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.15.0.HEAD-0-=
gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.3.2,type=3De3xx,product=3De310_sg3,serial=3D30D84C7,claimed=3DFalse,=
addr=3D192.168.3.2
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[ERROR] [MPMD] Failure during block enumeration: RuntimeError: Error during=
 RPC call to `request_xport'. Error message: rpc::rpc_error during call
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.3.2,product=3De310_sg3'.
[ERROR] [MPM.RPCServer] Uncaught exception in method request_xport :
 Traceback (most recent call last):
  File "/usr/lib/python3.5/site-packages/usrp_mpm/rpc_server.py", line 182,=
 in new_claimed_function
    return function(*args)
  File "/usr/lib/python3.5/site-packages/usrp_mpm/periph_manager/e31x.py", =
line 525, in request_xport
    assert self.mboard_info['rpc_connection'] in ('local')
AssertionError
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

Have you seen this kind of error for E310/E310?
Does E312 accept requests from the host?
I did manage to load the FPGA image from the host by running:
me@myhost:~rfnoc/uhd$ uhd_image_loader --args type=3De3xx,addr=3D192.168.3.=
2

The sdcard image on the E312 is the one from http://files.ettus.com/binarie=
s/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15.0.0.zip=
, and I think the UHD version on the E312 matches the one on the host:
root@ni-e31x-30D84C7:~# uhd_config_info --version
UHD 3.15.0.0-0-gaea0e2de
me@myhost: ~/rfnoc/uhd$  uhd_config_info --version
UHD 3.15.0.HEAD-0-gaea0e2de

Any clue?
Many thanks!

Francisco

--_000_BYAPR03MB4678BE943BAAE738CFFB24B4D3C10BYAPR03MB4678namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Francisco,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I had the same problem with a brand new N321. Deleting, downloading again a=
nd reloading the FPGA image from the host did the trick in my case.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Note: I did't try to reproduce the condition so I'm not 100% sure of validi=
ty of the solution, just saying it's worth a test.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Francisco Salomon via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, April 9, 2020 9:36 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] E312 fails to run uhd_usrp_probe from host</fo=
nt>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Hi all,&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I'm trying uhd_usrp_probe on my host to get information of my E312 (when I =
run it locally on the E312&nbsp;it's fine), and it fails to get the data wi=
th the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span>me@myhost: ~/rfnoc/uhd$&nbsp;</span>uhd_usrp_probe --args type=3De3xx=
,addr=3D192.168.3.2</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 8.3.0; Boost_106700; UHD_3=
.15.0.HEAD-0-gaea0e2de<br>
</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.3.2,type=3De3xx,product=3De310_sg3,serial=3D30D84C7,claimed=3DF=
alse,addr=3D192.168.3.2<br>
</div>
<div>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
</div>
<div>[ERROR] [MPMD] Failure during block enumeration: RuntimeError: Error d=
uring RPC call to `request_xport'. Error message: rpc::rpc_error during cal=
l<br>
</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.3.2,product=3De310_sg3'.<br>
</div>
<div>[ERROR] [MPM.RPCServer] Uncaught exception in method request_xport : <=
br>
</div>
<div>&nbsp;Traceback (most recent call last):<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/rpc_server=
.py&quot;, line 182, in new_claimed_function<br>
</div>
<div>&nbsp; &nbsp; return function(*args)<br>
</div>
<div>&nbsp; File &quot;/usr/lib/python3.5/site-packages/usrp_mpm/periph_man=
ager/e31x.py&quot;, line 525, in request_xport<br>
</div>
<div>&nbsp; &nbsp; assert self.mboard_info['rpc_connection'] in ('local')<b=
r>
</div>
<div>AssertionError</div>
<div>Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Have you seen this kind of error for E310/E310?&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Does E312 accept requests from the host?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
</div>
I did manage to load the FPGA image from the host by running:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span>me@myhost:~rfnoc/uhd$ uhd_image_loader --args type=3De3xx,addr=3D192.=
168.3.2</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
The sdcard image on the E312 is the one from&nbsp;<span style=3D"font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0); background-color:rg=
b(255,255,255); display:inline!important"><a href=3D"http://files.ettus.com=
/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15=
.0.0.zip" id=3D"LPlnk528920" style=3D"">http://files.ettus.com/binaries/cac=
he/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15.0.0.zip</a>,
 and I think</span><span style=3D"font-family:Calibri,Arial,Helvetica,sans-=
serif; font-size:12pt">&nbsp;the UHD version on the E312 matches the one on=
 the host:</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span>root@ni-e31x-30D84C7:~# uhd_config_info --version<br>
</span>
<div>UHD 3.15.0.0-0-gaea0e2de<br>
</div>
<span></span><span>me@myhost: ~/rfnoc/uhd$&nbsp; u<span>hd_config_info --ve=
rsion<br>
</span>
<div>UHD 3.15.0.HEAD-0-gaea0e2de<br>
</div>
<span></span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Any clue?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Many thanks!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Francisco</div>
</div>
</body>
</html>

--_000_BYAPR03MB4678BE943BAAE738CFFB24B4D3C10BYAPR03MB4678namp_--


--===============6083662830287119072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6083662830287119072==--

