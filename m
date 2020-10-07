Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DB286658
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 19:57:02 +0200 (CEST)
Received: from [::1] (port=40522 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQDgS-00070w-OY; Wed, 07 Oct 2020 13:57:00 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:53698)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kQDgO-0006rp-0c
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 13:56:56 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 5DF0667AD3
 for <usrp-users@lists.ettus.com>; Wed,  7 Oct 2020 17:56:15 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.118])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 4885A600B5; Wed,  7 Oct 2020 17:56:05 +0000 (UTC)
Received: from us1-mdac16-7.ut7.mdlocal (unknown [10.7.66.214])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 46A95200B2; 
 Wed,  7 Oct 2020 17:56:05 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.32])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2E6B34005D; 
 Wed,  7 Oct 2020 17:56:04 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2175.outbound.protection.outlook.com [104.47.58.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D00C3B4008D;
 Wed,  7 Oct 2020 17:56:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+tyWTtLWUHAiXYVgd63L+ezfvZ9L81MDsisC9ETu+FP8pDKz8SopVMFiUngYQ6cjrkWR0c5daYml2wIVK9MUjwugqWSHlY/XXLqx4B+HEN/YnYQ2/HZ3eGu+TkJOYY5rGE5wDfMn0Es035DHmyGOgxrD7keWUcmJSMKZ+deb1R+Yx9ZE9ACjkkdosPg5RDIPpAsenCe+LMtKFlqO9khN9QqBXrEQ9CYZgjxr0+76EYrKcX9BUJ7mPGTmdrfNTcq9GyhctERL0CvZ53MjDHelY2LNuJA1ZuMe0UGmh6eQ103720M3hUNvycUES9/kkl6aTp4BTHbuRajN8MZ7i1Iew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vN2bQmGDg7oAmwtLU9nLqgJThk6EV1DX7q6hrIuSSnc=;
 b=ixfe4RTFqvEovfLUi2vRl5yepmA/YOXbzYuwmkKDkYzwfhWqEG277L0DRMOfBFDuD/bOr+m+ttxMefMuKHKkh12y8Q/ojMbQ9+08QnCpAU7lBay8z755ZVjXnj/WuKl04eL050AloK2wfHSAsIcnZZQ4lKgfZjdDuKMKxdIGqD9nmPB8prwkSfy5yHl8f3645ZR6NW/KT3ghaU57KWIHRpnPOopMC8KM0jBBQhGqWf8bDEHOfBKl9QxIphGaQxHgHCE4htwsu4O/0pNCRsj61xgFt172cwqa5gh3EB/B+KYM82XeWH+PitCSbWorfB5yX7Z5Bo1K1/RF6hzXKsECEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vN2bQmGDg7oAmwtLU9nLqgJThk6EV1DX7q6hrIuSSnc=;
 b=JhPiScGQRKtpRW0115hZGDE3sTgQBLQtUiwemD54cwp6NAeaQdVX8bRkwcC97uhwPqIjOJnPcQgvo+RFvvOPWBrX3lJQ5rK0n2ygUiJ2E6oXR4JdOsJhUILMlVwsINWi030x3cSb/rnX34gPvJUfxHBNjH4p3FAgjLQha/TJH70=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3006.namprd12.prod.outlook.com (2603:10b6:208:cd::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.39; Wed, 7 Oct
 2020 17:56:01 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5%3]) with mapi id 15.20.3455.023; Wed, 7 Oct 2020
 17:56:01 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
CC: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Trouble getting custom RFNoC block to work with
 gnuradio 3.8 / uhd 4.0
Thread-Index: AQHWlzD/szRnIpkcgEGMKWhdTurT5KmCzU0AgAAN1OWAAAMPAIAJlSf9
Date: Wed, 7 Oct 2020 17:56:01 +0000
Message-ID: <MN2PR12MB3312C2BBD40DA64545345E99B80A0@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <MN2PR12MB3312CE95DBC33D5A21D8F294B8330@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT2mvSMDfcg17zM04JFn3qAE02qYvbZwJGt2bpvSbr2_g@mail.gmail.com>
 <MN2PR12MB3312EB6E10AEAFC9A076632DB8300@MN2PR12MB3312.namprd12.prod.outlook.com>,
 <CAB__hTRRqfnU_Drn4hbRi1G5aBV7-Xxw2p3mQLHPfB0ckhVYNw@mail.gmail.com>
