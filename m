Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2781379FF
	for <lists+usrp-users@lfdr.de>; Sat, 11 Jan 2020 00:15:09 +0100 (CET)
Received: from [::1] (port=60606 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iq3Ui-00040A-A3; Fri, 10 Jan 2020 18:15:08 -0500
Received: from mail-dm6nam10on2064.outbound.protection.outlook.com
 ([40.107.93.64]:35681 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <minutolo@caltech.edu>)
 id 1iq3Ue-0003uU-TZ
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 18:15:05 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XamqRYBi+uW4mds1icjmRzfXpom31yxqflvgenq3LNHnWAqAABBvjsLRRMmyxoCp3IJsHNfA6RYgbfpZwUdD4mLapx18BZ6gy76Sp+ogYRV2xyiw6Lq2BtmgY3yBUZRwYg2JwcGVtTuzWKlrc2zvvzChq/wwsyOqwpYX0bZhT1bozo/ips6hCFadlvkyFaC9+som0vy7jpzk3dxqA6XBp1nZsiH+yE29CuK+GWc3xH58akDsPm6NG7tn9c9Tq7Vs5sBbIJ5R7+lTiK4dRjhUIBSvyLbG7wI8XqVN0enqKuzd/TJ2JhjFEDgV+AbFhUidl6TrL0LCu6sUm/ADd/oyuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qpvSWoKrFJt4g4yCms68tGd/cdPad8nlYDPpfVH29/8=;
 b=YD+SJ4GboYmumQVsiXrfvMwu8bdkKJ/LkNMA15MgvXXQbZPDOkSm2RgH+Jp4mQvoi/ab/JERqPCh0vzrEU8JYCGThfkah9BRbi8Bh9cKkbPrRQViCIn+5rY3zIXT2wX3vR+8RgebaBGTnmOXnivOfk6nC8NSLK5qpeZe2J+ydhPuz40y1k1k8y6VbxZHstZSvd4U5nb26Sfp5ReGM0f4AWNEBISKThh/b8wXIljjTJnTZVVqvffUPwSP9KHJqh3V4UiQXCgcPxLSkZ7AGsbTOGDjuDMGgL7dq0dJnSiBffgidRfsO9JAgaD0gdfLsUrgNzff5pwj6IewXI3hb4t5kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=caltech.onmicrosoft.com; s=selector2-caltech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qpvSWoKrFJt4g4yCms68tGd/cdPad8nlYDPpfVH29/8=;
 b=WKP1XVDv7NWjQAkrZCNR8BHjSJbx44hKanvcqqcT4PcBhEwjM5M4EN/GAZMNfc3ywSAQmuGIheZSnisopyXbJfTzPbYkDxQKqTt1/Bgh7uNGn/a4CsWpK3CMWKqmVw4u76HnsTTBa7oNgdfKXZMZU35nf6QcyWfVApPhs8dR6Ec=
Received: from BYAPR03MB3621.namprd03.prod.outlook.com (52.135.215.140) by
 BYAPR03MB4694.namprd03.prod.outlook.com (20.179.91.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 23:14:23 +0000
Received: from BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::d9ee:a980:1ccf:439c]) by BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::d9ee:a980:1ccf:439c%5]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 23:14:23 +0000
To: "Minutolo, Lorenzo via USRP-users" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] dpdk with x300
Thread-Index: AQHVwqQn8I+YQNNZkkioELnUvLj+vKfd1xkAgABULcSAAAolgIAGWnJWgAABwG0=
Date: Fri, 10 Jan 2020 23:14:23 +0000
Message-ID: <BYAPR03MB3621E3B314A6F58E34EAC9E3D3380@BYAPR03MB3621.namprd03.prod.outlook.com>
References: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>
 <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
 <BYAPR03MB36218EB0E57F003E09E58806D33C0@BYAPR03MB3621.namprd03.prod.outlook.com>,
 <CANf970YaK1aXGuxcrwNSUkA89x-4frk9N4TdHWSOHKc5PzjHzw@mail.gmail.com>,
 <BYAPR03MB3621B04B52C79280DE3B1C0DD3380@BYAPR03MB3621.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB3621B04B52C79280DE3B1C0DD3380@BYAPR03MB3621.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=minutolo@caltech.edu; 
