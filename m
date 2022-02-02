Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A42994A759A
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 17:16:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3725384FAA
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 11:16:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="cQTFidV8";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id B7AC038515D
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 10:44:01 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.122])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 36DB2300092
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 15:43:59 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 03EC440091
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 15:43:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gpb34hPvf6Vj6qc9ytH4lxK62keyKGrP0UoReePk1pqhoNZldNaQKTyhlxO2qs9oRhySuDLs9ckj02sBhThW0DQ6jZzyIXYtGRkBU2Dwv6ikYj50FF1JxfGx/H3xfo7olug80c3E+0SDSBQalPYRcfw0TTikCMydPEAmyuqSVkwhMnvHtDBW3sd6ZipujJmfmgqRPjzDUuJ1wFT2OkRRJSwAIX4fBGW8qrGLbWSAzWfxCeboRffpYsChQ45vdTBXFd+pJ29R2jCHiFz3mnMP1GYU5iWThtSEcwvouvokBqkRcu1ljfKjFuvQQ79HfRrOSZadsJI6KT7d1uCarpDQyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I36HUC3P5pDvK0qVMhuyM1kiqy8DSCU9iHUNuWm9NUw=;
 b=oMgBxaGAB+v1zHfq86+VTa0yeAQhwaxTOz/5OLW8gs8IJ6738NLi/vU5V+tryl+uNvlyJRJLDNxWhAXFutlMW3ZwBZjASQ+G/b5/PUygc3F/jnwubBIMSGwbui+o8xsSZyM81jYTXx7+idXrKkaLhJcFXGjsETG3cFbQaHVQPcWdjK8aq933GAnlN/O4ycX5gox80NkaCJDVAMOqXjBSKKqAcvS2bYKr6M1GPHFdTx26IUkEKtebGR13JgxawBPId5VBmahLQMAAPYt0uFfFTgUFPEMELIrmYLSvBbAMIAbdvgz1nglbucL+fzuFl6iQpTUIvZj5gl0VpPxZO7f9/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I36HUC3P5pDvK0qVMhuyM1kiqy8DSCU9iHUNuWm9NUw=;
 b=cQTFidV866eRiQ94ZHhyUTQ0dpBqSw9T+s4KQqALwx0sB5qajaeWlwcdtT9iyjmb1WiBmsnWjBinVUHNFK3egnRAppIPeFWFtC7meo4KR/uri6o314Ksv9nuH4DpUpzvqh975T1Ro9JnOjGxg7Wz1J+DqkvtqsuYQ8pzeoAx934=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by SA0PR12MB4365.namprd12.prod.outlook.com (2603:10b6:806:96::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 15:43:54 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 15:43:54 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RX Frequency Tuning Questions
Thread-Index: AQHYGEil3QYHPEI5skSEu41rPZVyww==
Date: Wed, 2 Feb 2022 15:43:54 +0000
Message-ID: 
 <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b41aea26-4e30-4593-75d6-08d9e662d15b
x-ms-traffictypediagnostic: SA0PR12MB4365:EE_
x-microsoft-antispam-prvs: 
 <SA0PR12MB436565FCA218250DF3139756B8279@SA0PR12MB4365.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Hqkofcrg07yI+C65AzFvxp00IwSYXCHTT+xHO0GMarIvXkrm8EPZPNrZ4LibC1WXbnDyD/EcjYgaWkcTHcpWsONcYxS41klPtlpwi0iQmU2pfgjhj1kq/ogifLLHzTWQ9Abu4pYYDbf2759y0fcZCUcNbveTfA70lp699iasG9b09uZF4D8/xgczKS/JL0QX66D7gPaHpPYMLLPbRfolKLgCPE8DBt4gwM07tOgtaDHi7WYVODIovN7ex55oX6HntceUKdmKn4lhPZ3gLrDofU15/nZIxu3eLo42LESRYow9/SuXQe1MYKqbRuO02xV5SOXpbSrf1XvUscNP2CjOY/g5zyDaJ4z0+r/zDYS0YU4bnh/kUuHrQxzmOJE9qTiFXefNKcePOdNz1QmHXfhWHWcWXxnEhJBSV1B3lQcyi5tf1YIV/39NUvD5GyzTRsD3dpIjHirI7B4dX6IEDqI3FZn6rMFMQm8ndQBZlqjCFdeXeGRUVAiX842XHCasYFvRENGOylhPlhdW+HQ/YZXheV7vYA1nXvATFBS8JVoxotfwyevpAez+fCQtIP2RtZaAnJIT20j279iVTWNxe/n/9UrykyPx4wX8EKzUqvMAIaGIeuNYAtbKGzEwoXMAomoqbAkWFPmR1ZCRERguLYcnpJdXcAMbRe6uIFE4aFBhmY0Ik55nU+XL3ztBxwIgFSlmXtEwlA43vJVgnMQupzjWuP9Gym0SzMWs6F8yZKGkFYC7dygiJU5wHNeyCd120DIwmHOXquVwiGTabI2nhtmdE+Igdfyw++qN5lbNGYUDtZo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(346002)(376002)(136003)(39830400003)(396003)(19627405001)(6916009)(508600001)(166002)(9686003)(38100700002)(86362001)(316002)(3480700007)(55016003)(38070700005)(966005)(66476007)(66556008)(26005)(66946007)(76116006)(7696005)(186003)(83380400001)(6506007)(8676002)(64756008)(8936002)(66446008)(71200400001)(2906002)(33656002)(52536014)(122000001)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?91gC3jAd+L58pM2QcjSJ8pbRi4wpHPZj8sd93FGZkWzvfyutqMdWGYnjNe?=
 =?iso-8859-1?Q?bgasQ/4SHtHxzR/t0xMmx5f40b3e+xPCHwEKwifsaQq9Zuc7k37Er1FUiN?=
 =?iso-8859-1?Q?Ajhtn1xRt/juPCEDBbWBmzpv+5BgJOuZcoLeue5uWxFwgJ48x4PvN1ADSK?=
 =?iso-8859-1?Q?jBQ6tYFskQD31LoVH15VDyITaoqgdceL4T6GS0a3eLZxOQxGE55NJsyex5?=
 =?iso-8859-1?Q?XRvlumDXEuE3uOVqVFtuJd1FoiqBTyvpRYtJYLlAdhNlFh/K+H5O9GVojd?=
 =?iso-8859-1?Q?Aw0vUgE2iCOb1kfYk3saX58Jm/W2edF5fSU2TnXxcLh+60Mv5ORx0d1c3w?=
 =?iso-8859-1?Q?mIf1RSb10+2x7f+ESbmnq9nMAk1y/ttdvSzfjYbP+eKrMkIvzPV/J80uMn?=
 =?iso-8859-1?Q?iRhlxIdfm2e6E3R7fNx/Yd/+u9BS1ud/Oi3C26VEJO4eXDvOGMPm7ccFOF?=
 =?iso-8859-1?Q?srEarZv3IyO3BGYBpDO4uQNbbrXUbmXInXY5g40TmX/k9AS4jvgClm7n/p?=
 =?iso-8859-1?Q?U6BkKNiKSj1Jg5bhwCQ9cjx1o1hD+XHzo3Z26mVPr5+QWA9jEo45TL0lla?=
 =?iso-8859-1?Q?fZ7JL1KKGVU/mV29cnQGOMnXVam7FYYU1fNMe/SGKnYQ6sIeUh/9pi+f7y?=
 =?iso-8859-1?Q?Lfbm7XEvl9zqhPh9UucrU+eOInYh3xBmTQfiCfCMpsobKYzPzpW6OLNNTF?=
 =?iso-8859-1?Q?MlsROgY3l2+SNeh9V5fFAowmigSYyIUgRIdn2fQumu9f5gD1zh2jay+rtQ?=
 =?iso-8859-1?Q?54two4oli4vwaj9caUYn6WI2TYTo7fkHHh3pE6B7wnhi5/hoPwd/QrTDrU?=
 =?iso-8859-1?Q?blgsBUERE+D1shNRkPXe3xcDGlA4axPhSZc4eUgXX3fz0hqhBHsYyie5CS?=
 =?iso-8859-1?Q?/kPsGuIBR7z/DlnVOpHaI7l7ZUrMyV8UXNzYqgmo/g5giUiXNQoEHEaRIT?=
 =?iso-8859-1?Q?YLlwo0IiZuBh3Q2He4I/ny8nSkj/LPlFn3pLA6LI0lWAtWnzf0UUGiC2/r?=
 =?iso-8859-1?Q?oZtaanMxh3ZOgrsdgbQDv1dtsbkuV504c6bIcKkGUIacuZ9Jm+hjrid1im?=
 =?iso-8859-1?Q?eZJ+9VlV/h1F38kPCQI7GHcM/kAmkcpu3+cIXeT04ZghSubmUOOlgOpN+D?=
 =?iso-8859-1?Q?obglnu6G4mWnCPbDRZBFZ/vadie4KRj5wj06wj6ZPoESB5cGcc6btkOOMq?=
 =?iso-8859-1?Q?lvwA7xkDS0C59fKG7QbEfgZ2YAR2RKAkn5jDbRhHuQ/XviLQO4sK/sr8xl?=
 =?iso-8859-1?Q?VN+5dKP702qSnyMNF/08vF/JrGUvF8hIus1DAH/MjOOhqeBRSUs+ovcP9j?=
 =?iso-8859-1?Q?lZ1ovXKYeS3o/46irs0l2lSBK/+OtfmqPr4W3DKzi4/CBP/KAhDvhYJtld?=
 =?iso-8859-1?Q?hC7mbRd8Jx+DkaJRgAA3sM23CdQrhsxViP/696pHUmxQ+yERcjBQ0u3Q99?=
 =?iso-8859-1?Q?HVaUZFH5Pxm8RT6WBMAYGLPKEQoOEpNbdbSFb5GJiBDKwAiE0DN5HyTPhl?=
 =?iso-8859-1?Q?55iEJv2g6SE5J7dv+nwegXzJ2ZFTekwfRGW5v8dRQA+hWavur6RIuZqV54?=
 =?iso-8859-1?Q?rjSKjqy7vt03eOjf5wqoCKUJ+9RSsy39FkRoa8NwbHi/SXVdYl+lIjj8S1?=
 =?iso-8859-1?Q?EkbTC3J43a9ZyncSM/8/E9pHK6Tjrw6wLA3nC/SxDjxv9drnAqRt8TTpzd?=
 =?iso-8859-1?Q?U7m6nkgEZ1xXWbQymzaTdAi8VN7ueGMqJlG/e4zwRzXLR5wzktNi2/iGRW?=
 =?iso-8859-1?Q?CM4Q=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b41aea26-4e30-4593-75d6-08d9e662d15b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 15:43:54.1220
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j9Urk922PlFfclax5mY9C8Qyj0tXIv2g2pHgFB4M1fSDGiR2uXhsghGRxl1CEQg/BiamxcO6dbsJhHfLM3RjawRVckPcTFAllS+B3QUC6x0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4365
X-MDID: 1643816639-8gkFcKhqYYD1
Message-ID-Hash: RENFXFIILL4QHZ7YMVQN6M5INGO5MX73
X-Message-ID-Hash: RENFXFIILL4QHZ7YMVQN6M5INGO5MX73
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RX Frequency Tuning Questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNAPDEUMUQTXKYQ6PSDUB7PM2DBJ7D37/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4843176017957322340=="

--===============4843176017957322340==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33126FE573E77ACAEC631E8CB8279MN2PR12MB3312namp_"

--_000_MN2PR12MB33126FE573E77ACAEC631E8CB8279MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm working on a frequency scanning app where I need to maximize the tuning=
 speed. I've been playing with timed commands -- I'm having issues with tha=
t and have posted about that separately. But I have some questions regardin=
g RX tuning.

I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app. =
My first question is related to the set_rx_freq() command. If I look at the=
 documentation here:
https://files.ettus.com/manual/page_general.html#general_tuning_rfsettling

It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case, as if I send consecutive get_time_now() =
commands, the responses are somewhere around 2ms apart. If I send the follo=
wing series of commands: get_time_now(), set_rx_freq(), get_time_now -- the=
n the time difference between get_time_now() responses is over 100ms. So, i=
t seems that the set_rx_freq() command takes quite a while to return. I jus=
t want to confirm that it is not blocking and waiting for lock before retur=
ning. This leads to my second question.

On the E320, I list the sensors using "usrp->get_rx_sensor_names(ACTIVE_CHA=
N);" This returns the following sensors: ad9361_temperature,  rssi,  lo_loc=
k. Note that it is "lo_lock" and not "lo_locked". I can querry "ad9361_temp=
erature" and get a reasonable value each time. However, the "lo_lock" senso=
r always reports back unlocked. I use the following command to querry it:

