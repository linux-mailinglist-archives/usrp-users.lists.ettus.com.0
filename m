Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05341EC850
	for <lists+usrp-users@lfdr.de>; Fri,  1 Nov 2019 19:12:40 +0100 (CET)
Received: from [::1] (port=53386 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQbPU-0006js-NB; Fri, 01 Nov 2019 14:12:32 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:56712)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iQbPR-0006bB-6r
 for usrp-users@lists.ettus.com; Fri, 01 Nov 2019 14:12:29 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 76CD4109F63
 for <usrp-users@lists.ettus.com>; Fri,  1 Nov 2019 18:11:48 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2055.outbound.protection.outlook.com [104.47.49.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us3.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A53C39C0074;
 Fri,  1 Nov 2019 18:11:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8SqRSrB6gG6EVEWwdRk92gprDil/KKK1D1Z8Aps8noQCgrVPyvQgPrULeMpmHpEC9D3n7hSlOByEXjm8sRBs3Y7U/JqRftcpaQ4AR9JW/PbCCvZIuf57C+jRFw053kL2w3lwqbd6ZBOIBrkpPVv2H1suf/Z0QHD7uN97YMjRjL1yTU1qxFJ3HHw1V2qiC8WGsH6Mn1DXFplNxd1hH6XtFaPmcWxaKThkQ/0Lv/JuxQBxyZa7xWyZ69qsY5L5GXj8JBuwfo8+ZutsJovN1d78gb6JSIxh14DjIjBW05rWKW9asPXFoelqTIiou9XkTBuPN+f4OEsFpetGA870nfyjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvqHaACvVLPcNtTA9hOQjVWDgj00t20l0VYpZklkatQ=;
 b=Q8KGH7ThzUQUbkWADl5Bo16oB9zZgtkcEBleaXvTn8UI1qvXeN/Y487B0XUdZNBWtBSBPDatiNIYkIVl7G1vC7uOsNDa9DTKRNFgE/u1yhYF/76/t6VV+ccXQTRvL4n6yIdhRuofTHabu0IYJbLiUshyvH8L1KB8hVbd9RSLqCHx6RRdxv8bs6/R6Zn09Whf5eAzlmjjHoEXDHPdxOSbgSQrlEvjbdA68u9YpLHz0fIMPuZaw/Q2jNl9aGPiAqwSyMChUULt3VaVVDFm3T0FtrDNHep+b53vAZVeH8KVlCCrQ2At5PXlNnDt0M3CBztM1cCKsxecdmmeoZpK4kmjuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvqHaACvVLPcNtTA9hOQjVWDgj00t20l0VYpZklkatQ=;
 b=sk7niu7H5MtuhTjb5xJr0NOMtM/vjER/KB85ac4jfxLkihky8PeZwxCu29iHArF/WvWf71JWhz71NvrnyuCskziDdgv9bqz9g6GUTm/M+AoEGEJGlrpaJq29c4PHbMLGvKCqPV/+daCysw99P5iSqzqlVDbXGzRdTU+Q6XHCcQw=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2515.namprd12.prod.outlook.com (52.132.28.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 18:11:35 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::34cc:615e:b7d0:13ab]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::34cc:615e:b7d0:13ab%3]) with mapi id 15.20.2387.028; Fri, 1 Nov 2019
 18:11:34 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "support@ettus.com" <support@ettus.com>, Jonathan Lockhart
 <jlockhartrt@gmail.com>
Thread-Topic: [USRP-users] RFNoC Radio Issue
Thread-Index: AQHVkCIcqQiu6AtN90WgyiemK/Mp/6d1IyGAgAF7xYY=
Date: Fri, 1 Nov 2019 18:11:34 +0000
Message-ID: <BL0PR12MB2340C7DB13B69397120EC83DAF620@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <CALY+5sK8VYxWGiOsX7XSw7ScxLkKKhWtNm66U=OdfxEFCyqKYw@mail.gmail.com>,
 <CALY+5sJ+1kZzKHUziCUk=ibby1nzZa_voOhXQFYVe2rbyN4jrg@mail.gmail.com>
