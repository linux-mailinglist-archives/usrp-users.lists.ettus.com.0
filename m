Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB393F53AA
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 01:33:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DF63381009
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 19:32:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="DqY8K7Mh";
	dkim-atps=neutral
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2058.outbound.protection.outlook.com [40.107.93.58])
	by mm2.emwd.com (Postfix) with ESMTPS id 464CE3809CB
	for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 19:32:09 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENemUyjFeXPj3kEgG/IQXb4d15OZXeGf+IO/s875touqpCpdix7UWHir85g3J5xlfX1XwDsKf7JaVRRcRqK4vuzBaalN0wNiPo8MLNFR6pod8wfj1i/nGsq7+AOtmLAUJwSEf08Je2S1/A9DM3qG0SzrlMOotZIj4+MeQ5/qJPfXjAAu4rP9wk3KN6Kq4f4feJUD39QvWfWyG0810RMP7SBv6UOUEu+XXxWeN6N7VO8XscCnN7mfe8IVtQnjUOD749KeBKob2HGKfmEuenG0FIsIKiUp86inCbalh0Bd4plnOwNY6k6SJtzpzKQaHTmf2tmkEfAkIe2gJiyFvr5JwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2xX8NXqXGX0UZT+ejViPO23UlssaZJEn3vTB+1IXsCk=;
 b=i2FMieATny77zbPmg5yPwlNpc4Z5JRcjIrNGZd+mT1jmcDjdlp2+8xXkUaMR73gfG5Lk5Wpi6umY7hL0yTBZsDO0+UGo5z4hKYxjcQgqlqn6vcmXi3SgP26RV5WbsrgF4t91fTlMVWyU9gqJSaujIkC3fQywusFGHettTmltpH+kteZyP/pmhLo97Z/QtXDULB5KH1R5zE5HAxSkZ70h3RzpxxwtBi2Nt4hw888a+GrgD5BAF1jrrD3l0eLD7+XJrQHLqnjHzxvepXqW/fIgypGR58Mu2GRooEbVqkKKO+TkRN9xlqEcMzAaUIYV2ShnQsT4RDmEnQrm0mOVYtUUdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2xX8NXqXGX0UZT+ejViPO23UlssaZJEn3vTB+1IXsCk=;
 b=DqY8K7MhZwg2Dhw1nm1a5TiEJsEhq2Jq8u1z3coA58x94Y1d1KtgpjZEfSAfmve2UTEiflTzkiEIv8frY9Ob9YORCHfHh2yFgE+Bk3J9S/AmwItjKAEsVtHj67/ZxbSQPSExF5NaNiLbAlQDk//ad+9i33YfRcmAPu5f3jJHU9r/h55orTZIEpTqmZQXQQEcAfdtyRQBZDEcRQMuAF+gxg9D7xBEc7ZuI+KnTXOY7lmvJqAMOT9BydKiHNxhDK50h/ICc8XmJwpG4e5kEN2w5gCtgwSSc6t/yXOypna+mZjZIamDSkNLKxq6hLvuUVve22wFwOyeIalF9zCKuFkW/A==
