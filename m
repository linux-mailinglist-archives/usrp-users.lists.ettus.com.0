Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3029D1A381E
	for <lists+usrp-users@lfdr.de>; Thu,  9 Apr 2020 18:37:44 +0200 (CEST)
Received: from [::1] (port=38146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMaBP-0003yp-8r; Thu, 09 Apr 2020 12:37:39 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:36926
 helo=us-smtp-delivery-1.mimecast.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
 (Exim 4.93) (envelope-from <fsalomon@mathworks.com>)
 id 1jMaBL-0003rR-AG
 for usrp-users@lists.ettus.com; Thu, 09 Apr 2020 12:37:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mathworks.com;
 s=mimecast20180117; t=1586450214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=kJ2BXvK7JFCCTUtTUu5f6gHbhqTZFsPWv1rdDN4KCGY=;
 b=UfGXConwffL7MJLjo2m13Hg4dUW/AIXpxrPA4C97nxtVSCYq3fPhLdDBoO7rZJfF1rXrIJ
 t0l9KZIi+lxYQPFVFTgoE/jnI/JMMVhKVIpLOvZl2XbB7dM/JaJw943wS2Piv+qZ5DY4P0
 Y5lsWGdr4yt5RWJkuZWLLL1U89C+dLk=
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
 (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-1fTJdvneMzi5hq579X8UjA-1; Thu, 09 Apr 2020 12:36:52 -0400
X-MC-Unique: 1fTJdvneMzi5hq579X8UjA-1
Received: from MN2PR05MB6158.namprd05.prod.outlook.com (2603:10b6:208:d2::30)
 by MN2PR05MB6430.namprd05.prod.outlook.com (2603:10b6:208:da::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.13; Thu, 9 Apr
 2020 16:36:49 +0000
Received: from MN2PR05MB6158.namprd05.prod.outlook.com
 ([fe80::cc14:becb:bf4b:ca51]) by MN2PR05MB6158.namprd05.prod.outlook.com
 ([fe80::cc14:becb:bf4b:ca51%6]) with mapi id 15.20.2900.012; Thu, 9 Apr 2020
 16:36:49 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E312 fails to run uhd_usrp_probe from host
Thread-Index: AQHWDoyBZqBu4cu+/Uy4/sNpG7j+Pw==
Date: Thu, 9 Apr 2020 16:36:48 +0000
Message-ID: <MN2PR05MB6158024B384B2167EDE0F3A1CCC10@MN2PR05MB6158.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2.29.222.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7757d4e2-e15b-4553-6972-08d7dca43356
x-ms-traffictypediagnostic: MN2PR05MB6430:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR05MB64301A0168F1E0B3F930B445CCC10@MN2PR05MB6430.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR05MB6158.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(366004)(346002)(39860400002)(6506007)(7696005)(8676002)(186003)(55016002)(86362001)(81156014)(33656002)(9686003)(2906002)(64756008)(71200400001)(66446008)(19627405001)(966005)(81166007)(316002)(76116006)(52536014)(8936002)(66946007)(5660300002)(66476007)(66556008)(478600001)(6916009)(26005)(19623455009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LDGNNld6iS/EN6Y1SHud1b23ovHg7DRT5V81+SObeFTsk7x9EXbooTsYqOSOww4hpw2ocdLAzwIfRY8nVENADhtWIwlCvrC9smLajrkcu3lyLDoyExmMI0HOA9jgNQ8PrRrN4ENACs9zkMwdAsl+rLK2arA+4CKHqT9+orfm5lemVwAqKYwWYup0JtjG2Kqq95WwpL1GcI7+d22KXzEmmJ0u2iKFosSIpUo1yMcmCTQAfcu+rc5HJMxYbYTic42YOaHg+MfFKx9YC1Dpkxd/SQW/d6SylPl7gqDOCDebpsR0UnIQICel1rNeehbFF7Q63X+jAGROr2x1A4IFFgtfh3N8apN89Qtei4f8eTcKbGUM3eBfiVCmAcpNWKVWonJS1rLNqdCroCXVJ+6HQZOZphcMhjSx2j8qfWOggnj0Z2ySQEeH6t/9R2pYnAv3Tu5ulTlkIi8j1+z41suvs9WNb5ZgKz746kibo03KTUFIG+3GYuaDBnFH4qY6aPyEE5HqRehjof0S1RgOOvuQDYAg6wDjHFEJ1k6xyVeG5mkS/qpJR9tNHvuLsQK1xfttgfy+bULq+xQA4VbhOr/ukyTdCQ==
x-ms-exchange-antispam-messagedata: d8U966HCfzjtjrTOX+W/BM/Bp2bGyUfjudoE1Vm6eB+woFtmJXA+IDneXDtxjfDypKAsFn3JnCNhGyLOjfYabQQ25gNVtUqkt9s3gDQuaz1fl1y/vb2h55w1rt6xckBA37yNjMfccrSVVIIbKuqlQw==
MIME-Version: 1.0
X-OriginatorOrg: mathworks.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7757d4e2-e15b-4553-6972-08d7dca43356
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 16:36:48.9563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99dd3a11-4348-4468-9bdd-e5072b1dc1e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V9joU+uB2uW0atSbd+jYc4eAcUpGFm50WVs7PYQbzDOpE0o87yQcTOv4KRCHqumpqJn4jee6n4OEwVIqKgJyxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6430
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mathworks.com
Subject: [USRP-users] E312 fails to run uhd_usrp_probe from host
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
From: Francisco Salomon via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francisco Salomon <fsalomon@mathworks.com>
Content-Type: multipart/mixed; boundary="===============7528701192393742126=="
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

--===============7528701192393742126==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MN2PR05MB6158024B384B2167EDE0F3A1CCC10MN2PR05MB6158namp_"

--_000_MN2PR05MB6158024B384B2167EDE0F3A1CCC10MN2PR05MB6158namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

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

--_000_MN2PR05MB6158024B384B2167EDE0F3A1CCC10MN2PR05MB6158namp_
Content-Type: text/html; charset=WINDOWS-1252
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi all,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I'm trying uhd_usrp_probe on my host to get information of my E312 (when I =
run it locally on the E312&nbsp;it's fine), and it fails to get the data wi=
th the following error:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<span>me@myhost: ~/rfnoc/uhd$&nbsp;</span>uhd_usrp_probe --args type=3De3xx=
,addr=3D192.168.3.2</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Have you seen this kind of error for E310/E310?&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Does E312 accept requests from the host?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
</div>
I did manage to load the FPGA image from the host by running:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<span>me@myhost:~rfnoc/uhd$ uhd_image_loader --args type=3De3xx,addr=3D192.=
168.3.2</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
The sdcard image on the E312 is the one from&nbsp;<span style=3D"font-famil=
y: Calibri, Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); background-c=
olor: rgb(255, 255, 255); display: inline !important;"><a href=3D"http://fi=
les.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_=
default-v3.15.0.0.zip" style=3D"" id=3D"LPlnk528920">http://files.ettus.com=
/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg3_sdimg_default-v3.15=
.0.0.zip</a>,
 and I think</span><span style=3D"font-family: Calibri, Arial, Helvetica, s=
ans-serif; font-size: 12pt;">&nbsp;the UHD version on the E312 matches the =
one on the host:</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Any clue?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Many thanks!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Francisco</div>
</body>
</html>

--_000_MN2PR05MB6158024B384B2167EDE0F3A1CCC10MN2PR05MB6158namp_--



--===============7528701192393742126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7528701192393742126==--


