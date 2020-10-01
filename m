Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BE12803F3
	for <lists+usrp-users@lfdr.de>; Thu,  1 Oct 2020 18:29:16 +0200 (CEST)
Received: from [::1] (port=59374 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kO1SE-00087g-2N; Thu, 01 Oct 2020 12:29:14 -0400
Received: from mail-dm6nam11on2043.outbound.protection.outlook.com
 ([40.107.223.43]:29007 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kO1SA-0007zg-4A
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 12:29:10 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VwSd3owU1BgXBEEk/arPISDHJ8CYsCSqp/xC4DfArwEtRTVTglIhoUFaqLH3mEKb93wjk6AwwpUOnOEkyUBT7Jj/VUQmqnvmnFLn2h/+SVzTfRL8MAk5VysViBzFWh3wGyh+9eefYMH+EOLrvXs3qushhf7jn+IWfpU3jjYvSwP8bILuoBhQMWR46GYEio56cOOebViHQ8a4HxhUWbKbLG+u0zv6PpnFxhzlwByALo/lhuvIRuF9QJ+eqIMcSLddarB53gob0PiX67Ki4l9KTV4J+QKrscbd7+ql77TQi0GCeGEgvYmie9OXt+40CJQrmolEXYcUuGl8U4jXd0mJLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5pYZ06ELLv8YR8dyOQXc2fzNB+19D/t0LAOYdfwzR+w=;
 b=cRgu8GSeMIvRQIIXP629mEjDiNIjcYtkv2/NoqzFrTCGaU4fXFr+WcLgZEIG5T2LdxdfcRVnOLetpnf25QDwacX1M343Lao8VXOOcfDHN+Ckznrg8jkn0b5SHuyFdNE4ffe0GewdfAe1/kvzeiC7Qbg1HPvSKxwgza0AdqW9g6krJkMSwBsPfjMg+cEER1X0AaIHvFHECzi/004FTbGVUZgwUlsJ3t8WZI5sThzjBMTHOjOv5/0bsnGHn9l/tIpoL5g9wT1a3OhWgH7nL7UEjTAK5e1urCBRJH7djBTUSb/5mb3glAhzxTBAgcDEhZtn2Slt/Lvoe2QUMzqErbdK6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5pYZ06ELLv8YR8dyOQXc2fzNB+19D/t0LAOYdfwzR+w=;
 b=BY3Ct42kX+GUlkDE0QHciQm6DbW2+8alqUbXd6XziolgmVtSRIO2C1B9zvbcwRF6gRcO95qrk/GsfaC9rOBgrtXab/J+59tdwoyEIXByakjjRSlfIqhudCzyXXof5cee1JMxbH8ddEiTFErBGg6aJ463w122CrbIBHur/AWrM9U=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM6PR12MB2635.namprd12.prod.outlook.com (2603:10b6:5:45::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.22; Thu, 1 Oct
 2020 16:28:27 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1%4]) with mapi id 15.20.3433.035; Thu, 1 Oct 2020
 16:28:27 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Maximize MIMO Collection with X310
Thread-Index: AQHWmA7vNc1gGa8UBUWhNsS8VbkhnA==
Date: Thu, 1 Oct 2020 16:28:27 +0000
Message-ID: <DM6PR12MB3067DCE1E164DE2A581105798C300@DM6PR12MB3067.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3aad8c38-9318-4dc7-807c-08d8662706cf
x-ms-traffictypediagnostic: DM6PR12MB2635:
x-microsoft-antispam-prvs: <DM6PR12MB2635DC3FB37598D8E65786678C300@DM6PR12MB2635.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jvSxIiQpuEmRAqQ5g8t8BwcqXqBHIZHJE0LFI/33g7yjqMLZbRJ1+rNc/pnZNvb964FfOHMkbCaz67fw5GP+SCkAOdD4caC9UV4/z2eFS7rlZF8khPaxuL2EBNXgQTW2f6t8jf8tn+qAZ9g8EL4nAUKX9GMnuo5VQKGt5eE8xfv1okq+FbB349eEHQG+M7JYfU+8qnOLLR5ucNnNLdqv5GFi+5dOgJYOCjAm1xI+PH/9vxf5gkZE1QJkcRFY6f1BJYNgad8Wy8l3u8GtD7/kqcTNsBbqG/LoFFBEPlRmfuu1id20tzxutisoFR/NmmfIVpC5kk2uEWrSkzDA5NNbO6ZKEY7dDjXgTuWjGyqhduFubJ69Aj/8saMEbrOYFWvddEqhA2go4M1fga6TAdnDJI7HGvTyRutt+91n7iA44Hc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(396003)(39830400003)(346002)(366004)(83380400001)(76116006)(33656002)(19627405001)(2906002)(86362001)(4744005)(52536014)(66476007)(316002)(66946007)(44832011)(6916009)(91956017)(66556008)(64756008)(66446008)(71200400001)(5660300002)(8936002)(186003)(8676002)(9686003)(6506007)(55016002)(26005)(478600001)(7696005)(14963001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: LZgiojQVQDDScirL2SGvGY+THBCUBGgJ36EkyLu5TykcPzlH71H3dEsOmauZd4Nc91VkuFTTACPYubwgpzmie2YVd4iMd1v3S+xbBdsK7hCtg432rilDlGnn23hyAZ7rbLDclBoyMkt937IPFuoqoacOr0Gtfzu+Dnjd65S5NrSbZpLLMoO+zg9pOMPgGPJgY+80Pf9ymMNnKq5KFiHGi2I2pXHTvE6UOFyjR8Es+VH/ZqEACBtjavQbg1brGKJMWqIuJjT1AkdrPx7N6O9rWqX71jruwsvCeeWUq5TIrp9WTf0ryce5Pn4uYFPyBDoi4nkjkBaLv+nGl98l419DT436jO2OVOjeFxh+Hm0ZdsZBZDmMdyleI4ukdpfImcxRl/yOUUDCqKQaQ7Y+CQd9Pomo/Srvvqe0Wm7igGD0jzfH7ww87FvyVaH3gmpa96zK/L172WmMZhEQ0nalp/SumUumfXo1Y974bbFbqbkXlyyi+ZoyXvDUOAAlpkB7WCmfUpHiBlFOyQfnjo367ebFJAKAaZG7sWBFrmfwj10X8qNw2YPYxcSiQbSUU0HFWD5iTDn+c10M/yiJlbJxc7/PjlO4rPyMpg5yFdLUva+VQlGbG9Kvl/1hvx7JIxZdVta+lIKTglNfv2/XuXeq4i4d/w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aad8c38-9318-4dc7-807c-08d8662706cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2020 16:28:27.5455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bb1fhouyCLUX0O/gvPDntv0zqp4nGlqvn53msUadtsahBo898dxy28ExtxC3iz+mzMmxFGIfavLWfA8F+/feM9f32NMEcJQzeAOGBoQwaFRwvCIHh4JwydUI9OOD0tkT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2635
Subject: [USRP-users] Maximize MIMO Collection with X310
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
Content-Type: multipart/mixed; boundary="===============1371382476472129485=="
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

--===============1371382476472129485==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB3067DCE1E164DE2A581105798C300DM6PR12MB3067namp_"

--_000_DM6PR12MB3067DCE1E164DE2A581105798C300DM6PR12MB3067namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am looking to maximize my MIMO collection utilizing a single X310 radio w=
ith either 2 TwinRxs installed or 2 UBX-160s installed.

In some cases, I have a GPSDO at my disposal.  For tasking the radios, I am=
 using python code which creates and runs a GNURADIO Flowgraph.

Ultimately, I would like to know what to set the following parameter to in =
order to have the optimal collection.  In the instances I have a GPSDO inst=
alled in the X310, I would guess I should choose the GPSDO option, but what=
 if I don't?

sync (options are:  don't sync, unknown pps, PC Clock)

clock source (options are: Default, Internal, External, MIMO Cable, O/B GPS=
DO)

time source (options are: Default, External, MIMO Cable, O/B GPSDO)

Thanks,
Mark

--_000_DM6PR12MB3067DCE1E164DE2A581105798C300DM6PR12MB3067namp_
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
I am looking to maximize my MIMO collection utilizing a single X310 radio w=
ith either 2 TwinRxs installed or 2 UBX-160s installed.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
In some cases, I have a GPSDO at my disposal.&nbsp; For tasking the radios,=
 I am using python code which creates and runs a GNURADIO Flowgraph.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Ultimately, I would like to know what to set the following parameter to in =
order to have the optimal collection.&nbsp; In the instances I have a GPSDO=
 installed in the X310, I would guess I should choose the GPSDO option, but=
 what if I don't?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
sync (options are:&nbsp; don't sync, unknown pps, PC Clock)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
clock source (options are: Default, Internal, External, MIMO Cable, O/B GPS=
DO)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
time source (options are: Default, External, MIMO Cable, O/B GPSDO)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,<br>
Mark<br>
</div>
</body>
</html>

--_000_DM6PR12MB3067DCE1E164DE2A581105798C300DM6PR12MB3067namp_--


--===============1371382476472129485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1371382476472129485==--