In-Reply-To: <CAB__hTRRqfnU_Drn4hbRi1G5aBV7-Xxw2p3mQLHPfB0ckhVYNw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b73fb49-ac59-42b9-c231-08d86aea40e1
x-ms-traffictypediagnostic: MN2PR12MB3006:
x-microsoft-antispam-prvs: <MN2PR12MB300623CE0932C4134C3ACF88B80A0@MN2PR12MB3006.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nI7+XVjzp1QvSZu7uleV5yI3/i7nxbPWv5lB6xE7sUG1YgYMv0RnHvZ1i9wXyTf7Csir/n7k9TpmIUzAmBO5Z72gyMa/bE8At9imlF+0gW/wWZUlSrM2PXtVGN6a+EuReA8p1Re+7039/pwGKqm+s4TyUXE5Qqii52PNYp2whkfi4FI84pu95PKzEVxFpMJgWqpKERkdfAsCe8bBYjnw2Yd8AvEFhkCns3q8odUm5uNOVZtSA3SvWXXSmzCrQcMxXZvwGcVCFPrOw212OWZL0Sq3STf5G2G2KCZmzHi10r/Dpzuq/TFBxo9pLzP+qL2OmufkCQuv+/F8rWuIL+ekMmSXqPbHY4aGxQKFjMKL/jwO0+c4rG/I0Tg58v3f46IKJBJ8q13XNbGtblrO5BCVSJ/iIOwfz3YJDE3HUFQy4wGrDK0HJNrwT9Q3u44cIaVeFm+Ic1l937c/cR7Zl1NBZg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(376002)(39830400003)(136003)(366004)(55016002)(186003)(83380400001)(8936002)(478600001)(5660300002)(52536014)(53546011)(6916009)(71200400001)(66476007)(83080400001)(19627405001)(26005)(4326008)(8676002)(2906002)(966005)(76116006)(66946007)(166002)(9686003)(30864003)(6506007)(66556008)(66446008)(316002)(64756008)(33656002)(7696005)(86362001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: GSIb/2TjQkWsvyk3zBGr9PcqVfOcs20l+gd0KhH0Nq+euzt7BjOalEk2g+0pc+ZWHR8t+eucWo1cZD/wYX3ZuPVgAWKWytWMCR7CWBbVUZzzJZrceulwiWuNfpuNvOhtnLq8MCgygBhqGr2m53i6Rv6DaMd0hsJB2Gh0DoJZiM+CParNIyJRK7QQojspSTfp9x6ZUlkbyftU0NeynYVwCNXu3LvVV2MAXVmru3T0DHHznCFv9VEnn3FbTZoPLbY2ZDjHd2vAoP9AHaqAcY0kk0ISsyjvca8VhBJfZbQ1sbGEfUJ0R/7TCUfj2JOjnO6t4cApMEi/nD1Ttsu3Pag1ixJrBR9UfOSLjgOTvR83EwsEmCVcUniwJ/kSDEbHH+DQ+CCMGAFwQKuXZrP3TaCrf9XB91TVaCxVQgTA+1NOPNytAMeTUIszkb9koreo+1KXCGvv8RLz/eR+XWWfkCHcxQFedyf6fj0m/84yn0SdHXel7SM6nh3JzUl4QS+lZIpyYQp++PeAHa0c5ugtFAhLAFhBurT9iVnt8jZh4JeX5oKUVovxQ8J8rRUtKjMuAhgWI1+IXyQNBF+DOdZndQXzyzNuu1rkVCtRFND4uv2ntswM4wFtOTJkE8Vjs58W5VUFHWvSUpAW0Ht87U0wseINEQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b73fb49-ac59-42b9-c231-08d86aea40e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2020 17:56:01.3715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w6J7W/4jY1QHDGfKIBXAfU/zXpo6GzViUAGyMTTdirS+vz+aWiVnw48WfWIy5CjK2drtmohPVdoyQFunugb1wOanZA5vCMJh8NbJkB0T7/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3006
X-MDID: 1602093364-ORauA5dL6Luw
Subject: Re: [USRP-users] Trouble getting custom RFNoC block to work with
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
Content-Type: multipart/mixed; boundary="===============9165662439309319352=="
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

--===============9165662439309319352==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312C2BBD40DA64545345E99B80A0MN2PR12MB3312namp_"

--_000_MN2PR12MB3312C2BBD40DA64545345E99B80A0MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I found that the issue I've been having with getting my custom RFNoC block =
to work is related to the CHDR packet size and MTU. I put in many ILA probe=
s and found that If I create a gnuradio flowgraph that looks like (All bloc=
ks are dynamically connected):

RFNoC_RX_Radio -> RFNoC_DDC -> RX_Streamer -> QT_GUI_Time_Sink

Everything works and the CHDR packet size is 7972. This CHDR packet size is=
 consistent everywhere in the FPGA. This is the size reported in the CHDR h=
eader and I verified the total packet size via an ILA.

If, on the other hand, I add my custom RFNoC block to the path (before, aft=
er, or in place of the DDC), then for some reason the CHDR packet size is 8=
000. This leaves no room for the Ethernet header, as my MTU size is set to =
8000 per (https://kb.ettus.com/E320_Getting_Started_Guide). This is when I =
get errors like:

gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.


I found that if in my gnuradio flowgraph I add an argument like "spp=3D1989=
" to RFNoC_RX_Radio, then everything works. The CHDR packet size is small e=
nough. 1989 seems to be the upper limit.

I'm wondering if I missed something and something should be set somewhere e=
lse to keep the packet size from being too large. I'm not sure why adding m=
y block changes the packet size to 8000 (with no spp argument). Or, would i=
t be acceptable/advisable to set the MTU on my interfaces to 9000 instead o=
f 8000 to allow for Ethernet packets slightly larger than 8000?

Thanks for any thoughts. And thanks Rob K for the help you've provided.
Jim


________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Thursday, October 1, 2020 11:19 AM
To: Jim Palladino <jim@gardettoengineering.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Trouble getting custom RFNoC block to work with g=
nuradio 3.8 / uhd 4.0

So, the only other thing I can think of for now relates to issues that I ha=
ve had in connecting blocks that are not statically connected. For example,=
 the newest default images for the X310 and N310 contain a "Replay" block w=
here the Replay block is connected to/from an end-point in the same way as =
your example.  In my UHD graph connection process, I never have an issue co=
nnecting "DUC=3D>Radio" because this is a static connection.  But, I someti=
mes get a timeout error when connecting "Replay=3D>DUC" because this is a d=
ynamic connection.  I wonder if you are getting any connection error messag=
es in the UHD log when you run from gnuradio.  I'm guessing not, but wanted=
 to mention it.

In any case, if you run using "rfnoc_rx_to_file", you might be able to set =
the master clock rate low enough that you don't need a DDC to avoid overrun=
s when using the graph "Radio30=3D>Block#0=3D>rx_streamer" (meaning that yo=
u might not need to modify the default example).  I don't know a lot about =
the E320 so I'm not really sure what control you have over the master clock=
 rate (and ultimately the radio output rate).


On Thu, Oct 1, 2020 at 11:10 AM Jim Palladino via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi Rob,

Thanks very much for the response. I checked and by default, in the rfnocmo=
dtool generated verilog for my block, s_out_payload_tkeep is tied to '1'.  =
Also, the autogenerated testbench runs just fine (all tests pass). I poked =
around at rfnoc_rx_to_file a while ago but didn't spend much time with it. =
I'll follow your suggestion and work with that some more.

Also, the second flowgraph case I described in my original email works just=
 fine now. This is the case where my flowgraph looks like:
Constant_Source -> RFNoC_TX_Streamer -> RFNoC_Block -> RFNoC_RX_Streamer ->=
 QT_GUI_Time_Sink

Once I set the constant source to values between 0 and 1, I had no problems=
 (it was a mistake on my part initially setting the values greater than 1).=
 I also replaced the Constant_Source with a Signal_Source (cosine) and ever=
ything works just fine -- no errors and the plot looks good. So, this works=
, but the setup with RFNoC_RX_Radio as the source  (followed by a DDC befor=
e my block) still does not work -- I get the CHDR errors with tready stuck =
low.

Here is a copy of my Block_x310_rfnoc_image_core.yml. Even though the file =
name has x310 in it, I'm building for the e320 (and it is building for the =
e320). I wanted to change as little of what rfnocmodtool automatically gene=
rated as possible.

### Start of Block_x310_rfnoc_image_core.yml

# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args         # Identifier for the schema used to=
 validate this file
copyright: ''                           # Copyright information used in fil=
e headers
license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License information=
 used in file headers
version: 1.0                            # File version
rfnoc_version: 1.0                      # RFNoC protocol version
chdr_width: 64                          # Bit width of the CHDR bus for thi=
s image
device: 'e320'
default_target: 'E320_XG'

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                       # Stream endpoint name
    ctrl: True                      # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep1:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data
  ep2:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 8192                 # Ingress buffer size for data
  ep3:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 8192                 # Ingress buffer size for data
  ep4:                       # Stream endpoint name
    ctrl: False                     # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 32768                # Ingress buffer size for data

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  duc0:                      # NoC block name
    block_desc: 'duc.yml'    # Block device descriptor file
    parameters:
      NUM_PORTS: 2
  ddc0:
    block_desc: 'ddc.yml'
    parameters:
      NUM_PORTS: 2
  radio0:
    block_desc: 'radio_2x64.yml'
  fifo0:
    block_desc: 'axi_ram_fifo_2x64.yml'
    parameters:
      # These parameters correspond to the memory interface on the E320
      MEM_ADDR_W:   31
      MEM_DATA_W:   64
      MEM_CLK_RATE: "300e6"
      # Create two non-overlapping 32 MB buffers by default
      FIFO_ADDR_BASE: "{31'h02000000, 31'h00000000}"
      FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF}"
  Block0:
    block_desc: 'Block.yml'

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#         - srcblk  =3D Source block to connect
#         - srcport =3D Port on the source block to connect
#         - dstblk  =3D Destination block to connect
#         - dstport =3D Port on the destination block to connect
connections:
  # ep0 to radio0(0) - RF0 TX
  - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # radio0(0) to ep0 - RF0 RX
  - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
  - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
  # ep1 to radio0(1) - RF1 TX
  - { srcblk: ep1,    srcport: out0,  dstblk: duc0,   dstport: in_1 }
  - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
  # radio0(1) to ep1 - RF1 RX
  - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
  - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
  # ep2 to fifo0(0)
  - { srcblk: ep2,    srcport: out0,  dstblk: fifo0,  dstport: in_0 }
  - { srcblk: fifo0,  srcport: out_0, dstblk: ep2,    dstport: in0  }
  # ep3 to fifo0(1)
  - { srcblk: ep3,    srcport: out0,  dstblk: fifo0,  dstport: in_1 }
  - { srcblk: fifo0,  srcport: out_1, dstblk: ep3,    dstport: in0  }
  # Cust blk cnct ep4 to gain0 and gain0 to ep4
  - { srcblk: ep4, srcport: out0, dstblk: Block0, dstport: in }
  - { srcblk: Block0, srcport: out, dstblk: ep4, dstport: in0 }
  # BSP Connections
  - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport: ctrl_p=
