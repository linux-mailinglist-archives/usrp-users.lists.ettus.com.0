Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB0C187384
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2020 20:38:11 +0100 (CET)
Received: from [::1] (port=37812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jDvYw-0002AP-5W; Mon, 16 Mar 2020 15:38:10 -0400
Received: from mail-dm6nam10olkn2043.outbound.protection.outlook.com
 ([40.92.41.43]:63744 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jDvYs-00023i-VK
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 15:38:07 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mulM3zuAZxTQ1rx7lqZ5NIuxojqwU9sypiCJQDrATrBa5xD6C8jyY5QdfhyPKY7Hfc7co0cqoul5lHC+OdFJbQEmHtyFs47eOHBkfYoNF5WjbzgY23RZgwt3N6IWXThbLfOWVkBNWLTzsypwWEVTzr1GyM+hYOKRFj6MNXu9XMWZ+vwkNEuQb7OvKVoNcRsIe84dCdaX+NLAWX30d2hbRNoX9BFHLr47O2qisEdPxekvq46QqKQV3uHD/r5m+U/rsP5N2iP8+UgRtx6KOVAqVpQsgcwYu3Eb9SN5/CuzH8e/7LX8EbAg0gebZOT521luTzsUuPG9EDy0ffly8kBFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XuBEmwX86VwEP6x27EnZgC31/5RRlg530H0uj6cdJwY=;
 b=f5q5+SNxIQ7IU6Bk83MLnp6tmihvPexPCgsSVd30ZA4MQ94sp6GhV2NTL+FG0nAntG0xlaOtfJpK0mL/JtcUq4YPIEuhnmu84zaCPvnxJF1kT84/E4IdBIgvPH6w84rdCR2miOjAtCJ+Eeb2Orj2NIrR6GBBL0OT07AvkVIrNr1ed0m7haeSjxkVpn4uQAoA6he1ztE34qnLf3QIBjQPBhdXIeh9WfCreF2ZCfJHbFDNHyTZDGuv3gPFxYVDMSNsyL4YysPmM7uQC4//LfAHrU0S9iSJ+pmG6y4d1Zk1oH+ZBcOm2kk6GakNlqY5cCSC323yoTW7aE1t9gieAW+K9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XuBEmwX86VwEP6x27EnZgC31/5RRlg530H0uj6cdJwY=;
 b=Cn/87Y28yZkEVWeKsFJxjuXN9Veb2MKcz8HuP0CPBlaue9HVRoHcKgmGksS4SCEZzfwwp9v3FXel6hvoHSSIhF9whwSByBnMmEzuzESqbnLxLzeVeF3p4Fo4eLKy/mIg/Ypc9hio4JwdtEYTwuaAm2yCDGdQf9/h15uOEN/8cP1eiJ9wL3JNKrW9F9vljlLWTTxL747Lfda1aDhmv4pBJDJ33X4j4lVD39S1Nddl4TSAUEFaMr5SHyXCdFopOgof5f1nftQZc70adkQVeyLOz+u7YlaWDHeiU2LYkFWD5GB42JgyIauftIAo8gTNttaxZE+ah8G0i7lp9AJ0voDB5A==
Received: from DM6NAM10FT009.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::37) by
 DM6NAM10HT113.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::248)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Mon, 16 Mar
 2020 19:37:25 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com (10.13.152.55) by
 DM6NAM10FT009.mail.protection.outlook.com (10.13.153.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Mon, 16 Mar 2020 19:37:25 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2%5]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 19:37:25 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC Build Error? Or Something Else?
Thread-Index: AQHV+8pIWnb/bI0p4ke0YnL1KL3Nig==
Date: Mon, 16 Mar 2020 19:37:25 +0000
Message-ID: <DM6PR19MB2668AA02795183EE8871F430A4F90@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:34143C5CA71A59C902D109C2BEA414FE869EE9EEC2C53BAA822538E2E0D63B4F;
 UpperCasedChecksum:A9A66A55EA7B93A67C6F1C5F967B2300590F9802693CDCA77531D2404F7FDF00;
 SizeAsReceived:6682; Count:42
x-tmn: [28Gyvpbf06c0UEOgX6wwwPkewqXT3tda]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 7d0dfae2-2f5a-4099-8e0f-08d7c9e17465
x-ms-traffictypediagnostic: DM6NAM10HT113:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J5ZKIDQYDZyGu6eOOxKKmpIMw3kjlZc0GfaSd9P7EEeGea7FXIeNL8BrNUoDRyC8JTAgdmATNKg847WgTmxhTao0AB2QydLLg+xV+dB0zf2Nv4TRRpWIUWfrHLhJYzVs622Fj/Y590Bidyy9DAbzvEsoIQ9lIvP5nf8+VPtromfirSUl3AOhQKC5M3V9Z/LBTH5cSrPXT1OS5zwo8aHp6V8PoWjbjbcWTbx54D2WG0A=
x-ms-exchange-antispam-messagedata: g6s/oSBnODhJ9rzFYjwbQQ5Ks1pic8WotCWKd1UOZqDDsNXQv2CrWtE7vaiZvXaOnpWYueynjecgvbGFRkNlNhfC7KFRNPyXE3t8rqAKuy5YiIqeppw5N9Rum+prCt6Ns/j5DrerySea0dWZvgvmAQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d0dfae2-2f5a-4099-8e0f-08d7c9e17465
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 19:37:25.3122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT113
Subject: [USRP-users] RFNoC Build Error? Or Something Else?
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============3576655077034943611=="
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

