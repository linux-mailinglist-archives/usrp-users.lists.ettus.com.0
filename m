Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A47606E18A0
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 02:07:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC638384083
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 20:07:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681430834; bh=Pj8z3cgxy0HaiK6V+2IelOtaskXdN1dHd+fvdM0hWjI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ups6dcBnzGIGH8x7+ngNAmK4QPiDY6bE1h90dgKtWQ1ho+Dh1ZCEQUWap2llRDsyT
	 4EUZaFUUn2qqPQqb95uM1N6J5Js9MKFrxV7xqHLxLPTOEnygRCfK2jcR6d+QnsAprI
	 +5PUtLV3Jz0mCTnfo4Iac72xz3PXB8tO6C0sjH6fO14CJyYJPafpAuTmvVwvSHpgWg
	 jEZMuOuoyHMUTuo+ouE5v4b8HbiVHPNtc4xoEGTxFWNRRRZTDHZeLo8dX9OPkOt6lU
	 fcPr9tZilEFk/D+ZutzARqRUd3YgGum7ntE/ceeSd2KffM5h0FwcNBJY73xExee+TD
	 u1qy7n7SsLabg==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by mm2.emwd.com (Postfix) with ESMTPS id F1B79384083
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 20:07:10 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aq3PVQV3Mr1iCMYQ/aP2xG9wofGwHYynNWRs5wDiO3WokVY6jI+lPUUSYW6NnheVNGiNe2oaE3wVPSY6cMcS848JbfC87CB2nd2sFxhpnifV+rPCeZv4miLNsb0bByD+sj6P0uJ0scXuwkQgsj46Fbv65ms7kvEYKq7eqeyWQPJ3UCnqWzMOXfCoieEjP68zPmT1DdswSjFFqZaZ2xG+mS7mlY/Q+CJm0ttYeWT1DeVccVt+ALNjeNYuCxytIEWVbnMQRab6VRRVTMiFN6zo1U7p1XT3/9nmxXU2oH02tXKTDQBGxzrPoUnATSl0mLmqFb7iNpQo8GBnFVEohTeuww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8PPwgh7Yv1Csu0+EMZmHRGz3oI3HXc5bzL72rdy+C40=;
 b=YsFmukj8gbS8LQanXW/303W0GTenx4As/LEnHIN/bBOdH+eItHy0yT1tCO6A8R6eqldYKjeT6pRlBN93h4ZnsHeQQ+b0JgOMBjlnsuU+wDqOIvaumYxdRDBAHybI7Ez7NqtqUPEBpUNAz6uLF/Welg3t5w53F2c5M+0qgQtYWK1w36VJq9HaFB+NJuCeAFHlz5iD9VlUTYyREbzmMq2Dal7sUBOxArjVI8Xa7JMv00P5nv5mhYzZCXbNJnFCVOVXxAK3xPx91mMD0r6jlZb7fWh2C7o35+mqp9/kQb2awsWlYowrVZBcfTSRzeALN5ZWxx3wRIDokCI2Vqvl6GihTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ufl.edu; dmarc=pass action=none header.from=ufl.edu; dkim=pass
 header.d=ufl.edu; arc=none
