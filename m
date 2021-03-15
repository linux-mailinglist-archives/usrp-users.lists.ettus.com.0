Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DB333B30C
	for <lists+usrp-users@lfdr.de>; Mon, 15 Mar 2021 13:46:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87B6F3832EB
	for <lists+usrp-users@lfdr.de>; Mon, 15 Mar 2021 08:46:22 -0400 (EDT)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2069.outbound.protection.outlook.com [40.107.220.69])
	by mm2.emwd.com (Postfix) with ESMTPS id 56C753831EF;
	Mon, 15 Mar 2021 08:45:21 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZS0qisAToGuvztgag/YyiYFFsUAt2it0KC1ZIETebNPUZdYCUMMR0BGrhfmx3xX9vqvoZOcvnTGwYHlG3PZx/nEUt+ACXxlS0LM6C3YFtJfYaISSHHbdbl2LAYOKqz2vjrpuRI2xp8CLz4XLywxJ/Yrvb0/Q/JvyDppRIZ2r8qW6cuIfeJ+XBjmahA+3Dgy0LAx2nK3jzsri42g1bA1BLW34N7ffzxOiAf2aJ6qIoGhG2F5nSI66z4xN5HjsiIxhA7P5Tq7NtMg4YWx0EepYPgPbFzDbIfrhs9gmU2ERcM71koCasnTlVkbDsHlOF+rjUg5ivRzzH4yU8wgs40HfVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F+dw5AobILSxwMmFFH0DK20F64Gaj94NQ73jdlh3/cI=;
 b=VVG0ICqtcUzAdIE4ZN1np5xepfUAXNOb42W7T1K34prCZPXRVCoX7VNCOMt5faYqlUqX4u6MskcR5m3B4Jz8wkIn22PzZxuFO8I0B5BGU0+jdGJRq4YH+B5W3vJ95otfxDRabBcv63HpAIUMGwtg/zJbWyz1l5Qk4lYtVwmGMvNIWXnfixY+RB5TvSjc9tRn/JMSFp+UDa2QM0VEwV5wHOdE58eE7qTFH3zQPIlQFLodbRd4I3ynSreYp0ZZo2/tDf35r5KNNttg9UPXVbu5urTGDONcw8X9PcpMxrffVIr5Vgx0Tux1BtWx0+jpWPjqws9NkVkR0P712G+lEhyoxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uis.edu.co; dmarc=pass action=none header.from=uis.edu.co;
 dkim=pass header.d=uis.edu.co; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uis.edu.co;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F+dw5AobILSxwMmFFH0DK20F64Gaj94NQ73jdlh3/cI=;
 b=Ekn/blAQ9GW+hZL+5CjnLyrSxqd6ma+YnU817BaMNFPXK70znxzZ1E4/kWnKxQ0m2NRw38MUnJG3s2aPIxw/PjX/vKK5PvNdqf4OPgbIrlEQwC2I6DOixOaO/GVHS3C0PHq4KbQQlE5tjPgee5my2L5d6yloMyc3DcIIeVHVgK4=
