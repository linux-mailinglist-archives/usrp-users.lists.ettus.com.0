Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D481379F9
	for <lists+usrp-users@lfdr.de>; Sat, 11 Jan 2020 00:09:44 +0100 (CET)
Received: from [::1] (port=59004 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iq3PL-0003bf-U4; Fri, 10 Jan 2020 18:09:35 -0500
Received: from mail-co1nam11on2053.outbound.protection.outlook.com
 ([40.107.220.53]:23066 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <minutolo@caltech.edu>)
 id 1iq3PI-0003Xv-7h
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 18:09:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xrmdyt1McxMsFBbI6Xzkpkd7y7LHTBp/lwngJ4zuxzBOBX3Kh6ouVMPJlsz5JXkvqPjXZsBRuhcmmR1u1ymIWO9GkDlCOPWl5oE8pU7IVlSYfIwEOU+O7d5yj7iWdDh0j1kqZQeYAtgn6fejAu8DWvigPJuHxaX6wYg1HPuXwm0RroBTRt3lqteg36ARmvKNoBYxJqWvR7tVbdEVjsVhJXpAXyKek6T66IMWA1N6Nj6a9hSZ32e42lzQwHzH5dE/1fgw1EZBGQ3kZbA5kQQwphP7xHXVDuqYRUQshnCuZ7iGNkLlNJpXgAlO8CaBPHR3SFQOl0tL33o1DsAGs4kyfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npAC3LKt00tXGNE3lo64NmX3zkl9xLOfNmVGuTfJnqs=;
 b=K8W13DhkdW00+EZrZMofkZ/CURXByxyMwws8RtJo2+1Gr1Ce1em6kmcXXyfUev4/APHwNEmhWCrH0KSyISMe4XvlWaA4+js1lOObyeBjQuRvX8Igdhcl4RJIZr8BAiUv7CovOnvrUdKmRZJ/Fg6tPkebJN2ajhG+/AWuMF4QlDFfgOrZbHST6zHf37wDpTkRkGXF8syOLUTHcAzRYqHrruZXG4ww6qKU+3jeHEdY4pY+qn3JSGn9P3PjDQgNP0noa8bS+UM0EZnXUROLp7T2zA09EU7x3NZN/Ay2plLfN9V19o1eedWi+o6CdqE5BkVh5LpYKB0rEl6fN4Sd3XQnyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=caltech.onmicrosoft.com; s=selector2-caltech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npAC3LKt00tXGNE3lo64NmX3zkl9xLOfNmVGuTfJnqs=;
 b=Myh/ole2pQUq4XOCW+W2k0fE5RcAEVH5tGdjEW97WZKnA9A455p8o8Xyf7QdmoTWfqWTT85kpTjL0w2n9JYGc6FG9Indpve0EeM0KRQTGxKRIi/jphxcrwpr3wvFxBQa3w/c2NyDoox7od/RNodiw5MWlib9uq5vbF3bdlppUe8=
Received: from BYAPR03MB3621.namprd03.prod.outlook.com (52.135.215.140) by
 BYAPR03MB3846.namprd03.prod.outlook.com (20.177.125.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.8; Fri, 10 Jan 2020 23:08:50 +0000
Received: from BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::d9ee:a980:1ccf:439c]) by BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::d9ee:a980:1ccf:439c%5]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 23:08:50 +0000
To: Sam Reiter <sam.reiter@ettus.com>
Thread-Topic: [USRP-users] dpdk with x300
Thread-Index: AQHVwqQn8I+YQNNZkkioELnUvLj+vKfd1xkAgABULcSAAAolgIAGWnJW
Date: Fri, 10 Jan 2020 23:08:50 +0000
Message-ID: <BYAPR03MB3621B04B52C79280DE3B1C0DD3380@BYAPR03MB3621.namprd03.prod.outlook.com>
References: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>
 <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
 <BYAPR03MB36218EB0E57F003E09E58806D33C0@BYAPR03MB3621.namprd03.prod.outlook.com>,
 <CANf970YaK1aXGuxcrwNSUkA89x-4frk9N4TdHWSOHKc5PzjHzw@mail.gmail.com>