ort }
  - { srcblk: _device_, srcport: x300_radio, dstblk: radio0, dstport: x300_=
radio }
  - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport: time=
_keeper }
  - { srcblk: fifo0,    srcport: axi_ram,     dstblk: _device_, dstport: dr=
am        }

# A list of all clock domain connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#         - srcblk  =3D Source block to connect (Always "_device"_)
#         - srcport =3D Clock domain on the source block to connect
#         - dstblk  =3D Destination block to connect
#         - dstport =3D Clock domain on the destination block to connect
clk_domains:
    - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
    - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: ddc0,   dstport: =
ce    }
    - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: duc0,   dstport: =
ce    }
    - { srcblk: _device_, srcport: dram,  dstblk: fifo0,  dstport: mem   }
    - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: Block0,  dstport:=
 ce }

### End of Block_x310_rfnoc_image_core.yml

Thanks again for any help.
Jim
________________________________
From: Rob Kossler <rkossler@nd.edu<mailto:rkossler@nd.edu>>
Sent: Thursday, October 1, 2020 10:19 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Trouble getting custom RFNoC block to work with g=
nuradio 3.8 / uhd 4.0

Hi Jim,
I have also been playing around with UHD-4.0, but mostly in testbenches. I'=
ve only built one image (for the N310) with one of my custom blocks. The er=
rors you mentioned seem very strange. A few questions/comments:
- can you send your "XXX_x310_rfnoc_image_core.yml" contents?
- would it be helpful to run directly with UHD examples (removing gnuradio =
and gr-ettus from the equation)?  You could try "rfnoc_rx_to_file" as-is wh=
ere you specify on the command line the desired "block-id" to insert betwee=
n the Radio and the rx_streamer.  With the X310, the Radio rate might be to=
o high with your custom "thru" block so perhaps you could modify the exampl=
e (in-tree would be easiest) to automatically include the DDC and then inse=
rt the command line "block-id" optionally after the DDC.
- In my testbenches, I have occasionally seend CHDR error messages like you=
 mentioned and it seemed to solve them if I set "s_out_payload_tkeep=3D1". =
