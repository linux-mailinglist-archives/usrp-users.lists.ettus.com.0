Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B7344494D
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 21:01:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94597383F26
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 16:01:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="aePZBQAN";
	dkim-atps=neutral
Received: from NOR01-OL1-obe.outbound.protection.outlook.com (mail-ol1nor01on2122.outbound.protection.outlook.com [40.107.224.122])
	by mm2.emwd.com (Postfix) with ESMTPS id D82EF383BB4
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 16:00:57 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ikvs3bdmsTiY1hiV13Ldtkr/l0czcuFtt7cwQeR+Ose5u1+V/SvmImPN85Wp5z2Q7sGYhjomc776Qx1O4bI075fFjLRjB7BzcqSdpsyc0LpbI1aedhBrJvDikqpt7VlPN1BtLIu4lsEkb8ZD77zjxEfyDqaqaCKgL4VkdIUSpkuQX//zI7itZkXvDSkPq4NrsAzPfIEX84nIFEbO5rKjNcAnl4R26fAmAPAtww7AZWQeEekixBXGZWbe8PW/ydufkN7gflmZjyU+GMY/shWYqti8IK6W8qeBL9hyDi3TxNlTCiwJwft4bkYmH7dmorMbDAUhgPixL6fjgRfCW4pZBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=avCpBN7AhzgKxvGxMP7oVZ3bjsqlqX/SCiq1jBn/lis=;
 b=BpYT3mH7VKmj0ri3oLCJhWG0snICqy+Zt4HOVDJzTZkJrKBctVQ2O+CWgrxns4gpGi8OB+HF/0TjordCh2pyAEXf2601UefjDnj+ramNLHANE8lIocwY+dDMAWUcdDG0dWLnPrpNWbcgfRxoV5Hj8LxXTp38eVL7V7K4NS9Fs+gMnYcbLy7ZMszCWBMKZ9mjgy6H7xOdtpdGrUXEIoaKKo/1zEKVKu7/u8nc6OLwmKQeciRBPz4Se3b88HWQkYju+CxJb//pXZX15yKYSB9KC8zZIHsgOiZKZcU7mdfSr1pkFjivVAstgL+gxfzarj9iesVi/GaH3/PCFP0dlOSwOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=avCpBN7AhzgKxvGxMP7oVZ3bjsqlqX/SCiq1jBn/lis=;
 b=aePZBQANv7nVhXfpxhlpEqVR1xl5bXQyv+x0eNnqhIc8sjXQKFJRnXjjTCx3+EgGZ3ipWEBnz1jnjmdjcoAe4ymQ0xDFEFhi1G8gtlR7ytryZ4VSnu/bWB9aRK3EIGIXbpGlXanLdzL6nLM//m8DA3sF4LiyW79d/Hk9kCF96NaP574YDItplwuc34nO02giVkjjH9a/CAV55wcArasY1dcXLJ2D3aEgYW6dkvtDMQUbu18vOPHtx4r7eHjbyzowTFg9uq5vLCSe5qshMkX6puec4sNGt5jUsZ/P70K9BgZBQ7RDJRlCXP66wHmqAw5IATK//8itZQ7nC/Hpvx9Wyw==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 OS4P279MB0436.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:1e::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.11; Wed, 3 Nov 2021 20:00:55 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a%5]) with mapi id 15.20.4649.020; Wed, 3 Nov 2021
 20:00:55 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: LO frequency change
Thread-Index: AQHX0OuUDgLx41MDwkCiEfvTJ4xFjQ==
Date: Wed, 3 Nov 2021 20:00:55 +0000
Message-ID: 
 <OL1P279MB00832E3402FDBDD18E8F2EE7A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce9f3651-ff25-402e-bb2e-08d99f04a5b0
