Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7325C3F6B89
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 00:09:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2614384AFA
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 18:09:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="hvfRg+Bn";
	dkim-atps=neutral
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2079.outbound.protection.outlook.com [40.107.93.79])
	by mm2.emwd.com (Postfix) with ESMTPS id A2D1C38427B
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 18:08:19 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bfG23TXyU2VtPllsc9Av6tDE5L9CTlfsp6ybL7VFx17xtKGMA6OWejYbrBDuv+2yzhF9zzbMHNZX5Z8FF4OfyUaoXCEB9YWElH9xHwvdlE1rKaQwyqqslLybj4BEvsFiViipHMv66nUgFiRjnE+oJ6U6d7QhUoc7qZZZzsAYniVkd2aWghp2k74X13dCnemi5HlgvcJS4K1S7JxuE9u5VzyDuTDv+qUdM6nl0YrgGAYj/qYdHI1J8iCoy/0tA+sb/cMNc2hVqgpkjS44CZvMggx46LHCJAaYNT7ncwWj8KQHZjFsJNlX6I1z8IxIAI8nKyAiVCzaH210FIO8p86A5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QASyFAXh1NmN16yK3KSgoW54dazWmNW6xq4W4LOfSeA=;
 b=PwkWQUuaCu22o8agjGxrYsJMQrvgwyfjBrMQSVi3oYgzkkLGFr5U9dCVP1UL3HylNEb4A02L3Q9g6aH4TtmKRpnuq0yv8pldaWRQZddslpO5w6nRnufPSWSeHZIDBhp1hjwOUzH5pUG7yjWgm7VzMFDCUP7SAncL8ducOxzFQwx4CZsBWKx0vDSbpxPnZOl/QhmZrrHzwCF6YNyhi4vuLEMdwuAGXrS1QTbEypEfAD/aM1Xc3d+AaBimtxGCFwxth+5XcL49aJK9vT9yqI61Fv/ljTRe5esGNFqZFQzxIdTGzVk33/u4BZoB/mxWTHPN6ifFRlDqNwpALc4G1hR5ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QASyFAXh1NmN16yK3KSgoW54dazWmNW6xq4W4LOfSeA=;
 b=hvfRg+BnNZl5p2NYaS/Pr2+6eMhqeqUBZBVuG7G9zJ51o0Z0b7l9sSpuhCJuyrH6IS+0IZ85hZGS+ws9GJCkt6kchKBc0H1cHHD0FO4GSbS6/C5QRf0eBKaNnwbMUD2t/ACGY7gZBeM9XZ19/nak/xJzec6LZUA4obU4GM6KTIljD8iXCTB345Zmdk+PAmh17rJ5yZ9jKShM0wkjWlfCucM6d1WEoXucDQEr5gvk+ksR7ixQo5aTFd+Yw6QGNC6eExLrBdOOUmzJ8Q+qefEBg80jdrouvwdvQDnbrHSBFnDTsmNqKxGxTXmZTTbzo073gNVyTotdJx4HugJE5f893w==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (20.179.93.85) by
 BYAPR03MB3621.namprd03.prod.outlook.com (52.135.215.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19; Tue, 24 Aug 2021 22:08:17 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::286b:a1e6:429e:f0b1]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::286b:a1e6:429e:f0b1%7]) with mapi id 15.20.4457.017; Tue, 24 Aug 2021
 22:08:17 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Mender update error
Thread-Index: AQHXmHZ+rUWVdYTW8EmW1gEUZD9k9quB5BQAgAD7whU=
Date: Tue, 24 Aug 2021 22:08:17 +0000
Message-ID: 
 <BYAPR03MB4678800AF442EB50AC205829D3C59@BYAPR03MB4678.namprd03.prod.outlook.com>
References: 
 <MN2PR03MB4685293037E591CA42220DC1D3C49@MN2PR03MB4685.namprd03.prod.outlook.com>
 <CAB__hTQs=VagLG5Am9Fy5Btok=94+uwZi8ZP8caqnL-aKAYZ-w@mail.gmail.com>
