Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EF260F7C
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 12:16:43 +0200 (CEST)
Received: from [::1] (port=47494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFag3-0003lK-IM; Tue, 08 Sep 2020 06:16:39 -0400
Received: from mail-eopbgr1390120.outbound.protection.outlook.com
 ([40.107.139.120]:58585 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sourin.mondal@vehere.com>)
 id 1kFafy-0003h3-TB
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 06:16:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=js3dfIrVDnWohSkrUGBna3pBJ5VGVGuNVYip1xaLTEqGjSFPonDN7kOJ/avEokhkFyjKAZd2KyEtYyoY9wLaLmwHOJ4K8bcUSEhDjTFIyCiUVEcQTLHs7FcHWINWFxYWPpmHDZL1W7z9SeM7k5Nn6LoLVD0vcKmQ0pBxA7lOoLvYN+A0N038DOvfQuxs3YS7KuEQC/LOllOmYivZc2Ue48H4HjOucLqzyP0zVV3cZ3GBEMMNOehYgKvrJEXtZnGFTflBi28QC0QkiLjRJuamS+VHJ06JO2iiE183cA2C4c4TxLNerdBB+o6Shf2PL8XXlwic9oUM1xgNZ6td2loVTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B8UhxGpwZ7oHXe/hErtH3hOCefql23fHCD2YurrwaK4=;
 b=Gmbc2p6x0BdYAGgDNq1RDUleLahhxHzWFRUPhtMeTO8Lw5jpaoSOHx2tvX8SdJOCIdTnbuzwmUVZJrMws2e14krru32zYw5rXmfapADNS7cmnUyx4F3DGGRVWMrzmlL2ESsuAdaH3l68tJ4WQ4EHcYjqgWs6LEMzNlaNu1o520aDa51coPPNj/ayapteMYrqTT3Im4Wt2oRGogvFLzoe6sUoXu5DOGRFuBfohh2PvtiCX73wQgWCSvolo755EC6CGU/834RygXEC28JqltXgho+VMEhTljx65RUIuorJFY5HII/dSY9CSYV9A1FI5TDjG+TiVrSUR5SnkyXTcx9WRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B8UhxGpwZ7oHXe/hErtH3hOCefql23fHCD2YurrwaK4=;
 b=L99kMo3KFDnas0e3vIyD/Q749doeNQy861ZYE4M4sWJYNTXanX1DXGdimj6m+apfM59Q+p3p63sNBtM9TSGAK0/NDCiCn3LOjXRe23kzuH838OctABE4wfjzONIDQiK4vYuhNzrCXSORjnO75aELfHCObBekUhY4/kSYOWGTgQM=
Received: from BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5::16)
 by BMXPR01MB2166.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:31::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.17; Tue, 8 Sep
 2020 10:15:50 +0000
Received: from BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::99a5:f6e1:13ee:a84f]) by BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::99a5:f6e1:13ee:a84f%6]) with mapi id 15.20.3348.019; Tue, 8 Sep 2020
 10:15:50 +0000