In-Reply-To: <CANf970YaK1aXGuxcrwNSUkA89x-4frk9N4TdHWSOHKc5PzjHzw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=minutolo@caltech.edu; 
x-originating-ip: [131.215.193.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8b4588c-7e0f-47ac-2f9d-08d796220de3
x-ms-traffictypediagnostic: BYAPR03MB3846:
x-microsoft-antispam-prvs: <BYAPR03MB3846DA066F5F4F68A9C9F29DD3380@BYAPR03MB3846.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6019001)(4636009)(39860400002)(366004)(376002)(346002)(136003)(396003)(269900001)(189003)(199004)(86362001)(6506007)(53546011)(478600001)(786003)(316002)(75432002)(76116006)(9686003)(8936002)(966005)(66616009)(7696005)(81156014)(64756008)(66476007)(186003)(66446008)(6916009)(81166006)(66946007)(8676002)(55016002)(2906002)(26005)(66556008)(19627405001)(4326008)(52536014)(71200400001)(5660300002)(33656002)(16193025007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3846;
 H:BYAPR03MB3621.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: caltech.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zGmHzrNJZZeWH11RdoyIHYZgC8TEF9bukIaLLhPyefih9jN307nOcCY625dUPrmH973vVBHaJrYUMV0U2Lp/r7zf4FkX1GbDiwqYV5QUdoe6zeW4OQtxBwcZgZfu54sgKTA1PziPDlQxBsYPdJZyD+Q3H9DF3ggjYEfZ+1dC4Tj/X+GPSc/PGiRmt7HwLIi5NWGH1t+nUatm0YgULk8+GPG/B6/GXToBjPYGIat3YgOmXZcybWnqax1bekUZGBzl+BYaZt4gslffjFsF5HOsWBm29eC1JWgsaSLlYSLFnTn2zq90Uzod3YeUKUnNXMYhxzuycV2nBbTAzcE3SpIFFlylkKp9kyEuYrQLHTevf7HC0sfCVslFQFTSlaj5XsC8AK7SwJGO0f+a+qXdFWiGRgzem77DiA6q85ABxq+QtUVJwOYyz8yPD2p80nkl9cJ7D2wKPCA7Rm1fenWW8pltAUCK0x8NmFc1QcPuZSM8oOofC/IbL8eyXHgH4LeiYgvuHoZOd2L5uTCE//arDXNWftniXLDSYBeEojg+1W10cNY=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_004_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_"
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b4588c-7e0f-47ac-2f9d-08d796220de3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 23:08:50.0782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E+7TC8IM1vV9b3blKG+LQxSuP/zt6a5LWMr8TFFW72ULHo4T3UEdZ/oqp7Hzh8QV3EkDlKSvNpPD4IY7S7wuBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3846
Subject: Re: [USRP-users] dpdk with x300
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

--_004_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_"

--_000_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Changed the driver string but the problem persists. Is it problematic that =
the NIC is on the last PCIe slot of the motherboard (same NUMA socket)?

I attached the command I'm giving and the output.

Thanks,
Lorenzo
________________________________
From: Sam Reiter <sam.reiter@ettus.com>
Sent: Monday, January 6, 2020 2:05 PM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] dpdk with x300

That should be fine.

Looking over those screenshots again, you'll need to change your dpdk drive=
r path in uhd.conf. Here's what the uncommented parts of uhd.conf should lo=
ok like for 17.11:

[use_dpdk=3D1]
dpdk-mtu=3D9000
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/
dpdk-corelist=3D1,2,3
dpdk-num-mbufs=3D4095
dpdk-mbufs-cache-size=3D315
[dpdk-mac=3Daa:bb:cc:dd:ee:f1]
dpdk-io-cpu =3D 2
dpdk-ipv4 =3D 192.168.10.1/24<http://192.168.10.1/24>
[dpdk-mac=3Daa:bb:cc:dd:ee:f2]
dpdk-io-cpu =3D 3
dpdk-ipv4 =3D 192.168.20.1/24<http://192.168.20.1/24>

Note that the IP and MAC need to be changed for your machine.

Sam Reiter
Ettus Research

On Mon, Jan 6, 2020 at 3:29 PM Minutolo, Lorenzo <minutolo@caltech.edu<mail=
to:minutolo@caltech.edu>> wrote:
I' using:

dpdk-procinfo -v
EAL: Detected 16 lcore(s)
EAL: RTE Version: 'DPDK 17.11.9'

Thanks,
Lorenzo
________________________________
From: Sam Reiter <sam.reiter@ettus.com<mailto:sam.reiter@ettus.com>>
Sent: Monday, January 6, 2020 8:27 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu<mailto:minutolo@caltech.edu>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] dpdk with x300

