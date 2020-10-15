Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C74E28F784
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 19:14:02 +0200 (CEST)
Received: from [::1] (port=41624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT6pD-0005X2-4A; Thu, 15 Oct 2020 13:13:59 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:60750)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kT6p8-0005QJ-G2
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 13:13:54 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 EF0741015AF
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:13:13 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.21])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 E01908006B
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:13:03 +0000 (UTC)
Received: from us1-mdac16-38.at1.mdlocal (unknown [10.110.51.96])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id DC75A200A9
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:13:03 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.32])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 068A32E0066
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:13:03 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id BFD42280085
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:13:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUcep5Yqoz0INBeomc8V/tt4njEhmFpYyl1vf1oWYZTJvifv5pLjFPMaLF6D/ltAU1AisK5STdmN/yxEtm3c3kIuY4OGT0Dkvgv058llpuFzNcHCXlmfdF1c0+OMTZnjJRRdOXudIEykIqCy7aN6scTCG3a3a7YY25JXriuhe7x1Xaa44pdY906NhRHWE2kcvU2G0q5wkA/COPye21cEVjVWQj42OQlSqvJkeozJxv0j1hGyLkM42rtecSlhcUSLIRobsRTyeJ7Cv7qmXz0fHQUVPpctyYmIo0A0AeZ1bbLnnDsQMAUr64U9oTEbvgo0MJW5TaaEzzM0N6/ophJjKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYvFxvT+dDOkFBjcAvSW1l7jtLEGFLmomoQrKH5L4TM=;
 b=QLrehX+NMhrCUVPe9vAAEGaD6Mfop1STEtNwRyihqYcjCX04WxnysZSjYl1XohKUh5qRDQB5Q7Fguc1O0Rix65yo/2xzyEBScrwVN4SEHldIX/QZrEM5UZigeWJAD+ZTHZfTdCoIKWdWlOXldQWUIAb/+WyFb18kKWx/U66itIkfVpPBm0ZYelZ4eXoCHE7uxaLhBn8IZi9VoIGbpDyoVsElf/6hWvaZRDUCeThWRjDXAewwUaqvIKEtaqkW4AFbndKbwj7qoGpEIh7J4rt71UaqjrWEGWMtf1WcsBaNCC6VAMdmhMo19CcLNl630afKq07UxNQygexpDMhvdK4Olw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYvFxvT+dDOkFBjcAvSW1l7jtLEGFLmomoQrKH5L4TM=;
 b=E9mVQ/beRIH9jkvzQWc1+jdVPT9VFjqpJ+3JaAd3ZwSsPp/fjjzKDpWar4taam7nePTu71gvGDGneqYGfq1AZwWOlfudgVwL82PZl0Z3dqxjoOD1EtZNb/XO/cERJQ5OV6XkXzUn++EHOriv94Hgw3/m6wL7PtXjvhgF6DffI1w=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB2863.namprd12.prod.outlook.com (2603:10b6:208:103::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.28; Thu, 15 Oct
 2020 17:13:00 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5%3]) with mapi id 15.20.3455.035; Thu, 15 Oct 2020
 17:13:00 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Adding Xilinx IP to custom RFNoC block
