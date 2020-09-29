Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CDD27D560
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 20:03:42 +0200 (CEST)
Received: from [::1] (port=55056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNJyX-00048d-5d; Tue, 29 Sep 2020 14:03:41 -0400
Received: from mail-co1nam11on2069.outbound.protection.outlook.com
 ([40.107.220.69]:27265 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kNJyT-0003zZ-5y
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 14:03:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMPe8DYgDvrnjt+qcIfiow6osUdlmi8sz6YOpkIkMBh5HY449Dn0E4mmv81JyHrsHPN0D7dAUpC04PP/fGaafl4p9auwZ/oj2QZZM7DRlgPZWi9d/P4O1dOFofa+lVEPWjEKAaEHOXHcCZUQKlABvXg6v9AX96tajwzkhDEq8fOdrZZkJ2VKwn1EiLyv14Vwn2jL01pVkE5qp2vpnhVe+WIsUZgkhRsS9vqCXznJfEDXtZDkcu5RllwVmEDmYpiVpnY1LECB5a+gq3PqRHcqhGJK4WVoPKbdNuv29LCFuE/VmQzsQ3MALBX9M/pwKkRFHQ25o7/nU9yV7ghKWnTrlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0p/YKWieX8WD+eyw56Smgmr0BKqrfHcCnD6pIHuJXo=;
 b=O2tubu7Q5C97HNUOwZJrtH4WdUnY8/eit0bAjyMEPLi3Ax8uF8GXjxwukQJVuqMJuZ7Bbi43Wsq67ofj+cxn4sLD559OCzyjxtubEjmlu/EYs7FeIxvGgYQxiSvQI7lSXPC8TKfXaNFYofsMKNlB0xCYGveBU1Ji/3KwvjK6qj9ozdMoaNkHqEFvq7O/KzGI68GCQmoQesfZQojdmoYOowM7nZF8TxBXDuvDeX0/1cX7p1FUv8qIvztiUzF1tekhjHjMsUxI0pRj0EE10zpSWj6n53XLCYjZPCgg+J+kYHqjgKMc5dVDgzS2OTW5eyTwEoiaxugVMtLt12e16MoZHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0p/YKWieX8WD+eyw56Smgmr0BKqrfHcCnD6pIHuJXo=;
 b=bpIaPJmCIDvVEd6njCXzqFI7IpDkaXh+l3eKVyhQ2OJPO8FlWtCAe8Ch1T1tBNqjoGbMUR71Pm/5qDqPDBG7aRHCZoShkcPNLhkikC4r/EdE0P7ltGDwByzCDXf0mV7gvDlutauLu0Ts6DJZJIy0fAGAXBHwLIJLv2H85QNVhss=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM5PR12MB1724.namprd12.prod.outlook.com (2603:10b6:3:10f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Tue, 29 Sep
 2020 18:02:54 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1%4]) with mapi id 15.20.3412.029; Tue, 29 Sep 2020
 18:02:54 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] TWINRX Gain
Thread-Index: AQHWlodZUI4MTk+k5EORf24LkVKWzql/5TUAgAAAQImAAAGxgIAAACuG
Date: Tue, 29 Sep 2020 18:02:54 +0000
Message-ID: <DM6PR12MB3067CA6916624B9C2B8528328C320@DM6PR12MB3067.namprd12.prod.outlook.com>
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
 <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <5F7375B7.60104@gmail.com>
