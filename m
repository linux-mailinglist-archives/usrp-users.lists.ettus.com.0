Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D67C37BD0
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 20:05:44 +0200 (CEST)
Received: from [::1] (port=56638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYwlj-0007DP-Ib; Thu, 06 Jun 2019 14:05:43 -0400
Received: from otransport-16.outbound.emailsrv.net ([18.232.37.98]:48264)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hYwle-0006xL-6M
 for usrp-users@lists.ettus.com; Thu, 06 Jun 2019 14:05:38 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-16.outbound.emailsrv.net (Postfix) with ESMTPS id A28B46127C
 for <usrp-users@lists.ettus.com>; Thu,  6 Jun 2019 18:04:57 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2058.outbound.protection.outlook.com [104.47.41.58])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 47FC01E0004
 for <usrp-users@lists.ettus.com>; Thu,  6 Jun 2019 18:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFabDrxAcoOoBIcpM+M0z2XqUEHY8QDh0MGKGg8M9og=;
 b=SEN+UMNKZgpqTqOsnJ8iQuPwlYievgKzpQIC25He5RWKJv2aGXXWR4ftYx3QsBe4lpQErT2zALTrnrTsE4zdp0nT2IHLHIUv83K85/5GN2S9sovYjpiCjajJKykepCI5gY8BaTAWPdGGGKjjRDZ3jCMCGSxOeD613+LzGRrQcy8=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 18:04:53 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1943.023; Thu, 6 Jun 2019
 18:04:53 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: problem with custom E320 FPGA image
Thread-Index: AQHVHJCk5ppGk2QLBUCwi9BaNPeFMg==
Date: Thu, 6 Jun 2019 18:04:53 +0000
Message-ID: <BL0PR12MB23403F712D9336AC115D0073AF170@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2461ad92-3eed-4a87-aa69-08d6eaa979f4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2340; 
x-ms-traffictypediagnostic: BL0PR12MB2340:
x-microsoft-antispam-prvs: <BL0PR12MB2340D4795652FDC4D5FA795BAF170@BL0PR12MB2340.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(136003)(396003)(39830400003)(366004)(189003)(199004)(66066001)(186003)(6606003)(6916009)(14454004)(476003)(26005)(7696005)(68736007)(99286004)(316002)(102836004)(6506007)(6116002)(508600001)(3846002)(2906002)(486006)(33656002)(25786009)(19627405001)(6436002)(8676002)(7736002)(86362001)(5660300002)(71190400001)(14444005)(256004)(73956011)(64756008)(76116006)(8936002)(66556008)(66476007)(66946007)(66446008)(52536014)(55016002)(74316002)(53936002)(81166006)(81156014)(71200400001)(54896002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2340;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 38fULZkx6ZKkJsgUQ80AJE5eRvRIkDxGaa51iF/S0nQ0Amhiqg3RxiTSMWl6562YKhN3o+FI1bxlnwC+JotLyP3q58Ha1OWumZt5kVPJ3iEt2vO6EAS8xXH6jmC2XfE3dH+6oEFw2DSRZm2/zHH1RCUvyQbPkC2T8fJow/bdatOzR7gF8ZyVxp+PEV+Kw8JqLveYBKn5ZL4sSJUev/b8WxbII2pgiJlu2w9z2MfWdfnI3l4iy05vb3GLxhFQcufGlKA+x/p3gSY0GxT/SSqNyoh4yimN+o72giYg6qEYJPNmxOp2FMHQ3DDLt/cd/yr0fXgHx4ccGetfsApx+ViCWSBEUHzfbWFLQGHXvV5g9x/fiI2mLRid9ishDcgot7nrEECTP+VJ3mf3rXNAxPtpbm/7Y66RAm1Qakeu6a0bhS4=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2461ad92-3eed-4a87-aa69-08d6eaa979f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 18:04:53.4055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2340
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-dm3nam03lp2058.outbound.protection.outlook.com|104.47.41.58|NAM03-DM3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.41.58, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-20716-c
X-Mailprotector-ID: d7f8d5aa-fe8f-4e60-96ce-7a67edd818f9
Subject: [USRP-users] problem with custom E320 FPGA image
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
Content-Type: multipart/mixed; boundary="===============6117838410758394125=="
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

--===============6117838410758394125==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23403F712D9336AC115D0073AF170BL0PR12MB2340namp_"

--_000_BL0PR12MB23403F712D9336AC115D0073AF170BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've seen chatter on this around here before (an I think I might have been =
involved with it during my failed N310 project a while back), but I haven't=
 come up with a solution yet.


I have a custom RFNoC bitfile I want to use on the E320.  I set things up a=
nd built it with the mods in rfnoc_ce_auto_inst_e320.v to fix the clk like =
is done in rfnoc_ce_default_inst_e320.v.


It builds fine and I scp it over to the E320.  I then load it up with the c=
ommand: uhd_image_loader --args=3D"type=3De3xx" --fpga-path=3D"/home/root/e=
320.bit"


It acts like everything worked fine, but then when I probe it, it errors ou=
t:

root@ni-e320-318B090:~# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.14.1.HEAD-0-=
g5491b80e
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3De3xx,product=3De320,serial=3D318B090,claimed=3DFalse
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D127.=
0.0.1,product=3De320'.
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1337 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003320)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC0000000000001)
[WARNING] [RFNOC] Can't find a block controller for key keepMinN, using def=
ault block controller!
[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C91927522=
0)
[WARNING] [RFNOC] Can't find a block controller for key keepMinN, using def=
ault block controller!
[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C91927522=
0)
[WARNING] [RFNOC] Can't find a block controller for key SplitStream, using =
default block controller!
[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x575700000000=
0000)
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness=
_t _endianness =3D (uhd::endianness_t)1]
  at /opt/gnuradio/e320/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (C=
E_08_Port_A1) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)1; uint64_t =3D long=
 long unsigned int]
  at /opt/gnuradio/e320/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/SplitStream_0] sr_read64() failed: EnvironmentError: IOError: Block ctr=
l (CE_08_Port_A1) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)1; uint64_t =3D long=
 long unsigned int]
  at /opt/gnuradio/e320/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
root@ni-e320-318B090:~#



I thought that this error was due to the clocks in the inst file being wron=
g, but I've made that mod already.  Any other thoughts?  What is a little w=
eird to me is that it is complaining about CE_08_Port_A1, but I only have 8=
 CEs, so I would have thought my largest one would be CE_07.



--_000_BL0PR12MB23403F712D9336AC115D0073AF170BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I've seen chatter on this around =
here before (an I think I might have been involved with it during my failed=
 N310 project a while back), but I haven't come up with a solution yet.&nbs=
p;&nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I have a custom RFNoC bitfile I w=
ant to use on the E320.&nbsp; I set things up and built it with the mods in=
&nbsp;<span>rfnoc_ce_auto_inst_e320.v to fix the clk like is done in&nbsp;<=
span>rfnoc_ce_default_inst_e320.v.</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>It builds fine and I =
scp it over to the E320.&nbsp; I then load it up with the command:&nbsp;<sp=
an>uhd_image_loader --args=3D&quot;type=3De3xx&quot; --fpga-path=3D&quot;/h=
ome/root/e320.bit&quot;</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span><br>
</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span>It acts like ev=
erything worked fine, but then when I probe it, it errors out:</span></span=
></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span></p>
<div>root@ni-e320-318B090:~# uhd_usrp_probe&nbsp;</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.3.0; Boost_106600; UHD_3=
.14.1.HEAD-0-g5491b80e</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3De3xx,product=3De320,serial=3D318B090,claimed=3DFalse</=
div>
<div>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D127.0.0.1,product=3De320'.</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1337 MB/s)</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003=
320)</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
1)</div>
<div>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
1)</div>
<div>[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC000000000000=
1)</div>
<div>[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC000000000000=
1)</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key keepMinN, usin=
g default block controller!</div>
<div>[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C919=
275220)</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key keepMinN, usin=
g default block controller!</div>
<div>[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C919=
275220)</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key SplitStream, u=
sing default block controller!</div>
<div>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000=
000000000)</div>
<div>[ERROR] [UHD] Exception caught in safe-call.</div>
<div>&nbsp; in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with=
 uhd::endianness_t _endianness =3D (uhd::endianness_t)1]</div>
<div>&nbsp; at /opt/gnuradio/e320/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<=
/div>
<div>this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Bl=
ock ctrl (CE_08_Port_A1) no response packet - AssertionError: bool(buff)</d=
iv>
<div>&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bo=
ol, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1; u=
int64_t =3D long long unsigned int]</div>
<div>&nbsp; at /opt/gnuradio/e320/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142=
</div>
<div><br>
</div>
<div>[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOE=
rror: [0/SplitStream_0] sr_read64() failed: EnvironmentError: IOError: Bloc=
k ctrl (CE_08_Port_A1) no response packet - AssertionError: bool(buff)</div=
>
<div>&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bo=
ol, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1; u=
int64_t =3D long long unsigned int]</div>
<div>&nbsp; at /opt/gnuradio/e320/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142=
</div>
<div><br>
</div>
<div>Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()</div>
<div>root@ni-e320-318B090:~#&nbsp;</div>
<div><br>
</div>
<br>
</span></span></span>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span>I thought that =
this error was due to the clocks in the inst file being wrong, but I've mad=
e that mod already.&nbsp; Any other thoughts?&nbsp; What is a little weird =
to me is that it is complaining about&nbsp;<span style=3D"font-family: Cali=
bri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot=
;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;A=
ndroid Emoji&quot;, EmojiSymbols; font-size: 16px;">CE_08_Port_A1,
 but I only have 8 CEs, so I would have thought my largest one would be CE_=
07.</span></span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span><br>
</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span><br>
</span></span></span></p>
</div>
</body>
</html>

--_000_BL0PR12MB23403F712D9336AC115D0073AF170BL0PR12MB2340namp_--


--===============6117838410758394125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6117838410758394125==--