I didn't think this was needed if there was only 1 output port, but I seem =
to recall that this fixed my CHDR error issue for my 1  port block.
Rob

On Wed, Sep 30, 2020 at 10:39 AM Jim Palladino via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3DFz9n=
km5B61ZorZZVX1jSes3LSxtOxW2XFb-XA9r-7vI&s=3DHTsRqrOpxd15k2kgT7iXFYxZW4Xwm9w=
Ih3gu8TDf4Pg&e=3D>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3Db2Al=
TidElkmDJcJHy8NcfscGTp_HD7DhVUdl3Rfu4gI&s=3DlzHy3_c4sElRGuoM9AfUYyy5128FP1B=
XmHXnE3VCLzg&e=3D>

--_000_MN2PR12MB3312C2BBD40DA64545345E99B80A0MN2PR12MB3312namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I found that the issue I've been having with getting my custom RFNoC block =
to work is related to the CHDR packet size and MTU. I put in many ILA probe=
s and found that If I create a gnuradio flowgraph that looks like (All bloc=
ks are dynamically connected):&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
RFNoC_RX_Radio -&gt; RFNoC_DDC -&gt; RX_Streamer -&gt; QT_GUI_Time_Sink</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Everything works and the CHDR packet size is 7972. This CHDR packet size is=
 consistent everywhere in the FPGA. This is the size reported in the CHDR h=