x-ms-traffictypediagnostic: OS4P279MB0436:
x-microsoft-antispam-prvs: 
 <OS4P279MB0436EF22A38DC9005AEA12ECA08C9@OS4P279MB0436.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oeOqPS2bN5HSzx+omhfiN/y8kfpRj1SAxBiar9QOZpOFxAuJhbxv0ZnJ6TFqr5LDk53864hnIVZCtvgcT5yOYtBFtQa50UkybDzfTcKOY4f+fuE7guG3bh37YGUFJC24FrbwnLdo6Gc2qlQ8TjLg/PzbBFYURzZGfPPrh7xjXvHet6a2KupSU2n+KobNc2u5WIG9/cWswsRqg6tC2eDiFof+OO9vdlmJPT8GsSbfvxsv1GGSAL3OqhefxE9V5RviUXLY/VLLak++H38ipwJ96Q94ep1/6IeZyPd8L/7BhJnOYO+7N9MlS6pFVRDYS6pVBLKkHiKfaS6T+UvTXXXk5pMb/Gr1uNCAgZ2Qzk07s2RYqQsvGxjlvvozoZskGLXi+iTys8+rSVHN/6oZ1Vy/MsMLI3HRGnje/0qKzYxVqr/RfFaFL5SOHH2VmA9lBedo+DHpQT+xc0MRDfZ4hzlSq1lzHmyhmKKljZcyKRPHDYzX8KTqyzuuheKM0ES4/oBgjhKZ7+Djv5xQvEYOzOrAL0Z/FtK+yP7udWIEPrWn/owSgtyR7jpVpiiEEqXB+49iXhnURdPE/rkaJsV1/pBfnYdHMcLr8tWbwnVVqv6PrG8Y0AKDS6d+Dw4hgG83l+lWOBHCqq7phQt3yo6lvN903s6Z4SeKqDnH15wWPfnvTvXElY+gCe4L+iisYzxNJPJp1ZHJcuj1iHwEl+pKmj8xCg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(396003)(39850400004)(376002)(346002)(6506007)(71200400001)(3480700007)(83380400001)(7696005)(76116006)(7116003)(5660300002)(66556008)(66476007)(64756008)(8676002)(122000001)(4744005)(66446008)(66946007)(2906002)(508600001)(86362001)(33656002)(52536014)(55016002)(8936002)(186003)(26005)(6916009)(316002)(38100700002)(9686003)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?6JD//J/6kfya1qP1t68bfzTbUd8JCpRR/iKFtQcsjYfNN52UGEyQR2BpBU?=
 =?iso-8859-1?Q?VvzHckFRXazrZI3ENlLGUsEAVz7bFuZlwfxwOcIChqVshaGBvLG4iRvb5J?=
 =?iso-8859-1?Q?nnQsi6mAKH4Mvw95DoNO2fPdtgDKWZxfR3MVkigNbrnPkr7aguF61kMZ8W?=
 =?iso-8859-1?Q?RIt66C+hWUmXjCg73aqi49vgcJsgWatPh/rmbojWjB4Bhe5+11Uos/Y7zy?=
 =?iso-8859-1?Q?JrSBNPpEOTWlpZpQYFuF4pGUpPaCG+aB2gzG1+oa3LThXRe2f9rAM1Jby/?=
 =?iso-8859-1?Q?ZNSvQkgD7C3DnOKoC6R1zZDgGu54iJjT9/1+hU4xaD+1B0dqknZVn+2zTb?=
 =?iso-8859-1?Q?3k3IHxSiYX0ym8MLq0lLA9KbaWcurIS3CZahRIo8OV7zDFtvx6FG3R+E06?=
 =?iso-8859-1?Q?1/p4oOoWmxwEV8S5aSRCOpD21idPxqyuc+bNqASraYrSI00Zj63erHn/Kd?=
 =?iso-8859-1?Q?4giE6JwpAWwni7rmA96Ukw/BT/KAJ0ZlHbRUiYuYepO72OiTiBPpaLYtB1?=
 =?iso-8859-1?Q?h1kGeplsvNR1Ot93cVQoz5qYQxRImGETALgHuqryLmyD9Q9mpTd/xtflct?=
 =?iso-8859-1?Q?GhzPih/HpXM8/Dx4865xytq5I7LFA+FCbcflqiNYMmq3/9xYE8+GICxJ2S?=
 =?iso-8859-1?Q?RBU7ty/EYe8p2h0hiCSDsLwu5R6ynOdX84uG6lxk4koysGzfN6xNiCVE8l?=
 =?iso-8859-1?Q?N4nyDdxrbooJ/KfxCHHw/EIxx1rgkuYjyM/jw3HA9seN8CTUWO+i33kVp/?=
 =?iso-8859-1?Q?725Lov7Bz0622ZyMRfhlZ5hJkpIgmb+oE8JcPb5hvZM7FxqzweXe3M6ceW?=
 =?iso-8859-1?Q?7y46c4r/DhiVfqlaDkVf0B3O5XRgEdLByfFVwga6as3iBNnzx+eUNT0BwJ?=
 =?iso-8859-1?Q?Sj7qn4s9ZDfle44pHOYcdrHLS3Yl/pAvfzn9eUp7WRnI0tl9fVHfG36ntk?=
 =?iso-8859-1?Q?hoCtOjjGTlcAWpp398Sh07FHDd8MwwzgBZ3s8OM2Ixmvn8Aft8hTpLQiVe?=
 =?iso-8859-1?Q?SCqqjpli1x5pTTSR0W2N+aQ5xH5KWpl1qbVPcl8pbs9sqIiwypbjTgzzFL?=
 =?iso-8859-1?Q?VW/UK/r6znD5+Q0/Z+lwNc4xYFBEqTP5ZTFTlMRa5bSR/e1etjPdiQUg9O?=
 =?iso-8859-1?Q?PiyI5ShTyPRzcz8+tjBVZEVBuCHrnD5RVJifUrU/ixN7GchQSV4WUKciir?=
 =?iso-8859-1?Q?So693EN/cqZ2Moh8o6zfulCttJD7VzDLg1IDsd3Py5TUkiEY+yQrGRs3AE?=
 =?iso-8859-1?Q?XB/CxN5sWHipeTXqEMQcTGprW/6EeXZIPX9lV1bDFyYMYeWZ+kqqvQghOt?=
 =?iso-8859-1?Q?wyUnnKqBpGNTLkfHYrKZLclvR4wp14OmyxfvqvnjnVW67YtYi6eRB0/ACU?=
 =?iso-8859-1?Q?ZLOGI/dJxUoCj8fl7Hk1L33qNCFc8GzOJa7K9bEqNZ7FYd7WS44uQye/Sr?=
 =?iso-8859-1?Q?vq/V3Gw06Fdeo3l7YDriV1t6iUqdxwBmVX8BuNOC4BOTgc1Km4xla5wJIb?=
 =?iso-8859-1?Q?pREJk12ZEiSx4DRk3nFPcYPzg8iLrnrfKNDKK+Ga60/zxlGTRHBdHDdCvG?=
 =?iso-8859-1?Q?mfUyjMOEmG5/7azDK8g736u1qaMrFsqcZlD4wLPlaeMjmhvTS9XiC8ZPpI?=
 =?iso-8859-1?Q?slxWi6uyBPhGk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9f3651-ff25-402e-bb2e-08d99f04a5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 20:00:55.7158
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H9EaPg7wGd4bRc5uQ0F1CHIyCxH8MwBi0+jz8S4Ot1aZy0p6+/GS5erCE81tu/5Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS4P279MB0436
Message-ID-Hash: MQWAHVK37T3TKIGOKPU4TGESTYJMO2PQ
X-Message-ID-Hash: MQWAHVK37T3TKIGOKPU4TGESTYJMO2PQ
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LO frequency change
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4IEKSJ73QGOLJFBIZZIIT5XW5ZJILONT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5371905345525197435=="

