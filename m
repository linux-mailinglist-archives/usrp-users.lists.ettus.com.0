Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 273AB6DCA9B
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 20:20:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0EE51383CAD
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 14:20:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681150834; bh=NMhHpwlEiXcmIrcNg8MgYD7yhBufpdmCrIfC1hEli9E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VPHlutPlf3qW/PVlMW9pOMU9PVhPlFEIn4HTXJI7eZkZ2hA4fxXeg7TrxPVgQYkx3
	 hIt1rxengGfZY5WYFYSB6bGW8KjRLbQ+DHT4uFTtEd0OzH94vSZe2exzwh/p5mHzWX
	 ViiOHTmjhFRuip6Qfy+Yh1pScQlsO7eMUUzGmR5t7fs/qri7w0fncgonNeYjRJ/CPk
	 3HF6gNy26QwwBX1b+XD+RyoTXfavl9gPJ4jauz8EUJ+VdezLQUVdpla/dWkMaWd0x8
	 rDXQKX/zce/Yhs5NctPdp2WKW0TGMGlcrLSaZZO8iAh6QYwEU54Uy0nB8lXjt6qgG9
	 Mt38eVD3BY31Q==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2101.outbound.protection.outlook.com [40.107.21.101])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E10B383BE5
	for <usrp-users@lists.ettus.com>; Mon, 10 Apr 2023 14:19:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=uab.cat header.i=@uab.cat header.b="Ru52TsBV";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jx35ZmUky6EZn8r+3D0Vs8jtlLzNKYbDhMbqaxeml+0l9pMCYy/QboQrpK7QmhytovDdBHu+Yj0vRuYRMSXwP9CM7igqcXZKmKD0L1By+yWZBO+l02GeNnkb+/zTEnd94oH47sYaESI5+kbR5uqD8Kr6l09GI+c2psakwLP7B8Vu8suajPD+zZx7+8XaOL8dHmFH8mCIk6sEHElq64jBJYsagCmI9GqxWQVQSJGnGs3sb9wzQY++fv89edLSL3KzY7Kk7mUWngZ7fZXheFejxIGCwQNCkhaRs4rDAChEbHidrOYVJqTi+Vy9Yasgi/1AXfzCPPoCKoOSAEYUifMVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kohGk+5Y0zbSMnUqo2TXgjfQReNKQviFiIC3DWLSYFY=;
 b=nm53gga2SkEzAr0mBEorffYjeW0ESIhzJAJ9jtlDdbOQEN53asOxOKeSHPFxYsEUXKfkAfVrukbd7Nsj3yP1OLKO3ZxfrxN6nmDh2RX3KQfxzeiWDRUzfixyAu70z2UML6JYo/VTz8tTkD5M6FhHjK8yRuOIF/COtymxu8MMIzvqKAMNG37Q/Sh9zKOirEpn6ITiGKUNU9C9BZeI7yRmboK8o21Gd2ibPrv1+Dp4M26rLpbbdgvqRIbnZ5KBkT8iW+NAmwxofhu7lGXcXWFb9K4Gu85SXpSlfuDeGn00sB7gu/a8CdnlJtWLkcJ5ZwiRR/rTF9qWkWDjmJptu9goZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uab.cat; dmarc=pass action=none header.from=uab.cat; dkim=pass
 header.d=uab.cat; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uab.cat; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kohGk+5Y0zbSMnUqo2TXgjfQReNKQviFiIC3DWLSYFY=;
 b=Ru52TsBVclYj4cdslADD8h8fUWoCQ9nq5kKsNBqakY5gs6LBt5RGSinc3YOSPjJ3qQujg+fSFpu2OS8aQ4GPuz/Rs1irC3N5MoW+CYiYqMHe6lZ0+oggC8JYBa0ty7S6Qr2n9mfJJwNl+Uka/VdD2qu5SOvq6cYKy8eXC4lexHM=