usrp->get_rx_sensor("lo_lock", ACTIVE_CHAN).to_pp_string()

It doesn't matter how long I wait after tuning -- I can wait many, many sec=
onds. If I look at the samples I'm streaming and capturing after tuning the=
 RX LO, they look correct. If I insert a tone from a signal generator, I se=
e it where I expect, and it looks good. At least by eyeball, it looks like =
the LO is locked. Similarly, if I run the "usrp_list_sensors" example appli=
cation included with UHD, the results of the RX sensors are:
-------------------------------
|    /
|   |       RX Sensors:
|   |
|   |   Chan 0:
|   |   * ad9361_temperature: 66.783625 C
|   |   * rssi: -50.75 dB
|   |   * ad9361_lock: unlocked
|   |
|   |   Chan 1:
|   |   * ad9361_temperature: 67.368423 C
|   |   * rssi: -55.0 dB
|   |   * ad9361_lock: unlocked
-------------------------------------
So, that is also reporting unlocked. Basically, I haven't been able to ever=
 read that sensor and have it say: "locked".

Any help understanding whether or not the set_rx_freq() command blocks unti=
l it's locked or why I can't seem to read the "lo_lock" state and see that =
it is locked would be appreciated.

Thanks,
Jim




--_000_MN2PR12MB33126FE573E77ACAEC631E8CB8279MN2PR12MB3312namp_
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
I'm working on a frequency scanning app where I need to maximize the tuning=
 speed. I've been playing with timed commands -- I'm having issues with tha=
