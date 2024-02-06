Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 038D684AC2E
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 03:25:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1105A3850B3
	for <lists+usrp-users@lfdr.de>; Mon,  5 Feb 2024 21:25:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707186334; bh=m7LUWbMBsFbMgTQ5OtrcmjB4dXeN88/WzoeJcAwKhJM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Gp53fhgBx8LCE0P43iOjy7Fp7X5pNfZJUY0NEuf6IrTVp1ICnQcfCR5Kk3OgSs4sx
	 497CoDvH6ovWG01opQN9Gp53kawYkA9AixZTmpR2px/YZpuXQktuNkNGLf4Hh3mp/E
	 mi4QJ4ch6bnPjs1tbT3cK60FDGKR9JyePc6IkuEhsAo/IUKea2L7exDlwO8eLBpacJ
	 av5v/0zORyJxmOiL8r1rbQhEft3MyY4U1b+Tp+1Jl772FE8jyShd0SBkgjRu9xJvTR
	 hy7BrttlPYLbkKhb2lnBd9IAhEBULv9Fmllv1KLxtnlQRWzcXyxNpq7KtGcnhlECfh
	 BR1pzJebs/YyQ==
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11021007.outbound.protection.outlook.com [40.93.193.7])
	by mm2.emwd.com (Postfix) with ESMTPS id 60267384FB1
	for <usrp-users@lists.ettus.com>; Mon,  5 Feb 2024 21:24:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gatech.edu header.i=@gatech.edu header.b="CwdRMjx8";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dh/cekGzUn7VwK/ydufgzfZ+9DUw0S42TpaWQ0bH6yhnchI2S9wY1Ahuwk271wMh3ZzRJA9lvN2T1sgwVpZoGsVLlsc/uLvOi2kFcdaa5MWeSQS/6Kx5XGdpznc5nMDE2L+8e0LhVqTkr0bc3rxC3RXSO3qYbOA1D3IAMhRwYALQE2VDEf4HqsR2QFj7LQ4luCRY2Sgn5JsOuM2n81xT3T7k7JehinVKTEKuRq5qg49ttQtTrFU2ErGSxImxOcUmg1R6NS/dDif/jdfevHqoGpOaSqjhg1Sf8FVYKhCo12kyVMuHlOEdSW8rYzMc3cK6B9EtK0zRL0zDU6CpDnGxQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xz4moWZwCnXTzIxWxCWuVLuf077BFq+epNLqZkrknsU=;
 b=Q5FuIEU6E4jWXEh+TYEd4VYI48Hcu3EGgCsE2St0fVs4zM+9bS9vzTmEjah1ZAsja0SqDSwVkl1KaHFmwylo5B32TJLmSJhuhhPqNt8PHuqAISI8Ah9nzZErA0KHkRxR0oSSDZCJK9lqNwpUpHbL7bWbBmFmfoI+iRLNRA8V4a6qPqMBqtCR5Kn61mcbr1C9MvFAJB6/Hp+oXQQOFYXqzcDf1L7dlAGKo0rnT6PPmTdASUOQ+cM4Lu7F5/Pn7RJ2ZF6iGbN6ZK3rlm9o+4oIF4e+zz6iTDCQkLkpd79J4F2nexhJflWk47qOOYmXbAfNKStJtwS7eqwpGdY0RDt+jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gatech.edu; dmarc=pass action=none header.from=gatech.edu;
 dkim=pass header.d=gatech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gatech.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xz4moWZwCnXTzIxWxCWuVLuf077BFq+epNLqZkrknsU=;
 b=CwdRMjx8efMBcODHpm0fXskUjwH9+pxq3apATYA7wAOyiu6xUf2qOrGPgceqYe5qJ59VpBnVA00V7EcBOqI/eOX8R3v2zVLGFwNodNvdmASfDu2AIjFFzYgQL9bCIT8oR2ZclFQ5SyTaoDWS1munDUE3i/Yn0KxuEiMhFMH+/W4+w7/O58/N1tqaAHwdH9JdwmtCThRteXDrAGmd298HCwvpo1vzzP+GeqMk4B3aB+l0DWvhPrYBch6zJjWoSMENAzvscplBva1YVUd1WSFi+q3J199FbTl4uKTu+3WAaietOXt1I2hgr3y/i+YTprl+8X5lQLgmc/NePLiE3sLALQ==