Lorenzo,

What version of DPDK are you using?

Sam Reiter
Ettus Research

On Fri, Jan 3, 2020 at 8:20 PM Minutolo, Lorenzo via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi All,
I'm using an x300 connected via a Intel X710 to a machine running Ubuntu 18=
.04. I'm using the recently released UHD 3.15 LTS.
I'm trying to follow the guide to connect via dpdk. Everything in the guide=
 on the Ettus website works however when launching uhd_usrp_probe (as sudo =
uhd_usrp_probe --args "address =3D 192.168.30.2, use_dpdk=3D1") I get the o=
utput reported in the output.png attachment. My actual dpdk-devbind.py --st=
atus is reported in status.png attachment as well as the uhd.conf I'm using=
.

What am I doing wrong?

In the configuration file I tried altering the cores to see if that was an =
issue but nothing changed.

Thanks,
Lorenzo
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_
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
Changed the driver string but the problem persists. Is it problematic that =
the NIC is on the last PCIe slot of the motherboard (same NUMA socket)?</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I attached the command I'm giving and the output.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Sam Reiter &lt;sam.re=
iter@ettus.com&gt;<br>
<b>Sent:</b> Monday, January 6, 2020 2:05 PM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] dpdk with x300</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>That should be fine. <br>
</div>
<div><br>
</div>
<div>Looking over those screenshots again, you'll need to change your dpdk =
driver path in uhd.conf. Here's what the uncommented parts of uhd.conf shou=
ld look like for 17.11:<br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:monospace">[use_dpdk=3D1]<br>
dpdk-mtu=3D9000<br>
dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/<br>
dpdk-corelist=3D1,2,3<br>
dpdk-num-mbufs=3D4095<br>
dpdk-mbufs-cache-size=3D315<br>
[dpdk-mac=3Daa:bb:cc:dd:ee:f1]<br>
dpdk-io-cpu =3D 2<br>
dpdk-ipv4 =3D <a href=3D"http://192.168.10.1/24">192.168.10.1/24</a><br>
[dpdk-mac=3Daa:bb:cc:dd:ee:f2]<br>
dpdk-io-cpu =3D 3<br>
dpdk-ipv4 =3D <a href=3D"http://192.168.20.1/24">192.168.20.1/24</a></span>=
</div>
<div><br>
</div>
<div>Note that the IP and MAC need to be changed for your machine.</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Jan 6, 2020 at 3:29 PM Minu=
tolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech.=
edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I' using:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
dpdk-procinfo -v<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>EAL: Detected 16 lcore(s)<br>
</span><span>EAL: RTE Version: '<b>DPDK 17.11.9'</b></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><b><br>
</b></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span></span>Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Lorenzo<br>
</div>
<div id=3D"x_gmail-m_-8247312858927414669appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-8247312858927414669divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_=
blank">sam.reiter@ettus.com</a>&gt;<br>
<b>Sent:</b> Monday, January 6, 2020 8:27 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" ta=
rget=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] dpdk with x300</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Lorenzo,</div>
<div><br>
</div>
<div>What version of DPDK are you using?</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Fri, Jan 3, 2020 at 8:20 PM Minutolo, Lorenzo via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm using an x300 connected via a Intel X710 to a machine running Ubuntu 18=
.04. I'm using the recently released UHD 3.15 LTS.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm trying to follow the guide to connect via dpdk. Everything in the guide=
 on the Ettus website works however when launching uhd_usrp_probe (as sudo =
uhd_usrp_probe --args &quot;address =3D 192.168.30.2, use_dpdk=3D1&quot;) I=
 get the output reported in the output.png attachment.
 My actual dpdk-devbind.py --status is reported in status.png attachment as=
 well as the uhd.conf I'm using.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
What am I doing wrong?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
In the configuration file I tried altering the cores to see if that was an =
issue but nothing changed.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Lorenzo<br>
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
</blockquote>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_--

--_004_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_
Content-Type: text/plain; name="report_dpdk.txt"
Content-Description: report_dpdk.txt
Content-Disposition: attachment; filename="report_dpdk.txt"; size=2656;
	creation-date="Fri, 10 Jan 2020 23:08:19 GMT";
	modification-date="Fri, 10 Jan 2020 23:08:49 GMT"