--===============3576655077034943611==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB2668AA02795183EE8871F430A4F90DM6PR19MB2668namp_"

--_000_DM6PR19MB2668AA02795183EE8871F430A4F90DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, All.

I am trying to start down the path of RFNoC development, and I am following=
 the steps outlined on the following page:

https://kb.ettus.com/Getting_Started_with_RFNoC_Development

I have already ran into a problem, and I'm not quite sure where to go with =
it.  I'm not sure if I have missed a step somewhere in my installation, or =
if something else is wrong.  I am hoping someone can point me in the correc=
t direction.

Here's what I have:

$ uhd_config_info --version
UHD 4.0.0.rfnoc-devel-702-geec24d7b


$ ./uhd_image_builder.py window fft -d x310 -t X310_RFNOC_HG -m 5 --fill-wi=
th-fifos
--Using the following blocks to generate image:
    * window
    * fft
Adding CE instantiation file for 'X310_RFNOC_HG'
changing temporarily working directory to /home/user/offline/src/fpga/usrp3=
/tools/scripts/../../top/x300
Setting up a 64-bit FPGA build environment for the USRP-X3x0...
- Vivado: Found (/tools/Xilinx/Vivado/2019.2/bin)

Environment successfully initialized.
make -f Makefile.x300.inc bin NAME=3DX310_RFNOC_HG ARCH=3Dkintex7 PART_ID=
=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=
=3D1  RFNOC=3D1 X310=3D1  TOP_MODULE=3Dx300 EXTRA_DEFS=3D"BUILD_1G=3D1 BUIL=
D_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  RFNOC=3D1 X310=3D1 "
make[1]: Entering directory '/home/user/offline/src/fpga/usrp3/top/x300'
BUILDER: Checking tools...
* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
* Python 2.7.17
* Vivado v2019.2.1 (64-bit)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP ten_gig_eth_pcs_pma
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /home/user/offline/src/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source /home/user/offline=
/src/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log ten_gig_eth_pcs_pma.=
log -nojournal
WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /home/user/offline/src/fpga/usrp3/top/x300/build-ip/x=
c7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/user/offline/src/fpga/usrp3/top/x300/build-i=
p/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci
[00:00:13] Current task: Initialization +++ Current Phase: Starting
[00:00:13] Current task: Initialization +++ Current Phase: Finished
[00:00:13] Executing Tcl: synth_design -top ten_gig_eth_pcs_pma -part xc7k4=
10tffg900-2 -mode out_of_context
[00:00:13] Starting Synthesis Command
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/us=
er/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pc=
s_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/us=
er/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pc=
s_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/us=
er/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pc=
s_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/us=
er/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pc=
s_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/us=
er/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pc=
s_pma/ten_gig_eth_pcs_pma.xml'
ERROR: [Vivado 12-398] No designs are open
ERROR: [Common 17-69] Command failed: * IP definition '10G Ethernet PCS/PMA=
 (10GBASE-R/KR) (6.0)' for IP 'ten_gig_eth_pcs_pma' (customized with softwa=
re release 2017.4) has a different revision in the IP Catalog.
[00:00:16] Current task: Synthesis +++ Current Phase: Starting
[00:00:16] Current task: Synthesis +++ Current Phase: Finished
[00:00:16] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           3
Critical Warnings:  7
Errors:             9

BUILDER: Releasing IP location: /home/user/offline/src/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
/home/user/offline/src/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.=
inc:41: recipe for target '/home/user/offline/src/fpga/usrp3/top/x300/build=
-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out' faile=
d
make[1]: *** [/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out] Error 1
make[1]: Leaving directory '/home/user/offline/src/fpga/usrp3/top/x300'
Makefile:119: recipe for target 'X310_RFNOC_HG' failed
make: *** [X310_RFNOC_HG] Error 2


--_000_DM6PR19MB2668AA02795183EE8871F430A4F90DM6PR19MB2668namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hi, All.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am trying to start down the path of RFNoC development, and I am following=
 the steps outlined on the following page:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development" id=
=3D"LPNoLP249160">https://kb.ettus.com/Getting_Started_with_RFNoC_Developme=
nt</a><br>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have already ran into a problem, and I'm not quite sure where to go with =
it.&nbsp; I'm not sure if I have missed a step somewhere in my installation=
, or if something else is wrong.&nbsp; I am hoping someone can point me in =
the correct direction.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Here's what I have:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>$ uhd_config_info --version<br>
</span><span>UHD 4.0.0.rfnoc-devel-702-geec24d7b</span><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<pre>$ ./uhd_image_builder.py window fft -d x310 -t X310_RFNOC_HG -m 5 --fi=
ll-with-fifos=0A=
--Using the following blocks to generate image:=0A=
    * window=0A=
    * fft=0A=