In-Reply-To: 
 <CAB__hTQs=VagLG5Am9Fy5Btok=94+uwZi8ZP8caqnL-aKAYZ-w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc44dc91-66fd-49ef-ecdf-08d9674bad20
x-ms-traffictypediagnostic: BYAPR03MB3621:
x-microsoft-antispam-prvs: 
 <BYAPR03MB3621D06B39B06D2CA957BE84D3C59@BYAPR03MB3621.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 e78NXmmxsq58BWKzYAIxX+yv0G34nQx7Z+zh9RZTke/izkOOSF+Mf1GFw1rndqNrRh//l4zKT+4GRsTfTZ6ysV04XyqxXMvdKmFVSEtHEkE5wTxa8iHzbvyAbg8vRyk0vZOkgZga0Qp3TsAkX03fCBnMQO8FIIW0tJaZcvyaZ3FFhovlwb46eR7TdsJ8gC6/E4IxGwq1i2AZRAOddksEAQ3y8YUSmJnzHNvQKocXtE2axyA7Gv0B1s1UfLVeALlPT6gi4H5fDQCId4pEN2kSO+Fn2RyGPBIyKRjQZFg19mZ0rxsfm26kE8ug+DC3CS/0ZSRlmMP3+cZi0GgW/lfa+lEQn6iqZaE5c9IRUwxoAgYcptBMo4NXqgbZv4+w5ac9cYPRKho6uQ9R9SGW/1eG8FyFfkME2Tp/mEeO+gbqgq6Ahmm3pj0z4dykZZEtRhIJes+IGhr/K4AzSOsuGYOpLws+Rx8yiUevoKhUnQFcr5mDYWdHooCNNX+cTy89mMHe648Ejx32YOqWJo0BEhj/suzlPyKWAaDdufsgscxF2T7CccBwDouPhvMiFbD8rpAK1WM8hth9wOiCDeCGB5KvnXj3MH9d2M/LW79qLFEgF8mSER8UYtACYszICSHOonE/FgUnSFtnByAPOtxyH/DKjXsyBpwb0tZvNnmuKX1TiVBmAu+Z7bbiX/Rt7Kv3swp6GVzocB6u9vAgjX4Tdla4Dw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(76116006)(64756008)(86362001)(15650500001)(66476007)(66556008)(83380400001)(66946007)(75432002)(2906002)(53546011)(9686003)(186003)(6506007)(316002)(122000001)(786003)(26005)(52536014)(71200400001)(4326008)(8676002)(478600001)(8936002)(19627405001)(5660300002)(38070700005)(38100700002)(33656002)(7696005)(55016002)(66446008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?DtmFRZEaYNzQVCk177gr4kxlQlDoyW+L+agiTd8tMUtqoy6OWP1+TqzPdACM?=
 =?us-ascii?Q?wcbZngj61tus1BLMvhfHsqyHn+UVwwLJdqf//OVa/AWrVI7UlruGFB3Asc/P?=
 =?us-ascii?Q?AWR3rJvCeozT1ieApBrkY/YacAGa5vMUN2XW2GxOJcrvfgSfptB3cLvsA0SS?=
 =?us-ascii?Q?506XWc79aa7faoVKSALnxbwFeIPXFmMHDbUQJ+MOk+s84tf20CC2ME9+9Dx5?=
 =?us-ascii?Q?kJUPIrn8X8TZIoRi/jxBWCqsxE8dmQ6oE/QcXf2NKVkhe3EzUeP2YekNvXSo?=
 =?us-ascii?Q?PjDCW3zUWyU6qFHPOAP/nmAE1Ofe3YwhfWis5xzhzVjT1bGrQ0qKtyX9Zr2w?=
 =?us-ascii?Q?muUnPa+5wh92prA9gB61ClsDIGJzL7ihj+wXkMEYr1LDxHk9etqrYWsEy15c?=
 =?us-ascii?Q?EczO+Ret75tkTDbeJiksGcTzeoI7uhCxY3Hm6mQEzTZdfhkkJjamjO8zuKP6?=
 =?us-ascii?Q?++p+VKHkK0RSHKnKom7sY0tQJ4QICy39xbBuXvs+ZlDrCGJT/Q2K/NXEqH5H?=
 =?us-ascii?Q?53r7pCFYYf/5vaZtYHZCpC/m7DCZRcmAaZjv8HLm7qqB2fpBoUdJXaMHmmkB?=
 =?us-ascii?Q?CfxzLtkXD1twydRmtzgoPr6RnARIUUogBX4P/9+rOQT2UtPqST2WqHvSUWHp?=
 =?us-ascii?Q?iH41qQywjpTgnd/wSfnlqD8r1dGYwTgJNffJQe86LxJ9YGJyQ6Q9N1iOKVih?=
 =?us-ascii?Q?yXn45CzH1Tl5glZFi/l4e9Vf04WGpwcmpb+E+aYdXPeLyBJ4PtmsHU4uMIMO?=
 =?us-ascii?Q?4tp4EvVe7t91qPmgFxbFY9LQar8x+idCoxx+CA4LwHwKOLVX6jgB8VmXgx7U?=
 =?us-ascii?Q?DQexdCmHjD5etderK9vBJApqWHHrVicrd5VxjztBLWiYvlBBTfsDVtWUpa44?=
 =?us-ascii?Q?0OkD2uEeiR3+PJFf/9mkYXswWlKWLdROe1igjFoiAcuQyUOdnkx+M9Pc2jv4?=
 =?us-ascii?Q?ZSEcZnfYtGefCJBCYlXrHF9+6UmmXXrIt3VyuUwA3Auq8tnBTTRxIpn5ZnsD?=
 =?us-ascii?Q?ccRAjnxA706ANJQD9T7oogCFriSByvduMPujfehsEW9KLXMWZOzvx3VVXhwx?=
 =?us-ascii?Q?KtEu06qmfCmoLoqJetqyF7L03uY0UtmtFNZkbS86gnEql8tHmJBv6Jyr65yt?=
 =?us-ascii?Q?dVPitNtozlQ54myW64ojqcKIIJ8uiI8ZNeW7+j4jfapBLxEe0xhjdRRyFnRy?=
 =?us-ascii?Q?TN0NjS+/8kuRKpxawBGEEwTBiSdmhH4DMHM0ac8kqqivb/i4oUhZoXBpqKTC?=
 =?us-ascii?Q?F1iToTv6+aOAX40XWsRFUD+Z1ktgeb75NvdwVxMGEy/pb+v9NDQChp46c2o7?=
 =?us-ascii?Q?03I=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc44dc91-66fd-49ef-ecdf-08d9674bad20
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2021 22:08:17.2921
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pG6MKDiM9QJCOE/ZN/qgQzrb1nhNJGhMD3jMHs6iUA6CinXg8i5vBT1t1k9/EKJyWAZttlD7goHJ2aScT+1Qjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3621
Message-ID-Hash: BYC53IVAENH4KK6YSE7ZQXZVOYKXADSF
X-Message-ID-Hash: BYC53IVAENH4KK6YSE7ZQXZVOYKXADSF
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Mender update error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2JEJWPE6TNPFV7MDBUHI4NBKFYS3KVNE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3023318658062837747=="