Content-Transfer-Encoding: base64

bGViaWNlcEBHUFVzZXJ2ZXI6fiQgc3VkbyB1aGRfdXNycF9wcm9iZSAtLWFyZ3MgImFkZHIgPSAx
OTIuMTY4LjQwLjIsIHNlY29uZF9hZGRyID0gMTkyLjE2OC4zMC4yLCB1c2VfZHBkayA9MSIKW0lO
Rk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy40LjA7IEJvb3N0XzEwNjYwMDsgVUhE
XzMuMTUuMC4wLTEyNC1nZWI0NDgwNDMKRUFMOiBEZXRlY3RlZCAxNiBsY29yZShzKQpFQUw6IFBy
b2JpbmcgVkZJTyBzdXBwb3J0Li4uCkVBTDogVkZJTyBzdXBwb3J0IGluaXRpYWxpemVkCkVBTDog
UENJIGRldmljZSAwMDAwOjAwOjFmLjYgb24gTlVNQSBzb2NrZXQgLTEKRUFMOiAgIEludmFsaWQg
TlVNQSBzb2NrZXQsIGRlZmF1bHQgdG8gMApFQUw6ICAgcHJvYmUgZHJpdmVyOiA4MDg2OjE1YmMg
bmV0X2UxMDAwX2VtCkVBTDogUENJIGRldmljZSAwMDAwOjAyOjAwLjAgb24gTlVNQSBzb2NrZXQg
LTEKRUFMOiAgIEludmFsaWQgTlVNQSBzb2NrZXQsIGRlZmF1bHQgdG8gMApFQUw6ICAgcHJvYmUg
ZHJpdmVyOiA4MDg2OjE1ODMgbmV0X2k0MGUKRUFMOiBQQ0kgZGV2aWNlIDAwMDA6MDI6MDAuMSBv
biBOVU1BIHNvY2tldCAtMQpFQUw6ICAgSW52YWxpZCBOVU1BIHNvY2tldCwgZGVmYXVsdCB0byAw
CkVBTDogICBwcm9iZSBkcml2ZXI6IDgwODY6MTU4MyBuZXRfaTQwZQpFQUw6IFBDSSBkZXZpY2Ug
MDAwMDowMzowMC4wIG9uIE5VTUEgc29ja2V0IC0xCkVBTDogICBJbnZhbGlkIE5VTUEgc29ja2V0
LCBkZWZhdWx0IHRvIDAKRUFMOiAgIHByb2JlIGRyaXZlcjogODA4NjoxNTcyIG5ldF9pNDBlCkVB
TDogICB1c2luZyBJT01NVSB0eXBlIDEgKFR5cGUgMSkKUE1EOiBHbG9iYWwgcmVnaXN0ZXIgaXMg
Y2hhbmdlZCBkdXJpbmcgZW5hYmxlIEZESVIgZmxleGlibGUgcGF5bG9hZApQTUQ6IEdsb2JhbCBy
ZWdpc3RlciBpcyBjaGFuZ2VkIGR1cmluZyBzdXBwb3J0IFFpblEgcGFyc2VyClBNRDogR2xvYmFs
IHJlZ2lzdGVyIGlzIGNoYW5nZWQgZHVyaW5nIGNvbmZpZ3VyZSBoYXNoIGlucHV0IHNldApQTUQ6
IEdsb2JhbCByZWdpc3RlciBpcyBjaGFuZ2VkIGR1cmluZyBjb25maWd1cmUgZmRpciBtYXNrClBN
RDogR2xvYmFsIHJlZ2lzdGVyIGlzIGNoYW5nZWQgZHVyaW5nIGNvbmZpZ3VyZSBoYXNoIG1hc2sK
UE1EOiBHbG9iYWwgcmVnaXN0ZXIgaXMgY2hhbmdlZCBkdXJpbmcgc3VwcG9ydCBRaW5RIGNsb3Vk
IGZpbHRlcgpQTUQ6IEdsb2JhbCByZWdpc3RlciBpcyBjaGFuZ2VkIGR1cmluZyBzdXBwb3J0IFRQ
SUQgY29uZmlndXJhdGlvbgpFQUw6IFBDSSBkZXZpY2UgMDAwMDowMzowMC4xIG9uIE5VTUEgc29j
a2V0IC0xCkVBTDogICBJbnZhbGlkIE5VTUEgc29ja2V0LCBkZWZhdWx0IHRvIDAKRUFMOiAgIHBy
b2JlIGRyaXZlcjogODA4NjoxNTcyIG5ldF9pNDBlCkVBTDogUENJIGRldmljZSAwMDAwOjAzOjAw
LjIgb24gTlVNQSBzb2NrZXQgLTEKRUFMOiAgIEludmFsaWQgTlVNQSBzb2NrZXQsIGRlZmF1bHQg
dG8gMApFQUw6ICAgcHJvYmUgZHJpdmVyOiA4MDg2OjE1NzIgbmV0X2k0MGUKRUFMOiBQQ0kgZGV2
aWNlIDAwMDA6MDM6MDAuMyBvbiBOVU1BIHNvY2tldCAtMQpFQUw6ICAgSW52YWxpZCBOVU1BIHNv
Y2tldCwgZGVmYXVsdCB0byAwCkVBTDogICBwcm9iZSBkcml2ZXI6IDgwODY6MTU3MiBuZXRfaTQw
ZQpQTUQ6IEdsb2JhbCByZWdpc3RlciBpcyBjaGFuZ2VkIGR1cmluZyBlbmFibGUgRkRJUiBmbGV4
aWJsZSBwYXlsb2FkClBNRDogR2xvYmFsIHJlZ2lzdGVyIGlzIGNoYW5nZWQgZHVyaW5nIHN1cHBv
cnQgUWluUSBwYXJzZXIKUE1EOiBHbG9iYWwgcmVnaXN0ZXIgaXMgY2hhbmdlZCBkdXJpbmcgY29u
ZmlndXJlIGhhc2ggaW5wdXQgc2V0ClBNRDogR2xvYmFsIHJlZ2lzdGVyIGlzIGNoYW5nZWQgZHVy
aW5nIGNvbmZpZ3VyZSBmZGlyIG1hc2sKUE1EOiBHbG9iYWwgcmVnaXN0ZXIgaXMgY2hhbmdlZCBk
dXJpbmcgY29uZmlndXJlIGhhc2ggbWFzawpQTUQ6IEdsb2JhbCByZWdpc3RlciBpcyBjaGFuZ2Vk
IGR1cmluZyBzdXBwb3J0IFFpblEgY2xvdWQgZmlsdGVyClBNRDogR2xvYmFsIHJlZ2lzdGVyIGlz
IGNoYW5nZWQgZHVyaW5nIHN1cHBvcnQgVFBJRCBjb25maWd1cmF0aW9uCkVBTDogV2FpdGluZyBm
b3IgbGlua3MgdG8gY29tZSB1cC4uLgpFQUw6IEluaXQgRE9ORSEKRUFMOiBTdGFydGluZyBJL08g
dGhyZWFkcyEKRUFMOiBQbGVhc2Ugc2V0IElQdjQgYWRkcmVzcyBmb3IgcG9ydCAwIGJlZm9yZSBv
cGVuaW5nIHNvY2tldApbRVJST1JdIFtYMzAwXSBYMzAwIE5ldHdvcmsgZGlzY292ZXJ5IGVycm9y
IEFzc2VydGlvbkVycm9yOiBfcnhfc29jayAhPSBudWxscHRyCiAgaW4gdWhkOjp0cmFuc3BvcnQ6
OmRwZGtfc2ltcGxlX2ltcGw6OmRwZGtfc2ltcGxlX2ltcGwodWhkOjp0cmFuc3BvcnQ6OnVoZF9k
cGRrX2N0eCYsIGNvbnN0IHN0cmluZyYsIGNvbnN0IHN0cmluZyYsIGJvb2wpCiAgYXQgL2hvbWUv
bGViaWNlcC9Eb2N1bWVudHMvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC9kcGRrX3NpbXBsZS5jcHA6
NDQKCkVycm9yOiBMb29rdXBFcnJvcjogS2V5RXJyb3I6IE5vIGRldmljZXMgZm91bmQgZm9yIC0t
LS0tPgpEZXZpY2UgQWRkcmVzczoKICAgIGFkZHI6IDE5Mi4xNjguNDAuMgogICAgc2Vjb25kX2Fk
ZHI6IDE5Mi4xNjguMzAuMgogICAgdXNlX2RwZGs6IDEKCg==

--_004_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_004_BYAPR03MB3621B04B52C79280DE3B1C0DD3380BYAPR03MB3621namp_--