In-Reply-To: <CALY+5sJ+1kZzKHUziCUk=ibby1nzZa_voOhXQFYVe2rbyN4jrg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [2601:14f:0:9440:247a:bd8b:3050:d11a]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b6e1454-bf5b-431a-cb94-08d75ef6ee4b
x-ms-traffictypediagnostic: BL0PR12MB2515:
x-microsoft-antispam-prvs: <BL0PR12MB2515E94FD6E94F192748EDC4AF620@BL0PR12MB2515.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(396003)(136003)(346002)(376002)(165144002)(51444003)(199004)(189003)(7696005)(5024004)(64756008)(66476007)(66946007)(105004)(446003)(11346002)(52536014)(76116006)(66556008)(476003)(19627405001)(46003)(66446008)(8936002)(86362001)(508600001)(5660300002)(74316002)(316002)(71200400001)(6436002)(229853002)(71190400001)(2501003)(186003)(55016002)(76176011)(236005)(6246003)(110136005)(14444005)(99286004)(486006)(54896002)(33656002)(2906002)(14454004)(256004)(102836004)(8676002)(6116002)(53546011)(81156014)(7736002)(81166006)(9686003)(25786009)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2515;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b/eJvI1xuE30pNLHjEYDZdQf7pHLfgsZ29Ks17Ce8plns9KWyIr5ieTyyDrWbiONd2T0QVBHy+f9MVXdWacJjAl+WF8QZlJc/4HpQNXxUzyKktIuPg0lpnO8BGrK4CSfir0gVQIxyGtaIn+xVjW5/+rLgCY1N/v4tfTqhOOCwX3YJanhfhLuBOj9oXKTadi2vjfkhdYZYl4WT0zUHLaud6BnTgGZAVfngHQAkLW6BHPV4KQycQggoeBR2PGDhoGJJtRRNt0s0Z4t2I8QzX00+YxLHLt0AuGNvuHGfGyKTOgrPTBRaSc39OP+0oHnS+DOY8RThaAXy1KaWwXXbemFXwze+ki+/5tClpz0wuEkyimGEFwk6HFDnXfKapQQU2zZbFHIzDdGaD4oPnNbvJi8W+f4ElB4wzxF8YKOK83oDixL4HU8aKzE0Xs/76nz6vdf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b6e1454-bf5b-431a-cb94-08d75ef6ee4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 18:11:34.7505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aUZUXzruBuRSMdahRfkECubw50JHRwSGmgPyEhXPBx8nEOzdjavjphgYua6vgWFkaatN2NmaKn0SvLekXdpi8cBY6j7DPprlxvSCVAYQN90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2515
X-MDID: 1572631898-l6dZCZzGPgct
Subject: Re: [USRP-users] RFNoC Radio Issue
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
Content-Type: multipart/mixed; boundary="===============2622329761587662469=="
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

--===============2622329761587662469==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340C7DB13B69397120EC83DAF620BL0PR12MB2340namp_"

--_000_BL0PR12MB2340C7DB13B69397120EC83DAF620BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Jonathon, If you look at the more recent commits for UHD, they added in a f=
ix to the split_stream error.  Basically you need to change a 1'b1 to a 2'b=
11 in the noc_shell section (I think that is the section, I can't recall of=
f the top of my head).  Try that and rebuild.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jonathan=
 Lockhart via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, October 31, 2019 3:30 PM
To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>; support@ettus.=
com <support@ettus.com>
Subject: Re: [USRP-users] RFNoC Radio Issue

Apologies, the files are attached.

On Thu, Oct 31, 2019 at 3:30 PM Jonathan Lockhart <jlockhartrt@gmail.com<ma=
ilto:jlockhartrt@gmail.com>> wrote:
Greetings,

I was wondering if anyone else has had this issue with the RFNoC radio bloc=
k.