--===============3023318658062837747==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678800AF442EB50AC205829D3C59BYAPR03MB4678namp_"

--_000_BYAPR03MB4678800AF442EB50AC205829D3C59BYAPR03MB4678namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply, I'll go ahead and flash the whole SD.


Lorenzo
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Monday, August 23, 2021 6:51 PM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Mender update error

Hi Lorenzo,
Do you have the ability to remove the SD card and write it directly? If so,=
 I would suggest doing this (rather than mender) and using the bmaptool met=
hod. This is way faster than mender.  I do recall having issues updating wi=
th mender but I'm not 100% certain if the issues were exactly the same as y=
ours. It could be that upgrading from 3.x to 4.x with mender is broken.  In=
 the end, I lost patience with mender and used the other method.
Rob

On Mon, Aug 23, 2021 at 7:32 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
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

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BYAPR03MB4678800AF442EB50AC205829D3C59BYAPR03MB4678namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks for the reply, I'll go ahead and flash the whole SD.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Monday, August 23, 2021 6:51 PM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Mender update error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Lorenzo,
<div>Do you have the ability to remove the SD card and write it directly? I=
f so, I would suggest doing this (rather than mender) and using the bmaptoo=
l method. This is way faster than mender.&nbsp; I do recall having issues u=
pdating with mender but I'm not 100%
 certain if the issues were exactly the same as yours. It could be that upg=