Received: from BN6PR06MB3202.namprd06.prod.outlook.com (2603:10b6:405:47::15)
 by BN6PR06MB3457.namprd06.prod.outlook.com (2603:10b6:404:117::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 12:45:17 +0000
Received: from BN6PR06MB3202.namprd06.prod.outlook.com
 ([fe80::c590:a103:e79c:534e]) by BN6PR06MB3202.namprd06.prod.outlook.com
 ([fe80::c590:a103:e79c:534e%4]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 12:45:17 +0000
From: LILIANA ANDREA QUINONEZ MANTILLA <laquiman@uis.edu.co>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RETIREMENT
Thread-Index: AQHXGZhyFo54WiRzmkaE065aD9fEHA==
Date: Mon, 15 Mar 2021 12:45:17 +0000
Message-ID: 
 <BN6PR06MB3202BCBCF3E6196BA548E36AEF6C9@BN6PR06MB3202.namprd06.prod.outlook.com>
Accept-Language: es-CO, en-US
Content-Language: es-CO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=uis.edu.co;
x-originating-ip: [200.16.118.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29044a92-8f94-4586-6bcf-08d8e7b02fd6
x-ms-traffictypediagnostic: BN6PR06MB3457:
x-microsoft-antispam-prvs: 
 <BN6PR06MB3457C3083C74868AF8B82F5DEF6C9@BN6PR06MB3457.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:128;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 syDMNQQaqXUJUvW/bac0GHim5rmkwZbHwWxzCYKd6RTGdSjmEYRrKHN2Bxh6FPVvihGdUEoeE/ik/DFfG4CB4prEsI5YXhnW1sEHT4xUv7oF2B5i/RE25TDjB6qHNvVAlXkm7g2bb4NNxpcZxkjqelK3lZwzA6qVMWzqZ1DQ5RAd+4YZAJvgk/TzQxpCe1v/1a/ZqzBU8/PxtsbMFEVEIVeOicKZ8jMq2z4FtZZjnrMA3+oAWu4zLK1CsFJj612xPv2NOdPTjRi/kcwDhQ9lJ12lskW1uI7vFUxefTcidrgFT5Ugh2aa4vjb3rciVJvDmY/gouNXGTw0wZn1TkIBLRiAJlplE23rFcsT6uwgliKHOdsYMjGUG3zkZfsbQnOGv2r7psIRCQxzykH2sd6xI0PSldVS9LVSxBU2l0/ilJfMlFeyPFV6GBIvCnQts0QeM50K6QVMBDWFNbKL0sIRz/wgyTxB8n8CVAV3YE4CD9YiMTBnt2TKHyWDcrkrAzFA+7x4ypOZ9BWm9JCv/ZlQ3QPjvAIAiBAoi6d2EM550hLCWsqCVkjoig6dut716QLZ
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR06MB3202.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(39850400004)(366004)(396003)(136003)(376002)(346002)(55016002)(86362001)(8936002)(33656002)(478600001)(7116003)(66574015)(19627405001)(26005)(8676002)(6916009)(450100002)(83380400001)(186003)(66446008)(4326008)(76116006)(52536014)(71200400001)(3480700007)(5660300002)(2906002)(64756008)(6506007)(66946007)(316002)(7696005)(66476007)(786003)(9686003)(66556008)(558084003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?n1hMrQpYtKIEh2s+EVoLhndT1nIYdwthGRCVYAvwyKnjH3w5272EPQEM2g?=
 =?iso-8859-1?Q?fA6wJbIDmvoPsYzR57jyMBfQNYgCln2YPisybbtojG3hkZsrf+3yI8FnJk?=
 =?iso-8859-1?Q?jU3skIPcgUBEZ2XEU/kX7MM8gI1n2ddib94/QTyOQDsa5DTeABUtsXUJ/g?=
 =?iso-8859-1?Q?sxfi1jp4JjQHMDzXU0zkAYq1Qgr8E4+T65N3qRIkowGz/OXRG0tkm1VtYL?=
 =?iso-8859-1?Q?WZUfrxsPs+1AzkFYuR0h4GVyjKdBvRGoF02mty69TgXwyF5pFZqrxFYyn1?=
 =?iso-8859-1?Q?m+Wn33hX0wHkVi49YXA765YooXLVqzT+mB94JD1KidiEihNUb6MIkxrnpW?=
 =?iso-8859-1?Q?K/C/22abCMXOYrx8EJ4QXaBjJgY217N19AACMz0j5vqMyDgc2TfbAux8LD?=
 =?iso-8859-1?Q?4jMTMWqla+gMjVviFiTM+V2CL7caNya9/zLlscC5wqM1M2nz+h0RWkU0El?=
 =?iso-8859-1?Q?sJm8Xd3kQvpyebyKa2cskr/GWDOH5jn5giy4gwRfdFFTqDpucKtFKXkBDy?=
 =?iso-8859-1?Q?VOSVdpeFLOMOe/9Bs07kSFU0jA2dJyNsSQ5xlSzn7+RA0potAL8B4c4TLh?=
 =?iso-8859-1?Q?i3wANDgajf8MmYv/UwTIaQWvbQZBT2j0IgjDXZ1+kdk3vRWe8n8RWitBpu?=
 =?iso-8859-1?Q?M5d17M4yDU2iglkwE/I24TSVIBsTrPnGpptz/OTmDaxI2jUDM/BnPCieZN?=
 =?iso-8859-1?Q?0029+nvdbPtJIMv5aeyj8VXqzra4gm0MZ+OVmUR/XlsqjC3Qal8vrjoVwS?=
 =?iso-8859-1?Q?q2OwYHRNV5ZtSk6me4hOTKqAD8yS3FYAvVisOcBUREoXbloK+iLjKQ57ZI?=
 =?iso-8859-1?Q?E1juQryjUn+/9dX8Zqka+/Ia+J8dwkFrMdS+A+Ao/Qu4RRvm+yj8rUeVux?=
 =?iso-8859-1?Q?K8F3o5rQZQdvCeSpwmZ6gve292cRuBuTIegchCSldwqd8+4Yvu8HUf+ljF?=
 =?iso-8859-1?Q?1wx1sK6L+9DZyXgKlv3pT2GKfIxXucwTNCK9rwcEaGp0PhwVxTaSFzQTJb?=
 =?iso-8859-1?Q?e1jbwag65ffcqwO6Evjb7028OhthhDGr+KBjFQR2EXlWamXLpCDwV7Bb01?=
 =?iso-8859-1?Q?nyr2Nki2/r1ZqeOYKRQqJju/4fADdZIocbj1V5DQghaK4l6Nq7MvVUG/c1?=
 =?iso-8859-1?Q?nlrbNyOnj+2b/CLePWqewPG2QSwx6C59Ilx0BRe7Wqys6xrd6+DLW9o6ij?=
 =?iso-8859-1?Q?+7rPS8iXaU/CQWzgZEqUFjdvGNDa4V//mDr8rrWkBIvo0jtpgNGwYcxR9I?=
 =?iso-8859-1?Q?7vlcJhLYT2RuboIVwps16bUzI6J8sk31u/IL4lmAksT8/+jYQsj8g9McSk?=
 =?iso-8859-1?Q?USbk9x4yYoc+cPvn27l5LPyF2H3NlfdRXfam/n2HdakOFvI=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: uis.edu.co
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR06MB3202.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29044a92-8f94-4586-6bcf-08d8e7b02fd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 12:45:17.3668
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a584ad32-dcf6-4150-a4b5-7faff9248aa6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0rmVaGEH+/Nk7eOwL81PQqqugS1MoMhIwHwYaXJBo0KnEtN38a2tvXtrUXCwqVuOJpnq/nQLP2ofEGuYFEswYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB3457
Message-ID-Hash: NRJIQWTT7DM6GBBGR7YJCNUEGF2YBVVJ
X-Message-ID-Hash: NRJIQWTT7DM6GBBGR7YJCNUEGF2YBVVJ
X-MailFrom: laquiman@uis.edu.co
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users-leave@lists.ettus.com" <usrp-users-leave@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RETIREMENT
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JG4P5KDKVMETZKZPYMAMAFFP426VN6VC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7732724683022611789=="

--===============7732724683022611789==
Content-Language: es-CO
Content-Type: multipart/alternative;
	boundary="_000_BN6PR06MB3202BCBCF3E6196BA548E36AEF6C9BN6PR06MB3202namp_"

--_000_BN6PR06MB3202BCBCF3E6196BA548E36AEF6C9BN6PR06MB3202namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

GOOD MORNING, I WANT TO REQUEST TO UNLINK MY ELECTRONIC CARE FROM THE LIST =
YOU DRIVE. I NO LONGER WISH TO RECEIVE INFORMATION BY EMAIL. THANK YOU.

ATT,

Liliana Andrea Qui=F1onez
laquiman@uis.edu.co

--_000_BN6PR06MB3202BCBCF3E6196BA548E36AEF6C9BN6PR06MB3202namp_
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
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri, sans-serif">
GOOD MORNING, I WANT TO REQUEST TO UNLINK MY ELECTRONIC CARE FROM THE LIST =
YOU DRIVE. I NO LONGER WISH TO RECEIVE INFORMATION BY EMAIL. THANK YOU.<o:p=
>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri, sans-serif">
<o:p><br>
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri, sans-serif">
<o:p>ATT,&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri, sans-serif">
<o:p><br>
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri, sans-serif">
<o:p>Liliana Andrea Qui=F1onez</o:p></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri, sans-serif">
<o:p>laquiman@uis.edu.co</o:p></p>
</body>
</html>

--_000_BN6PR06MB3202BCBCF3E6196BA548E36AEF6C9BN6PR06MB3202namp_--

--===============7732724683022611789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7732724683022611789==--