Received: from BN7PR07MB4244.namprd07.prod.outlook.com (2603:10b6:406:b9::11)
 by CH2PR07MB7207.namprd07.prod.outlook.com (2603:10b6:610:a7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 02:24:34 +0000
Received: from BN7PR07MB4244.namprd07.prod.outlook.com
 ([fe80::30ae:18bb:4682:c867]) by BN7PR07MB4244.namprd07.prod.outlook.com
 ([fe80::30ae:18bb:4682:c867%7]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 02:24:34 +0000
From: "Ramesh, Eshan" <esrh@gatech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Multiple USRP-2901 reference signal sync problem with gnuradio
Thread-Index: AQHaWKJN/mXlU+LRPUKglXF6R9MT1g==
Date: Tue, 6 Feb 2024 02:24:34 +0000
Message-ID: 
 <BN7PR07MB4244C79C6CC2825D4B0FD476B0462@BN7PR07MB4244.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gatech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR07MB4244:EE_|CH2PR07MB7207:EE_
x-ms-office365-filtering-correlation-id: ddfcbfdb-7525-418b-a9f5-08dc26bac27a
x-gt-tenant: 042d12d7-75fe-4547-b5b6-0573f80f829d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VotaHH5Qj8+Sh5H7Dyu85sTjsbV71yFrzZ4hsGCH1DGpvoMY++Xy4qJZYW82esfm5GByShnV43nleVQ+0lg9YP0GvRAm9/jDXBKWwGfQ2n4s58FmHfc1KZAGIDSfGi2phw9TMpeI79XQegSCkUVyXgZEW5q8AP5i57GbqtParGaVZpFoJ4fA+67po1z+ktpX7eydogjrpiRKWG30Fe6fRUgB4xQN1JiNNi1l8NZ6YFrEG3FnSWmTyoB7iJ6G1iSat8jaaE+ksuov3HDpH00LesJjpepHD+WtIIKywGboTaE2gaug3gDR8tOG0qwCLiGqIIgHf8IwlhfSzUjIyKarsy5S0tsHEigaatoi5YngU+XlVuPLes2I7CsDPQVlAgA6WK/Bgh+ISHoAhS9wlO6DAV1z1vmQUjchJQw4bFlaX8Umiumw7+mSWkjWE2jGGuzJHtfSlOusH1x8mZB+3x5tYvsk11s5+ePeNK6hhVvpxtQIqyzCTJmSZ22+n2SGUzX6XOJTvuJhI8U1tj8sPIGEmVe2xl3NHV6fG8pqC1klnQ8BSlmiAFJSbNhc27+2X8QZZbfbiD1rgCkWp92E2uhb9Q/gXW5pBNc3M0pDRkV/ivvMQJRCrXq0eeOcBZoZ/k+P
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR07MB4244.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39860400002)(346002)(396003)(136003)(230922051799003)(230273577357003)(1800799012)(186009)(64100799003)(451199024)(19627405001)(38100700002)(33656002)(7696005)(6506007)(83380400001)(75432002)(55016003)(316002)(122000001)(86362001)(26005)(41300700001)(52536014)(8676002)(9686003)(8936002)(71200400001)(2906002)(478600001)(5660300002)(786003)(66476007)(66556008)(66446008)(64756008)(38070700009)(6916009)(76116006)(66946007)(91956017);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?TGHsHByYj/yBnzuBW/h4BIOqkW2I3VqARVXIAfZxE4JkjN8JBWnRnpwZDq?=
 =?iso-8859-1?Q?ztJOaWQiXVoVYtT7YRRG1KiwCzwWXb7ava+UopaMUDj0Lc5SfE4k5SMzxl?=
 =?iso-8859-1?Q?i8zcnPg0TS+/JqDB0nk0RR9TqOsxMmjqifmLGDa261+1UQhtpCrPcWXBZ4?=
 =?iso-8859-1?Q?MvwLSVhds390Ls7wvOQ1vfe6xgYDxVvutZQREjtz1qf3zSKi4hBfB41aKB?=
 =?iso-8859-1?Q?KuYLjF0KxK+NUoAbQSWq7OsoiipswUgy1d7pk1RbVXJ2v+gxojWiEgv5dM?=
 =?iso-8859-1?Q?mJDXUHxNTdDF4qKqyIQ3sXK3k3eZQ/S/9jjggDDt7e425kh5rvCHd0gYHv?=
 =?iso-8859-1?Q?/Ve7fFKeC1xHNOsgW2zximnCz9kCjkkZpj1tLS9UsDa8Ddhxi1Abca1jk3?=
 =?iso-8859-1?Q?7cRLA8yMBYIlARrwb9UMEN9mvpa9S5ncep6BORrgdzHMslMhR5MAlZ4HKZ?=
 =?iso-8859-1?Q?kfwTLfu3kjpN22oR4MnXeCdOCdc3839AbiW5AnYLwoiqOuxjzRULFMQJKN?=
 =?iso-8859-1?Q?fEgsYI2NS8JByidhZ++c3UPz4K19iVaS6goRYUmnsG32ZPUyKRa0tuVBno?=
 =?iso-8859-1?Q?S1IwTUpWEFkTkHKPKiZ23THZTw1EeIbvJVGTtkKlzqsO3VFj4tQmiBdUL2?=
 =?iso-8859-1?Q?KljlDnwY4ExWDU/2D6toURVd03v8FXS7w8G3exDLrHVODCW4/VO5yp5zox?=
 =?iso-8859-1?Q?iqX2RO/BOrt/FwjFw2HrhxswDkgwnw7BEBxGdM72tgRUv1L9+VQ0Vas6b7?=
 =?iso-8859-1?Q?Jm+WxjU7sq9hmfUyHwfnKxfnrIEwv5mrmBl5VhtaPEN05M2lkv3jSPOkLe?=
 =?iso-8859-1?Q?vcZKcJfCLTaJ2zLx78OZpTWgDENd3kEi7rCNNct5jf7GcZtQ1qcbJevk5l?=
 =?iso-8859-1?Q?04oyNZBZ+bb3/Qk3BQ2hH/l58fGkRio0IN9chrnHH1TxekA9VNm+KXocsZ?=
 =?iso-8859-1?Q?sKIjAmnEY5lWNsRRQ2Uvvy1NxHCeeUeW+qheP7UuIxLizStCUCLMsu/XtU?=
 =?iso-8859-1?Q?q1JqYT2uAlRToGt6XSsLKHqLMiVbzQM59IfRf6OzKQp62iJIkB2jYhR2ei?=
 =?iso-8859-1?Q?hl2erlmjIzmhDUE9DzRmLMtNh44vQU3Qb99omMpPqD6PiJByqY2FbcwjiV?=
 =?iso-8859-1?Q?s2imXDM0WwFWPOdp67J1aVAcAluwgPwVwyzY7FjZHcbts162BvaVsKEFrI?=
 =?iso-8859-1?Q?muePwxtf/bA90wkvyz8TipkplO7Sula9R0T6Uxk/SSgfsR4EIM94rzzlJw?=
 =?iso-8859-1?Q?UUD4DnsqHLx0AYqEPOkP6gTyDNtr6/cpZouOgPqNZ858jjzDxnKn17JwRi?=
 =?iso-8859-1?Q?rrh3VcO7DtwvpnRA9BUc5PUvKsOcO+szvEKcfNqV4PYeMSzF5Q9JuFz+dC?=
 =?iso-8859-1?Q?sGqsOt1WpboQsXpWwzUcxQWcDE7MwYalFolPP12dAhhjTf97UhIrLYz32V?=
 =?iso-8859-1?Q?r5w7qqXKlDJDG5/Wa2QtXPwRUmCe2rVXAGoYf6s9MswpYVpO7zC61F6yEz?=
 =?iso-8859-1?Q?MFeexobzFuN7wHMl0L56+uNwLD8wUPVwuZkYv5ZJjVDEu5xJ9TW1BiTJl8?=
 =?iso-8859-1?Q?Oq9iEfneHRTDGUkrFTgUFfusijaWqtxxyIRZWP9R1yVGYXfhv15Ei5YXhO?=
 =?iso-8859-1?Q?4WJIO+CGKnaoJSYgquok0KLnJIsrSQkbcE?=
MIME-Version: 1.0
X-OriginatorOrg: gatech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR07MB4244.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddfcbfdb-7525-418b-a9f5-08dc26bac27a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 02:24:34.8212
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 482198bb-ae7b-4b25-8b7a-6d7f32faa083
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: edB6iiku5LEMnFFghGJ64+WbQVKz8lYGgHaPAvIE5k/tU+3B5Z2rkMyPtarPDtxpnM/G0gPsN8f7tpAvSrYhHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR07MB7207
Message-ID-Hash: 4QIOR4IGIEP6EBGJWYPGGOCBNSNVG52T
X-Message-ID-Hash: 4QIOR4IGIEP6EBGJWYPGGOCBNSNVG52T
X-MailFrom: esrh@gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Multiple USRP-2901 reference signal sync problem with gnuradio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VV6SCSHG74SMRNWMDK2CY2F7GEQET5Z7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2344803439731189919=="

--===============2344803439731189919==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR07MB4244C79C6CC2825D4B0FD476B0462BN7PR07MB4244namp_"

--_000_BN7PR07MB4244C79C6CC2825D4B0FD476B0462BN7PR07MB4244namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to use a common reference signal to sync two
USRP-2901s. I'm using gnuradio with the default USRP sink and source
blocks, and we're using an external signal generator into the "REF IN"
port.

If we use the same USRP for the transmitter and receiver (but on
different subdevs (RF channels)), when the reference signal is not
present, we see an error as expected:

"usrp_sink :warning: Sensor 'ref_locked' failed to lock within timeout on m=
otherboard 0."

Turning on the reference signal generator gets rid of this error.

However, when we try to use two USRPs connected to the same reference
signal, the error does not appear even if the signal is off. Setting
one radio's clock source to be "internal" and the other's "external",
and then modifying the reference signal frequency seems to have no
effect, so I think the radios are not really synced. I would expect
that I'd see a frequency difference if the reference signal frequency was
slightly incorrect in a loopback scenario.

Is there a reason why the error does not appear when using multiple
USRPs even though there is no reference signal, and the radios remain
seemingly unsynchronized?

Thanks,
Eshan Ramesh





--_000_BN7PR07MB4244C79C6CC2825D4B0FD476B0462BN7PR07MB4244namp_
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
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">Hi,</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">I'm trying to use a common reference signal to sync two</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">USRP-2901s. I'm using gnuradio with the default USRP sink and source</spa=
n></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">blocks, and we're using an external signal generator into the &quot;REF I=
N&quot;</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">port.</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">If we use the same USRP for the transmitter and receiver (but on</span></=
div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">different subdevs (RF channels)), when the reference signal is not</span>=
</div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">present, we see an error as expected:&nbsp;</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">&quot;usrp_sink :warning: Sensor 'ref_locked' failed to lock within timeo=
ut on motherboard 0.&quot;</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">Turning on the reference signal generator gets rid of this error.</span><=
/div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">However, when we try to use two USRPs connected to the same reference</sp=
an></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">signal, the error does not appear even if the signal is off. Setting</spa=
n></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">one radio's clock source to be &quot;internal&quot; and the other's &quot=
;external&quot;,</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">and then modifying the reference signal frequency seems to have no</span>=
</div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">effect, so I think the radios are not really synced. I would expect</span=
></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">that I'd see a frequency difference if the reference signal frequency was=
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">slightly incorrect in a loopback scenario.</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">Is there a reason why the error does not appear when using multiple</span=
></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">USRPs even though there is no reference signal, and the radios remain</sp=
an></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">seemingly unsynchronized?</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">Thanks,</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
">Eshan Ramesh</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
</span></div>
<div><span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontSer=
vice, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);=
"><br>
<br>
</span></div>
</body>
</html>

--_000_BN7PR07MB4244C79C6CC2825D4B0FD476B0462BN7PR07MB4244namp_--

--===============2344803439731189919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2344803439731189919==--