Thread-Index: AQHWoxPHlooJ1+IPlUOLamZ4NurgjQ==
Date: Thu, 15 Oct 2020 17:13:00 +0000
Message-ID: <MN2PR12MB3312D6040F4F80A6B1E838CCB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 788e1c59-f5d3-4502-3141-08d8712d91d3
x-ms-traffictypediagnostic: MN2PR12MB2863:
x-microsoft-antispam-prvs: <MN2PR12MB2863BD5058CF369C403CC662B8020@MN2PR12MB2863.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gWGLy7BpV107hHz3uyDZ0mGqurKUHyXpU1JUTlFume7bxdmateO/CZFxuXM8aJLPFyeLY1aL/+bQo5O7xljQNnzhwcvjGkDQnPObAwu7W+i3sd2fWyyte/AZWs830KjRhYJg+gNBv0DRfkvny+Wn5B58BORXre48sPICO2X/8HVf8hj20eJyJJs5oRIv0xzD2PADD4Y9yLZBn/TcmA8w6wMyvTQwyu0Ny9jqvbMi6OlsM9I1yH/zKMaRZARKGDzhvRtgwvIhHt75MbEVOB104rGAtwCJ+OcFW/BT5g5Po9dhTf0EHyPvhgtVi+9IulCu3itePvPAf+Y67hKGNrTIiKRUPqrFc5fTFS5/TfL+AiplUYYupXuFOd1jf0Z/jhOl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39830400003)(136003)(376002)(396003)(346002)(66556008)(5660300002)(478600001)(6506007)(26005)(6916009)(9686003)(66446008)(8936002)(33656002)(8676002)(71200400001)(7696005)(76116006)(86362001)(66476007)(64756008)(186003)(316002)(66946007)(83380400001)(52536014)(55016002)(19627405001)(2906002)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OQE0lkJhWJt1v9avm4TS0qUXdPkc98458uSk8SHHuT1kGf2xmbJ915aQthAHG9JONLj4DGsidB927QT6lIqTvm9p1Gfn88dRoAqFdC2OIgcL4Ir04kSROy7NMbeE/bUW+RgSJI2sN9N5AX/EVoebPayBw0ETwJQvFRxdhMESLWwSnI6YthKm4iLo5/yjl76F9+xrHLjOngkbVMF64VAoz47BwoLS6VlJAg70OhKcmzKkezSCok+lDW7c8JvryqOYIDUubBK+GBk2oXaL8TvNPLLJkxe+cw2x9qXvOm44NLDkJjmnZdiMBsfPuDlachUfaatkClvRppofPEc0kL1YC+h9IJw0Mrdc/inxsDWSE97cSFhoYiu8LCL+V3WEafu5Cb+MwEoKj8aUr0Ttlpg/QrIM7jJjgrcTalwG5QzAEdeGEJeZTbv86OINoUsThezYrN2lFGEx49ncwJzhFPgP1xz6FM3Sm2l0T8ZWk+jXO5HvNXul3o3kAKR/GnPRUhvr2893TVivOkvY4WqQNcjFcdaGP0PyLKB3sgDh33X/dhca47/fU1NAfRz/i/V921k1ysCoxi7fjLJDViAG/btkun8xirijx5s6XhQyd1XEGroJnMRvdAvB3oyXYG/k1Ksa/uZbAqTdwxKrahilOPL0VA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 788e1c59-f5d3-4502-3141-08d8712d91d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2020 17:13:00.5749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A5qGqblMi8sugy5h4oE+Hjknb8AEtW6pBCN3qmEudfxn39A1Hs8Q7CIQsiLI+NvWCRe7BRHmXggkLYEu/h1RX8kHOskMq7iXAV0iD2w3RLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2863
X-MDID: 1602781983-vg0_xIM4msMC
X-PPE-DISP: 1602781983;vg0_xIM4msMC
Subject: [USRP-users] Adding Xilinx IP to custom RFNoC block
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
Content-Type: multipart/mixed; boundary="===============2798005098612452785=="
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

--===============2798005098612452785==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312D6040F4F80A6B1E838CCB8020MN2PR12MB3312namp_"

--_000_MN2PR12MB3312D6040F4F80A6B1E838CCB8020MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to add a Xilinx DDS to a custom RFNoC block (using UHD 4.0 and a=
ssociated gr-ettus repo). To do this, I started building the FPGA image usi=
ng the GUI option, stopped the build shortly after Vivado opened, and saved=
 a Vivado Project. Then, in Vivado I configured/added a Xilinx DDS to my cu=
stom RFNoC block hdl and built the project just fine.

Now, I'm trying to setup my build file structure so I can use the "make" fl=
ow to build the FPGA image. I've tried several things.

1) I copied the xci file directly to my rfnoc/fpga/rfnoc_block_Block folder=
. Then, I added the following to the Makefile.srcs file in the same folder:

RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword $(MAKEFILE_LIST)=
))), rfnoc_block_Block.v noc_shell_Block.v rfnoc_jjj.v DDS_Test_Signal.xci)

When I try to build the FPGA image, I get the following critical warning:
CRITICAL WARNING: [Vivado 12-1504] The IP is already part of the fileset 's=
ources_1'. Requested source '/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.=
0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/DDS=
_Test_Signal.xci' will not be added.

followed by these errors:
ERROR: [Synth 8-439] module 'DDS_Test_Signal' not found [/home/XXX/Projects=
/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/XXX/=
fpga/rfnoc_block_Block/rfnoc_jjj.v:92]
ERROR: [Synth 8-6156] failed synthesizing module 'jjj_const' [/home/XXX/Pro=
jects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut=
/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:11]
ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_block_Block' [/home=
/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfno=
c-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_block_Block.v:25]
ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core' [/home/=
XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc=
-peanut/rfnoc/icores/e320_rfnoc_image_core.v:14]
ERROR: [Synth 8-6156] failed synthesizing module 'e320_core' [/home/XXX/Pro=
jects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e=
320_core.v:18]
ERROR: [Synth 8-6156] failed synthesizing module 'e320' [/home/XXX/Projects=
/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e320.v=
:14]
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the con=
sole or run log file for details


2) Looking at the rfnoc-example included under uhd/host, I see that this co=
mment is in Ettus's /rfnoc-example/fpga/Makefile.srcs file:

# If there are additional modules or IP (other than what is in the RFNoC bl=
ock
# subdirectories) that needs to get installed in order to synthesize blocks=
 from
# this module, list them here:
#RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},
#my_other_module.v \
#ip/my_ip_core/my_ip_core.xci \
#))