x-originating-ip: [131.215.193.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0d14f1d-d06b-4f8c-c6e7-08d79622d498
x-ms-traffictypediagnostic: BYAPR03MB4694:
x-microsoft-antispam-prvs: <BYAPR03MB46943D8C1C06122273AAA86FD3380@BYAPR03MB4694.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6019001)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(269900001)(199004)(189003)(186003)(75432002)(86362001)(5660300002)(26005)(316002)(19627405001)(7696005)(2906002)(786003)(8936002)(71200400001)(6506007)(81156014)(81166006)(53546011)(8676002)(6916009)(52536014)(2940100002)(9686003)(33656002)(66946007)(76116006)(478600001)(66446008)(66556008)(966005)(64756008)(66476007)(55016002)(16193025007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4694;
 H:BYAPR03MB3621.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: caltech.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KjJBosUSsvV/PqETQyFM8idOise9jKLfyLdSaZC1FtnnC23pgI3mlBfFbjitGSyTJS+Y8xoyWufUe5z/+qFSFIEmoPAnmVIW1ySJZEnip7GvdjSQ8XNdk3VZ5q8KpUM8YuYbCsHC5eOOY8Yg84kb5jrWtDDh6z80io+6cF2nsE6zeFVuSqIHFzHp4Qm4BxzuQkUtWhq+kOypxvfWUzkPdUkmDb8fByR9mTFIm0lu8Q5HesaAXsyFHmfBWnD76uEvwa8zUKf2C/xqRIaKIYW5e5++hI4RdIruqadWWjN/jwuw5AmFfoBq5W2a4c5EA2T3NxzWq6timuGSfR3Cok6uD/Hc7tf7/OZHULC8Ni6H33zP6at2WBdiYHzkG3tDL/ZuV1uyuBAj3vnvkr25bOQkInwoHk6knmrDCyHXkWcCyaIyasK86nYBvC1nJ0P4RW1J3onTjBxH0HgDSVyBPHIIYOuSnN29uSovprETl31czsof+oT2X6rm3tZpUfOc+mEYjlwpROf1yJ/zcpR+kE9Ar/lz1ms7PJ/3hfrdBUPFfziHz8gddqbONZJJp/q9jtemGZBwYM4/rRJIP6UAN0o7CA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f0d14f1d-d06b-4f8c-c6e7-08d79622d498
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 23:14:23.4492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YFndsKrCh/HqtCfYYUihHdkWYRiiXbgv2vzpGtRBKXNwwXz2MFTe2Qg9U3AaXmzQOq7Zv+IrgUwVoMWFoR6hLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4694
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
Content-Type: multipart/mixed; boundary="===============8009149396449624407=="
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

--===============8009149396449624407==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB3621E3B314A6F58E34EAC9E3D3380BYAPR03MB3621namp_"

--_000_BYAPR03MB3621E3B314A6F58E34EAC9E3D3380BYAPR03MB3621namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

As a side note: I tried running the program as "sudo su" with the same exac=
t result.

Lorenzo
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Minutolo=
, Lorenzo via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, January 10, 2020 3:08 PM
To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] dpdk with x300

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

--_000_BYAPR03MB3621E3B314A6F58E34EAC9E3D3380BYAPR03MB3621namp_
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
As a side note: I tried running the program as &quot;sudo su&quot; with the=
 same exact result.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Minutolo, Lorenzo via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, January 10, 2020 3:08 PM<br>
<b>To:</b> Sam Reiter &lt;sam.reiter@ettus.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] dpdk with x300</font>
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
Changed the driver string but the problem persists. Is it problematic that =
the NIC is on the last PCIe slot of the motherboard (same NUMA socket)?</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I attached the command I'm giving and the output.</div>
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
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Sam Reiter &lt;sam.=
reiter@ettus.com&gt;<br>
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
<div dir=3D"ltr" class=3D"x_x_gmail_signature">
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
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Mon, Jan 6, 2020 at 3:29 PM Mi=
nutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltec=
h.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bo=
rder-left:1px solid rgb(204,204,204); padding-left:1ex">
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
<div id=3D"x_x_gmail-m_-8247312858927414669appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_gmail-m_-8247312858927414669divRplyFwdMsg" dir=3D"ltr"><font=
 face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b=
>From:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D=
"_blank">sam.reiter@ettus.com</a>&gt;<br>
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
</div>
</body>
</html>

--_000_BYAPR03MB3621E3B314A6F58E34EAC9E3D3380BYAPR03MB3621namp_--


--===============8009149396449624407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8009149396449624407==--

