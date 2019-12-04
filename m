Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F021128C8
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2019 11:03:23 +0100 (CET)
Received: from [::1] (port=56078 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icRVC-00042e-9x; Wed, 04 Dec 2019 05:03:22 -0500
Received: from mail-eopbgr30069.outbound.protection.outlook.com
 ([40.107.3.69]:2276 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Hasan.Can.Yildirim@vub.be>)
 id 1icRV8-0003vW-5P
 for usrp-users@lists.ettus.com; Wed, 04 Dec 2019 05:03:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCoqfTgtuu1g7SZ9mZsf4v3c42teqYjcHpmIMmwdRQw6EGEzaRq/awL5g3toJNn/o68Iga39odq0/R7dSrKBd3zKps7g/CwXVPXfYoyoaUHzg+7tfgioVMrYln0Ui1GrX+LOcd2PZvW4cGbT0jMDk7aRBM3WKRRSxb9fAbnCz5/XMwbcF3IWqm7W3K1NXRjnK4WwSe7+2ClTAPoheaMbUYcFfAOVd6b4t0sEuRUYfn3pgyud495pA7WCZmqGkI77RezxnT2YiyX+c6bdsLNX2aLUG2sjXJritBisMm+HT6yXSdXZz7CKLOTUh/Nw7DWy+t/X6h2QEEraluEvE676oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K7kJ3OkYNJjJLMIn1QMzes8H/FuGngMDxo3x8ZHFe6I=;
 b=Km9NOQDrw4sKZTeEpFfhMRf+VDuXbK0ghprNKYv+kx7+LH0Zzx4Z9SnajFedn1rd6k63Eh1/PQ5w7Xp29/BDTuieKdzhBOCmYUsiRpu62zv/eGKl3hnSFtkED4VYpe0AGxr4XyN/ELjiCFTPo9fUWpxFHu/FZDex9+jyuC43ldVqNBVa562aldq2PICf9NoqnBXpgDgXCpZ9Iv1r2Hj0Q62RpCnOQ25ttsh7B3nermEbDqhn/WAjsMMLmd9jGUwxRlFj9GW83n/hncWgvlfGvuHl/n0hIkjn5suLkDraEeRNQfCQVaUjG2NCJGqvLPvD5E4O+LvfxVI/xpHt0gSSNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vub.be; dmarc=pass action=none header.from=vub.be; dkim=pass
 header.d=vub.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vub.be; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K7kJ3OkYNJjJLMIn1QMzes8H/FuGngMDxo3x8ZHFe6I=;
 b=vxzvu3kiwRhHNEDLSHb3CnOwHHlCnJKw9+RnuMBBxDhE2j40E32mIU+EjX8y+Tli0LZA4Jioa1rT2ltEY/fI+f3MZYg7NLc6u+Kzz3xZkJDO8apKjcSK9dts2N/+BouqWJxylAAcn+YQ1Nxtb5scW8QnFy9UX/Nz211cyuFhYR0=
Received: from AM6PR0102MB3589.eurprd01.prod.exchangelabs.com (52.133.9.20) by
 AM6PR0102MB3399.eurprd01.prod.exchangelabs.com (52.133.8.20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 10:02:36 +0000
Received: from AM6PR0102MB3589.eurprd01.prod.exchangelabs.com
 ([fe80::c8c6:fd97:ca6f:c205]) by
 AM6PR0102MB3589.eurprd01.prod.exchangelabs.com
 ([fe80::c8c6:fd97:ca6f:c205%2]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 10:02:36 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Time Synchronized Transmit with 2 USRPs 
Thread-Index: AQHVqon0Gng8341Lika8wxs2aFL5DQ==
Date: Wed, 4 Dec 2019 10:02:36 +0000
Message-ID: <AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0@AM6PR0102MB3589.eurprd01.prod.exchangelabs.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Hasan.Can.Yildirim@vub.be; 
x-originating-ip: [164.15.76.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb7a9dd5-2416-4772-ad02-08d778a116ca
x-ms-traffictypediagnostic: AM6PR0102MB3399:
x-microsoft-antispam-prvs: <AM6PR0102MB33990FC263CC9CE91C68796DAC5D0@AM6PR0102MB3399.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(376002)(136003)(39860400002)(189003)(199004)(53754006)(25786009)(2906002)(99286004)(7696005)(6436002)(7736002)(74316002)(76116006)(19627405001)(66946007)(6506007)(66476007)(66556008)(64756008)(5640700003)(9686003)(54896002)(66446008)(316002)(8676002)(26005)(786003)(102836004)(105004)(81156014)(81166006)(55016002)(6116002)(3846002)(186003)(52536014)(71200400001)(71190400001)(8936002)(33656002)(4743002)(5660300002)(2351001)(478600001)(86362001)(256004)(2501003)(14454004)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0102MB3399;
 H:AM6PR0102MB3589.eurprd01.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vub.be does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s4MEDzzLkARUgZ8G+8oku0xXqUVPOMKilJJIqpPFvwxvkesjg763NsrGUbkiPWWyXRv0t8BBZNCr4Tyrw9gyL/+55J2bAvzyNw+pkN4I3t1OFoLNBorFuJwPwQnQkqzVzThW88QNkmRRUmuYWviCc6etqpnsSaPCRh5kHALrp3+IgpGs1i1EejdNvaeMY/cL0rkjKUZ5NpXSiEEt6ktICQkkx+/7oJbl0JrBZKghMggpvBL1po11jVCazBBZNCeC+23Fb3lKVI0rpX/jmmoiHMgulhHqrpniNc02csWFOWaI4l1YXDWfagkzjGp6agqke/UGDaLWS0VTd0482JRWq/Rb2vJKyPQLpENrisJApBFx06RSMzJ4588eCUvyewB4JCHEfXhcGIsKWdkVzcCQoej1z3rMZAMKHCpJL00GJiqksnLmeEdcksx4a1RvMFfww/HtDpT8sBR6dOKi6Yn03DR6w51Tnuq0Cl/nAfTgl6MQpE49e+EIMBVr0AjT8a+O
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vub.be
X-MS-Exchange-CrossTenant-Network-Message-Id: cb7a9dd5-2416-4772-ad02-08d778a116ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 10:02:36.2474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 695b7ca8-2da8-4545-a2da-42d03784e585
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SvffKbK52rUI1ed0CMGDzZxNlHPiz5wE3v1C7PYksnpA+GEwHgXcCX3sQB/Ou4f6bjPcAeEdjJvIX/QzHH3T5Le4ypSsLFE2/LJPdIFedPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0102MB3399
Subject: [USRP-users] Time Synchronized Transmit with 2 USRPs
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
From: Hasan Can Yildirim via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hasan Can Yildirim <Hasan.Can.Yildirim@vub.be>
Content-Type: multipart/mixed; boundary="===============7176020813119422332=="
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

--===============7176020813119422332==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0AM6PR0102MB3589_"

--_000_AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0AM6PR0102MB3589_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

Here is the summary of my experimental setup:

4 data receiving channels with 2 USRPs. Sampling rates are 100 Msps.
1 data transmitter with 1 USRP. Sampling rate is 100 Msps.
1 calibration transmitter with 1 USRP. Sampling rate is 50 Msps (or smaller=
, say 33.3 Msps).

All the daughterboards are UBX160.
The USRPs are connected through the 10Gbit/s ethernet connections.
I am using a modified version of the C/C++ code with the uhd libraries. So,=
 no gnu-radio etc.

The question in one sentence:

How can I start transmitting at the same time with 2 USRPs, that has two di=
fferent sampling rates, and 'invoked' at two different terminals?

Here is the detailed explanation about what I want to achieve with this set=
up:

I want to use the calibration signal, to estimate the unknown delays/phases=
 (introduced by the hardwares) on the receiver side, then use this calibrat=
ion to apply angle-of-arrival algorithms on the received data.
I know that I could transmit the calibration signal and the data signal, at=
 the same time. Then apply a high-pass filter to separate the calibration s=
ignal, do the calibration, and so on...
Instead, I would like to synchronize the data and calibration transmitters,=
 so that they start transmitting at the same time. Receiver will receive co=
ntinuously, for a long enough duration.
In other words, the calibration signal will be a signal of N samples and M =
zeros. Mean while, the data will be N zeros, M data samples. So, during the=
 first N samples, I will receive only the calibration signal, then during t=
he next M samples, I will receive the data signal. To achieve this, the two=
 transmitters have to start transmitting at the same time (maybe a small er=
ror with a few samples is acceptable). How can I achieve this?


Thanks a lot for your advices.

Cheers,
Hasan




--_000_AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0AM6PR0102MB3589_
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
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi all,</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<u>Here is the summary of my experimental setup:</u></div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
4 data receiving channels with 2 USRPs. Sampling rates are 100 Msps.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
1 data transmitter with 1 USRP. Sampling rate is 100 Msps.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
1 calibration transmitter with 1 USRP. Sampling rate is 50 Msps (or smaller=
, say 33.3 Msps).&nbsp;</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
All the daughterboards are UBX160.&nbsp;</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
The USRPs are connected through the 10Gbit/s ethernet connections.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I am using a modified version of the C/C&#43;&#43; code with the uhd librar=
ies. So, no gnu-radio etc.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<u>The question in one sentence:</u></div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
How can I start transmitting at the same time with 2 USRPs, that has two di=
fferent sampling rates, and 'invoked' at two different terminals?</div>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<u>Here is the detailed explanation about what I want to achieve with this =
setup:</u></div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I want to use the calibration signal, to estimate the unknown delays/phases=
 (introduced by the hardwares) on the receiver side, then use this calibrat=
ion to apply angle-of-arrival algorithms on the received data.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I know that I could transmit the calibration signal and the data signal, at=
 the same time. Then apply a high-pass filter to separate the calibration s=
ignal, do the calibration, and so on...&nbsp;</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Instead, I would like to synchronize the data and calibration transmitters,=
 so that they start transmitting at the same time. Receiver will receive co=
ntinuously, for a long enough duration.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
In other words, the calibration signal will be a signal of N samples and M =
zeros. Mean while, the data will be N zeros, M data samples. So, during the=
 first N samples, I will receive only the calibration signal, then during t=
he next M samples, I will receive
 the data signal. To achieve this, the two transmitters have to start trans=
mitting at the same time (maybe a small error with a few samples is accepta=
ble). How can I achieve this?</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thanks a lot for your advices.</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Cheers,</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hasan</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: &quot;Times New Roman&quot;, Times, serif; font-=
size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
</body>
</html>

--_000_AM6PR0102MB3589D39F15DBC28274EBA55BAC5D0AM6PR0102MB3589_--


--===============7176020813119422332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7176020813119422332==--