Received: from DU2PR07MB8061.eurprd07.prod.outlook.com (2603:10a6:10:2b6::13)
 by DBAPR07MB6710.eurprd07.prod.outlook.com (2603:10a6:10:18a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 18:19:52 +0000
Received: from DU2PR07MB8061.eurprd07.prod.outlook.com
 ([fe80::1ed0:c367:b3cc:fc39]) by DU2PR07MB8061.eurprd07.prod.outlook.com
 ([fe80::1ed0:c367:b3cc:fc39%5]) with mapi id 15.20.6277.035; Mon, 10 Apr 2023
 18:19:52 +0000
From: Alda Xhafa <Alda.Xhafa@uab.cat>
To: Azamat Nassipkaliyev <azamat.nassipkaliyev@nu.edu.kz>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Tried everything, but "Expected FPGA compatibility
 number 36, but got 39" is not resolving
Thread-Index: AQHZa9ejY8P2mAlqk0W33tslWgl6pa8k2VeL
Date: Mon, 10 Apr 2023 18:19:52 +0000
Message-ID: 
 <DU2PR07MB8061EEBDD7983C95FC4587CC84959@DU2PR07MB8061.eurprd07.prod.outlook.com>
References: 
 <CA+z47vThu0qs=ZYmo=Hg+sU9VWnMjUEH3qyB13PHZYYw64j=WA@mail.gmail.com>
In-Reply-To: 
 <CA+z47vThu0qs=ZYmo=Hg+sU9VWnMjUEH3qyB13PHZYYw64j=WA@mail.gmail.com>
Accept-Language: es-ES, ca-ES, en-US
Content-Language: es-ES
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uab.cat;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR07MB8061:EE_|DBAPR07MB6710:EE_
x-ms-office365-filtering-correlation-id: 0c173b56-397d-4aa5-e753-08db39f02d78
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8iwPTyKy8Zb+Z03nW5KYv7dziB0Xdw9Qr2Sre6Lm8PrJdHkmeO8e58mFaK4ax+rDwFDsTIuUJjioV0F4YLPamaK+DvNxFv8KZYGiiX8DgfWIcykIAEng9VmXrbKHRlhqsEBX+x5TkS5sags63zee+Wj8lKANN6vcF3VbipYMiivSvDnuQEO1gDSvp0FquXsF2TLSiTJv8HBenrBL3vw8zLjzO507cS2YF/Kj2j+x+sNljkqttyiKQGxKlqQQb3w98oXUSWjQ2fVyomkrUdohHWx2A6EdRPES6CS2zkNLtHwCM7Pvemc3xubCko4FNeOx2HA7tdgSLJR20PMuQGgRYM/0sij6ShxK6EcsEFJ5fe0L7OSh5fuBA7/8562iMpPFVuqQPKqHJe4T2dlCwZx4DcHZB0H22jKm6GlJioa4RsC89NQLIR2p4GVhZYstKiiKhdp+rK8F98R1NzGdKIxZ2FXdHGxgQQ8qykY/BtwiiNhYpcG/aXwF1IIfb5E9OLBYM0tzgQmJhIWuSrGpftOgxowVfBO1v0j9eHiyNiv8D3m1eGJ/f1QhNNIxLCye1MjGyc4tFJBDlDZUHQnzWdTyCvmnJiI5c8yZSsggfFbq+8TfS4mnGjOqfOpIhpschNY0IwgQEONP7HT6IGvlnuQzIA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR07MB8061.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(346002)(396003)(376002)(136003)(366004)(451199021)(7696005)(71200400001)(478600001)(86362001)(55016003)(33656002)(83380400001)(16799955002)(122000001)(38100700002)(38070700005)(966005)(2906002)(91956017)(786003)(110136005)(16350225007)(316002)(9686003)(41320700001)(186003)(53546011)(26005)(6506007)(66476007)(66446008)(8936002)(8676002)(41300700001)(66556008)(52536014)(166002)(64756008)(5660300002)(76116006)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?2o77KsgUQBgoN5vWeyhSHiKAawOx/nLiGBTr6XAm63hicv42Z9JkpQIcuI?=
 =?iso-8859-1?Q?zzbrboo63Lqd5JgOVl84EQcKH4ZpdrxgNd7kPEZF9RRVl+YgXLunTavNfC?=
 =?iso-8859-1?Q?KljP1o2Cq87xty0f4sjDtE13OHBO1OZ0ubFQqOxn2R6yKtWdlT3ClVlu95?=
 =?iso-8859-1?Q?sc3sSfK7Ir7VB/UYwhiXj4sPkmSRL3mNKz0HEw3hgW52sHHNwXysuR8akW?=
 =?iso-8859-1?Q?NF0/MjPrn3kaPE/lcZbL14X47rHqVw2xlYSBqocNW/Ul+O6FM+iclFrBpf?=
 =?iso-8859-1?Q?1cIIxRn+lmNW8WpoF55KG7yjTHy4bRbZi6cA/Q5BeU8rLKoVQiblREKY4N?=
 =?iso-8859-1?Q?nLHBkji2PGlHNd4JHbxK4zgiczy+DYrrNX9UciyBtyKuLSb3YtgFXrBIH3?=
 =?iso-8859-1?Q?1aY4XElk54JP5gIhm8hEgLPsZ/Z3CjT5fNQT/GpetvAvFSbcL/RCRAo7Oa?=
 =?iso-8859-1?Q?Dh47mqYVJcnrK6TBFiw6hzjgh3GStNkRbqiMWrjbe4ghA67oQ4NgTWiVHI?=
 =?iso-8859-1?Q?wwrtPGCU+F7eqg+8APp9ibvgP6svxjHMrig2lW9c0ZI6YMSYOdz/+gVQPl?=
 =?iso-8859-1?Q?d7kHfcCZydgI7D7NSivqMmG59iWSZeoe5NehRJzf1x1nYwbUcZx1LtCty9?=
 =?iso-8859-1?Q?/l0ErTsIaJuJA716EFxyrIJfavNlECcgUJF50yMNf3Hc9IyFsCWPQI9sr8?=
 =?iso-8859-1?Q?tqG+eLH8fBwuXmEXf94htdHBxdIFqB/BsxuP4wU77LltbMCisOkhAoKQNl?=
 =?iso-8859-1?Q?W9nZ0CmTE+hiO2g3cgRwsq0hZMXATZuOxaYQdW/ulM6oKIMVl7KZskqAH/?=
 =?iso-8859-1?Q?itKcUmVICbt/GJAgjyFLOnEIpKg2EhBKmQoiWWXTpPz4ACzlpGYEXY1wrp?=
 =?iso-8859-1?Q?wH7h7H/jegyM1gnxOsApMZBtBLfdw5tpJteUYpJetftgL7qRgcqqUfkyqY?=
 =?iso-8859-1?Q?/oumu0bJDIELvIAUOvIWUFaJyCybmoZrzWCryt3/F5WHgy45FxFUiunk07?=
 =?iso-8859-1?Q?OZ0YgjfexY+J2TLF/ZIFrIES7lzvFIaDmDJrU04+n2G2xbzuXGwjEJ1QpT?=
 =?iso-8859-1?Q?hntAhnyM1cNZ1F5M+IwIcZxmUK53Y4Db+0HXecHevIhrgYMAYuwz590dlU?=
 =?iso-8859-1?Q?4Dewz8zGHMt3UuLKpcmyVNqc8+i1rJ41936VJqd2UVXCmLlKWkVPjAWHTN?=
 =?iso-8859-1?Q?iu7CB7qQZNAR4UCOTyPDvdgr5Q2do15iqS6UgQkreyktLw/IBjDAeRGqo1?=
 =?iso-8859-1?Q?5626TL7tyXm82x/l+iYUFdnpnaGiakzenOoTOAS6tN2qWOMMKPjcEg5dLC?=
 =?iso-8859-1?Q?MtFXKndRSPqxN7ogdp1UNvTO7itw3Y8JwLNoITPZW8WdxjP3BXxANA7o4G?=
 =?iso-8859-1?Q?VJRi8+XTIXKWgxyT3fbjDYFJtzUp5JJjz0mUKDkNO9rNu5XJQWoJ4i4XKo?=
 =?iso-8859-1?Q?A6gGoflqyMJRMauLPzXlvDasVJu0VCR5HJ14pkOXt7YvjImdU3Ey649pVQ?=
 =?iso-8859-1?Q?6xdFml7O2J/+sQar7QTjHK+v58Otn/oP+XxV+QeiUFTU0X1A12C3/Awtzp?=
 =?iso-8859-1?Q?x8RMNNuHAV9qR5byFGGkxVUSJi0ZrmlnVYEs03LzuR6aZnmVnKmOslFZ7i?=
 =?iso-8859-1?Q?8DrAXMO6uLBlLqab9963/ZLs4D2cKSlEAv?=
MIME-Version: 1.0
X-OriginatorOrg: uab.cat
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR07MB8061.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c173b56-397d-4aa5-e753-08db39f02d78
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 18:19:52.0471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b514c29-2391-4831-b774-84f35c45bf01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9FM0EBrvZzbaCNKbGs/Jo8Xtiffa+2bmRazU6NyYtIcjJvJFGBQwHsMofxJ3M81o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR07MB6710
Message-ID-Hash: IYALOVSSYIQT2R37PN6BVKFCVFW2IQWR
X-Message-ID-Hash: IYALOVSSYIQT2R37PN6BVKFCVFW2IQWR
X-MailFrom: Alda.Xhafa@uab.cat
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tried everything, but "Expected FPGA compatibility number 36, but got 39" is not resolving
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A4XJ3JULGWTY2IZG2U4WDV2EVE2Q2R3V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9051205800113181972=="

--===============9051205800113181972==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_DU2PR07MB8061EEBDD7983C95FC4587CC84959DU2PR07MB8061eurp_"

--_000_DU2PR07MB8061EEBDD7983C95FC4587CC84959DU2PR07MB8061eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Azamat,
The problem can be with dependences in ubuntu. Probably when you installed =
Gnuradio, it is installed an older version of uhd drives as well along with=
 your current version of Uhd that you have in Ubuntu. So, there is a 'fight=
' between dependencies. I would suggest install everything in Conda. Use th=
e instructions in this link: https://wiki.gnuradio.org/index.php/Conda Inst=
all
Best,
Alda

________________________________
From: Azamat Nassipkaliyev <azamat.nassipkaliyev@nu.edu.kz>
Sent: Monday, April 10, 2023 8:08:11 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Tried everything, but "Expected FPGA compatibility nu=
mber 36, but got 39" is not resolving

No suele recibir correos electr=F3nicos de azamat.nassipkaliyev@nu.edu.kz. =
Por qu=E9 esto es importante<https://aka.ms/LearnAboutSenderIdentification>
Hello, everyone!

I installed UHD and GNU Radio on Ubuntu 20.04 for USRP X310. Commands "uhd_=
usrp_probe" and "uhd_find_devices" execute perfectly, but GNU Radio always =
gives "RuntimeError: Expected FPGA compatibility number 36, but got 39" no =
matter what I try: tried "uhd_images_downloader", "uhd_image_loader --args=
=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG".
Reinstalled UHD and GNU Radio again, but nothing seems to work. I have no c=
lue what the problem might be.

Could you please help me?

With regards

--_000_DU2PR07MB8061EEBDD7983C95FC4587CC84959DU2PR07MB8061eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hi Azamat,&nbsp;</div>
<div dir=3D"auto">The problem can be with dependences in ubuntu. Probably w=
hen you installed Gnuradio, it is installed an older version of uhd drives =
as well along with your current version of Uhd that you have in Ubuntu. So,=
 there is a 'fight' between dependencies.
 I would suggest install everything in Conda. Use the instructions in this =
link: https://wiki.gnuradio.org/index.php/Conda Install&nbsp;</div>
<div dir=3D"auto">Best,&nbsp;</div>
<div dir=3D"auto">Alda</div>
<div dir=3D"auto"><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Azamat Nassipkaliyev =
&lt;azamat.nassipkaliyev@nu.edu.kz&gt;<br>
<b>Sent:</b> Monday, April 10, 2023 8:08:11 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Tried everything, but &quot;Expected FPGA comp=
atibility number 36, but got 39&quot; is not resolving</font>
<div>&nbsp;</div>
</div>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"border:0; display:table; width:100%; table-layout:fixed=
; border-collapse:seperate; float:none">
<tbody style=3D"display:block">
<tr>
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"padding:7px 2px 7px 2px; background-color:#A6A6A6">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"width:100%; background-color:#EAE=
AEA; padding:7px 5px 7px 15px; font-family:wf_segoe-ui_normal,Segoe UI,Sego=
e WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:normal; color:#21=
2121; text-align:left; word-wrap:break-word">
<div>No suele recibir correos electr=F3nicos de azamat.nassipkaliyev@nu.edu=
.kz. <a href=3D"https://aka.ms/LearnAboutSenderIdentification">
Por qu=E9 esto es importante</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"width:75px; backgro=
und-color:#EAEAEA; padding:7px 5px 7px 5px; font-family:wf_segoe-ui_normal,=
Segoe UI,Segoe WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:norm=
al; color:#212121; text-align:left; word-wrap:break-word">
</td>
</tr>
</tbody>
</table>
<div>
<div dir=3D"ltr">Hello, everyone!
<div dir=3D"ltr">
<div dir=3D"ltr"></div>
</div>
<div><br>
</div>
<div>I installed UHD and GNU Radio on Ubuntu 20.04 for USRP X310. Commands =
&quot;uhd_usrp_probe&quot; and &quot;uhd_find_devices&quot; execute perfect=
ly, but GNU Radio always gives<span class=3D"x_gmail-Apple-converted-space"=
>&nbsp;</span><b>&quot;RuntimeError: Expected FPGA compatibility
 number 36, but got 39&quot;<span class=3D"x_gmail-Apple-converted-space">&=
nbsp;</span></b>no matter what I try: tried &quot;uhd_images_downloader&quo=
t;,<span class=3D"x_gmail-Apple-converted-space">&nbsp;</span><font face=3D=
"arial, sans-serif">&quot;<span style=3D"color:rgb(0,0,0); background-color=
:rgb(251,252,253)">uhd_image_loader
 --args=3D&quot;type=3Dx300,addr=3D192.168.10.2,fpga=3DHG&quot;.</span></fo=
nt></div>
<div><font color=3D"#000000" face=3D"arial, sans-serif"><span style=3D"back=
ground-color:rgb(251,252,253)">Reinstalled UHD and GNU Radio again, but not=
hing seems to work. I have no clue what the&nbsp;problem might be.</span></=
font></div>
<div><font color=3D"#000000" face=3D"arial, sans-serif"><span style=3D"back=
ground-color:rgb(251,252,253)"><br>
</span></font></div>
<div><font color=3D"#000000" face=3D"arial, sans-serif"><span style=3D"back=
ground-color:rgb(251,252,253)">Could you please help me?&nbsp;</span></font=
></div>
<div><font color=3D"#000000" face=3D"arial, sans-serif"><span style=3D"back=
ground-color:rgb(251,252,253)"><br>
</span></font></div>
<div><font color=3D"#000000" face=3D"arial, sans-serif"><span style=3D"back=
ground-color:rgb(251,252,253)">With&nbsp;regards</span></font></div>
<div dir=3D"ltr" class=3D"x_gmail_signature" data-smartmail=3D"gmail_signat=
ure">
<div dir=3D"ltr">
<table style=3D"color:rgb(34,34,34); border-spacing:0px; border-collapse:co=
llapse; line-height:1.4; font-family:Arial; font-size:10.4px">
<tbody>
<tr>
<td valign=3D"top" style=3D"padding:0px"></td>
<td valign=3D"top" style=3D"padding:0px 0px 0px 15px"></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DU2PR07MB8061EEBDD7983C95FC4587CC84959DU2PR07MB8061eurp_--

--===============9051205800113181972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9051205800113181972==--