eader and I verified the total packet size via an ILA.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If, on the other hand, I add my custom RFNoC block to the path (before, aft=
er, or in place of the DDC), then for some reason the CHDR packet size is 8=
000. This leaves no room for the Ethernet header, as my MTU size is set to =
8000 per (<a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide" id=3D=
"LPlnk">https://kb.ettus.com/E320_Getting_Started_Guide</a>).
 This is when I get errors like:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
<div>[ERROR] [STREAMER] The receive transport caught a value exception.</di=
v>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
<br>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I found that if in my gnuradio flowgraph I add an argument like &quot;spp=
=3D1989&quot; to RFNoC_RX_Radio, then everything works. The CHDR packet siz=
e is small enough. 1989 seems to be the upper limit.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm wondering if I missed something and something should be set somewhere e=
lse to keep the packet size from being too large. I'm not sure why adding m=
y block changes the packet size to 8000 (with no spp argument). Or, would i=
t be acceptable/advisable to set
 the MTU on my interfaces to 9000 instead of 8000 to allow for Ethernet pac=
kets slightly larger than 8000?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for any thoughts. And thanks Rob K for the help you've provided.</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Thursday, October 1, 2020 11:19 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Trouble getting custom RFNoC block to work=
 with gnuradio 3.8 / uhd 4.0</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">So, the only other thing I can think of for now relates to=
 issues that I have had in connecting blocks that are not statically connec=
ted. For example, the&nbsp;newest default images for the X310 and N310 cont=
ain a &quot;Replay&quot; block where the Replay block
 is connected to/from an end-point in the same way as your example.&nbsp; I=
n my UHD graph connection process, I never have an issue connecting &quot;D=
UC=3D&gt;Radio&quot; because this is a static connection.&nbsp; But, I some=
times get a timeout error when connecting &quot;Replay=3D&gt;DUC&quot; beca=
use
 this is a dynamic connection.&nbsp; I wonder if you are getting any connec=
tion error messages in the UHD log when you run from gnuradio.&nbsp; I'm gu=
essing not, but wanted to mention it.&nbsp;
<div><br>
</div>
<div>In any case, if you run using &quot;rfnoc_rx_to_file&quot;, you might =
be able to set the master clock rate low enough that you don't need a DDC t=
o avoid overruns when using the graph &quot;Radio30=3D&gt;Block#0=3D&gt;rx_=
streamer&quot; (meaning that you might not need to modify the
 default example).&nbsp; I don't know a lot about the E320 so I'm not reall=
y sure what control you have over the master clock rate (and ultimately the=
 radio output rate).
<div><br>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Oct 1, 2020 at 11:10 AM Jim=
 Palladino via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
Hi Rob,&nbsp;</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
Thanks very much for the response. I checked and by default, in the rfnocmo=
dtool generated verilog for my block, s_out_payload_tkeep is tied to '1'.&n=
bsp; Also, the autogenerated testbench runs just fine (all tests pass). I p=
oked around at rfnoc_rx_to_file a while
 ago but didn't spend much time with it. I'll follow your suggestion and wo=
rk with that some more.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
Also, the second flowgraph case I described in my original email works just=
 fine now. This is the case where my flowgraph looks like:&nbsp;</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<span style=3D"margin:0px; background-color:white">Constant_Source -&gt; RF=
NoC_TX_Streamer -&gt; RFNoC_Block -&gt; RFNoC_RX_Streamer -&gt; QT_GUI_Time=
_Sink</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<span style=3D"margin:0px; background-color:white"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
Once I set the constant source to values between 0 and 1, I had no problems=
 (it was a mistake on my part initially setting the values greater than 1).=
 I also replaced the Constant_Source with a Signal_Source (cosine) and ever=
ything works just fine -- no errors
 and the plot looks good. So, this works, but the setup with RFNoC_RX_Radio=
 as the source&nbsp; (followed by a DDC before my block) still does not wor=
k -- I get the CHDR errors with tready stuck low.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
Here is a copy of my&nbsp;Block_x310_rfnoc_image_core.yml. Even though the =
file name has x310 in it, I'm building for the e320 (and it is building for=
 the e320). I wanted to change as little of what rfnocmodtool automatically=
 generated as possible.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<span style=3D"margin:0px; background-color:white">### Start of Block_x310_=
