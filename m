Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 053691F99A3
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jun 2020 16:08:44 +0200 (CEST)
Received: from [::1] (port=45140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkpmy-0001o7-M0; Mon, 15 Jun 2020 10:08:40 -0400
Received: from mail-dm6nam11on2106.outbound.protection.outlook.com
 ([40.107.223.106]:55073 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <bnold@purdue.edu>) id 1jkpmt-0001iB-Ql
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 10:08:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxLe+sTNDdcpZbopPO1go8xI/Eu1kgRLlkVlTJF1+aTUeSpyT+99HP2llOS8/ppTxu1CSWIBtNtQwZ1XA8nJciKIbeyh5fv104VR+KZ8VVGYXqxOf9zfVCb6YFy61d9kCpQ0yv5HFmychNUC6/g0eZKZvi64M0NODiQZRwOJIUPNkqRaYS6k0m0qOi5QKVkbkQBj5pHAwil8Tdw3A3F7ddLwZvZvpX7jpqUj12Y0N5GrySLmNdMp6SPgrKqxJjBKfKxlXD/LeVd62KPWNuu6IU98DIoZFNjN0KDMy4NnbNdlVpJRIh6GvqH1f2ItrLvckjnpOluvnagxPG7GBPrRFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sfh3hJbWq2rzNomPu3M2kxVJwCqFZE/CGtftocYHeGU=;
 b=GzO+R+nlpqpG7gahVVYU4IEBy4PzyBDYyyP6RJ9QwywcQFzUY8RC9C1AsBKtXmE8LfNwK5afgWBQCmcDhRPPi3cCrn8daU/9JamGG4Wj8Lo+WYQpe/IuFEf+R9VOG+YOH1cHo2nd0ZtxZ705gtVmkY/TZvRbxdg+XtGbKFH/kvQ9C7goCfodmrMBSuOhSXjVrKoKP5qirngdtFxfMx9GJP7vPYP+1FnMI03zKYswLN1P7xL0WyCKMwyNUoz2Jj8SKQHd6JUCCMzuyqQ0oNBYp7N7AHlasIRlH1R1tTXXXaAlQt65D6QjMVDb7OMaVy9Ai3CSGid1CMVl/mQU72THWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=purdue.edu; dmarc=pass action=none header.from=purdue.edu;
 dkim=pass header.d=purdue.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purdue0.onmicrosoft.com; s=selector2-purdue0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sfh3hJbWq2rzNomPu3M2kxVJwCqFZE/CGtftocYHeGU=;
 b=drb7b+YTqReWpqpFXoCkMUHj/gZqEp4A2rX4/Gyc3Hbs3k6k4gj53OatVBnim9jdUVwHCj65HPz1/hmfsuomby14l0jlWCmElhL8mP8as3QyVeM2WF8nSiOju1jeHRrp5gaEIQdebCE+tsfHf01zlyaJvUqT0ZouJ5mtS+RUeVs=
Received: from DM5PR22MB1659.namprd22.prod.outlook.com (2603:10b6:4:66::36) by
 DM5PR2201MB1562.namprd22.prod.outlook.com (2603:10b6:4:1c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.24; Mon, 15 Jun 2020 14:07:54 +0000
Received: from DM5PR22MB1659.namprd22.prod.outlook.com
 ([fe80::994b:9df2:cb40:bf3a]) by DM5PR22MB1659.namprd22.prod.outlook.com
 ([fe80::994b:9df2:cb40:bf3a%6]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 14:07:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210 GPIO mating connector?
Thread-Index: AQHWQx5EEonCDelL80q9RHiQTdutaw==
Date: Mon, 15 Jun 2020 14:07:53 +0000
Message-ID: <DM5PR22MB16599774727B85768E7F23FEC89C0@DM5PR22MB1659.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=purdue.edu; 
x-originating-ip: [71.10.53.158]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 871a00bf-43a1-4a00-1616-08d811357f54
x-ms-traffictypediagnostic: DM5PR2201MB1562:
x-microsoft-antispam-prvs: <DM5PR2201MB15622D4B2DB2793E0AFD43E7C89C0@DM5PR2201MB1562.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GjacErIqCkNsjFNNJtBCz6jYGUqEEduOENKeBEgPNCKwEKOAXpUzlE+YjfAFf89u5+2MGL/D3lwxsqNUM+llgTXxJyspJkg+m1/K5Pwoc6dQPbx180CRgXq/Ioczk7Yorq/faYVHVMSrdiVlAtM9msJctHTpuSeHNPdO6W4iXrUpnwDwVntxrVjAYJvZcCZcPoQahq5EU5XbrmVwFy2ZZfzKkZ/2hzgr3e6k1VAfhOggew09xNRgri3x3shZuhPGr+0jwfpU4yQ7xwD9/HarYR9vhz6MMUhfUDfJugkv8+rXNAqzrW4E4USXlFwY35mRT4uX1FBxKM0hwSabQ5bsfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR22MB1659.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39860400002)(376002)(136003)(366004)(346002)(316002)(186003)(786003)(75432002)(33656002)(66946007)(52536014)(76116006)(91956017)(6506007)(7696005)(66446008)(66556008)(64756008)(26005)(66476007)(8936002)(478600001)(8676002)(86362001)(2906002)(71200400001)(558084003)(19627405001)(55016002)(6916009)(9686003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: yKtoSk9upMBiHQgL7f/GyLYHnbD82Jm+xquQEWDFy872datU5ttRR7SlKKnoVikfiIqOk5lSw8z+FFOmHo61iP+/fYxj5ap4lonwQQqrOUpA27Ls83U9VD5TxzQCdg4P6jRAlz6vtgYHpj4+HJrjFydxoDozVXpcijWgMZeN93kINwHKI2CaNOO6R36K7QN9CEyWtnmJtu0EybhJPwoJuSabSsNeUa7uQdFGvg5i/MbwnM/8okqn5TH94bRnSIRGQP8OuN6qdttlbQxukk46ZfqKoZ+oSy1B8uFK07kgo7yC8b2WhJHEN+KzyXkCMH56FSuMMPUAOy4wiJ/hE3RiM3EV0kZIBWL5uPFvqvLAKHvwD5dcPWFcyEnWJKd5+Rvw8cVRWS1dAl10MkNBgmSVduNNU7VW/fyBSygAsrx/8ZPRNVtaOW5iiKHAMPpGuWTJ++sOb62kFMk7VUW3R3RznK0BhS0giz9LbxyNmdNes6M=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: purdue.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 871a00bf-43a1-4a00-1616-08d811357f54
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 14:07:53.8721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4130bd39-7c53-419c-b1e5-8758d6d63f21
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6PlUo1P7GcoAC9z8xVaDSyWaY0FbF5nDDwzgKok2QBgo+ILo9mHdtnA8QWEPTsmC2l8i9F1aKz5IUhrKSSFRAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR2201MB1562
Subject: [USRP-users] B210 GPIO mating connector?
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
From: Benjamin R Nold via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Benjamin R Nold <bnold@purdue.edu>
Content-Type: multipart/mixed; boundary="===============4821961623429620419=="
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

--===============4821961623429620419==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR22MB16599774727B85768E7F23FEC89C0DM5PR22MB1659namp_"

--_000_DM5PR22MB16599774727B85768E7F23FEC89C0DM5PR22MB1659namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

What is the mating connector for the GPIO header on the B210? I didn't see =
it listed in the docs.

Thanks,
Benjamin N

--_000_DM5PR22MB16599774727B85768E7F23FEC89C0DM5PR22MB1659namp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
What is the mating connector for the GPIO header on the B210? I didn't see =
it listed in the docs.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Benjamin N</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"color: rgb(0, 0, 0); background-c=
olor: rgb(255, 255, 255);">
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
12pt; margin-top: 0px; margin-bottom: 0px;">
</p>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR22MB16599774727B85768E7F23FEC89C0DM5PR22MB1659namp_--


--===============4821961623429620419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4821961623429620419==--

