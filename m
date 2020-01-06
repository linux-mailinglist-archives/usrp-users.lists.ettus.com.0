Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9010131A6E
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 22:30:43 +0100 (CET)
Received: from [::1] (port=59956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioZxM-0006Sv-8o; Mon, 06 Jan 2020 16:30:36 -0500
Received: from mail-eopbgr690045.outbound.protection.outlook.com
 ([40.107.69.45]:34561 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <minutolo@caltech.edu>)
 id 1ioZxI-00068F-I4
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 16:30:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmpZmdLiDaCs9HGgkm/qdJ3CoO0CKklVmNgez8f+gmvr2Mgrru3e0uaFX4tMuxgvqmeQeV4MkuWTFswFmpx78uxcL92mJcQlscjOmi81+4lkpHBisEbljLHAi/7iu6i/0Mh6tNhMfzhpTy4SA3lZmidM/ls6cBvHwlyTSTgYV21DsXEzGlFdf/BwNvbCR84PucN63uIGLEfteAVjRHB3udTNROBcG1B7hisRsDnphx5yHeevrLGd387swiOlloPlM7Ds2843lZqAezc0mVW2j1SyKOpMitT2+7JEa0bWzYcuVfIBZ1Uo8RKE4pKP+i0k1Eq2r/BTGNukSBLV9pSqdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQo5pt76o3nnqN3DszNElQhW4Q4RoyHB3/wJuvSZQwQ=;
 b=hlSe1LRg4dBqtTPZnfRhroJRrTEzvZWKWsZeUqZxUD5QkGbx4r1zpBKrODH8gA9GbVzu+yP0/Op46mVokmpVf2ge8XAp3CMY3RDn5uqbT+QVBPHDWqoTVbnEUFY5Hm497rO6HCRtTi8VJX8kpGXpUzDJHGi4XC1k7+0iQHzvXuq/0jEqIaRCHan5tVVznPNQbbk+o2G8KLF7lNx8Ve7NFjweYRJOVDjGPheYFwb6SJ9vJLGe197PfwZbh1/O8a5KnsUTuPairvUwG2hSm+KVplb416COxEvv1ohnwtfbn/ae5nQJV4sGF6bKDTqUxYEOPEWGr6sfyviG6NQngf7aPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=caltech.onmicrosoft.com; s=selector2-caltech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQo5pt76o3nnqN3DszNElQhW4Q4RoyHB3/wJuvSZQwQ=;
 b=nP7oUNj3MT5B705LAn++ppz4xYyn5VjUxo1U5jycGisne46siziPhYca3W0lE38pXjGih5wQfb1DwvhNdKZ+kJg+QIOMRfoe9mfEF61PUygtk5rpHNNy410Y7p306tL/yBCY/D21CF1A3q8zbBSooupDjKdYff1j9Tw5Nqh10eI=
Received: from BYAPR03MB3621.namprd03.prod.outlook.com (52.135.215.140) by
 BYAPR03MB4808.namprd03.prod.outlook.com (20.179.93.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Mon, 6 Jan 2020 21:29:50 +0000
Received: from BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::d9ee:a980:1ccf:439c]) by BYAPR03MB3621.namprd03.prod.outlook.com
 ([fe80::d9ee:a980:1ccf:439c%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 21:29:50 +0000
To: Sam Reiter <sam.reiter@ettus.com>
Thread-Topic: [USRP-users] dpdk with x300
Thread-Index: AQHVwqQn8I+YQNNZkkioELnUvLj+vKfd1xkAgABULcQ=
Date: Mon, 6 Jan 2020 21:29:50 +0000
Message-ID: <BYAPR03MB36218EB0E57F003E09E58806D33C0@BYAPR03MB3621.namprd03.prod.outlook.com>
References: <DM6PR03MB3628C629B0B2462EB4C9A3A6D3220@DM6PR03MB3628.namprd03.prod.outlook.com>,
 <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
In-Reply-To: <CANf970ahrDonuDf=ROLFBkLJcA=tD=386JP+Uv+7uVFjNeibrg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=minutolo@caltech.edu; 
x-originating-ip: [131.215.193.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9327e940-4fcb-423e-93d2-08d792ef8fcf
x-ms-traffictypediagnostic: BYAPR03MB4808:
x-microsoft-antispam-prvs: <BYAPR03MB48081A0EDD276C089AE9E830D33C0@BYAPR03MB4808.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(189003)(199004)(53754006)(8676002)(786003)(316002)(19627405001)(55016002)(9686003)(81166006)(81156014)(86362001)(71200400001)(966005)(478600001)(4326008)(8936002)(6916009)(76116006)(2906002)(66946007)(66476007)(66446008)(66556008)(5660300002)(64756008)(26005)(52536014)(186003)(33656002)(7696005)(6506007)(53546011)(75432002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4808;
 H:BYAPR03MB3621.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: caltech.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7xGm4RlbYhwWu7CjewPu2IjTyi5renFe0x1/WtLwy8yFAg8tCqOWVrWDtgDJUhVAaiElXHpO/ga1/yHZxipXsT6X0vQvLXcyKH7cJzwwab4tu/YXm3/vLjcHDOBp5JJ9ehAbct6sAhrjs10MoAutsqoLzMfuj4fnJp/JQVJpG33mEB4mMzUebtfn3KpPA7yP7t8rvQd5dhespm468VAgcOnoZHYe9OGR/LB6jsoECvwha0Cw4bv9t/RtLoHj2I7S0MbGvrCw5NlRTuWFYuHvI7A1oIfYCc+zK+0d4docpiQq2cz3EA3Orl86fjVXvWOCU2S+QC3hnrtA7/92lJozy4hf01jsc92YcsY+eUyF5iFUHIvWnWeWRTIhz+f1NT+GftZfBXjd4NOTuLH5DTFy2qX0J/Vi0JlIP2E+Ja0DfDO6X275qlrNt8P1sWBdm2yFjSjuEgVIG4u28+7YejD06hfItqW+h/L3Q8O3SqcAlxSCr+txfcaBHrbCgWSudrlUfPZLBfyU9NsisFkiXHRDksWBSg3RTKjTN7t1vg2jn5E=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9327e940-4fcb-423e-93d2-08d792ef8fcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 21:29:50.2020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fsR/xqJ6U45Mq3QtsxiCBuTRXAIc7ziDN2bnm7idJaZvavBUqlKbsqQt/LVPBY3idS8/ankqg8vf9gbC4kZGYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4808
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
Content-Type: multipart/mixed; boundary="===============5991699165264506133=="
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

--===============5991699165264506133==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB36218EB0E57F003E09E58806D33C0BYAPR03MB3621namp_"

--_000_BYAPR03MB36218EB0E57F003E09E58806D33C0BYAPR03MB3621namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I' using:

dpdk-procinfo -v
EAL: Detected 16 lcore(s)
EAL: RTE Version: 'DPDK 17.11.9'

Thanks,
Lorenzo
________________________________
From: Sam Reiter <sam.reiter@ettus.com>
Sent: Monday, January 6, 2020 8:27 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
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

--_000_BYAPR03MB36218EB0E57F003E09E58806D33C0BYAPR03MB3621namp_
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
I' using:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
dpdk-procinfo -v<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>EAL: Detected 16 lcore(s)<br>
</span><span>EAL: RTE Version: '<b>DPDK 17.11.9'</b></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><b><br>
</b></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span></span>Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Sam Reiter &lt;sam.re=
iter@ettus.com&gt;<br>
<b>Sent:</b> Monday, January 6, 2020 8:27 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
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
<div dir=3D"ltr" class=3D"x_gmail_signature">
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
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jan 3, 2020 at 8:20 PM Minu=
tolo, Lorenzo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
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
</body>
</html>

--_000_BYAPR03MB36218EB0E57F003E09E58806D33C0BYAPR03MB3621namp_--


--===============5991699165264506133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5991699165264506133==--