t and have posted about that separately. But I have some questions regardin=
g RX tuning.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app. =
My first question is related to the set_rx_freq() command. If I look at the=
 documentation here:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://files.ettus.com/manual/page_general.html#general_tuning_=
rfsettling" id=3D"LPNoLPOWALinkPreview">https://files.ettus.com/manual/page=
_general.html#general_tuning_rfsettling</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case,
 as if I send consecutive get_time_now() commands, the responses are somewh=
ere around 2ms apart. If I send the following series of commands: get_time_=
now(), set_rx_freq(), get_time_now -- then the time difference between get_=
time_now() responses is over 100ms.
 So, it seems that the set_rx_freq() command takes quite a while to return.=
 I just want to confirm that it is not blocking and waiting for lock before=
 returning. This leads to my second question.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
On the E320, I list the sensors using &quot;usrp-&gt;get_rx_sensor_names(AC=
TIVE_CHAN);&quot; This returns the following sensors:&nbsp;ad9361_temperatu=
re,&nbsp; rssi,&nbsp; lo_lock. Note that it is &quot;lo_lock&quot; and not =
&quot;lo_locked&quot;. I can querry &quot;ad9361_temperature&quot; and get =
a reasonable value
 each time. However, the &quot;lo_lock&quot; sensor always reports back unl=