Received: from MW5PR22MB3533.namprd22.prod.outlook.com (2603:10b6:303:1a9::18)
 by CH3PR22MB4340.namprd22.prod.outlook.com (2603:10b6:610:179::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.28; Fri, 14 Apr
 2023 00:07:09 +0000
Received: from MW5PR22MB3533.namprd22.prod.outlook.com
 ([fe80::9314:4097:ffc5:cc07]) by MW5PR22MB3533.namprd22.prod.outlook.com
 ([fe80::9314:4097:ffc5:cc07%5]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 00:07:08 +0000
From: "Greene,David J" <djgreene@ufl.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP Daughterboard Calibration - Need to remove/replace bulkhead
 cables?
Thread-Index: AQHZbmNQQm8R4HbaP0ChMvHhsQd35A==
Date: Fri, 14 Apr 2023 00:07:08 +0000
Message-ID: 
 <MW5PR22MB35334DE2B04FC917DEB90DF6CF989@MW5PR22MB3533.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ufl.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR22MB3533:EE_|CH3PR22MB4340:EE_
x-ms-office365-filtering-correlation-id: b4a5c1ae-85c7-46d6-8f52-08db3c7c303d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UmBzyHD0G+vHDNPPOEA57FSOXL1vPxQLMA5Ho27pSGmvtUZegR56oKhHDwoQDVffeCTd1Cph9/Rc+3MvYY+m151Z1qg4FN0eeAM6rsiVGWo8SGm/8PZ2V8YwOvBeOwQIONetbkPHfLTKHI9dqCGXocNfOPGM1Sa51WrDshZzolJ0+iNHqXEpnC2Qtsuoe+P1j/oUymctRAdsD+0I0POIrPkRG72qp+PTalnDhbzSczdX6mcXBjtHOzPcAI5A8mAaNnUhmJzCTYG/6v4ZBobZ8dY0fCoh8FAXraJIxPn7Ej+iWUj4xV9xPwh/EoE/1sXXCKTJKf4Y/SXRRvaIF4AEXOZd5NFFez5aOhL80jcSrCqhZn9BAgx3efKudC3hEq9bULqUFHBn9Q+8xAoiQU1phLR8rSuTCJ7IX4U4cg5SgxTwzdYITB6CMfuG96tmgTmnLHESl1WvCKEJpDc5fSIgHGrzD7kvb1G9VnoIQBMrCeVs1oCCKbYJ0+8YxtDyF9+lWAnueP6epS0aXIuw02sk9texbDG6Aln3VUXdvuzYbminDZTu2w3dkY1B/B19k0DwEjXLBjntCyevVhpj5NYoe+LGFJig12CfBCTci4dOFtA3VTboC2s/KhTGiZGFVRkS
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR22MB3533.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(376002)(136003)(366004)(346002)(451199021)(7696005)(33656002)(76116006)(75432002)(83380400001)(91956017)(71200400001)(478600001)(6506007)(26005)(186003)(41320700001)(9686003)(122000001)(38100700002)(5660300002)(52536014)(38070700005)(66556008)(66446008)(66946007)(66476007)(4744005)(8676002)(316002)(786003)(86362001)(6916009)(55016003)(41300700001)(8936002)(2906002)(64756008)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?4Qu2oaK0piXInJZNu4lAF0fza5yp9m8PRE66s6ImZUm21kNm8vTVYpySo/?=
 =?iso-8859-1?Q?p2iihpR0/AMOJILEcpHAf7EfnTx8jOPnx/JjwPl5mNuop9MdE3C6t5Y+eY?=
 =?iso-8859-1?Q?gTH5hnJCJ/6jGq3Aq1vpr+AyNXvVtPqRcdKkxDR3Ft6svkITFUFUKAIDde?=
 =?iso-8859-1?Q?0MeRl6nVU3eXHbH/0aSTR27PF78uezpPxczvfzzxtzIXiOZIm05zTAYHX8?=
 =?iso-8859-1?Q?HgYQlcF19F1quOI0lDzEAc9fakD3lUdG0n96EDHG++1NduoAROeMfWFHey?=
 =?iso-8859-1?Q?kPyn4CM4glY7cPOuQQfnre9Fro8Y2cI3+CwJM1PZs294fcN0S4m8scEmsV?=
 =?iso-8859-1?Q?t8auDR5qGs9l9PWHzfD3mUSG7kJPYpY+kEU9FaLTE8EjrnxQti9lFDMkdX?=
 =?iso-8859-1?Q?u4HbfWD9lO3xYLgng/k5zrPq6gJnYAFgK0jFD0QFyQ2iu1PDaBjva4D2zB?=
 =?iso-8859-1?Q?2fD6v9gh973KAxbQIJyrYtgW4hM8j7iwJ2y8gB7/V3F0rZ+KM0A0RGUslN?=
 =?iso-8859-1?Q?jZFye2O5bEuaWZqh0Gu9ij5WLsziZfDqL4wqqH3J+6Qt+XWxn8TNzknfWk?=
 =?iso-8859-1?Q?MfbEc4D9LhV5ZtBlZT4MDr1HF46EXKkGyfIDFWGfjLCZvQ4DQES1p5Lg93?=
 =?iso-8859-1?Q?Bbdfv33TzpvWxCte0pWo47YHdAsGS/5vQl+9uuCfDR07sU7odRMrBYM8IT?=
 =?iso-8859-1?Q?IuyHZ6/SEWE3qIgxNfYfRLSkHPI+ss/SebZ7zdVSOxM70SDOLSKlsxFrsh?=
 =?iso-8859-1?Q?DQmk9k8Umn94d/vxICTxiHgb53byDJuP2J3p44gGhFI2wIaYhMrCWmi61Y?=
 =?iso-8859-1?Q?NDVH7ItMjVVsDfq70GHBfbQwIr74p7nvLOlTW5JKy6QenMOXRRkD9zdoy1?=
 =?iso-8859-1?Q?BOQ/uFRBYfpOS9W0l4yAFgBtTm+w0yleKpoMeC1w3nFdFoZ5cTjY8MYe/I?=
 =?iso-8859-1?Q?qHRu1pAPSVAOLwpzYP7B3vsolOX5NpSFL75cUlRHVNf7oK0UDDbgapJNQq?=
 =?iso-8859-1?Q?fcjI0c0rz1qZ1lf4IMfm0kpqo51nxbeKG+JR78UJcF2whZigXyv/a355L6?=
 =?iso-8859-1?Q?1l0m6EJKB2lCxIVtYlxlA2Hzua6PknTDr7l42dx8V/vfLaiUlU9I3kN3TK?=
 =?iso-8859-1?Q?Yo1k5HDEBpl1U78ci5wqm6XTOyaxxixXITKDjXubOd4UjTGWga5FhLAB//?=
 =?iso-8859-1?Q?H+y8ARO6B+MwXW4H6zPlUn5Vk5cO8+z077HPGoDyYI1pX9l35p4MmSgtWi?=
 =?iso-8859-1?Q?Eai/KT/KjLtfS1t8V7885U9YidAKqrJu46+vVTYaHI2HMJTPGibWjMy0Vl?=
 =?iso-8859-1?Q?qLNL2u/kjc+ozEHOCCYSDak6Gs3A9NeGpLptlsLMTSvWKecxzmXOj/aj0P?=
 =?iso-8859-1?Q?MtH1I/dntmCI7qmbY7NZFJAW73zEj9ZGS9MofVGiRx8iahL9hJ55dUZzPe?=
 =?iso-8859-1?Q?9HUtjgdIn8pTcNE0hcU4q5vjyWljsWsQMigUPB+EmSUbHESbbfT3mx/PLt?=
 =?iso-8859-1?Q?JxGZq2bsOjmcJb1zqSTcraE0hqELdK9XFyJOcRJJnwJKqwmhF5kVRie6kr?=
 =?iso-8859-1?Q?2HrCj9Sy5TiwaeCEeVSeXgeCF8uXJc6kIzHe6xVFugdEt/Xx9cJf5Jhg+R?=
 =?iso-8859-1?Q?q5EE1x7jN/+vM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ufl.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR22MB3533.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a5c1ae-85c7-46d6-8f52-08db3c7c303d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 00:07:08.5887
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0d4da0f8-4a31-4d76-ace6-0a62331e1b84
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WWAMHFbq9vUc+F0qIf0l2d6fizTX3DrkAMQo0IX4rVzaK9cAGQISXkoiAeWC+D9MKBX6hXZFGxhsffCCyNpdAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR22MB4340
Message-ID-Hash: YLYQUVPLXRSLSVJWSSTG2RUBN4J6RMXY
X-Message-ID-Hash: YLYQUVPLXRSLSVJWSSTG2RUBN4J6RMXY
X-MailFrom: djgreene@ufl.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP Daughterboard Calibration - Need to remove/replace bulkhead cables?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KVQ3FMPKZO2EONZZAOA5MUG3P22TCNLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7958962721728614298=="

--===============7958962721728614298==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW5PR22MB35334DE2B04FC917DEB90DF6CF989MW5PR22MB3533namp_"

--_000_MW5PR22MB35334DE2B04FC917DEB90DF6CF989MW5PR22MB3533namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi folks,

I've had a set of N200 and N210 radios with SBX daughterboards for a number=
 of years now. It has become quite common that I need to either remove the =
bulkhead cable (at the daughterboard) when using the daughterboard calibrat=
ion scripts or replace the bulkhead cable all together; otherwise, there is=
 residual IQ imbalance (sometimes as much as 30%) and DC offset. I perform =
calibrations about every week.

I understand the calibration scripts utilize the internal leakage in the da=
ughterboard, but what's going on here, are the cables aging? I've noticed, =
over time, that metallic dust becomes embedded around the insulator at the =
end of the cable. I've started to routinely clean the female ends of the bu=
lkhead connectors with compressed air to remove the dust.

Is there any other maintenance I should be aware of - any ancient RF wisdom=
 someone would be willing to pass down? It's much appreciated.



All the best,


David Greene

University of Florida

--_000_MW5PR22MB35334DE2B04FC917DEB90DF6CF989MW5PR22MB3533namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi folks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I've had a set of N200 and N210 radios with SBX daughterboards for a number=
 of years now.&nbsp;<span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">It has become quite comm=
on that I need to either r</span><span style=3D"font-family: Calibri, Arial=
, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">emove
 the bulkhead cable (at the daughterboard) when using the daughterboard cal=
ibration scripts or r</span><span style=3D"font-family: Calibri, Arial, Hel=
vetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">eplace the bulkh=
ead cable all together; otherwise,
 there is residual IQ imbalance (sometimes as much as 30%) and DC offset. I=
 perform calibrations about every week.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">I understand the calibration scripts utilize=
 the internal leakage in the daughterboard, but what's going on here, are t=
he cables aging? I've noticed,&nbsp;<span style=3D"display: inline !importa=
nt; background-color: rgb(255, 255, 255);" class=3D"ContentPasted0">over
 time, that metallic dust becomes embedded around the insulator at the end =
of the cable.&nbsp;</span>I've started to routinely clean the female ends o=
f the bulkhead connectors with compressed air to remove the dust.</span></d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">Is there any other maintenance I should be a=
ware of - any ancient RF wisdom someone would be willing to pass down? It's=
 much appreciated.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div class=3D"elementToProof">
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; font-family: Cal=
ibri, Arial, Helvetica, sans-serif; color: rgb(0, 0, 0); background-color: =
rgb(255, 255, 255);">
<p><br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'Apple Color Emo=
ji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI Symbol','Android Emoji',Emoji=
Symbols">
All the best,</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'Apple Color Emo=
ji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI Symbol','Android Emoji',Emoji=
Symbols">
<br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'Apple Color Emo=
ji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI Symbol','Android Emoji',Emoji=
Symbols">
David Greene</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'Apple Color Emo=
ji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI Symbol','Android Emoji',Emoji=
Symbols">
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'Apple Color Emo=
ji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI Symbol','Android Emoji',Emoji=
Symbols">
University of Florida</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'Apple Color Emo=
ji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI Symbol','Android Emoji',Emoji=
Symbols">
<span style=3D"font-size:12pt"></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MW5PR22MB35334DE2B04FC917DEB90DF6CF989MW5PR22MB3533namp_--

--===============7958962721728614298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7958962721728614298==--