Adding CE instantiation file for 'X310_RFNOC_HG'=0A=
changing temporarily working directory to /home/user/offline/src/fpga/usrp3=
/tools/scripts/../../top/x300=0A=
Setting up a 64-bit FPGA build environment for the USRP-X3x0...=0A=
- Vivado: Found (/tools/Xilinx/Vivado/2019.2/bin)=0A=
=0A=
Environment successfully initialized.=0A=
make -f Makefile.x300.inc bin NAME=3DX310_RFNOC_HG ARCH=3Dkintex7 PART_ID=
=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=
=3D1  RFNOC=3D1 X310=3D1  TOP_MODULE=3Dx300 EXTRA_DEFS=3D&quot;BUILD_1G=3D1=
 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  RFNOC=3D1 X310=3D1 &quot;=0A=
make[1]: Entering directory '/home/user/offline/src/fpga/usrp3/top/x300'=0A=
BUILDER: Checking tools...=0A=
* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)=0A=
* Python 2.7.17=0A=
* Vivado v2019.2.1 (64-bit)=0A=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=0A=
BUILDER: Building IP ten_gig_eth_pcs_pma=0A=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=0A=
BUILDER: Staging IP in build directory...=0A=
BUILDER: Reserving IP location: /home/user/offline/src/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma=0A=
BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...=0A=
BUILDER: Building IP...=0A=
<font color=3D"#729FCF"><b>[00:00:00] Executing command: vivado -mode batch=
 -source /home/user/offline/src/fpga/usrp3/tools/scripts/viv_generate_ip.tc=
l -log ten_gig_eth_pcs_pma.log -nojournal</b></font>=0A=
<font color=3D"#75507B">WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma'=
 is locked:</font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [filemgmt 20-1366] Unable to rese=
t target(s) for the following file is locked: /home/user/offline/src/fpga/u=
srp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs=
_pma.xci</font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [filemgmt 20-1365] Unable to gene=
rate target(s) for the following file is locked: /home/user/offline/src/fpg=
a/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_=
pcs_pma.xci</font>=0A=
[00:00:13] Current task: Initialization &#43;&#43;&#43; Current Phase: Star=
ting=0A=
[00:00:13] Current task: Initialization &#43;&#43;&#43; Current Phase: Fini=
shed=0A=
<font color=3D"#729FCF"><b>[00:00:13] Executing Tcl: synth_design -top ten_=
gig_eth_pcs_pma -part xc7k410tffg900-2 -mode out_of_context</b></font>=0A=
<font color=3D"#4E9A06">[00:00:13] Starting Synthesis Command</font>=0A=
<font color=3D"#75507B">WARNING: [Vivado_Tcl 4-391] The following IPs are m=
issing output products for Synthesis target. These output products could be=
 required for synthesis, please generate the output products using the gene=
rate_target or synth_ip command before running synth_design.</font>=0A=
<font color=3D"#75507B">WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma'=
 is locked:</font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Designutils 20-414] HRTInvokeSpec : No V=
erilog or VHDL sources specified</b></font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-53] User Exception: No open de=
sign. Please open an elaborated, synthesized or implemented design before e=
xecuting this command.</b></font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'</font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'</font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'</font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'</font>=0A=
<font color=3D"#C4A000">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncusto=
mized BOM file '/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410=
tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'</font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Vivado 12-398] No designs are open</b></=
font>=0A=
<font color=3D"#EF2929"><b>ERROR: [Common 17-69] Command failed: * IP defin=
ition '10G Ethernet PCS/PMA (10GBASE-R/KR) (6.0)' for IP 'ten_gig_eth_pcs_p=
ma' (customized with software release 2017.4) has a different revision in t=
he IP Catalog.</b></font>=0A=
[00:00:16] Current task: Synthesis &#43;&#43;&#43; Current Phase: Starting=
=0A=
[00:00:16] Current task: Synthesis &#43;&#43;&#43; Current Phase: Finished=
=0A=
<font color=3D"#EF2929"><b>[00:00:16] Process terminated. Status: Failure</=
b></font>=0A=
=0A=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=0A=
Warnings:           3=0A=
Critical Warnings:  7=0A=
Errors:             9=0A=
=0A=
BUILDER: Releasing IP location: /home/user/offline/src/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma=0A=
/home/user/offline/src/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.=
inc:41: recipe for target '/home/user/offline/src/fpga/usrp3/top/x300/build=
-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out' faile=
d=0A=
make[1]: *** [/home/user/offline/src/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out] Error 1=0A=
make[1]: Leaving directory '/home/user/offline/src/fpga/usrp3/top/x300'=0A=
Makefile:119: recipe for target 'X310_RFNOC_HG' failed=0A=
make: *** [X310_RFNOC_HG] Error 2=0A=
</pre>
</div>
</body>
</html>

--_000_DM6PR19MB2668AA02795183EE8871F430A4F90DM6PR19MB2668namp_--


--===============3576655077034943611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3576655077034943611==--