ocked. I use the following command to querry it:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
usrp-&gt;get_rx_sensor(&quot;lo_lock&quot;, ACTIVE_CHAN).to_pp_string()</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It doesn't matter how long I wait after tuning -- I can wait many, many sec=
onds. If I look at the samples I'm streaming and capturing after tuning the=
 RX LO, they look correct. If I insert a tone from a signal generator, I se=
e it where I expect, and it looks
 good. At least by eyeball, it looks like the LO is locked. Similarly, if I=
 run the &quot;usrp_list_sensors&quot; example application included with UH=
D, the results of the RX sensors are:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
-------------------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
| &nbsp; &nbsp;/
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; RX Sensors: </div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Chan 0: </div>
<div>| &nbsp; | &nbsp; * ad9361_temperature: 66.783625 C</div>
<div>| &nbsp; | &nbsp; * rssi: -50.75 dB</div>
<div>| &nbsp; | &nbsp; * ad9361_lock: unlocked</div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Chan 1: </div>
<div>| &nbsp; | &nbsp; * ad9361_temperature: 67.368423 C</div>
<div>| &nbsp; | &nbsp; * rssi: -55.0 dB</div>
<span>| &nbsp; | &nbsp; * ad9361_lock: unlocked</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>-------------------------------------</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>So, that is also reporting unlocked. Basically, I haven't been able t=
o ever read that sensor and have it say: &quot;locked&quot;.&nbsp;</span></=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Any help understanding whether or not the set_rx_freq() command blocks unti=
l it's locked or why I can't seem to read the &quot;lo_lock&quot; state and=
 see that it is locked would be appreciated.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
</body>
</html>

--_000_MN2PR12MB33126FE573E77ACAEC631E8CB8279MN2PR12MB3312namp_--

--===============4843176017957322340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4843176017957322340==--
