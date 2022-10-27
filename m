Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E84060EE0A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 04:42:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 919CD383BEC
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 22:42:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666838567; bh=k0AvhrVwFzCDWbHNATgTGQt50LR6Nh9E1sRZHvwEsSI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XbldDqo5m/73fgOGutN00cXrrttKJiacBIEgWWT2W9RhMsiqBJrbF47n63RqY95Tf
	 i/C8MV5L0rL62AiLCP9Y8r0EVk2f6aOhbltONIdw4zuBXIEeZR/JDB0hCC6Y6Ueaew
	 EV9zYetoNMjKPXkmQo55UfX7vPdUvA9MHqF/HoqtgOgdssUAHaiL5DQ/gBPgndROkD
	 gqEpRublRCv0t/GmzMIoQHWOfs1rfQr2SiZma2hPJik/O5eBYFWFV1IrgMW8XiM2SI
	 0sugZR/SfhuiG3KSrBGDshEPeRi153CyHUXRcvRznkZIimaEAgniY82ltIuTY6+YrD
	 q+Vi7VEdOEo9Q==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2126.outbound.protection.outlook.com [40.107.244.126])
	by mm2.emwd.com (Postfix) with ESMTPS id AC9EE38192B
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 22:41:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.onmicrosoft.com header.i=@umass.onmicrosoft.com header.b="cgv44gjM";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KXhQ0O3rBJU3Eh/YcuWQ0zHPcJCw/V7j5jvRtK9BHLJTdDU/NJvZun+1OoD01ib2S0hRS8NoZxREHh6wvKFOVSubb73V4Mn55jvzD9RJJkQpXwvRvMRUDHTLi9wxayXQcFqDuhy3LG49Wjzpa1rdEjqTP7/J7VkiPRispWk3YfugbX/18AYw1qv+VGVgvFM9QM3okqs+9+YzZfEw6bpPts3PsAURoqLIOESgHLVMg5WFjM5AbNB8x9MwYvNljdFg8CxgeKsrtFtqdVesaiYbJYWkcL3R+IvTT6g07svNYTHa5VSca8q7AKG8FSmrYXcRz+YMv+jkzDjph4g9CKt83Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//YRl0dJCoAApexDar9RI4WmjAh28MKktz7E7Jdf7k8=;
 b=Z+elvhDTko9o2vhMinU+r/5kVudj/cuJsraKZ/UUYqFyS+ZoxJJyfw9yXx9UhOSWOmc1hnZvKHPUsHJ5Ih23y8Xv8peKAyUOYl/BhUSbophTxIY2rEsLerWw93MnPqkFqs02rLPKg34X7bGvU4p405x3OqaoTwUJesilLWO751KGcJE3gZ76dvbZb9rA/YAXDahwPsfhWuh2517JjdJLj2e1d5gu5uiiUQSXYdhILjamj96BKm/BAeQtDvvJxZwtTY1G5yjrQT7EfGfbjJAGYxhwVDdhbE1lVXwQxqD/IIQX8cCIjHiOLry/MSyI4QhvGSSgYhFMSB8NJvWwLvFnaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com;
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//YRl0dJCoAApexDar9RI4WmjAh28MKktz7E7Jdf7k8=;
 b=cgv44gjMdSALxxaI8yHl0TulL/5/MQXFQ85zFHKracWuDwhnEJpoi7m615xgZiqMFgw9ZXVrck5lttK/P6AoEcvfb3nAM/eylMjfY/OH1U5BjX/u1ZEHPUglzqNY8aWtIdyTBeijNdrniWS/Zx/rz9OeOnpTkcE5S7MCcjc/uMg=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by MN2PR14MB3358.namprd14.prod.outlook.com (2603:10b6:208:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Thu, 27 Oct
 2022 02:41:03 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::238b:b050:b399:b11b]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::238b:b050:b399:b11b%6]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 02:41:02 +0000
From: Xingjian Chen <xingjian@umass.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Simulation for RFNoC block input signal
Thread-Index: AQHY6aw6KA299YraD0+bpuGCBLD/Ug==
Date: Thu, 27 Oct 2022 02:41:02 +0000
Message-ID: 
 <MN2PR14MB4192D5D8287383AEE1985AE7CD339@MN2PR14MB4192.namprd14.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=umass.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR14MB4192:EE_|MN2PR14MB3358:EE_
