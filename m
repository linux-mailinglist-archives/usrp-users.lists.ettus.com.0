Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C557426A4D3
	for <lists+usrp-users@lfdr.de>; Tue, 15 Sep 2020 14:15:39 +0200 (CEST)
Received: from [::1] (port=37520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kI9rx-00024n-RD; Tue, 15 Sep 2020 08:15:33 -0400
Received: from mail-eopbgr1380115.outbound.protection.outlook.com
 ([40.107.138.115]:36706 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kI9rt-0001zt-Qd
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 08:15:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaCbEOH8ihvPLEJxJ56JAqRJihWHryv1TOiqlS+tJN7t9v642OM+Qb+dpIgbZ+bQVMwGbtKHFST1N7LBc+uGXBbWSug01LdAroRyPYPBQTVnTRvcOI1WhAwLCxlODmXYRdEeurGJaCijQFT8OPk8eAcCxsDiu3c6ygcf2HkTTg42sf69jTV79LY74igOtY9mgf0ge/AKHYJ/2TkTrVakCBKp3Rk5qmIX082Zxv6xVBLQ7XYtptuwRxMJF+Vd3DlwB5WAeVlxycDv3/kLhmrMknWKck5COabB7loK1y2BKzgcpXIW5+TOvLSm0XE0kQmgj8/aI76u3hfDYG+RcnnwIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNKVJVE2dxPTHaGj5oBW7l9WIeoXMyS7e8oNnKP2OPc=;
 b=SHJ/HY7wQ1H1mM1LYx3/Bia/RWOJ5qYS/FjlEfR7Gv5hitSgurtMgKOFlSleubvSkFRhnL7zPbQbKQBfx7MGasEOuZVzhJa8sRzfPw6CKrchcpvuddhQ1Uv8HaHqcKuRZ7tKtkJiN5NtQ5FLDkFp0xV38qjDEPOT1K4vQWNON0WjaqAwe7k7tLryc76ZVaVRM2g3U6yVeWpV7vWFsG/Jx3J14j0iCT+c/pH+bvhQLhVbgnLpP030bS0hSoNdv3xu+/PGnEv3iXW+dJ9cZEIwEUKfINHduDNMRgv0z1WN8xmCtyWdjMUqopTnL5kRPlWdTR5CK6POOriutYWivcj9og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNKVJVE2dxPTHaGj5oBW7l9WIeoXMyS7e8oNnKP2OPc=;
 b=CY1W2MpM0MKrAdiwCci+0xt6m7fkVcXjY449rkCbNa4nE8EpAVAgvqMrwby9V1YL0xANuXA2VZPr8Q+WUAf1TPFB3KZjRTF6zXU8bpd7aMG0uAJr8N1s6P2oJ6n8kaj2g+cJ9gsLnRu1Hq55cNDQwxZ0Oa5859tgKmXXvzcpzKo=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2665.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:40::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Tue, 15 Sep
 2020 12:14:41 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe%5]) with mapi id 15.20.3370.019; Tue, 15 Sep 2020
 12:14:41 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: 100 MSps in usrp 2955
Thread-Index: AQHWi1mRs8aHg56CiEyOlH2FB7lCwg==
Date: Tue, 15 Sep 2020 12:14:41 +0000
Message-ID: <MA1PR01MB2588860E8055E12D760E47D590200@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.138.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00b0729b-e510-4888-2bb0-08d85970ec81
x-ms-traffictypediagnostic: MA1PR01MB2665:
x-microsoft-antispam-prvs: <MA1PR01MB2665FCD737B12A9C0960FF6090200@MA1PR01MB2665.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X32ti2zyfiii4DXP0GYF50BiK7Wtm29U7RdczhvI/LCPe9nKuM0jHvIe+kJ6znnRQ27tDxe+lyZKqFtkzzuehJPfsAivO85a7bHrSoNVf72A0yfydw7klsaUCxZu86xrpqS6UTPw/tVY9h/O12F5SIgj+bDXmNJ25rMJ2mNZku7wzRtl1inUCeqkLoOOguG/IQ3bml9VAjUpmu5QoCCq8dOr+ErV8kNksiG+rDDQoUJN+EpvCL0jbOSuILvXt0V+BcE2pTjQ/BG/l+vN+uaVmp8iEdhnIKdsheH27uHFXVnP9S2w8avae3CEuGPF+AkVfhL9KEalWSyV+VjgDnk0LDZ036Y+VUr3ufHy9nwzNmD9YApswFArigPDLc740Yo35ppasc3/AZ3fqkgyBVolEI439QSqRotB/dUVgiqdaPtit3+7C/kGmVY84USqLeq8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(346002)(39840400004)(396003)(366004)(376002)(136003)(64756008)(66556008)(66946007)(558084003)(9686003)(71200400001)(5660300002)(52536014)(186003)(86362001)(66446008)(55016002)(26005)(316002)(7696005)(6506007)(66476007)(8676002)(478600001)(45080400002)(2906002)(8936002)(76116006)(33656002)(166002)(6916009)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5WCSdun0ArrMIIfBy74eLU5jrMV8UtNjE0dsScuR7lSQZKM4pc1CcayMPuO0bMp874lIdK3XHwHZsACGJnLvLA48NyBGDY9oS/Cv4VoFzB68xaJre77KJfxnApWxIDiZ/cqrXtpBP0LfZyy23p+tt7s1PgqPytifnSNml3m3WWKpQqui3PymB9JjiEEu6DQJy6Y1TGFM1FeIfmy9rOK5yaMWik9uy1uG8RbhUMHNtKsJa/OP3zzNMViNKQc+SjQNMHR2fy5UNAhpeut1YQkEOmOhnnkxqladrBtRyq+oYn48kGa+avqrH5Wq3H8ZVhj02gHYC+sq6fvKlbbIP3dZErepM7ZFm0yGrvjKMQiKezr3buaXHwFGID+D2BAAV1ROaiOp851rs30iyXaQada/TcDqvarkGJBZSHkLdtwAMg8zTEXAfBTNSy0BVunskyq5oc9/oHgA86lXP+QZo/rLVTFlCOcA7mLlPKYqbV5NuPmyHb/ZJwwbnuV5PVvTHUPqBdzW3673wMwzlTIsnrUtpkkQ4EEUdTDjIhZn//AO3zhTMb+VLxCiHfoPsoX7oz+iZhjwnjv0meS1V8bqxdiaCNChxsrWMtKHW+FOvA9zBpYWZZTRpj2rlgLt8/wyQ+f2g/u2iyI+pMkQ1i04iEn+5w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 00b0729b-e510-4888-2bb0-08d85970ec81
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2020 12:14:41.1293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EaRmTGrPSzyhgLStJayYw5tChv1qNM6xobNs6l88ts3Tg5YhQqoezgmb/RkuzUUnNtgkg9nKzlz64dmsTvfoXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2665
Subject: [USRP-users] 100 MSps in usrp 2955
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============0219784505935634057=="
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

--===============0219784505935634057==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588860E8055E12D760E47D590200MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588860E8055E12D760E47D590200MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

When we set sample rate at 100 MSps in usrp 2955, is the actual sample rate=
 100 MSps only or 128 MSps?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB2588860E8055E12D760E47D590200MA1PR01MB2588INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">When we set sample rate at 100 MSps in usrp 2955, is the a=
ctual sample rate 100 MSps only or 128 MSps?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB2588860E8055E12D760E47D590200MA1PR01MB2588INDP_--


--===============0219784505935634057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0219784505935634057==--