rading from 3.x to 4.x with mender is broken.&nbsp; In the end, I lost pati=
ence with mender and used the other method.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Aug 23, 2021 at 7:32 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:calibri,arial,helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgba(0,0,0,0)">I'm tryin</span><span=
 style=3D"font-family:calibri,arial,helvetica,sans-serif; font-size:12pt; c=
olor:rgb(0,0,0); background-color:rgba(0,0,0,0)">g
 to update t</span><span style=3D"font-family:calibri,arial,helvetica,sans-=
serif; font-size:12pt; color:rgb(0,0,0); background-color:rgba(0,0,0,0)">he=
 filesystem on my N321 to use UHD 4.1. I'm running into some troubles.</spa=
n></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:calibri,arial,helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgba(0,0,0,0)"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:calibri,arial,helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgba(0,0,0,0)">After installing UHD =
4.1, downloading and copying the image, logging in into the N321:<br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<pre>root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender
<font color=3D"#06989A">INFO</font>[0000] Loaded configuration file: /var/l=
ib/mender/mender.conf=20
<font color=3D"#06989A">INFO</font>[0000] Loaded configuration file: /etc/m=
ender/mender.conf=20
<font color=3D"#06989A">INFO</font>[0000] No dual rootfs configuration pres=
ent &nbsp; &nbsp; &nbsp; &nbsp;=20
<font color=3D"#06989A">INFO</font>[0000] Start updating from local image f=
ile: [usrp_n3xx_fs.mender]=20
Installing Artifact of size 395053568...
<font color=3D"#06989A">INFO</font>[0000] No public key was provided for au=
thenticating the artifact=20
<font color=3D"#06989A">INFO</font>[0000] Update Module path &quot;/usr/sha=
re/mender/modules/v3&quot; could not be opened (open /usr/share/mender/modu=
les/v3: no such file or directory). Update modules will not be available=20
<font color=3D"#CC0000">ERRO</font>[0000] Reading headers failed: installer=
: failed to read Artifact: Artifact Payload type 'rootfs-image' is not supp=
orted by this Mender Client. Ensure that the Mender Client is fully integra=
ted and that the RootfsPartA/B configuration variables are set correctly in=
 'mender.conf'=20
<font color=3D"#CC0000">ERRO</font>[0000] installer: failed to read Artifac=
t: Artifact Payload type 'rootfs-image' is not supported by this Mender Cli=
ent. Ensure that the Mender Client is fully integrated and that the RootfsP=
artA/B configuration variables are set correctly in 'mender.conf'=20
</pre>
I also tried <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<pre>root@ni-n3xx-xxxxxxx:~# mender install usrp_n3xx_fs.mender --force<br>=
<br><span style=3D"font-family:Arial,Helvetica,sans-serif">with the same re=
sult. I did not touch any configuration file since we got the N321.</span><=
br><span style=3D"font-family:Arial,Helvetica,sans-serif">How do I update t=
he filesystem?<br><br>Thanks,<br>Lorenzo<br></span></pre>
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB4678800AF442EB50AC205829D3C59BYAPR03MB4678namp_--

--===============3023318658062837747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3023318658062837747==--
