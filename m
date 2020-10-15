Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C071628F7B7
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 19:40:25 +0200 (CEST)
Received: from [::1] (port=41808 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT7Eg-0007BY-Kl; Thu, 15 Oct 2020 13:40:18 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:50688)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kT7Eb-00072o-Rj
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 13:40:13 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 7224D111071
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:39:33 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.22])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 6468180077
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:39:23 +0000 (UTC)
Received: from us1-mdac16-8.at1.mdlocal (unknown [10.110.51.67])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 6121B800A3
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:39:23 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.6])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CB3EF1C0072
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:39:22 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 70757B00081
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 17:39:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqStsQPln91+GQJ929E0EoBrbboKJM7YbZuboK5oNKo+nGBDpXuhlOgpFtn8jODzZPXonwjxiNKVdW/zUjD3Wuj3wxxAequtjPCy5HGmBP7FIynM0Ei8jntI7hsF5k0HcWo542xJAUdK3Pc8mRCxxyRiAo7sXawpEmudRsSgsWZttA12ejVdYnl9aOFgbQsE49TbPuIwr4qjVN+iOqhUvsmuIy0MbugYpAjOHYFdxW9eAp/vC2Gja74uqdXPr5f3p2/Pcs2Bc6G6biwTq+VYF7VUW6fxGYzy5mfo1lZ+Jtv0H8Fy1YcYwWXm6yJ7MoRnxUb6unEp4x6T+tEDPq544g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BSI1i3pDF8r3BjKSOHNsUcbciUwKoknauFChR655rwY=;
 b=ZJ1pAEW3TmBlopJMLbJAzculiFn7WsVBctRDyScBUvoRw0CSXTqUVK5CQHmF5oPEg6vr7Ou1TwdSoNjGM8mbyn5iAM12IypQHozhg28++H1oX8MF5Tglot1azGYtZi2MvX/D1fLBLLIA3qBpb4u2un7xKwjlsZnLBa58qvfNpScvS/RvCwehJ1Ipbb3sMz4CTxUv2qyZylYM5a5UmJbBSmNWkcp3gkWphJiglpkQlQ+CPkgXBu1daLMO51nKpeU2FE97JTsLgL7O71kEQOOoM5NIFXwjbSKh/psv2XvFe7HlP+l07c3az12U9l/gGF2iP/5boxMYPxRQYVq9xYIP/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BSI1i3pDF8r3BjKSOHNsUcbciUwKoknauFChR655rwY=;
 b=SrXd1TZUQhlUSpNYOY4r8fGjBanmtdeJMLHhRJRbaM0o2oViF8av5MVbh1T5jmTgxfph2ZhrYQeQuw+qNCqMCPu5o+TgBcJ6QYSuT8GKWZFVnNamTulRC98YAhXGYYnhEkZ61j5Sdgn48zHAMxyDXgpzi04pXPMsCMrQtB9SJGs=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3229.namprd12.prod.outlook.com (2603:10b6:208:102::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20; Thu, 15 Oct
 2020 17:39:15 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5%3]) with mapi id 15.20.3455.035; Thu, 15 Oct 2020
 17:39:15 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Adding Xilinx IP to custom RFNoC block