In-Reply-To: <5F7375B7.60104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1342fa14-632d-4136-d54e-08d864a1e3cb
x-ms-traffictypediagnostic: DM5PR12MB1724:
x-microsoft-antispam-prvs: <DM5PR12MB1724929E8454791441DC6B8E8C320@DM5PR12MB1724.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cyTZc4N/bNukXXZjoRDGfaltFDbl4N4uyYG/bla2AtKrWMyhm9eT7YQ/lIK41dZgp4JeK0Tu2203B202iYm1PQLzjGtcL+s5JgwQLfC7lxDeHHAnxpozoLdNwBeTg8JOr0PY95rpWXmtEQwAvQl3eOHB1bKzM4rRv//AjSHyVU0cwVeU5QbxCxCQLeLJ6C/3hMEF52GXtOkYd3bsGzwtUNI/BwczgazIrPM6GyBPycHSnguCHOBv8JL34CDxfi/L9NeGPdxuOznuCD1zMPFBvXVPigztg5kicB3o9PZzCFmn9Rqz/CQK96pT6rspgluMHZX6EYnB2P7qaPFE1pzZRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39830400003)(396003)(376002)(346002)(366004)(5660300002)(33656002)(76116006)(8936002)(71200400001)(55016002)(2906002)(6506007)(53546011)(9686003)(52536014)(7696005)(186003)(86362001)(19627405001)(478600001)(6916009)(26005)(83380400001)(8676002)(66446008)(66476007)(66556008)(64756008)(4326008)(66946007)(44832011)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: P3P+C9WEvnKyqGQm5FlMYfOWRZuFoMmjMS+NC/Ylc6k3c/kP/3VyuAF9SH7VtGuVSxuMoYnaT3lkhH9CfCE1ZtHE0/qkjh5b068WzzTiV3TksLp904VUg6U6/1Pk3KSQgakasxenmP5knhZotcDhwW2qKQ6ZDFqI1qVEBk05QSMVE/pENc7fqGBvf8V8nZjfE75HyXrMAn08DN0L4PtCxS3LFWp4iOOj4JLGowXEyP5DNJDKcC2kHdDsaaKV01ULIEOUUw7CfxGK/xL7ppa0pFVSfIWlAu59OUgeCwkTPicL4mslItrzWQodXI5LZRx8jKp1fgq7uhS/Lt17qTD1gYuKh4gk2ocHu+vU7kIW2dTXYE8AJgE2pc2w9uqwMQYiiuu48Se8j6JmEikiDpS9daVCoiNftLB4u4TCL86AlWl89CXjRS4lgaHuXTkRWBibKH9Al4Bqpk6YPt5XplVGAp8kOXoPnorng/IX7pa9gtxJN2Vw8cEZeS827GwgCWC+hCpfqm+Y7GpjurlGXTd+7mw/IDn9MkfnCIiFjtV7pUqwmPX8iT2uDicFTvoiWkcsI/BMVlza8OYbSSC0UIq1MeIYrEyJk1hiZ49jQcjWU+Sy8gjY7vwWOTGg9EGShEN61Q/zsVYdia8UR27i/LPuew==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1342fa14-632d-4136-d54e-08d864a1e3cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2020 18:02:54.5974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Y+J4VIx9MrRbH4MGYKiFEri7FG8YT+8s9LLQus9pv89Fn+usc9xOFcg4FFEhP5kxKRS4O7cjaVEgA2/IqjU/Q7IAnwlNHY3a47zmqgmHbtfVaGGI10xe0iyMjFGGl1Z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1724
Subject: Re: [USRP-users] TWINRX Gain
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
From: Mark Koenig via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Content-Type: multipart/mixed; boundary="===============4804507217464748366=="
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

--===============4804507217464748366==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB3067CA6916624B9C2B8528328C320DM6PR12MB3067namp_"

--_000_DM6PR12MB3067CA6916624B9C2B8528328C320DM6PR12MB3067namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, I understand gain varies with temperature and frequency, I just wasnt =
sure if there was any receive chain analysis performed with the daughtecard=
 to give the developer an idea of what type of gain is provided over the at=
tenuation range at various frequencies.  I am not too concerned about tenth=
s of dBs....I was just interested in what the actual gain range provided by=
 the card is.

Thanks

Mark
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, September 29, 2020 1:58 PM
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] TWINRX Gain

On 09/29/2020 01:54 PM, Mark Koenig wrote:
Marcus,

Thank you for the quick response.  In my application I am trying to remove =
the true gain I am applying to the signal.  So when you refer to control ra=
nge, moving from 0 to 10, may result in only 5dB of gain, or something to t=
hat effect, correct?  When you have that information of the true gain appli=
ed, can you pass it along?

Thank you very much.

Mark
________________________________

If you're trying to mathematically remove the gain to estimate actual power=
 at the antenna, you aren't doing it right.

You need to use a known calibration source, and build a calibration table o=
ver your expected operating parameters.

The fact is that actual delivered gain will change with center frequency an=
d temperature (although the temperature effects will
  be small).



--_000_DM6PR12MB3067CA6916624B9C2B8528328C320DM6PR12MB3067namp_
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
Yes, I understand gain varies with temperature and frequency, I just wasnt =
sure if there was any receive chain analysis performed with the daughtecard=
 to give the developer an idea of what type of gain is provided over the at=
tenuation range at various frequencies.&nbsp;
 I am not too concerned about tenths of dBs....I was just interested in wha=
t the actual gain range provided by the card is.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Mark</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, September 29, 2020 1:58 PM<br>
<b>To:</b> Mark Koenig &lt;mark.koenig@iubelttechnologies.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] TWINRX Gain</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/29/2020 01:54 PM, Mark Koenig wrote:=
<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you for the quick response.&nbsp; In my application I am trying to re=
move the true gain I am applying to the signal.&nbsp; So when you refer to =
control range, moving from 0 to 10, may result in only 5dB of gain, or some=
thing to that effect, correct?&nbsp; When you have
 that information of the true gain applied, can you pass it along?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you very much.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Mark</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</blockquote>
If you're trying to mathematically remove the gain to estimate actual power=
 at the antenna, you aren't doing it right.<br>
<br>
You need to use a known calibration source, and build a calibration table o=
ver your expected operating parameters.<br>
<br>
The fact is that actual delivered gain will change with center frequency an=
d temperature (although the temperature effects will<br>
&nbsp; be small).<br>
<br>
<br>
</div>
</body>
</html>

--_000_DM6PR12MB3067CA6916624B9C2B8528328C320DM6PR12MB3067namp_--


--===============4804507217464748366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4804507217464748366==--