So I was using the copy block with the rfnoc_fosphor_network_usrp.grc file =
as I wanted to split off the signal before it went off to the RFNoC Window.=
 So I put in a copy block (since the RFNoC Split block appears to be broken=
) and passed the data off to a ZMQ Push and back to the window to continue =
to be processed by the FPGA. GNURadio says this is all well and good since =
all vectors are 512 and builds the file. However, when I run the .py file o=
n my E312 it throws an error stating that the radio is providing data of si=
ze 8 when the copy block expects to get data of size 512 (the vector size).

[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.HEAD-0-=
gbfb9c1c7
[INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...
[INFO] [E300] FPGA image loaded
[INFO] [E300] Detecting internal GPS
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test...
[INFO] [E300] Register loopback test passed
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)
[WARNING] [RFNOC] Can't find a block controller for key FFT, using default =
block controller!
[INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
[INFO] [0/Window_0] Initializing block control (NOC ID: 0xD053000000000000)
[WARNING] [RFNOC] Can't find a block controller for key fosphor, using defa=
ult block controller!
[INFO] [0/fosphor_0] Initializing block control (NOC ID: 0x666F000000000000=
)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
Traceback (most recent call last):
  File "rfnoc_fosphor_network_usrp.py", line 282, in <module>
    main()
  File "rfnoc_fosphor_network_usrp.py", line 271, in main
    tb =3D top_block_cls(fft_size=3Doptions.fft_size, fpga_path=3Doptions.f=
pga_path, freq=3Doptions.freq, gain=3Doptions.gain, host_ip_addr=3Doptions.=
host_ip_addr, samp_rate=3Doptions.samp_rate, tdecay=3Doptions.tdecay, trise=
=3Doptions.trise)
  File "rfnoc_fosphor_network_usrp.py", line 166, in __init__
    self.connect((self.uhd_rfnoc_streamer_radio_0, 0), (self.blocks_copy_0,=
 0))
  File "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr=
/hier_block2.py", line 47, in wrapped
    func(self, src, src_port, dst, dst_port)
  File "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr=
/hier_block2.py", line 110, in connect
    self.primitive_connect(*args)
  File "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr=
/runtime_swig.py", line 3482, in primitive_connect
    return _runtime_swig.top_block_sptr_primitive_connect(self, *args)
ValueError: itemsize mismatch: rfnoc_radio0:0 using 8, copy0:0 using 4096

I have attached my modified examples for anyone who is interested. I have t=
ried to modify the python and that just gets me into more trouble.

Through my tracing of the files it appears that the RFNoC Radio block in th=
e .py file never actually uses the vector size, and that the force vector l=
ength block is an additive to allow compliance when working in GNURadio, as=
 it will not generate python with mismatched types and sizes. Trying to for=
ce the radio to take the 512 as an argument in the python throws a new erro=
r that the Radio is only allowed to have 5 arguments and I have supplied 6,=
 and validated in the Ettus .py file that there is no arg for vector size.

I was wondering if anyone found away around this or got the RFNoC Split blo=
ck working?

Regards,
Jon Lockhart

--_000_BL0PR12MB2340C7DB13B69397120EC83DAF620BL0PR12MB2340namp_
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
Jonathon, If you look at the more recent commits for UHD, they added in a f=
ix to the split_stream error.&nbsp; Basically you need to change a 1'b1 to =
a 2'b11 in the noc_shell section (I think that is the section, I can't reca=
ll off the top of my head).&nbsp; Try that
 and rebuild.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Jonathan Lockhart via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, October 31, 2019 3:30 PM<br>
<b>To:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; s=
upport@ettus.com &lt;support@ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] RFNoC Radio Issue</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Apologies, the files are attached. <br>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Oct 31, 2019 at 3:30 PM Jon=
athan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com">jlockhartrt@gma=
il.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div>Greetings,</div>
<div><br>
</div>
<div>I was wondering if anyone else has had this issue with the RFNoC radio=
 block.</div>