rfnoc_image_core.yml</span><br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
<span style=3D"margin:0px; background-color:white"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
# General parameters
<div style=3D"margin:0px"># -----------------------------------------</div>
<div style=3D"margin:0px">schema: rfnoc_imagebuilder_args &nbsp; &nbsp; &nb=
sp; &nbsp; # Identifier for the schema used to validate this file</div>
<div style=3D"margin:0px">copyright: '' &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Copyright informa=
tion used in file headers</div>
<div style=3D"margin:0px">license: 'SPDX-License-Identifier: LGPL-3.0-or-la=
ter' # License information used in file headers</div>
<div style=3D"margin:0px">version: 1.0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# File version=
</div>
<div style=3D"margin:0px">rfnoc_version: 1.0 &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# RFNoC protocol version</div=
>
<div style=3D"margin:0px">chdr_width: 64 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Bit width of the =
CHDR bus for this image</div>
<div style=3D"margin:0px">device: 'e320'</div>
<div style=3D"margin:0px">default_target: 'E320_XG'</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all stream endpoints in design</div>
<div style=3D"margin:0px"># ----------------------------------------</div>
<div style=3D"margin:0px">stream_endpoints:</div>
<div style=3D"margin:0px">&nbsp; ep0: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Stream endpoint name</div>
<div style=3D"margin:0px">&nbsp; &nbsp; ctrl: True &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes contr=
ol traffic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; data: True &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; buff_size: 32768 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Ingress buffer size for data</div>
<div style=3D"margin:0px">&nbsp; ep1: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Stream endpoint name</div>
<div style=3D"margin:0px">&nbsp; &nbsp; ctrl: False &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Endpoint passes control tr=
affic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; data: True &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; buff_size: 32768 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Ingress buffer size for data</div>
<div style=3D"margin:0px">&nbsp; ep2: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Stream endpoint name</div>
<div style=3D"margin:0px">&nbsp; &nbsp; ctrl: False &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Endpoint passes control tr=
affic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; data: True &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; buff_size: 8192 &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Ingress buffer size for data</div>
<div style=3D"margin:0px">&nbsp; ep3: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Stream endpoint name</div>
<div style=3D"margin:0px">&nbsp; &nbsp; ctrl: False &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Endpoint passes control tr=
affic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; data: True &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; buff_size: 8192 &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Ingress buffer size for data</div>
<div style=3D"margin:0px">&nbsp; ep4: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Stream endpoint name</div>
<div style=3D"margin:0px">&nbsp; &nbsp; ctrl: False &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Endpoint passes control tr=
affic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; data: True &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data =
traffic</div>
<div style=3D"margin:0px">&nbsp; &nbsp; buff_size: 32768 &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Ingress buffer size for data</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all NoC blocks in design</div>
<div style=3D"margin:0px"># ----------------------------------</div>
<div style=3D"margin:0px">noc_blocks:</div>
<div style=3D"margin:0px">&nbsp; duc0: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# NoC block name</div>
<div style=3D"margin:0px">&nbsp; &nbsp; block_desc: 'duc.yml' &nbsp; &nbsp;=
# Block device descriptor file</div>
<div style=3D"margin:0px">&nbsp; &nbsp; parameters:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; NUM_PORTS: 2</div>
<div style=3D"margin:0px">&nbsp; ddc0:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; block_desc: 'ddc.yml'</div>
<div style=3D"margin:0px">&nbsp; &nbsp; parameters:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; NUM_PORTS: 2</div>
<div style=3D"margin:0px">&nbsp; radio0:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; block_desc: 'radio_2x64.yml'</div>
<div style=3D"margin:0px">&nbsp; fifo0:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; block_desc: 'axi_ram_fifo_2x64.yml'=
</div>
<div style=3D"margin:0px">&nbsp; &nbsp; parameters:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; # These parameters correspon=
d to the memory interface on the E320</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 31</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 64</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&qu=
ot;</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; # Create two non-overlapping=
 32 MB buffers by default</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{31'h0=
2000000, 31'h00000000}&quot;</div>
<div style=3D"margin:0px">&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{31'h0=
1FFFFFF, 31'h01FFFFFF}&quot;</div>
<div style=3D"margin:0px">&nbsp; Block0:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; block_desc: 'Block.yml'</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all static connections in design</div=
>
<div style=3D"margin:0px"># ------------------------------------------</div=
>
<div style=3D"margin:0px"># Format: A list of connection maps (list of key-=
value pairs) with the following keys</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - srcblk &nbsp;=3D =
Source block to connect</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - srcport =3D Port =
on the source block to connect</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - dstblk &nbsp;=3D =
Destination block to connect</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - dstport =3D Port =
on the destination block to connect</div>
<div style=3D"margin:0px">connections:</div>
<div style=3D"margin:0px">&nbsp; # ep0 to radio0(0) - RF0 TX</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ep0, &nbsp; &nbsp;srcport: out=
0, &nbsp;dstblk: duc0, &nbsp; dstport: in_0 }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: duc0, &nbsp; srcport: out_0, d=
stblk: radio0, dstport: in_0 }</div>
<div style=3D"margin:0px">&nbsp; # radio0(0) to ep0 - RF0 RX</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: radio0, srcport: out_0, dstblk=
: ddc0, &nbsp; dstport: in_0 }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ddc0, &nbsp; srcport: out_0, d=
stblk: ep0, &nbsp; &nbsp;dstport: in0 &nbsp;}</div>
<div style=3D"margin:0px">&nbsp; # ep1 to radio0(1) - RF1 TX</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ep1, &nbsp; &nbsp;srcport: out=
0, &nbsp;dstblk: duc0, &nbsp; dstport: in_1 }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: duc0, &nbsp; srcport: out_1, d=
stblk: radio0, dstport: in_1 }</div>
<div style=3D"margin:0px">&nbsp; # radio0(1) to ep1 - RF1 RX</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: radio0, srcport: out_1, dstblk=
: ddc0, &nbsp; dstport: in_1 }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ddc0, &nbsp; srcport: out_1, d=
stblk: ep1, &nbsp; &nbsp;dstport: in0 &nbsp;}</div>
<div style=3D"margin:0px">&nbsp; # ep2 to fifo0(0)</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ep2, &nbsp; &nbsp;srcport: out=
0, &nbsp;dstblk: fifo0, &nbsp;dstport: in_0 }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_0, d=
stblk: ep2, &nbsp; &nbsp;dstport: in0 &nbsp;}</div>
<div style=3D"margin:0px">&nbsp; # ep3 to fifo0(1)</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ep3, &nbsp; &nbsp;srcport: out=
0, &nbsp;dstblk: fifo0, &nbsp;dstport: in_1 }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_1, d=
stblk: ep3, &nbsp; &nbsp;dstport: in0 &nbsp;}</div>
<div style=3D"margin:0px">&nbsp; # Cust blk cnct ep4 to gain0 and gain0 to =
ep4</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: ep4, srcport: out0, dstblk: Bl=
ock0, dstport: in }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: Block0, srcport: out, dstblk: =
ep4, dstport: in0 }</div>
<div style=3D"margin:0px">&nbsp; # BSP Connections</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: radio0, srcport: ctrl_port, ds=
tblk: _device_, dstport: ctrl_port }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: _device_, srcport: x300_radio,=
 dstblk: radio0, dstport: x300_radio }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: _device_, srcport: time_keeper=