--===============5371905345525197435==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB00832E3402FDBDD18E8F2EE7A08C9OL1P279MB0083NORP_"

--_000_OL1P279MB00832E3402FDBDD18E8F2EE7A08C9OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

Started rewriting my code to work with UHD 4.1 recently. I notice that the =
command set_rx_frequency() in uhd::rdnoc::radio_control takes about 104 ms =
to complete, no matter what frequency is set.

Is this blocking time something like worst case scenario time it can take t=
o retune the LO? I think this command was faster in UHD 3.8.

Is it possible to do the LO retuning faster manually somehow?

BR
Jorn



--_000_OL1P279MB00832E3402FDBDD18E8F2EE7A08C9OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div>Hi all,</div>
<div><br>
</div>
<div dir=3D"auto">Started rewriting my code to work with UHD 4.1 recently. =
I notice that the command set_rx_frequency() in uhd::rdnoc::radio_control t=
akes about 104 ms to complete, no matter what frequency is set.&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Is this blocking time something like worst case scenario =
time it can take to retune the LO? I think this command was faster in UHD 3=
.8.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Is it possible to do the LO retuning faster manually some=
how?&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">BR</div>
<div dir=3D"auto">Jorn</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
</body>
</html>

--_000_OL1P279MB00832E3402FDBDD18E8F2EE7A08C9OL1P279MB0083NORP_--

--===============5371905345525197435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5371905345525197435==--