<div><br>
</div>
<div>So I was using the copy block with the rfnoc_fosphor_network_usrp.grc =
file as I wanted to split off the signal before it went off to the RFNoC Wi=
ndow. So I put in a copy block (since the RFNoC Split block appears to be b=
roken) and passed the data off to
 a ZMQ Push and back to the window to continue to be processed by the FPGA.=
 GNURadio says this is all well and good since all vectors are 512 and buil=
ds the file. However, when I run the .py file on my E312 it throws an error=
 stating that the radio is providing
 data of size 8 when the copy block expects to get data of size 512 (the ve=
ctor size).</div>
<div><br>
</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 4.9.2; Boost_105700; UHD_3=
.14.1.HEAD-0-gbfb9c1c7<br>
[INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...<br>
[INFO] [E300] FPGA image loaded<br>
[INFO] [E300] Detecting internal GPS <br>
.... [INFO] [E300] GPSDO found<br>
[INFO] [E300] Initializing core control (global registers)...<br>
<br>
[INFO] [E300] Performing register loopback test... <br>
[INFO] [E300] Register loopback test passed<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)<=
br>
[WARNING] [RFNOC] Can't find a block controller for key FFT, using default =
block controller!<br>
[INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)<br=
>
[INFO] [0/Window_0] Initializing block control (NOC ID: 0xD053000000000000)=
<br>
[WARNING] [RFNOC] Can't find a block controller for key fosphor, using defa=
ult block controller!<br>
[INFO] [0/fosphor_0] Initializing block control (NOC ID: 0x666F000000000000=
)<br>
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
Traceback (most recent call last):<br>
&nbsp; File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 282, in &lt;mod=
ule&gt;<br>
&nbsp; &nbsp; main()<br>
&nbsp; File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 271, in main<br=
>
&nbsp; &nbsp; tb =3D top_block_cls(fft_size=3Doptions.fft_size, fpga_path=
=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Doptions.gain, host_ip_add=
r=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_rate, tdecay=3Doptions.t=
decay, trise=3Doptions.trise)<br>
&nbsp; File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 166, in __init_=
_<br>
&nbsp; &nbsp; self.connect((self.uhd_rfnoc_streamer_radio_0, 0), (self.bloc=
ks_copy_0, 0))<br>
&nbsp; File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/g=
nuradio/gr/hier_block2.py&quot;, line 47, in wrapped<br>
&nbsp; &nbsp; func(self, src, src_port, dst, dst_port)<br>
&nbsp; File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/g=
nuradio/gr/hier_block2.py&quot;, line 110, in connect<br>
&nbsp; &nbsp; self.primitive_connect(*args)<br>
&nbsp; File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/g=
nuradio/gr/runtime_swig.py&quot;, line 3482, in primitive_connect<br>
&nbsp; &nbsp; return _runtime_swig.top_block_sptr_primitive_connect(self, *=
args)<br>
ValueError: itemsize mismatch: rfnoc_radio0:0 using 8, copy0:0 using 4096</=
div>
<div><br>
</div>
<div>I have attached my modified examples for anyone who is interested. I h=
ave tried to modify the python and that just gets me into more trouble.
<br>
</div>
<div><br>
</div>
<div>Through my tracing of the files it appears that the RFNoC Radio block =
in the .py file never actually uses the vector size, and that the force vec=
tor length block is an additive to allow compliance when working in GNURadi=
o, as it will not generate python
 with mismatched types and sizes. Trying to force the radio to take the 512=
 as an argument in the python throws a new error that the Radio is only all=
owed to have 5 arguments and I have supplied 6, and validated in the Ettus =
.py file that there is no arg for
 vector size. <br>
</div>
<div><br>
</div>
<div>I was wondering if anyone found away around this or got the RFNoC Spli=
t block working?</div>
<div><br>
</div>
<div>Regards,</div>
<div>Jon Lockhart<br>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340C7DB13B69397120EC83DAF620BL0PR12MB2340namp_--


--===============2622329761587662469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2622329761587662469==--

