Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FFD18739E
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2020 20:50:11 +0100 (CET)
Received: from [::1] (port=43298 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jDvkW-0003Pq-3A; Mon, 16 Mar 2020 15:50:08 -0400
Received: from mail-oln040092004010.outbound.protection.outlook.com
 ([40.92.4.10]:3782 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jDvkS-0003Iy-HN
 for usrp-users@lists.ettus.com; Mon, 16 Mar 2020 15:50:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPhgf50SkIcKdxbEZ6Lb/Q6D+iFypHeOahVAGYaTykRwh0mggFkwXrUBft9X5fWctnMUP/hc58YaDEZRAeLT7zloeYOhRA9sTi0E+S40cfVL7Lbd05V93TJA7WHcu2jzTZqbyTYDRuYxLHe9z7NlMhGD955FIluL77eYEpxhPqcZ646wMX6n4IFK0JjuSwDx3on1BWBrXAH59bBtj3n7sAV4W/YxIc/XiY8LPvk+uU4qcQSzDNXj8DZ9BdxKB9m10AJeDuvy4FHds21VG2r4PgC5BvePK1C6xfGc5lr1Eo6ue9NUhNoI1UTmuMaf3OLmlQxShmXmhfr2u1TePHriBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVvPSWUBGnxBPi2Gk57c6M0QIra2d84j3vQ20G3vYtc=;
 b=dRVz6iO8aQD4CbsnvAQKnY9v2YbM6dt88pNby3BFqjTicy7upYP3x/u35H+nZhQCJGy645tl4zW7V2aY7nx3++tGLbbtTUTrxAEGmSEoppp28FA5vLmSQFSJVmJozfO4ftSy4Rk92RPh36I36vjrWOynBDd4lq9+vcsMaRMqC3pRuWDzYWiGLg6+F24YtLEEX8Q/DXTDgi1NTgofSb/z07eXQAot0zJ58seIjFMCQDltgVmIGQmSCawFZt+S2VqMzezR1K8fqn/rOPHvvD51wRa2eiXINwxW8OiH2WQlR6LdeP7IaWoVXoC7KB5tHb3cAel/kcvSfuWiuq0CbiHCWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVvPSWUBGnxBPi2Gk57c6M0QIra2d84j3vQ20G3vYtc=;
 b=FxKU5lX1XO/a13oYg2OKDbDFXgCMlkboXFZpov73D5re7v5hR/2EPS8GB2CKxK6WH2x0mmv8+ILTKBcFcWbAjkp2Z98fXHhA3ymwFNJP05f//+ZF8zJ9crKSNl7lI56/8eE/TnQaIGpQuIMmGJM/7C90P4jeY88kDfgJA0DlsYKF64B6RabQFdJTsdbHrjHNCOZuIo23dCI5LwDRmGRMnKYvr7gi7Z94Bl5KGUNPzjL7xYwrt07GcT3mU77Rmoe0njyGd0Cw4ll6vbnoNiPw4DSspatDoAUHbT05TYb9TZpn+pJxQ+9D+3PVxAMbIW50fN1mpCr/ZvZXPegrg40ynw==
Received: from SN1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (10.152.72.60) by SN1NAM02HT096.eop-nam02.prod.protection.outlook.com
 (10.152.73.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Mon, 16 Mar
 2020 19:49:22 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com (10.152.72.51) by
 SN1NAM02FT008.mail.protection.outlook.com (10.152.72.119) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Mon, 16 Mar 2020 19:49:22 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2%5]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 19:49:22 +0000
To: Nick Foster <bistromath@gmail.com>
Thread-Topic: [USRP-users] RFNoC Build Error? Or Something Else?
Thread-Index: AQHV+8pIWnb/bI0p4ke0YnL1KL3NiqhLngSAgAABS9I=
Date: Mon, 16 Mar 2020 19:49:22 +0000
Message-ID: <DM6PR19MB2668D32662CA1761BB4310BEA4F90@DM6PR19MB2668.namprd19.prod.outlook.com>
References: <DM6PR19MB2668AA02795183EE8871F430A4F90@DM6PR19MB2668.namprd19.prod.outlook.com>,
 <CA+JMMq8t0JE9ee=d-MO0obw2gz7Zab+M1bpbkFRJnxn_BmFJxQ@mail.gmail.com>
In-Reply-To: <CA+JMMq8t0JE9ee=d-MO0obw2gz7Zab+M1bpbkFRJnxn_BmFJxQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:79893D7111649E39C0DCB8FAF3545415FEC8F5D634550814CCB99FC0E075FA2F;
 UpperCasedChecksum:F1854AB57ADC324F519548B2CBF79CEB3011CD3D552162522866AFE5C78AD3CF;
 SizeAsReceived:7058; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [CBY0dmu3AkL7lX11Xmu8hFhArGQa9S+U]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b1d84a27-ed9e-4f78-56c7-08d7c9e31fa4
x-ms-traffictypediagnostic: SN1NAM02HT096:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0dq4mvwzeW9CuPrBOx/0IhhXq+WGxpVGoktGl3hTRN5mUV6skNPgm0OiacdoCv20jxbMH+Uqr0m/aAXCgMQHHeJvN1fcC1Mp/0ukLKKggljmOp9dSTjcKbNLDkVOgw3mzbhL100cLtMw7UNM6ORI9QScbDSqWTaw1W80YImbzogD53T6n/waqUj9QlqrVqPTVWUZcTCzV+vW8rXmfX2xJfhfD893vgN8qvC6+nAEkgg=
x-ms-exchange-antispam-messagedata: 5K7aQKFiiRDwzNxMDI2caoA9zkhCAAxm4uYqHeNUKt/AiWrv9fYap/zPCN9CqbnK8oVQANHam3SPgaLptLf4gu0JqCxluYMpmOIDIFkHq/ikDw0cJ1PKFSssYV/L/wIAz7RFj8VCZJ6/TGFynBtbmQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d84a27-ed9e-4f78-56c7-08d7c9e31fa4
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 19:49:22.0978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT096
Subject: Re: [USRP-users] RFNoC Build Error? Or Something Else?
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7011113732759227764=="
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

--===============7011113732759227764==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB2668D32662CA1761BB4310BEA4F90DM6PR19MB2668namp_"

--_000_DM6PR19MB2668D32662CA1761BB4310BEA4F90DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Interesting.


On the Ettus website at:  https://files.ettus.com/manual/md_usrp3_build_ins=
tructions.html


right at the top, they list:

Dependencies and Requirements
Dependencies

The USRP FPGA build system requires a UNIX-like environment with the follow=
ing dependencies

  *   Xilinx Vivado 2019.1<https://www.xilinx.com/support/download/index.ht=
ml/content/xilinx/en/downloadNav/vivado-design-tools/2019-1.html> (For 7 Se=
ries FPGAs)

I figured I would try 2019.2.  I mean it couldn't be that much different th=
an 2019.1.  But, it wouldn't be the first time the web documentation was no=
t correct.  I guess I'll back off my version and see where that gets me.

Thanks much for the help, Nick!
Jeff

________________________________
From: Nick Foster <bistromath@gmail.com>
Sent: Monday, March 16, 2020 2:40 PM
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC Build Error? Or Something Else?

You're using the wrong version of Vivado. You need to use Vivado 2017.4.

On Mon, Mar 16, 2020 at 12:38 PM Jeff S via USRP-users <usrp-users@lists.et=
tus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_DM6PR19MB2668D32662CA1761BB4310BEA4F90DM6PR19MB2668namp_
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
Interesting.<br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<p>On the Ettus website at:&nbsp; <a href=3D"https://files.ettus.com/manual=
/md_usrp3_build_instructions.html" id=3D"LPNoLP755157">
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a><br>
</p>
<p><br>
</p>
<p>right at the top, they list:</p>
<div style=3D"margin-top: 0px; margin-bottom: 0px;">
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<h2>Dependencies and Requirements</h2>
<h3>Dependencies</h3>
<p>The USRP FPGA build system requires a UNIX-like environment with the fol=
lowing dependencies</p>
<ul>
<li><a href=3D"https://www.xilinx.com/support/download/index.html/content/x=
ilinx/en/downloadNav/vivado-design-tools/2019-1.html"><span style=3D"backgr=
ound-color: rgb(255, 255, 128);">Xilinx Vivado 2019.1</span></a> (For 7 Ser=
ies FPGAs)</li></ul>
</blockquote>
<br>
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;">I figured I would try 2=
019.2.&nbsp; I mean it couldn't be that much different than 2019.1.&nbsp; B=
ut, it wouldn't be the first time the web documentation was not correct.&nb=
sp; I guess I'll back off my version and see where
 that gets me.</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;">Thanks much for the hel=
p, Nick!</div>
<div style=3D"margin-top: 0px; margin-bottom: 0px;">Jeff<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Nick Foster &lt;bis=
tromath@gmail.com&gt;<br>
<b>Sent:</b> Monday, March 16, 2020 2:40 PM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RFNoC Build Error? Or Something Else?</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">You're using the wrong version of Vivado. You need to use =
Vivado 2017.4.<br>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Mar 16, 2020 at 12:38 PM Je=
ff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Hi, All.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I am trying to start down the path of RFNoC development, and I am following=
 the steps outlined on the following page:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development" id=
=3D"x_gmail-m_7412278285325407485LPNoLP249160" target=3D"_blank">https://kb=
.ettus.com/Getting_Started_with_RFNoC_Development</a><br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have already ran into a problem, and I'm not quite sure where to go with =
it.&nbsp; I'm not sure if I have missed a step somewhere in my installation=
, or if something else is wrong.&nbsp; I am hoping someone can point me in =
the correct direction.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Here's what I have:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>$ uhd_config_info --version<br>
</span><span>UHD 4.0.0.rfnoc-devel-702-geec24d7b</span><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
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
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR19MB2668D32662CA1761BB4310BEA4F90DM6PR19MB2668namp_--


--===============7011113732759227764==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7011113732759227764==--