x-ms-office365-filtering-correlation-id: e8ea804e-53af-4277-4b8b-08dab7c4b06d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 32PRI17gmo3ur3fKZwY8XgagFdceFYqouz5mH/YqF8eYTlhstH8KPmJqhcp06F13CaMWoS7yPNsmLo8oKXixxB+IIS7YCAX9fN0vjtfTkJ4AumNqjRRc6IECYows90svhbwOx7XuLQs9MUsHYRObQmSwt26AwQ/YSBJd1U8wj6h1xEQna2Wbda0losM7PPOJWKgjkD1oj6e0rUMAzWus2+gG9WRug4/jxifbhnFqeUsS4ZVtNx6NesuKb3hl4EIyWgVMnMPl7i8jc8OzbMxPw5Gz2Ra0Bcw6I3Wt0J3D5WK0jUPwzU6o/a75fnbTC9nLivvGQtuJa3QQM0Hir6QD0oZriLU5PW893sY3BUKcvSdhnYgD0aAzmt/rRkeRg2ZusvFwseByZwkEAdJdYnoY9FwDJYEI6lMBwN8c8TfmxwFIgoV3p2+eIuysalQodKje6oS+SEix0DSnEQnVfD3RZnSwcC7QPKtD7LguaZ/IzvufekQPziggT4vji/wAEy4v46I8IUI9/gC5DfH5yod+pMTXjCCbOtC7hG2inC8iyZ0w68IFn8fG8OarSRQZxv+NTvE+1wObNioe4mW6mpsJptj3i1UZNX4VuJskLJjKTzrmi2d68CqVXvv2+v2lNZTNgbd6+Y4JOTDsPHLuGgQ3+DxdN+f6wUHbD1cMWXLiHmi7YZ+HwKZqHSXxNWVbpXmXIJJLqip9WniH9p7yaZHYpwBOeYUNrIXu0OzGZWrHQk8MiqZ0DzBfZvDYWmCs0tDLvHJx2o8sb3kiH5YZbFQNtQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR14MB4192.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(451199015)(38070700005)(86362001)(38100700002)(55016003)(33656002)(558084003)(71200400001)(2906002)(6916009)(66556008)(478600001)(316002)(8676002)(786003)(26005)(66446008)(66476007)(76116006)(64756008)(52536014)(8936002)(66946007)(41300700001)(5660300002)(7696005)(6506007)(83380400001)(122000001)(9686003)(75432002)(186003)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?4zNKV+P4qJCGJIbQcNZOWDzIJAqr9/zADyH7srCIvcu5JQ14VjFgMbg3q+?=
 =?iso-8859-1?Q?GvOClIj9F7GQwAsngSp6zAnf2wCPyG5Et/eaVQj3S+K6/4jNV8Frfv7Hz5?=
 =?iso-8859-1?Q?S3tO4JK2D2Atxf9wXb0eZ3dm7MPNV+5huRyo2hVTKmSiSVjHROKqfsgl0o?=
 =?iso-8859-1?Q?YUMs28H9iNcnvk0xPrgxz0n14pq336Y5g+wVdLPHcNWb93wpieYQmoWYoN?=
 =?iso-8859-1?Q?NpqhKlfkhQCPB9epIUk2QNQQfyKpR+TfEx0fxA+daFII72JlEphT1lWclW?=
 =?iso-8859-1?Q?slkl51NQQS4v2R05okMWGT6C2Hr5e/SkDraYpwaqdVwXeAci5UFU+KH8Rh?=
 =?iso-8859-1?Q?SW0cIKv3nQM0/uGpKroNDV+jc3b4s7dXnfh3/ZmE5Nna3K3Cw8cV8KtLF9?=
 =?iso-8859-1?Q?C7VxmfEh480UDUc1vrAfd9smaIPmRjNij5K7sbH/CEUa9L9o6kgPFFzDNd?=
 =?iso-8859-1?Q?fU0vSfowLHGS7+ZEUmEZOAN5ja4YhWW/3QRUI1lISHP4u+d3RoSbj4YgRS?=
 =?iso-8859-1?Q?GIleGEJAkN/OIF8Ub5bapxyayERIfTa+hNqJ87a5X/wXCQ6ar0DZG7aYTs?=
 =?iso-8859-1?Q?XBq2HtD5Z1mjh0c6L98Ui/mruanr4aJqzCm1RIqXy1r9hwevgFG7xJ8Vza?=
 =?iso-8859-1?Q?GHPW+yx1+/V8FVCZI1ZKomkdt4p1fObGBe3RBkk5BJsIMfmmYcBN6zoKQe?=
 =?iso-8859-1?Q?H5NVSvPRJo/Kh3OnzrC111krFo5Rjt8M3lHggMTlbHxgmCZvefg2sOTK/c?=
 =?iso-8859-1?Q?moraYbOwe9kjahH1HMQAZfOyWSBHOMrBno6lLhSXaUPz3RINn7u5k2Mx2p?=
 =?iso-8859-1?Q?KJh3gYPQ+fwRtZw8ZDiBHoS17pZ5ZJOFdWaigS4MZFEosVEBbVhQlhPQpv?=
 =?iso-8859-1?Q?5uur+qO/GS7wNleQKxMEUq+vKjg7mMj4VRAoxUhQ4ddq2ewE1YohfzXIR/?=
 =?iso-8859-1?Q?ulUN6CDjgIN5xlTJfKY8/PYWbz4YWAQi/S05gsm3+DWo7cYB/EGv36KZun?=
 =?iso-8859-1?Q?G5ZlDfI8giKFGy9YOJa9c3QIJ7vAEOvUdjAelV5yTwsZSZBBvmgZlXq3lQ?=
 =?iso-8859-1?Q?eiumPTKJEmYN3PgoXLNEAjsPO5lKZ2aT90VopEZBe3s9nq7CUuQSKd4EDI?=
 =?iso-8859-1?Q?zkRjKVNpUWYIPHMNtgWsZIcfq8lE3nQOM+rnIMltPFw6IQT13JO+57vMCx?=
 =?iso-8859-1?Q?lPSLA2uGLQDWR8/0MMnldmGA26Fqgm+bAhx/ys/6aGgIetcRpNoQoNO85L?=
 =?iso-8859-1?Q?qsTHs0n6HvRxD1uiJaVwH4aGnZXOyowd/AChrUfv1BcgPiexeNkdd+Hx9B?=
 =?iso-8859-1?Q?c02QXERet+v5IX9URolkTRck5Qm797KRmRXkluHPzFtA8qYsnBMTLBrvnZ?=
 =?iso-8859-1?Q?Y0Bb5ibCXH0YzQP27uSGCV/DYdSLW16zVXpx0EN3sF5gHBojxCNthptvqZ?=
 =?iso-8859-1?Q?wSoojd4bo0MBK3mxIism57Fn3ZfTc1/1J88saCEinWwA4G4CEFSIU5OA7R?=
 =?iso-8859-1?Q?kygaeUmXxSECp+X08kcZj8kJXU7jH+kf+QLFO35cWVIB1LlEXvrEIE3Fyu?=
 =?iso-8859-1?Q?D8VZqki5oCEiJaAbPhEQnP7bKvrtxRSUBv7KwVXf/I7yTfwrGnse1QMDqU?=
 =?iso-8859-1?Q?bbr5PgJlROYlU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8ea804e-53af-4277-4b8b-08dab7c4b06d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 02:41:02.7147
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yZKoZB/zRdAVeAmLb9lvOsS7VC6ITLe4vGN6ROjVBGmLk+1Tf0j30t9DFWEmz/qMa72ILRO6PLq0FHM4tOKw7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR14MB3358
Message-ID-Hash: SWNLXVKEKT5GNN5OPIDJA2ZJOQLZLZKC
X-Message-ID-Hash: SWNLXVKEKT5GNN5OPIDJA2ZJOQLZLZKC
X-MailFrom: xingjian@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Simulation for RFNoC block input signal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K3HTMNE2FGXJ57UG2KF6TMGSKBFCYR5V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3527555688480851294=="

--===============3527555688480851294==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB4192D5D8287383AEE1985AE7CD339MN2PR14MB4192namp_"

--_000_MN2PR14MB4192D5D8287383AEE1985AE7CD339MN2PR14MB4192namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there,
I am creating an OOT RFNoC block that does pulse average for X310. In a sim=
ulation, can you generate and manipulate input payload stream data? Could a=
nyone point a direction about which file can feed the RFNoC simulation a cu=
stomized waveform? Thank you.

--_000_MN2PR14MB4192D5D8287383AEE1985AE7CD339MN2PR14MB4192namp_
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
Hi there,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I am creating an OOT RFNoC block that does pulse average for X310. I<span s=
tyle=3D"background-color:rgb(255, 255, 255);display:inline !important" clas=
s=3D"ContentPasted0">n a simulation,</span>&nbsp;can you generate and manip=
ulate input payload stream data? Could anyone
 point a direction about which file can feed the RFNoC simulation a customi=
zed waveform? Thank you.</div>
</body>
</html>

--_000_MN2PR14MB4192D5D8287383AEE1985AE7CD339MN2PR14MB4192namp_--

--===============3527555688480851294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3527555688480851294==--