Received: from MN2PR03MB4685.namprd03.prod.outlook.com (2603:10b6:208:af::15)
 by MN2PR03MB4974.namprd03.prod.outlook.com (2603:10b6:208:1a4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.21; Mon, 23 Aug
 2021 23:32:07 +0000
Received: from MN2PR03MB4685.namprd03.prod.outlook.com
 ([fe80::29cb:8ae3:a3be:ef96]) by MN2PR03MB4685.namprd03.prod.outlook.com
 ([fe80::29cb:8ae3:a3be:ef96%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 23:32:06 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Mender update error
Thread-Index: AQHXmHZ+rUWVdYTW8EmW1gEUZD9k9g==
Date: Mon, 23 Aug 2021 23:32:06 +0000
Message-ID: 
 <MN2PR03MB4685293037E591CA42220DC1D3C49@MN2PR03MB4685.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fba097c8-e2c7-44b5-9124-08d9668e388d
x-ms-traffictypediagnostic: MN2PR03MB4974:
x-microsoft-antispam-prvs: 
 <MN2PR03MB4974DF96820491B0B5D8552AD3C49@MN2PR03MB4974.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Ok1SZaO+14ofLEYlLb8rdQF1C14MA1zLK31P6wfaZaPubdrMJvry6ENcJPDA2j4rPdHRfZHcgImQJCSICSYpY/NpJ6afSD0OrI3BFrPM6PUpzyixq1oXPUQBYQR2/MQr3x7JS70ShtZAOSnvjs6tYuxGVIyAyO8Ik16J73JiAl+1gpQMWJ8Eylfv+oDCWLsxCZyTElJS+9YvQTKCPskdf4rRXjUr0seXNT0nwFQiv7pkChHzT/eRtHHuO/VAihwvNJXeqXrBKkehtm57U8ATTLpQB/LyaBfuuyAy0ToTd2LJ2CsdS9W2S0tXdI59ba6rfJ+OGNB7/1BRgCDjTyBZsRNpkMpM1qH4hcbA7ih/hq1WhM3GKG9ITODa/RzKX1Z3YAnuhIWCn+e6xH4MCmsgpdvEM/yhTXfjwAuT2iPqhvzUo59IoS0svB7XsXBVAkO80wnY5SEHfI/LCMOPsDqA9p2T86rryCci1DAgdhUd1nLPGUOj+Mup+wxDTX7+TKj+rwPbHE+XpLFGtvfnpZNoS2jFp4LSZUotRMXXLny+o8SGLvzHXPTa8v1Q5rie4p1vAAxOIYSnSdk3+cn0O7jilCBW/2Dg95iiF02Q64dAYgQIY+WSftTgehuDoLzrzJSs+0SmVzaWaXSOCo0cHDY0A8N6eu34GFHSP3XHQpjE/MZjoKGlTYnnmVKcwZbGoKCagGwbj0Z/s53vSBctvwcIuw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR03MB4685.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(39860400002)(136003)(396003)(346002)(478600001)(15650500001)(86362001)(3480700007)(5660300002)(33656002)(8936002)(7116003)(7696005)(2906002)(71200400001)(6506007)(6916009)(786003)(83380400001)(316002)(19627405001)(66476007)(66556008)(38070700005)(55016002)(64756008)(66446008)(122000001)(91956017)(8676002)(76116006)(66946007)(9686003)(186003)(75432002)(52536014)(38100700002)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hcUZWjF6ULtTxonmd5JJwYRDQTFmNYOksqKMCtcNAA0gSGEIxr0gJtCFXI?=
 =?iso-8859-1?Q?wdkELzaMweRb+gEO+IPeUw2aby3mFv+JhUMWR/AULaNC6BJ12yBPhvTaO4?=
 =?iso-8859-1?Q?+pmKtDXz91Nk+Ywrm1prl7UnbD0tjGetjm1fbqyPt5Li7QIei1FRNKLShn?=
 =?iso-8859-1?Q?mDq34PJBxqlTp+aR8bWBgjdmdFSI4ScNaOW4ZBN9or8geURcUbj1advcQ3?=
 =?iso-8859-1?Q?pvPmkbIBMAYQ/PZwZzR1tOtKqwIcjFw0yE/QfUn9cN/rvmIHXxdWett///?=
 =?iso-8859-1?Q?c5p6FPRy745FX3iAUiRoUmqvljwlmQ9MItg8vzWF+lMMHWIhbb/bf3rCRx?=
 =?iso-8859-1?Q?n3WjThtcDelZk/MvXuDu5YFrdQAxtRpF/rL8LEWTXC3Gu5CRok01K3lscp?=
 =?iso-8859-1?Q?Ij87+GZoMerKwWS/8zOXnn3agvnj73Ev0Y6lv+xaJIaVo7kRZzgSCDIL3J?=
 =?iso-8859-1?Q?qJZFNQqxSRGhI92MHI/nCrM2OMlr/TSFpoIhWKbcXuEbKouxq66uWPiY2V?=
 =?iso-8859-1?Q?2DvNYzmffOh8lKwm8erfx3nxQkzF7A+DmoEnwZZfqvA8CdAXlsBEiemAqH?=
 =?iso-8859-1?Q?e75w6ztsddT/AWKE9uJTyoj8JmL00AN74Mifp2KYg41VM9v2Mp14ydzH1B?=
 =?iso-8859-1?Q?V5QY8KGyYLt9ZDmfOU2jF4yJ87mtvsgPoJJ6UolSpXqYCG6+zZcPYvflki?=
 =?iso-8859-1?Q?cNOq/XKkdvTYDwODkrIwMHoGVe8T+8pjjAXGiSs2+JpPXL5Oa8SLqr54ev?=
 =?iso-8859-1?Q?c+P/TPWhc/tjqp0mHTUrsL3m1qg/M5BVKtygVwpG38OPGu9g9uzE/rTCKj?=
 =?iso-8859-1?Q?LCpyvAIZyYBOfFOv7QkTW21Cxxx83qV3yJdbzrEMdHh5o0pTRjhtNDusQx?=
 =?iso-8859-1?Q?8mjKYQm0B0VoQEXngtmOt9PcKyMH5Xu9evDvCqqCnBmnQRagG0RM3Z7GoW?=
 =?iso-8859-1?Q?aKvREFH3DIA1PQUsji4kI0jCSXRONPkbu+8FCfjWmwHCVAAuYuPY56s+yB?=
 =?iso-8859-1?Q?rHQWyni9CuJhM08u2IAj3gNBg8Sh8dEPu642w6wrCO9jNduV11lA4Bat1D?=
 =?iso-8859-1?Q?ZNPRUO28vkWCutReCrHhMbOrnkuF79UARhG60NJCNDX/NWOxu466nIUXG7?=
 =?iso-8859-1?Q?RDFaZwLtPC82iD/Q9WuuZvugKtWkw6Sn3sVkPMoVbm96P4nZM52exO1dB6?=
 =?iso-8859-1?Q?zJjSLTYNjPR/GRR8ztOhNabFcgUY35bWQBIpf5qcHyZ9LkcQnzQCg9merM?=
 =?iso-8859-1?Q?Q5r1+1shSrSWAvB5iCZuW5LN7gHBWR9CYywEZtGgijj1h/EYrgWI7r/aYi?=
 =?iso-8859-1?Q?coaHH9uFWKFyJW6eZdOcN0tchUCHAJ6QbzwqFlqHv/WVzeI=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR03MB4685.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fba097c8-e2c7-44b5-9124-08d9668e388d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2021 23:32:06.9127
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1f0uzUR7CjuBSHpe9tCFTiv/qWeDpT1UpwRJMLwWUYcx0j0+VyzsxUmHLfgT/BU7K9g+EWGnJPdcKZ0V4FM6dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB4974
Message-ID-Hash: N3STIMWMIKEAIFHKIIC7AN3IWXV3EDHB
X-Message-ID-Hash: N3STIMWMIKEAIFHKIIC7AN3IWXV3EDHB
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Mender update error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JJ24CY2SIGUVQ2OI4ISJOWLZ46EL6YUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8774986176213391970=="

--===============8774986176213391970==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR03MB4685293037E591CA42220DC1D3C49MN2PR03MB4685namp_"

--_000_MN2PR03MB4685293037E591CA42220DC1D3C49MN2PR03MB4685namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm trying to update the filesystem on my N321 to use UHD 4.1. I'm running =
into some troubles.

After installing UHD 4.1, downloading and copying the image, logging in int=
o the N321:

root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender
INFO[0000] Loaded configuration file: /var/lib/mender/mender.conf
INFO[0000] Loaded configuration file: /etc/mender/mender.conf
INFO[0000] No dual rootfs configuration present
INFO[0000] Start updating from local image file: [usrp_n3xx_fs.mender]
Installing Artifact of size 395053568...
INFO[0000] No public key was provided for authenticating the artifact
INFO[0000] Update Module path "/usr/share/mender/modules/v3" could not be o=
pened (open /usr/share/mender/modules/v3: no such file or directory). Updat=
e modules will not be available
ERRO[0000] Reading headers failed: installer: failed to read Artifact: Arti=
fact Payload type 'rootfs-image' is not supported by this Mender Client. En=
sure that the Mender Client is fully integrated and that the RootfsPartA/B =
configuration variables are set correctly in 'mender.conf'
ERRO[0000] installer: failed to read Artifact: Artifact Payload type 'rootf=
s-image' is not supported by this Mender Client. Ensure that the Mender Cli=
ent is fully integrated and that the RootfsPartA/B configuration variables =
are set correctly in 'mender.conf'


I also tried

root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender --force

with the same result. I did not touch any configuration file since we got t=
he N321.
How do I update the filesystem?

Thanks,
Lorenzo


--_000_MN2PR03MB4685293037E591CA42220DC1D3C49MN2PR03MB4685namp_
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
<span style=3D"font-family: calibri, arial, helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">I'm tryi=
n</span><span style=3D"font-family: calibri, arial, helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">=
g
 to update t</span><span style=3D"font-family: calibri, arial, helvetica, s=
ans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgba(0, =
0, 0, 0);">he filesystem on my N321 to use UHD 4.1. I'm running into some t=
roubles.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: calibri, arial, helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: calibri, arial, helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">After in=
stalling UHD 4.1, downloading and copying the image, logging in into the N3=
21:<br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre>root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender=0A=
<font color=3D"#06989A">INFO</font>[0000] Loaded configuration file: /var/l=
ib/mender/mender.conf =0A=
<font color=3D"#06989A">INFO</font>[0000] Loaded configuration file: /etc/m=
ender/mender.conf =0A=
<font color=3D"#06989A">INFO</font>[0000] No dual rootfs configuration pres=
ent &nbsp; &nbsp; &nbsp; &nbsp; =0A=
<font color=3D"#06989A">INFO</font>[0000] Start updating from local image f=
ile: [usrp_n3xx_fs.mender] =0A=
Installing Artifact of size 395053568...=0A=
<font color=3D"#06989A">INFO</font>[0000] No public key was provided for au=
thenticating the artifact =0A=
<font color=3D"#06989A">INFO</font>[0000] Update Module path &quot;/usr/sha=
re/mender/modules/v3&quot; could not be opened (open /usr/share/mender/modu=
les/v3: no such file or directory). Update modules will not be available =
=0A=
<font color=3D"#CC0000">ERRO</font>[0000] Reading headers failed: installer=
: failed to read Artifact: Artifact Payload type 'rootfs-image' is not supp=
orted by this Mender Client. Ensure that the Mender Client is fully integra=
ted and that the RootfsPartA/B configuration variables are set correctly in=
 'mender.conf' =0A=
<font color=3D"#CC0000">ERRO</font>[0000] installer: failed to read Artifac=
t: Artifact Payload type 'rootfs-image' is not supported by this Mender Cli=
ent. Ensure that the Mender Client is fully integrated and that the RootfsP=
artA/B configuration variables are set correctly in 'mender.conf' =0A=
</pre>
I also tried <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre>root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender --force<br>=
<br><span style=3D"font-family: Arial, Helvetica, sans-serif;">with the sam=
e result. I did not touch any configuration file since we got the N321.</sp=
an><br><span style=3D"font-family: Arial, Helvetica, sans-serif;">How do I =
update the filesystem?<br><br>Thanks,<br>Lorenzo<br></span></pre>
<br>
</div>
</body>
</html>

--_000_MN2PR03MB4685293037E591CA42220DC1D3C49MN2PR03MB4685namp_--

--===============8774986176213391970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8774986176213391970==--