, dstblk: radio0, dstport: time_keeper }</div>
<div style=3D"margin:0px">&nbsp; - { srcblk: fifo0, &nbsp; &nbsp;srcport: a=
xi_ram, &nbsp; &nbsp; dstblk: _device_, dstport: dram &nbsp; &nbsp; &nbsp; =
&nbsp;}</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px"># A list of all clock domain connections in desig=
n</div>
<div style=3D"margin:0px"># ------------------------------------------</div=
>
<div style=3D"margin:0px"># Format: A list of connection maps (list of key-=
value pairs) with the following keys</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - srcblk &nbsp;=3D =
Source block to connect (Always &quot;_device&quot;_)</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - srcport =3D Clock=
 domain on the source block to connect</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - dstblk &nbsp;=3D =
Destination block to connect</div>
<div style=3D"margin:0px"># &nbsp; &nbsp; &nbsp; &nbsp; - dstport =3D Clock=
 domain on the destination block to connect</div>
<div style=3D"margin:0px">clk_domains:</div>
<div style=3D"margin:0px">&nbsp; &nbsp; - { srcblk: _device_, srcport: radi=
o, dstblk: radio0, dstport: radio }</div>
<div style=3D"margin:0px">&nbsp; &nbsp; - { srcblk: _device_, srcport: rfno=
c_chdr, &nbsp; &nbsp;dstblk: ddc0, &nbsp; dstport: ce &nbsp; &nbsp;}</div>
<div style=3D"margin:0px">&nbsp; &nbsp; - { srcblk: _device_, srcport: rfno=
c_chdr, &nbsp; &nbsp;dstblk: duc0, &nbsp; dstport: ce &nbsp; &nbsp;}</div>
<div style=3D"margin:0px">&nbsp; &nbsp; - { srcblk: _device_, srcport: dram=
, &nbsp;dstblk: fifo0, &nbsp;dstport: mem &nbsp; }</div>
<div style=3D"margin:0px">&nbsp; &nbsp; - { srcblk: _device_, srcport: rfno=
c_chdr, &nbsp; &nbsp;dstblk: Block0, &nbsp;dstport: ce }</div>
<span style=3D"margin:0px; background-color:white">
<div style=3D"margin:0px"><span style=3D"margin:0px; background-color:white=
"><br>
</span></div>
### End of Block_x310_rfnoc_image_core.yml</span>
<div style=3D"margin:0px"><br>
</div>
Thanks again for any help.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
Jim</div>
<div id=3D"x_gmail-m_-2290235696390808754appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-2290235696390808754divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blan=
k">rkossler@nd.edu</a>&gt;<br>
<b>Sent:</b> Thursday, October 1, 2020 10:19 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Trouble getting custom RFNoC block to work=
 with gnuradio 3.8 / uhd 4.0</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Jim,
<div>I have also been playing around with UHD-4.0, but mostly in testbenche=
s. I've only built one image (for the N310) with one of my custom blocks. T=
he errors you mentioned seem very strange. A few questions/comments:</div>
<div>- can you send your &quot;XXX_x310_rfnoc_image_core.yml&quot; contents=
?</div>
<div>- would it be helpful&nbsp;to run directly with UHD examples (removing=
 gnuradio and gr-ettus from the equation)?&nbsp; You could try &quot;rfnoc_=
rx_to_file&quot; as-is where you specify on the command line the desired &q=
uot;block-id&quot; to insert between the Radio and the rx_streamer.&nbsp;
 With the X310, the Radio rate might be too high with your custom &quot;thr=
