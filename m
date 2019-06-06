Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EEB37D98
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 21:50:12 +0200 (CEST)
Received: from [::1] (port=55190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYyOh-0005l6-UQ; Thu, 06 Jun 2019 15:50:03 -0400
Received: from otransport-24.outbound.emailsrv.net ([107.23.53.12]:59025)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hYyOd-0005en-W9
 for usrp-users@lists.ettus.com; Thu, 06 Jun 2019 15:50:00 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-24.outbound.emailsrv.net (Postfix) with ESMTPS id 818E3616E0
 for <usrp-users@lists.ettus.com>; Thu,  6 Jun 2019 19:49:19 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2056.outbound.protection.outlook.com [104.47.38.56])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 309851E000C
 for <usrp-users@lists.ettus.com>; Thu,  6 Jun 2019 19:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqOANPEjOl26C20JDcx+3klFRG2/5JbGiJUpYjSFcc8=;
 b=DyayGq2uclqxCRNQUUJCDuCrRy6sbQHV1H7+AVf+XzwZikEdrL8cjP3jnAk3q70WkurH3HbhqyLRiumg6ZyG18+w0TEMxLWqYpnJB3knNGW99uPtoCs1WeDX/v2k8C/lwOBpTGIKryVPWEzQZvg9V8ATNhneqR7VJe6oqZi9IwU=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2419.namprd12.prod.outlook.com (52.132.11.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 19:49:16 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1943.023; Thu, 6 Jun 2019
 19:49:16 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: problem with custom E320 FPGA image
Thread-Index: AQHVHJCk5ppGk2QLBUCwi9BaNPeFMqaPCC6Y
Date: Thu, 6 Jun 2019 19:49:16 +0000
Message-ID: <BL0PR12MB234002770DDA511136DE2539AF170@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB23403F712D9336AC115D0073AF170@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23403F712D9336AC115D0073AF170@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0c38e97-78a9-44bd-31ce-08d6eab80f28
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2419; 
x-ms-traffictypediagnostic: BL0PR12MB2419:
x-microsoft-antispam-prvs: <BL0PR12MB24198CDE9CEC0CA88CCA3AF1AF170@BL0PR12MB2419.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(366004)(39830400003)(376002)(396003)(199004)(189003)(6606003)(55016002)(68736007)(6436002)(99286004)(486006)(476003)(54896002)(11346002)(446003)(6246003)(14444005)(76176011)(6506007)(256004)(229853002)(33656002)(7696005)(86362001)(53936002)(14454004)(316002)(508600001)(53546011)(5660300002)(9686003)(71190400001)(6916009)(71200400001)(52536014)(8676002)(81156014)(19627405001)(8936002)(81166006)(66946007)(66446008)(73956011)(66476007)(66556008)(66066001)(64756008)(2940100002)(76116006)(7736002)(74316002)(3846002)(6116002)(102836004)(26005)(186003)(2906002)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2419;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6nfGBSIM9OJ3Rpb/fwDeelUr6SoH04EjD9a3FkvG6U6cJbLVDsPoScn1J0no12RAqQjIP2G0xpkeNom5WAlMI26CdjP/hgdVs/0d0EPR/JSR4zda9i1VL/YKa0Dd4A2dJgrDQ8phsDOzlUWCOmjfreUk2NgPBDeV920Ng4NJPUiL+IJDWdU2ZqwMGGYZ8txjiaiLWj9Ktx3wuDaCMDMhPG+0lPjsK4oWcm9PiRUxABc6T0k+n2qYJADkMfZfl16NbRfJ0yk8hBC/ngn46Q4uar0VH/rtxUpYW8oSUix2Sn0hwO0uR6FHP4MR6RmSENd/pxmHbMWP3uHMxaGdvcz15eHJ9LiIPZP0F1z+2EbPeJo7QO8n+7nxPqfZ/XdT4bRAUgjHe7gzeQpktAKnVeVXO1+AM4z2b5MrSRZEDwYm3OY=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0c38e97-78a9-44bd-31ce-08d6eab80f28
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 19:49:16.7089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2419
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bl2nam02lp2056.outbound.protection.outlook.com|104.47.38.56|NAM02-BL2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.38.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-23390-c
X-Mailprotector-ID: ad6d2474-b1c0-4db9-9c8c-f043287ef5b3
Subject: Re: [USRP-users] problem with custom E320 FPGA image
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
Content-Type: multipart/mixed; boundary="===============9002466642877077978=="
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

--===============9002466642877077978==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234002770DDA511136DE2539AF170BL0PR12MB2340namp_"

--_000_BL0PR12MB234002770DDA511136DE2539AF170BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I figured it out.  The problem was that in noc_block_split_stream.v, rb_stb=
 was set to 1'b1 in the noc_shell instantiation.


I changed it to  ".rb_stb({NUM_OUTPUTS{1'b1}})" and it seems to have build =
OK.


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jason Ma=
tusiak via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, June 6, 2019 2:04 PM
To: Ettus Mail List
Subject: [USRP-users] problem with custom E320 FPGA image


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



--_000_BL0PR12MB234002770DDA511136DE2539AF170BL0PR12MB2340namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I figured it out.&nbsp; The probl=
em was that in noc_block_split_stream.v, rb_stb was set to 1'b1 in the noc_=
shell instantiation.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I changed it to&nbsp;<span>&nbsp;=
&quot;.rb_stb({NUM_OUTPUTS{1'b1}})&quot; and it seems to have build OK.</sp=
an></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Jason Matusiak via USRP-users=
 &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, June 6, 2019 2:04 PM<br>
<b>To:</b> Ettus Mail List<br>
<b>Subject:</b> [USRP-users] problem with custom E320 FPGA image</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">I've seen chatter on this around=
 here before (an I think I might have been involved with it during my faile=
d N310 project a while back), but I haven't come up with a solution yet.&nb=
sp;&nbsp;</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I have a custom RFNoC bitfile I =
want to use on the E320.&nbsp; I set things up and built it with the mods i=
n&nbsp;<span>rfnoc_ce_auto_inst_e320.v to fix the clk like is done in&nbsp;=
<span>rfnoc_ce_default_inst_e320.v.</span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span>It builds fine and I=
 scp it over to the E320.&nbsp; I then load it up with the command:&nbsp;<s=
pan>uhd_image_loader --args=3D&quot;type=3De3xx&quot; --fpga-path=3D&quot;/=
home/root/e320.bit&quot;</span></span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><span><br>
</span></span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><span>It acts like e=
verything worked fine, but then when I probe it, it errors out:</span></spa=
n></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><span></span></span>=
</span></p>
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
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><span>I thought that=
 this error was due to the clocks in the inst file being wrong, but I've ma=
de that mod already.&nbsp; Any other thoughts?&nbsp; What is a little weird=
 to me is that it is complaining about&nbsp;<span style=3D"font-family:Cali=
bri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Sego=
e UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android E=
moji&quot;,EmojiSymbols; font-size:16px">CE_08_Port_A1,
 but I only have 8 CEs, so I would have thought my largest one would be CE_=
07.</span></span></span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><span><br>
</span></span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><span><br>
</span></span></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB234002770DDA511136DE2539AF170BL0PR12MB2340namp_--


--===============9002466642877077978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9002466642877077978==--

