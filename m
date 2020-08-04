Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC6523B7B6
	for <lists+usrp-users@lfdr.de>; Tue,  4 Aug 2020 11:30:34 +0200 (CEST)
Received: from [::1] (port=55554 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2tHF-0007fp-Bm; Tue, 04 Aug 2020 05:30:33 -0400
Received: from mail-eopbgr1380123.outbound.protection.outlook.com
 ([40.107.138.123]:48715 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k2tHA-0007QL-V9
 for usrp-users@lists.ettus.com; Tue, 04 Aug 2020 05:30:29 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KcqrkX0wt7OVOgnUdh4qgWBFZadNI93BSt4/IaG7BrQAzauHI848WLGcfLDxfVcIr+vcLOtKFfIjLw8VVp0VQwpv3iGlt0FH8CXyFXMO4KyV24RdU3UHcXbfDReS0nSgTrq/CCXlDPse2MnZest9Ut0bK5+elU36mvmOpjTkJJaPDtU16Ti4a8CCnvCBC/8X2nUgGawIe2zQubXAWkYnisurbCp+XarTFSBWfWlz5FtTxDT1bKc75YISAwROPyCMDk0FEsvKCB2c6YMiM8M+yUhMEkDwhBqUs4kVw701bu3MKqHcPt4AaZ3kx9oC2fY80BzjoVdj+CX8PtbWr23WQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lUD6OuaeN2I+Qt+DJlQTG86MVNkpaRhmkA+ZphZm7IE=;
 b=bimT4eIMC5rbMQmqr9FG5s96CGy8nKZpxAbTkerZdRFPsZeYhPWsPuiGq6cQb1fmSygp3AG8oIIyiezw9hnGtWhB2Fq85Z+8LD0W2e7YOFdjqBR3CFilq+Q0ofzDEMkSYYNRLEMNlIzhib7ifLUcpS31fusJ52nRFkHon/+sTWL2bTWBvayO6JoMIe7cWy7LvA6AFO3VMwkxYKncOsgJaPBe7mwzJM58Omb+H/xGi0VO6EQGLzR8sZyjsBblFzJFuLcxYUwc7briNSs6nDHvPRstXHT6HfDTflERlbvmj7x0URkTwo7ErhEWBY2LDgDp3W4F+VedFUf3PE8FMococA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lUD6OuaeN2I+Qt+DJlQTG86MVNkpaRhmkA+ZphZm7IE=;
 b=T1zzF0mwrxhuhZ3fBY/6TiWCSnlKAZxa+YEdVjdu6q3PW7MYpvez3JSq9znqQbIIxkuIOiu4WJoYNHeQemyCUpq4SxtenrDCL3ylH+3SNcaE88oFnMTiFgQgOZmiOBF456Kxa8SYl/hqIxigJPx0CGFsNVv+UwxZU4JyjGH80AQ=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3632.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:5e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16; Tue, 4 Aug
 2020 09:29:45 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3239.022; Tue, 4 Aug 2020
 09:29:45 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Using PCIe
Thread-Index: AQHWakF9cd8W3UayJkaSdYrS2z36hg==
Date: Tue, 4 Aug 2020 09:29:45 +0000
Message-ID: <MA1PR01MB2588409C6077BABC4BF92A9D904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.155.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b7c7941-7f6c-4c6b-33a4-08d83858ecbc
x-ms-traffictypediagnostic: MAXPR01MB3632:
x-microsoft-antispam-prvs: <MAXPR01MB3632D11CBBEE0B187BCFB35B904A0@MAXPR01MB3632.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BlIcH2sSfgOAw6XnHKkJlKMpbKJ5Y9QihXUIjaRZe02BL/QZrqJ8bw65pCT+z46R93lXFDIxsM5jJI0QjAKZQbWIhrGOWzXtrlGesBBp25l3DjXLaR1F1v8T3Psg+O+Vj1xE7Q4DvV608h57jq9eTaWvEmhF3OzuJ+CFYz1shqi+oTfUYAeoIhJMii0YIuAtExXn2rLiRqGSFPFB2rSzT6oDRfeDgu1BjLTEbnOPiSSXv+ROsrJSjChWxW8P3UBSjf5thMW8ZbB/49me8wtP8OF85fU0T5OdJunoLznNT9wT3lF2ho0atkChMLHQxutFb4ggPL/27YW5gnytZnITB1uwzRB+nA2+qDIOPWGrARhtgPCNaabwzLIcKV/i7kvbGulFozEsOuGngVA4zEkGeYLG2NxaXVRqZiSP3jC4kLz2fVfTGBeDv5c+LCjX2V+oE81GzOxRQGVEGaurmyAziQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(136003)(346002)(396003)(39840400004)(5660300002)(316002)(52536014)(66476007)(66556008)(55016002)(86362001)(45080400002)(76116006)(66446008)(64756008)(166002)(66946007)(558084003)(9686003)(33656002)(2906002)(3480700007)(26005)(6916009)(7116003)(7696005)(186003)(508600001)(8676002)(6506007)(8936002)(71200400001)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EnNnz8wFne5iLTFHqrQUYjKSpsgf8H1yOY4frE+Nulv6IvcFzwet/t+HS0kLVIuxa6aVp74S/ISSMeNGJ55RdDorRbLgUFLLWJoHGIqT0nlXWrj+Gg4S7u43L6k5epA7c7bZOBo6LjJGh4CGh0OcGWe9MQdBflTzkhCCh2L4OLs2Fvo2Y6dbI6PTtaLaxrqXIVMNLaeX6Z+OxGSvnZlRQ34Da0HjP3us+Uos/e2KQjiCEP1fItoaBRIyY78zd8XmDW7cuPBga74wkftUV065CqbAsNU0IPaGB2F9QULfIk4/rw1Wk+7SkhY95QDD5+6IAj8FJz4wQZ0c0U9XamR44o7kbQQt/kj8zY9M/l4xAki6bPpqrGXbc1mw5e1CxfR2uxDgOXo0TF1ZSeT0GPXLko4IGJ7Iw71jzbaSGvhLVpGDOee0VjR6Sl9Q0jw/CV9JnWyJiabHMpNOVLKfaFv0LnZxO+P0/ACVJq5JOkFvlOhmWrC1xbmvH6zq6loRigL8RMRIBExcQ4L9vJPA4vbt54/IVBYG8tExJySvMowXzgLxGRrFYl0oA8z/p6SbY/AAAl0bPifaFotAuVYjVI+PM8hLBWDB5QtCjHpTBVULGHEIj8pLCrcMf65B0MevIcwY9T+z6cmVT982jJHC6ygRcg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7c7941-7f6c-4c6b-33a4-08d83858ecbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2020 09:29:45.1140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1DmduBEP2G/qyNZ6nma9e+GYMDldaKWQN9dWFP/nfi2BGQYBR2xigXrdhcFTPk0H/WhC8GWvYbqgmkUWB4WhEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3632
Subject: [USRP-users] Using PCIe
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
Content-Type: multipart/mixed; boundary="===============8551837987324546864=="
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

--===============8551837987324546864==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588409C6077BABC4BF92A9D904A0MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588409C6077BABC4BF92A9D904A0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Do we need to install driver for using PCIe with USRP 2955? If so which lin=
k to follow for all installations to be able to use PCIe.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB2588409C6077BABC4BF92A9D904A0MA1PR01MB2588INDP_
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
<div dir=3D"ltr">Do we need to install driver for using PCIe with USRP 2955=
? If so which link to follow for all installations to be able to use PCIe.<=
/div>
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

--_000_MA1PR01MB2588409C6077BABC4BF92A9D904A0MA1PR01MB2588INDP_--


--===============8551837987324546864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8551837987324546864==--

