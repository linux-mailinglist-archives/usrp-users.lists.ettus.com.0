Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3406746EC1
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 12:33:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56F75383A4E
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 06:33:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688466802; bh=5F5beeBXeTbHMRh9KYY94BUhA7zT1b0Ud9+fL7qBuQg=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vJwwpb3O0LbaoN0AvuX/b9q0rk5ty6KIsTBWNzY0GxqXjXnem4MsKWjPwvdsbXnG7
	 C7pQ1XOJDkip1H/6zvBwBH5xI+FZQdTACg9+RnAZmgLzJ9O4oEszhbXCGfOzuDSanp
	 Zru2jJ8NduYP0wIhXTWZI9wVx/80ARuI5o67zt7opj+NeAkmeDknWSWlCPt7O/uEZJ
	 Rv6CT5mcT4+InyabBJJRMf6DLo8dLKs3bu4LnGEfFEReMH196+ylisSOVRapdREQCH
	 svORpcLZF0oW8aQb7P+i+ks5tBURJv7ZFTjo+UFODqrCqwCYx/zbFuCsX7nISZoqWF
	 Lu/k66wpM9w6A==
Received: from pta-smg2.csir.co.za (pta-smg2.csir.co.za [146.64.81.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C2F4381008
	for <usrp-users@lists.ettus.com>; Tue,  4 Jul 2023 06:32:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.b="6qdwm8jl";
	dkim-atps=neutral
Received: from pta-smg2.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id E516828EE366
	for <usrp-users@lists.ettus.com>; Tue,  4 Jul 2023 10:32:19 +0000 (GMT)
Received: from ZAF01-JN2-obe.outbound.protection.outlook.com (mail-jn2zaf01lp2043.outbound.protection.outlook.com [104.47.19.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg2.csir.co.za (Sophos Email Appliance) with ESMTPS id 8EA7B299B003
	for <usrp-users@lists.ettus.com>; Tue,  4 Jul 2023 10:32:19 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WE3iNWO7F8XLw9TqsJ+hAuDmMngNGk/+5NqxtmUcqO2UeAh8qYBDRfzJwssO7Qe/sbgkAcx8tod8H8ZizgDDRfOZL4q+PPpJSD23cNQPw20uXpMkGyVaPCGKlvhk41VwgnXQn5w7VCCYRiiKksOCZAUqzjGRFGlXKOIRpDmpU4eRHFgSSmJP3XIsL5mAiSsWtJAKWo/kYoWd4ezYW5/HO2FmV8Tk9QI0ZHe4pwo4ciBO6NNI3xjyqB1q2K5js4eKj6Cy5mcRnXkDraxnK6BWfu2T4rZvrEOlN2XrVr6skXKAn+sbmH0Zip3ktGvMn7FiGiEQCna8E9jutzZyoG1Z4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qxfGTAKufOYlv6CJbxC5EytheVs18CgZ4W/6/zL26BA=;
 b=OU46iMEjGkybJswD3qWp4pcM56WMMi9+yLtkHPeXhYREI7YfbJS97FfIXm3ob+tWQGiuD9v6+2o5qO5hSyEPjIA8gUYDN5KlcFdKL13PgNSU1joyX5MZC36kauo2X3qMAh1NsILcfV/Eavu4z4xen6XF/HKuld1per5BFd21p5XGOYD8cQEjaBht3N1BmYaxHAGIyFnq7TbtA15LUVqkfEdn8MLaTdIC4s+tswh5iwQOnj+aFsMwUhl3CDTveeFTak0kPHUZ1B/JEtiV43+LXpUdFE9y7ystS/bFdoob5P5QmMFRJaYFHFE9KMxIRFgVkgr82bmmKUvJIUgN/yKsDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxfGTAKufOYlv6CJbxC5EytheVs18CgZ4W/6/zL26BA=;
 b=6qdwm8jlOOgdXMRrEseHQEyXPUMV7SBxFIR4ciEHae4StNxb4Jc056LZOKnWggt0ovOS8gelcm2Y1jvuR7SnBsqy8LbyNoEJhnqEVUQ3zR80zBOMts3PH3aUIM02VgpQLLOLqdw6fGXJJbRPJU6XeKGfSARxCA+K8+mBerOaBco=
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::13) by
 JN2P275MB2228.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3c::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6544.24; Tue, 4 Jul 2023 10:32:18 +0000
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::71f6:6d8c:bca8:1484]) by JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::71f6:6d8c:bca8:1484%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 10:32:18 +0000
From: Leon Wabeke <LWabeke@csir.co.za>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Routing 10Gbe SFP+ via a switch to 25Gbe host
Thread-Index: AQHZrmDaVvbxY8Ha6ECu4AnrsFbcQw==
Date: Tue, 4 Jul 2023 10:32:18 +0000
Message-ID: 
 <JN1P275MB05353E8457DDBFFB35ACF8C1952EA@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Accept-Language: en-ZA, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JN1P275MB0535:EE_|JN2P275MB2228:EE_
x-ms-office365-filtering-correlation-id: a75caba7-ac82-4812-7cda-08db7c79f128
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OozXs4TLuvwpBSHdYUbr3yOtVuLXVlE3IexdG1x05R2r0Hp+H4iRnLMDPQNdsYj2KSFJ2XOcj/w90xwTNNv4+TqeYPJPsRTqyMuGTlJnXOXeRwY7zKlv3VK/oE9foI/SPJQRL7aBOUUsqesthsAIlqd/7Jeklt845u/5RMsWGeX+87Ejydi7K7k8NXDYV27WHIh7Tlb1keF+WLJhh8ziopfRdSUQj3OfkA1Hh4OHdCyNlNAeAaF+vohQhzO0ozVWPmWQold1uD/6FtmdLMlroHbFpt03aeUdztoB21/ah5oF8BGSI9PaYEEQWt9rtiOaDiw9VCTNSPVn0AZFhfqVDvBuSbW0P7nFnq/swsPYVUNd3SXvhLPmh22LwpgmnL+rn+ZpB6692Z91ru+vaaVg55ptAIX/2w0h0jqER29+BRAVQ4OqYQ/adiGaykiUkHczNzbi1WvSn6bFp2lWp80Fd+Lb5mC0QN1hJxwCOb2gH9R+xVLc0CTDnFDJ4kfKorqYwsnraaoqnImCoOXfz+8qU/c1sahzJQzUGo8wvOaZR6Bqr/d4IaI+KkcttDnA9ppRB3vSKsb/zEEXJutterAEh5N4dqWH5BBtrkzVDwSBED1+yoRxqz08jnJhw2LSp3Jf
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(396003)(366004)(346002)(376002)(136003)(451199021)(38070700005)(4744005)(2906002)(41300700001)(5660300002)(8676002)(8936002)(52536014)(33656002)(55016003)(86362001)(186003)(478600001)(26005)(6506007)(71200400001)(9686003)(76116006)(7696005)(122000001)(316002)(6916009)(66446008)(66476007)(64756008)(66946007)(66556008)(38100700002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?OZD4mX04KuLLvhT4SEB8VR4WkR1l2wGWTX1FyaVda2x6JC6gfeDhEVCH?=
 =?Windows-1252?Q?U6GWsnmEAZjT0zJLMBmaKmF6QBKXGkYBYmCSIddovYGOvS/T4cZ0Wn6I?=
 =?Windows-1252?Q?wHYjvZAqhlThDnKfoU+aycujADte8gtoW2eeU2Dln8n0JdmldWKYVB3t?=
 =?Windows-1252?Q?90oo20pdYoCNWAU4MIrG2fqOOEW6Tabt5QfLS14JdKW1Y/ihRxMoXa5Q?=
 =?Windows-1252?Q?qJc1ctyIU5khw+a5McdWQ0DXQxAYDKFY1KzQudRAn6gOnMhPrIuXa1xF?=
 =?Windows-1252?Q?dmg0XiRoNMpDbH4VoSM9RsUjJdKBdnc44grKWJDt6B6vIONs6rYvZS9F?=
 =?Windows-1252?Q?075ueVZrN6wG4fj1dx5+3PU9tOszMQ0ettsxUGbriPv6W3U0T7K1vNH7?=
 =?Windows-1252?Q?4JrvlgGlg04wiCsMj49Yw9jgMMhBZsM2CXdf5C9KQTTS17TgadzGmvqh?=
 =?Windows-1252?Q?bH5I8LdWLyaiX8n3yBEKdmEeaiDvIljsCQJG+R7kcD9mxE9uHe62nKJ5?=
 =?Windows-1252?Q?hd7orFrwh/GdDthDzHtHxmDShPz6Cb1bwHenJzS4LzmwfGot6mtxlA6K?=
 =?Windows-1252?Q?Sy7OSQeY4y10xIYzcVPyNZ6JnUz2XSCG5vXMvcCst+dzxBDpzFstGcEm?=
 =?Windows-1252?Q?PwD5tqAHvJjoGFkk2ICU1El0NbpKSyCLMY1WEkcDquB4S89rXsawn3+l?=
 =?Windows-1252?Q?EsBqLjxVDf5vSB0tCxtjZ0UwRO6V0cDV45gnHi23BGwFp3S+XZ1PTMjb?=
 =?Windows-1252?Q?0cIHPi/N41fCDHE6Qg9LVLipAK3Bi1zvwlfoyN5XnkefaMoNIohubSR5?=
 =?Windows-1252?Q?t/RIJo8oainEgL0xCfwOPLjOIcHMZvYISCxS0LwYNIaf3kBGANYjlw9Q?=
 =?Windows-1252?Q?EjNLU47A07QmX829z4GXUDb8RU45HWQinmCf0cz1bTYmALSxr6yDzNMH?=
 =?Windows-1252?Q?/ONrulzIZn8r5ngjoQ9mc8pZVNa9TeZcYufUY1oER54/P5Y/xcCM1M5+?=
 =?Windows-1252?Q?jMuSvSg2IJ1d9JZr7Yv1i8uBPNTVqinQPOCVEk+8at1RrlhLK5UIfhn9?=
 =?Windows-1252?Q?dn3VHonQlE7DxF8cKqWQcyBvVUD3GELtCq9EzGMPZRdWrvwfQd3PtlkB?=
 =?Windows-1252?Q?gW8QumPk5Mutmb64eoUKC5npy78iVBLMfXILjoXg+cO+duHB64B0sIvW?=
 =?Windows-1252?Q?DC81sQhHAR/iBkMf0KNcLsjxjyTtAaCW5UZG0GbimNDaaPWq0UfARysd?=
 =?Windows-1252?Q?xnhHQjcZpbrtX19Dayffo1FlE5tcTnKVx1sL619tU2XPYfynIE449bk1?=
 =?Windows-1252?Q?XK9AQ2uMpUlzzf4rWMd5V5nr+V73DlZcYNqIeOPWnE69E+R4hqTncWBY?=
 =?Windows-1252?Q?Nt0J8+vWDgJG3WmfYmkboG74ewSqZcJPillf2ix4uaxxjkmBfwqf4BJl?=
 =?Windows-1252?Q?D8ymncilffUH0XkleYzTes6tvrp7QZAqzU5dTS+xqc7N6jp6YO/S+ePT?=
 =?Windows-1252?Q?2qyMCUvOxcxbsSXyFSJmQBw3LAgqj7uCzvWyNocTHjZBeehVISzeJkzI?=
 =?Windows-1252?Q?OlOtXSjZEzx5EjjajxSz9yn43U/qV8KsVePBgwKs2g0Miu7ncScsdCmN?=
 =?Windows-1252?Q?O2OKEj7zD5r07wvnGNA338FC4DoXEOeavkNkUcGjNXaihVEIdjRNrUZl?=
 =?Windows-1252?Q?CjwgI9Y8lHZ+dlWACU+opwKLtUDXqXD8n3hhTL6tJXPqHQ2H2lPxWg?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a75caba7-ac82-4812-7cda-08db7c79f128
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2023 10:32:18.1895
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QSHCx+goYLhq677kjoOWDMvLcdd2G5HXbHq12w2WcrMVhx03HhIbYEpv5vJcF6Tokh2gOA1PebTVgwUSTy7+ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN2P275MB2228
X-SASI-RCODE: 200
Message-ID-Hash: KMLXQ2PNTDRKJ3EXM6QH2RUU67WE7TOD
X-Message-ID-Hash: KMLXQ2PNTDRKJ3EXM6QH2RUU67WE7TOD
X-MailFrom: LWabeke@csir.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Routing 10Gbe SFP+ via a switch to 25Gbe host
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5JLY2IKWP4WB2LAJA2DDGSLWBGGZBFO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8299900524376788249=="

--===============8299900524376788249==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_JN1P275MB05353E8457DDBFFB35ACF8C1952EAJN1P275MB0535ZAFP_"

--_000_JN1P275MB05353E8457DDBFFB35ACF8C1952EAJN1P275MB0535ZAFP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi All

Given the amount of small form factor hosts that now support 2.5Gbe I was w=
ondering if anyone has tried/had success to connect an X310=92s 10Gbe SFP+ =
via a switch to convert it to 2.5Gbe. It has been mentioned on this mailing=
 list that the network stack is very minimal on the X310, but I assume a sw=
itch should be able to handle translation of the speed and the X310 should =
actually not really be aware of this node sitting inbetween.

Related, I am looking for small form factor hosts that can work with an X31=
0. The biggest issue seems to be SFP+ support. The Supermicro Sys-E300 seri=
es looks promising, but I am struggling to find pricing locally in South Af=
rica. Anyone use one of them with an X310 or have other similar suggestions=
?

Your thoughts?
Leon Wabeke





--_000_JN1P275MB05353E8457DDBFFB35ACF8C1952EAJN1P275MB0535ZAFP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-ZA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi All<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Given the amount of small form =
factor hosts that now support 2.5Gbe I was wondering if anyone has tried/ha=
d success to connect an X310=92s 10Gbe SFP+ via a switch to convert it to 2=
.5Gbe. It has been mentioned on this mailing
 list that the network stack is very minimal on the X310, but I assume a sw=
itch should be able to handle translation of the speed and the X310 should =
actually not really be aware of this node sitting inbetween.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Related, I am looking for small=
 form factor hosts that can work with an X310. The biggest issue seems to b=
e SFP+ support. The Supermicro Sys-E300 series looks promising, but I am st=
ruggling to find pricing locally in
 South Africa. Anyone use one of them with an X310 or have other similar su=
ggestions?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Your thoughts?<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Leon Wabeke<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_JN1P275MB05353E8457DDBFFB35ACF8C1952EAJN1P275MB0535ZAFP_--

--===============8299900524376788249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8299900524376788249==--