So, I created an rfnoc/fpga/ip/DDS_Test_Signal folder and copied the xci fi=
le there. Then, I added the following line to my /rfnoc/fpga/Makefile.srcs:

RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR}, ip/DDS_Test=
_Signal/DDS_Test_Signal.xci))

When I do this, I get:

Environment successfully initialized.
BUILDER: Checking tools...
* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
* Python 2.7.17
* Vivado v2019.1 (64-bit)
make[5]: *** No rule to make target '/home/XXX/Projects/SCISRS/usrp/gnuradi=
o/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/ip/DDS_Test_Signal/DDS_Tes=
t_Signal.xci', needed by 'bin'.  Stop.
Makefile:65: recipe for target 'E320_XG' failed
make[4]: *** [E320_XG] Error 2
Built target Block_x310_rfnoc_image_core


So, I'm obviously not adding the IP correctly. Can anyone point me in the r=
ight direction?

Thanks,
Jim


--_000_MN2PR12MB3312D6040F4F80A6B1E838CCB8020MN2PR12MB3312namp_
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
I'm trying to add a Xilinx DDS to a custom RFNoC block (using UHD 4.0 and a=
ssociated gr-ettus repo). To do this, I started building the FPGA image usi=
ng the GUI option, stopped the build shortly after Vivado opened, and saved=
 a Vivado Project. Then, in Vivado
 I configured/added a Xilinx DDS to my custom RFNoC block hdl and built the=
 project just fine.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Now, I'm trying to setup my build file structure so I can use the &quot;mak=
e&quot; flow to build the FPGA image. I've tried several things.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
1) I copied the xci file directly to my rfnoc/fpga/rfnoc_block_Block folder=
. Then, I added the following to the Makefile.srcs file in the same folder:=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword $(MAKEFILE_LIST)=
))), rfnoc_block_Block.v noc_shell_Block.v rfnoc_jjj.v DDS_Test_Signal.xci)=
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
When I try to build the FPGA image, I get the following critical warning:</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
CRITICAL WARNING: [Vivado 12-1504] The IP is already part of the fileset 's=
ources_1'. Requested source '/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.=
0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/DDS=
_Test_Signal.xci' will not be added.<br>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
followed by these errors:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">ERROR: [Synth 8-439] module 'DDS_Test_Signal=
' not found [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src=
/RFNoC_Custom/rfnoc-peanut/XXX/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]</span=
><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div>ERROR: [Synth 8-6156] failed synthesizing module 'jjj_const' [/home/XX=
X/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-p=
eanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:11]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_block_Block' [=
/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom=
/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/rfnoc_block_Block.v:25]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core' [/=
home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/=
rfnoc-peanut/rfnoc/icores/e320_rfnoc_image_core.v:14]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module 'e320_core' [/home/XX=
X/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e=
320/e320_core.v:18]</div>
<div>ERROR: [Synth 8-6156] failed synthesizing module 'e320' [/home/XXX/Pro=
jects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/e=
320.v:14]</div>
<div>ERROR: [Common 17-69] Command failed: Synthesis failed - please see th=
e console or run log file for details</div>
<div><br>
</div>
<br>
2) Looking at the rfnoc-example included under uhd/host, I see that this co=
mment is in Ettus's /rfnoc-example/fpga/Makefile.srcs file:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
# If there are additional modules or IP (other than what is in the RFNoC bl=
ock
<div># subdirectories) that needs to get installed in order to synthesize b=
locks from</div>
<div># this module, list them here:</div>
<div>#RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR},</div>
<div>#my_other_module.v \</div>
<div>#ip/my_ip_core/my_ip_core.xci \</div>
#))<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So, I created an rfnoc/fpga/ip/DDS_Test_Signal folder and copied the xci fi=
le there. Then, I added the following line to my /rfnoc/fpga/Makefile.srcs:=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR}, ip/DDS_Test=
_Signal/DDS_Test_Signal.xci))<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
When I do this, I get:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Environment successfully initialized.
<div>BUILDER: Checking tools...</div>
<div>* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)</div>
<div>* Python 2.7.17</div>
<div>* Vivado v2019.1 (64-bit)</div>
<div>make[5]: *** No rule to make target '/home/XXX/Projects/SCISRS/usrp/gn=
uradio/3.8.2.0_uhd4.0.0.0/src/uhd/fpga/usrp3/top/e320/ip/DDS_Test_Signal/DD=
S_Test_Signal.xci', needed by 'bin'. &nbsp;Stop.</div>
<div>Makefile:65: recipe for target 'E320_XG' failed</div>
<div>make[4]: *** [E320_XG] Error 2</div>
<div>Built target Block_x310_rfnoc_image_core</div>
<br>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So, I'm obviously not adding the IP correctly. Can anyone point me in the r=
ight direction?</div>
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

--_000_MN2PR12MB3312D6040F4F80A6B1E838CCB8020MN2PR12MB3312namp_--


--===============2798005098612452785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2798005098612452785==--