Thread-Index: AQHWoxPHlooJ1+IPlUOLamZ4NurgjamY7RZo
Date: Thu, 15 Oct 2020 17:39:15 +0000
Message-ID: <MN2PR12MB33125D99856227CEB8E2E8BAB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <MN2PR12MB3312D6040F4F80A6B1E838CCB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312D6040F4F80A6B1E838CCB8020@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74be2e98-5542-4f1e-01ef-08d871313c61
x-ms-traffictypediagnostic: MN2PR12MB3229:
x-microsoft-antispam-prvs: <MN2PR12MB32299D1C5EEEA24156131FE6B8020@MN2PR12MB3229.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0o3Aa7pGW6hTrHwPz12dquY5R7Vl8vISieBMNJ0IVw6Ce+cdnjEaodwieiJkarPkY2ONvpCVkocRBfNMsoEli2UUzo0lGmdj5Hb7WE4vSHfAxtKep2Euk6arVtoKzEVrk5ahw8JB2/1xRoMFW63dK2TmFEBYvXdtBGCYnG5SsxG2B877cqNxhKWGXNbl5662UuAFV+ZlmQBorcQFj0SjAErg+waQHLCpYOjIUboLbHsqfcDjkTbNTayuDClCPy9qZJ38xCINQhvJi6uOnerP1APW2BTn/2fMYMnUtoGL/EV5B25d8BiGs998iGgvUY+oNfLP30rCJcI2V3uDWH/xsc6P2siUcTonQCdTLZTwIkEtGuPkzojiyi93uT4x7kgT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39830400003)(396003)(346002)(376002)(136003)(366004)(64756008)(76116006)(66446008)(66556008)(66476007)(19627405001)(6506007)(8936002)(2940100002)(7696005)(83380400001)(53546011)(66946007)(71200400001)(33656002)(9686003)(5660300002)(52536014)(2906002)(8676002)(316002)(478600001)(186003)(26005)(55016002)(86362001)(6916009)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nS9bYUPIpQbW6zbHmLpZDkQ/4iWmAXjImTSJJngu3yAQ4h/1JWXj8C2QU6Wp0Lv5lDU1aiecAmn9Tgy2uZVYUmlWyyhgaPYrn+d4C0FqgVh+cJZrzOYQD+cvzbCz9Tud138lY04Aui42Vdv5ZUZZDHLH/zHYjL5VDYLeXlOxVZRLk76NrTMD9GxQFw4TYO8f1ceQ8uDSsMfEpiNJiLIi82Fv7QJkkf2NF0+s9b0hlc8cdhrzdTpceECRzK8NR29X0PleEA1j9u1SCM0ZpWlK4VLIl5yzbQDi6779ujtTokYcnVabiYPgEqr3mwMywNeppa3xaQdjH8tCw/BGHvQE1xT6g2ldd9gzN0uDFNSkt99CER7/11pL4mMYhag1lSqFNny2YOOAksfQse3wYnoOzHUrjMhJ4YYPaNOf5SZn+gFvjRzEXa36eoEIeTuLzFIGROQ1CLCXkkUVXguqwShqLEbPcS9CkQQ4LUTw1IXGHaORMoWryH+gjr43ykcNN1ouuLM/fONuJEt5hEeqzWesfKf7Zfk2C5SVhbZg7nXDh+FBSTe4GOZKbW5d05be0EREbnYf+RrmyfFCogUbaYbOzKr45oHfTrebVEL0f68O4CED+r9jFqmDupvFMkVkPWbJl2SzvGn6nqMLuz1Kp6QfvA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74be2e98-5542-4f1e-01ef-08d871313c61
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2020 17:39:15.2512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Uv+egsMk6bDNr2LuEs5TR/Bx9EDjoBMuJ0a8LV5pcLlT/UXLK1WocU4iZsUYD0PCmlQbpR1D31ai+URhmKXdyxZ4ds6ahUSB8EY5myQhMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3229
X-MDID: 1602783563-0EfqzJJ6Ul5Y
X-PPE-DISP: 1602783563;0EfqzJJ6Ul5Y
Subject: Re: [USRP-users] Adding Xilinx IP to custom RFNoC block
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
Content-Type: multipart/mixed; boundary="===============5702597820571357587=="
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

--===============5702597820571357587==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33125D99856227CEB8E2E8BAB8020MN2PR12MB3312namp_"

--_000_MN2PR12MB33125D99856227CEB8E2E8BAB8020MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

As a quick update, with my attempt "2" described in the original post, I ac=
tually get the same result as I do with method "1" (I fixed a typo), althou=
gh I don't get the critical warning. So, the result of trying to build the =
FPGA image is still:

...
[00:00:12] Starting Synthesis Command
ERROR: [Synth 8-439] module 'DDS_Test_Signal' not found [/home/XXX/Projects=
/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfno=
c/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]
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
[00:04:25] Current task: Synthesis +++ Current Phase: Starting
[00:04:26] Current task: Synthesis +++ Current Phase: Finished
[00:04:26] Process terminated. Status: Failure

Thanks,
Jim



________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jim Pall=
adino via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, October 15, 2020 1:13 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Adding Xilinx IP to custom RFNoC block

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


--_000_MN2PR12MB33125D99856227CEB8E2E8BAB8020MN2PR12MB3312namp_
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
As a quick update, with my attempt &quot;2&quot; described in the original =
post, I actually get the same result as I do with method &quot;1&quot; (I f=
ixed a typo), although I don't get the critical warning. So, the result of =
trying to build the FPGA image is still:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
...</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
[00:00:12] Starting Synthesis Command
<div>ERROR: [Synth 8-439] module 'DDS_Test_Signal' not found [/home/XXX/Pro=
jects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut=
/rfnoc/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]</div>
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
<div>[00:04:25] Current task: Synthesis +++ Current Phase: Starting</div>
<div>[00:04:26] Current task: Synthesis +++ Current Phase: Finished</div>
<div>[00:04:26] Process terminated. Status: Failure</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Jim</div>
<div><br>
</div>
<br>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Jim Palladino via USRP-users =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, October 15, 2020 1:13 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Adding Xilinx IP to custom RFNoC block</font>
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
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm trying to add a Xilinx DDS to a custom RFNoC block (using UHD 4.0 and a=
ssociated gr-ettus repo). To do this, I started building the FPGA image usi=
ng the GUI option, stopped the build shortly after Vivado opened, and saved=
 a Vivado Project. Then, in Vivado
 I configured/added a Xilinx DDS to my custom RFNoC block hdl and built the=
 project just fine.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Now, I'm trying to setup my build file structure so I can use the &quot;mak=
e&quot; flow to build the FPGA image. I've tried several things.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
1) I copied the xci file directly to my rfnoc/fpga/rfnoc_block_Block folder=
. Then, I added the following to the Makefile.srcs file in the same folder:=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword $(MAKEFILE_LIST)=
))), rfnoc_block_Block.v noc_shell_Block.v rfnoc_jjj.v DDS_Test_Signal.xci)=
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
When I try to build the FPGA image, I get the following critical warning:</=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
CRITICAL WARNING: [Vivado 12-1504] The IP is already part of the fileset 's=
ources_1'. Requested source '/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.=
0_uhd4.0.0.0/src/RFNoC_Custom/rfnoc-peanut/rfnoc/fpga/rfnoc_block_Block/DDS=
_Test_Signal.xci' will not be added.<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
followed by these errors:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-s=
erif; font-size:12pt">ERROR: [Synth 8-439] module 'DDS_Test_Signal' not fou=
nd [/home/XXX/Projects/SCISRS/usrp/gnuradio/3.8.2.0_uhd4.0.0.0/src/RFNoC_Cu=
stom/rfnoc-peanut/XXX/fpga/rfnoc_block_Block/rfnoc_jjj.v:92]</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
So, I created an rfnoc/fpga/ip/DDS_Test_Signal folder and copied the xci fi=
le there. Then, I added the following line to my /rfnoc/fpga/Makefile.srcs:=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
RFNOC_OOT_SRCS +=3D $(abspath $(addprefix ${RFNOC_EXAMPLE_DIR}, ip/DDS_Test=
_Signal/DDS_Test_Signal.xci))<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
When I do this, I get:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
So, I'm obviously not adding the IP correctly. Can anyone point me in the r=
ight direction?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33125D99856227CEB8E2E8BAB8020MN2PR12MB3312namp_--


--===============5702597820571357587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5702597820571357587==--