To: USRP list <usrp-users@lists.ettus.com>
Thread-Topic: Problem in detecting the USRP from my system
Thread-Index: AQHWhZ1Ztds4L/K3o0mfbD8Cq1NLGA==
Date: Tue, 8 Sep 2020 10:15:50 +0000
Message-ID: <BM1PR01MB07697B6272A4EC36F8DA7F388B290@BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 219b5f69-3a83-4fbc-a878-08d853e02963
x-ms-traffictypediagnostic: BMXPR01MB2166:
x-microsoft-antispam-prvs: <BMXPR01MB21660042931CCC5FA19EC7BF8B290@BMXPR01MB2166.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BNeyzbCoh9fAk6vOsrr7ynfVANsrtXTVCmPtnprxO5mKyCreF1Tt7FUSSIoOapyYqdcD/IC4c9H9FmZc2mOupLY3GBVJ1bk1DhTyC7tK1pZ7c+LaVbNtq2ZKITfngBsUaRXAm6qngwDdnJ6U1k3ZVEcLb1Z7kL0rkF16t7wKkU1II/kKdF5cS0b4g/dXwvWci25Id4E5TM5WT8nQfgnVObCQrAIhAL0gZEixm66bfbTVJM8E5QItC1/iIjiH6BsvgMKGB3L97k/bekCaJMADCBYzJl11LukOaUgy4Iyf4C6cPASX5aXQfxQFy3eV60QI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(39840400004)(396003)(376002)(136003)(346002)(6506007)(26005)(64756008)(186003)(6916009)(83380400001)(66446008)(66476007)(76116006)(8676002)(33656002)(66556008)(66946007)(4744005)(52536014)(5660300002)(86362001)(55016002)(9686003)(316002)(478600001)(7696005)(19627405001)(8936002)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /uFupBcMVLpeQHmzjV4yQVu9fGPlqGFVpMmaXlv2MMf4O0yeGZCyjH1XlxRcul4onJwtSRvI03eesNdOyp40bmxdEixNNeEg0jxgg2qQgmXFBOcbetcRAkuH2W8MfCVBg14DIU11pU3e58TErjhI3tzWQkZ3SgUOwF3PMNFYgYlu9fZ3YLk08ujaF7IRO/ilJS7dEboLDrixHy0OmRSaxuC37ILVTjqZaQ5NKgqRIrQ5Vmq+qeT1B6RmrPenkrnwSyBxW5lRMBJa2Ohg0PyPBXmcv296nb4GtD6tQHa3Uufm+g/NYzI9oo05eMkBA4Q5sIDp1RmA2Md01ByzFzRfV4xCy4kYHajj/0c1FQGZWzyzFgmMhs9oChOEMsXczhe2eapKGjZwF+ijmbDubkaL+EUJQoA5qK8MiesjTGX73w3HsjpnEI/xmP4BSgEr//UzAgX039BzriR+JWl1DrZ3hqdLnH2i2GDPzkf+ZMyveRooc4IO44UdfSOjPhZMFdrNPwmfFZAPgwRRSa0LWD/csRQ27TYu0QpQIrN5v9cDR4xFVQd7hOy6FV03Qa6EfoTw8dzIho99ZVH1gcTAXn9GWT2H7kdzOpRfaGsw1AZQls/tuBcSFH7YexyBNpNMgvDwC4FFjHZ7imFT82LbdzMecQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 219b5f69-3a83-4fbc-a878-08d853e02963
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2020 10:15:50.3832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pvGoYTAXhFmtxj5er2uOzJbfaw+ye3yVtMEJfVF1wFL9tE2Nqe2oeJA47607ZY1eR3YUMTTM15vRNRcAxJ4+fZPe1ZOfYd45JYT3b+k9HiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB2166
Subject: [USRP-users] Problem in detecting the USRP from my system
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
From: "Sourin Mondal \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Sourin Mondal \(Vehere\)" <sourin.mondal@vehere.com>
Content-Type: multipart/mixed; boundary="===============7148630148537004254=="
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

--===============7148630148537004254==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB07697B6272A4EC36F8DA7F388B290BM1PR01MB0769INDP_"

--_000_BM1PR01MB07697B6272A4EC36F8DA7F388B290BM1PR01MB0769INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
2 days back I have used a C++ code which can acquire data from Antenna via =
USRP 2955. Previously that code works fine in another machine. But when I t=
ried to run in another machine, it was showing "no device found" when I run=
 the command "uhd_find_devices". Even when i run the command "uhd_usrp_prob=
e" it is showing no device found. But when I run the command -> uhd_usrp_pr=
obe --args=3D"addr=3D192.168.10.2" , it is detecting the device as well as =
showing all the details.
The OS of my system is Ubuntu 18.04.
Dependencies to run this code : g++, uhd-3.14.1.0, NI Linux driver 2020.
Communication from USRP to system is done via PCI e cable.

Can you please help me why this is happening & how to solve this? I can ens=
ure that there is no problem in that code neither in any dependency's insta=
llation.

with regards,
Sourin Mondal

--_000_BM1PR01MB07697B6272A4EC36F8DA7F388B290BM1PR01MB0769INDP_
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
2 days back I have used a C++ code which can acquire data from Antenna via =
USRP 2955. Previously that code works fine in another machine. But when I t=
ried to run in another machine, it was showing &quot;no device found&quot; =
when I run the command &quot;<b>uhd_find_devices</b>&quot;.
 Even when i run the command &quot;<b>uhd_usrp_probe</b>&quot; it is showin=
g no device found. But when I run the command -&gt; uhd_usrp_probe --args=
=3D&quot;addr=3D192.168.10.2&quot; , it is detecting the device as well as =
showing all the details.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The OS of my system is Ubuntu 18.04. <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Dependencies to run this code : g++, uhd-3.14.1.0, NI Linux driver 2020.</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Communication from USRP to system is done via PCI e cable.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Can you please help me why this is happening &amp; how to solve this? I can=
 ensure that there is no problem in that code neither in any dependency's i=
nstallation.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
with regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Sourin Mondal<br>
</div>
</body>
</html>

--_000_BM1PR01MB07697B6272A4EC36F8DA7F388B290BM1PR01MB0769INDP_--


--===============7148630148537004254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7148630148537004254==--