u&quot; block so perhaps you could modify the example (in-tree would be eas=
iest) to automatically include the DDC and then insert the command line &qu=
ot;block-id&quot; optionally after the DDC.</div>
<div>- In my testbenches, I have occasionally seend CHDR error messages lik=
e you mentioned and it seemed to solve them if I set &quot;s_out_payload_tk=
eep=3D1&quot;. I didn't think this was needed if there was only 1 output po=
rt, but I seem to recall that this fixed my
 CHDR error issue for my 1&nbsp; port block.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Sep 30, 2020 at 10:39 AM Jim Palladino via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
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
Several weeks ago I went through the tutorial for producing the example &qu=
ot;gain&quot; block using rfnoc 3.8 and uhd 3.15. There were some bumps, bu=
t I did get that working fine. For the past couple weeks, I've been working=
 with UHD 4.0 and the latest gr-ettus repo.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I posted a question a week or two ago since I couldn't get UHD to recognize=
 my custom block, as UHD doesn't look for the block yml file in the latest =
uhd 4.0 build. It just shows up as &quot;0/Block#0&quot; when probing. Than=
ks to Wade F. for the quick response to that
 question and for suggesting I either just continue OOT and use the &quot;B=
lock&quot; name to interface with it or build in-tree for now. I chose to s=
tick with OOT and just use the &quot;Block&quot; naming.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I started with the gain example, but ended up simplifying it to literally j=
ust using what was generated by rfnocmodtool (just a pass through block in =
the FPGA) with no modifications. I made an rfnoc block, called &quot;Block&=
quot;. I built this for an E320, so I did
 have to modify the &quot;XXX_x310_rfnoc_image_core.yml&quot; file accordin=
gly.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I built/installed everything, but this is what is happening. When I create =
a gnuradio-companion &quot;waveform&quot;, it does run, but I get the follo=
wing behavior:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
1) If my setup is RFNoC_RX_Radio -&gt; RFNoC_DDC_Block -&gt; RFNoC_Block -&=
gt; RFNoC_RX_Streamer -&gt; QT_GUI_Freq_Sink:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Everything runs, but the following repeats over and over and the output plo=
t doesn't change:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
----</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I put in some ILA probes and it seems that &quot;ep4_to_xb_tready&quot; is =
stuck low. ep4 is the endpoint tied to the in and out of my custom &quot;Bl=
ock.&quot; I'm guessing it didn't start low but a FIFO or something filled =
up somewhere.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I should mention that if I use this same setup, but remove my custom RFNoC_=
Block and directly connect the DDC to the RX_Streamer, everything works fin=
e. No errors, the spectrum looks fine, etc.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
2) If my setup is Constant_Source(set to 4+9j) -&gt; RFNoC_TX_Streamer -&gt=
; RFNoC_Block -&gt; RFNoC_RX_Streamer -&gt; QT_GUI_Time_Sink:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Everything runs and I do not have a problem with any gnuradio warnings. Als=
o, TReady is high the entire time. But, the output plot for I and Q sit mos=
tly constant stuck at &quot;1&quot;, with non-periodic blips down to &quot;=
0&quot;. I'm not seeing the complex constant I set in
 gnuradio. If I look at the payload_tdata in an ILA for my &quot;Block&quot=
; when tvalid is high and tready is high, I see that the data is sitting at=
 0x7fff7fff except when TLAST is high, tdata switches to 0xfffc7ff7.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm at a bit of a loss trying to figure out what is happening. Could it be =
that UHD is not interfacing properly to my block (given that UHD doesn't lo=
ok for my OOT yml file)? I did not change any block controller code or anyt=
hing else. Oh, and the user_register
 that is included as part of the default design designated by rfnocmodtool =
seems to work fine. I can change the register value in gnuradio and I can s=
ee it change appropriately via and ILA.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
For reference, this is what I've been working with:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
1) UHD (v4.0.0.0 tag)</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
2) gnuradio (3.8.2.0 tag)</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; color:black; background-color:rgb(255,255,255)">
3) gr-ettus (maint-3.8-uhd4.0 branch)</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
RFNoC is new to me, so any thoughts on what could be wrong or how I could g=
o about debugging this would be greatly appreciated. Hopefully, I'm just mi=
ssing something simple.</div>
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGu=
qHauOvsPdD2NZkfwDnwpYx0&amp;m=3DFz9nkm5B61ZorZZVX1jSes3LSxtOxW2XFb-XA9r-7vI=
&amp;s=3DHTsRqrOpxd15k2kgT7iXFYxZW4Xwm9wIh3gu8TDf4Pg&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGu=
qHauOvsPdD2NZkfwDnwpYx0&amp;m=3Db2AlTidElkmDJcJHy8NcfscGTp_HD7DhVUdl3Rfu4gI=
&amp;s=3DlzHy3_c4sElRGuoM9AfUYyy5128FP1BXmHXnE3VCLzg&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312C2BBD40DA64545345E99B80A0MN2PR12MB3312namp_--


--===============9165662439309319352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9165662439309319352==--

