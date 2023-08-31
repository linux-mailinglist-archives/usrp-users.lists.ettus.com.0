Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B42D78E9FE
	for <lists+usrp-users@lfdr.de>; Thu, 31 Aug 2023 12:15:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F5E8384D9A
	for <lists+usrp-users@lfdr.de>; Thu, 31 Aug 2023 06:15:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693476900; bh=VEmh08kE8emtDcgf2lBx4gvW/QntQTd6vJh7ChR6pcE=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YhPqfeaSTEvJmq30N1ST5ofcoOMZvHbxJYW2Lhsz9VJzx6FGsD4VTL0vYXCu4Q7K1
	 2lE59gZHCcgnbyFRkKkw3g1MKtq3HOn6ZI/QJx9maR55LtKXofbaJq9WU3gW/OXlfh
	 DJYh7wqSo28WbvxxF3auoLrejh4UgIkxygfjHa7XOl4Ijb1KK1Rtxhsk+DEuyDBPvk
	 RxbRyNmBeZPhIaupFWQY0GDWVw+LL/WXtR/eHQTTmR7vhPKPS5Cgwh0dXmBW5zC+D9
	 YNN3zIrlOwmc+Wx06v5T3EX91W+LRK4xKteALRT6CjKm7sgWcEt7SVIQKjdC5bCu7W
	 doVVDDbldNxlw==
Received: from sally.edelkey.net (sally.edelkey.net [213.138.147.136])
	by mm2.emwd.com (Postfix) with ESMTPS id CF114384A9D
	for <usrp-users@lists.ettus.com>; Thu, 31 Aug 2023 06:14:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vtt.fi header.i=@vtt.fi header.b="m4/UU4SG";
	dkim-atps=neutral
Received: from asgw7.edelkey.net (213138142181.edelkey.net [213.138.142.181])
	by sally.edelkey.net (8.15.2/8.15.2) with ESMTPS id 37VAE5Xj3315305
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 31 Aug 2023 13:14:05 +0300
Received: from VTTMAIL02.ad.vtt.fi (213214155241.edelkey.net [213.214.155.241])
	by asgw7.edelkey.net (8.17.1.19/8.17.1.19) with ESMTPS id 37VAE4iC008785
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 31 Aug 2023 13:14:04 +0300
Received: from VTTMAIL02.ad.vtt.fi (2002:c612:1119::c612:1119) by
 VTTMAIL02.ad.vtt.fi (2002:c612:1119::c612:1119) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2507.32; Thu, 31 Aug 2023 13:14:04 +0300
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (104.47.11.42) by
 VTTMAIL02.ad.vtt.fi (130.188.126.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2507.32 via Frontend Transport; Thu, 31 Aug 2023 13:14:04 +0300
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VeqAUHkgDEr4gyGDlo7KO5X5Q3DmMLv2EGDH3bTPwY2OaiLH/OqCUyyT8W/hOq/bFLbcjI7CSUss2M+jEthV15vZoF/m5eiJ1lA+8hYnHpP5ZyeotzCTwSWVbtPKK0UPknEQ5wRItg/QYLM2175nlEDG++fvBu9Dy8G6hf4SxG2jK3R+zhLgLgFZh2kZJ+WziqilOPvzIGVMXndHymCzPtml0a6TB9ocB4bUJFtb5Tg6gHz4fwp7ETJO1cBqDxYBDdUwqgAJW8RYrr3ZPsxW9DHorxYUydQFwh1KVRKbt2BsldYg8Op2XcNcLRelBg/MMfIf0js7rkCAjgNc00v9Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNGb6UrJAdjWrR+uoQgTEqu8PFMs9o/gI2O79kMibRM=;
 b=IdlqU5OxZF64H2pIZ1CLw//aSDRQVRoJNdzhPujLCoj/J1cYgJy+myfnhPf/6Mvmdd2C4e1vQyDCA84xYXvDbsgsYfex6nnwRUeITFlkWRQZBbEqbl6TEmEIB/z1ftYgbwloYO4YzQ9LNlXFVYL190mFJSn2eBs1TA1Ve4ih2g8oMI9OncsPr7Z2/Yu4IuRSj36MGJNR/85fN/9JrO3HETs60Bzz3CXWQ5gOQyFl4tsLc+jtx4aZTZ5Rh53aXtNRLhvjqB5jWI1L7ehTQlteBlgHFt4rthSQJAgzqNnhR9NrN65Yj18MoorxCPy8WLM5WBDCq2bUniaucCWS7cAHRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vtt.fi; dmarc=pass action=none header.from=vtt.fi; dkim=pass
 header.d=vtt.fi; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vtt.fi; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNGb6UrJAdjWrR+uoQgTEqu8PFMs9o/gI2O79kMibRM=;
 b=m4/UU4SGJjdubrkb+9OYJ+OOjrUCvNTBHT7vbBKBV2FqljyoQ3qdGflrXNPGZuZEPrJ3n15I0q0JlwF26NHu+AMm4AaYV048fys1j5NsMfItn8Ho4EETdpcmNofGV0Hx4Oj8eVEqLZMbiv9HqK+1bPsnNJmKwOblMr//EfUNG4k=
Received: from DB9PR08MB6959.eurprd08.prod.outlook.com (2603:10a6:10:2bf::11)
 by AS4PR08MB7901.eurprd08.prod.outlook.com (2603:10a6:20b:51c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 10:14:02 +0000
Received: from DB9PR08MB6959.eurprd08.prod.outlook.com
 ([fe80::cda5:4ab4:4165:7d68]) by DB9PR08MB6959.eurprd08.prod.outlook.com
 ([fe80::cda5:4ab4:4165:7d68%4]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 10:14:02 +0000
From: =?iso-8859-1?Q?Hanhij=E4rvi_Kalle?= <Kalle.Hanhijarvi@vtt.fi>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Run-time configurable arguments for HLS in RFNoC
Thread-Index: Adnb85Zuq/JQscnBS06mW4wuCYxzKw==
Date: Thu, 31 Aug 2023 10:14:02 +0000
Message-ID: <DB9PR08MB6959B948D743AE017734E340ECE5A@DB9PR08MB6959.eurprd08.prod.outlook.com>
Accept-Language: fi-FI, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR08MB6959:EE_|AS4PR08MB7901:EE_
x-ms-office365-filtering-correlation-id: 92831ea4-233d-4af7-ae6f-08dbaa0affdd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a2mvXO7Fr6Fcil6r/nd9NEVG+wBYwLtcW8pGZnFtoVf48DmBpKd4n28ikvHOiUE797ctVt9aursJSf8zgUOpQNdaMC9I5fNWif7oTUxa/uzgt672eaOV3ROT5K0uIUNctJd78OnYa1+OqEoEjUiplVjqk2AXQ5pXpjyY2dIuEfF/o1PJC1Z4BrlnbWcblO6yxPmn5A5+Pm/QNTmEqPHXxxdSsugJ0kdn+OJtmnngOSXuT5gvl9NgO9J65OhB57cYeUqLKNJgn1f5e8y6yjeqLHY3JajiJZ4XitIMo79nRFFd0sLsz340QmhOjbPYGtyMZCuo5ieN1u9rBy1V46gKkSdToEHt+uNdzPm6P+7PMH7mLwuhSrpK2u3ICewQK8oUAiWdGDkvjYcgm2jOQwAmvD0/l7JT/G/Wgvv9wxjUZOauc8mSxwDIKZ5owz5Yl6/5Ahgm0BcLdsOxbR2PSZwVtNjkBQxuhxrjaUZ5zBzfvYodOEqeipKjFHGaOHpCUXTGBN02SHpRNiIF9+i46OJ7BbC1kIKiKEICZnOrbUl+CHxMEk/iZ8BRJ6yP/+CZC1VvRyYiWIUY7z1vk+n8HUVGj9dKVGEmRVm266J8fIl4/5CnGapNyaBG8J6phluCSnJ8
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR08MB6959.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(346002)(39860400002)(396003)(366004)(186009)(1800799009)(451199024)(66476007)(8936002)(71200400001)(7696005)(9686003)(6506007)(83380400001)(66556008)(2906002)(76116006)(26005)(478600001)(66446008)(8676002)(64756008)(316002)(66946007)(5660300002)(41300700001)(52536014)(86362001)(33656002)(38100700002)(55016003)(6916009)(82960400001)(122000001)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?E72XlyQ+YIYcFebeZXrTVTSvFXoW8RT/9Gi7EvdtlJsEOwyu5vGWdq+DTa?=
 =?iso-8859-1?Q?4Goyv/3x7M44KyVNGBgoC2e0yzsumJ2WLIms8WWvf0X6xUqkmbNZsR3PQv?=
 =?iso-8859-1?Q?ytO0ZNn9ygtQ6IrMnt8aVP4qeUN35SzNnkGXxCzUlnEGihzEzDC1SS0j0D?=
 =?iso-8859-1?Q?OxDjWTZxMcVDltDkJ9oILbf1d9qv6MsxF1lYH4zvlU3cAmANJlOvo1aBi3?=
 =?iso-8859-1?Q?y8xCVJcS33etLNUJYrvGa7uoedLFQ2P0k7JYu2xr996BDRWWzRFwTnAqAM?=
 =?iso-8859-1?Q?/e5thOGX37UhDYbj/f3M1p4VDYZZ20mjpatJ1a/W6iKohlI/1pmNqaulpi?=
 =?iso-8859-1?Q?eoXB4M3g5RSb2a2kdsDLB4McBEaU+WS1NF9yp+gmVETv7c9HZhSu81cm8O?=
 =?iso-8859-1?Q?TkxAcfAtFroGhYIzJcX76GlTP53GwgtUgsZCix1lONlF75PPOtgZGyl4pG?=
 =?iso-8859-1?Q?qemHwc8ECr85aDEq8uQFklwyf9zfaY79WPkSjFmgCkE4lwUoGKo0POgq0w?=
 =?iso-8859-1?Q?WqLAZ2Qhdy1Q+4IybGENFt4xdjOfJE4mlKjWV1XekdsSxmeqJu+w4MjbUf?=
 =?iso-8859-1?Q?IVEaej8SZRsKWT1Sme/xcTfmmUK0ma1PyOoPFiu/zyfyAmgjQrcSvOYp6V?=
 =?iso-8859-1?Q?fjFwpxA8qfpG9CeQEgXL+f9C7nE2C0SV+8ixiG1rF+2WN2nMDKuwYTY2cj?=
 =?iso-8859-1?Q?CkdW8Ps1uqhjB66Qe2NbbzI3804kG3iPRI9Fp3IbE6fADriqEfWgE9ptfM?=
 =?iso-8859-1?Q?lp4ACNCjFbJY5ZSswkm2frHYs0apv1ZNH4TZiUo5nFlFwoXw3mbkIX6ZFK?=
 =?iso-8859-1?Q?sxBuLl9R9vdCjap4d3xc2dHvtNrJRUHY2lyufbSfrXfcv0GZuyAZ7pyfB4?=
 =?iso-8859-1?Q?c20PagXCPeFSYw/uN2c/W2PkJHbAX3nlX4t+up8s1YBWszkT6itJXoYHE0?=
 =?iso-8859-1?Q?JXQk9HoiYfDAQzdh9srAv1vtLz/uBX139CJFJ4anTUY/w2Mu4uo0Ygs6y0?=
 =?iso-8859-1?Q?m+9i1vPEoWZKDEqJeZqahrDZZHMQdQva77xd8oVHOB0W/D3YXGMezKwszF?=
 =?iso-8859-1?Q?OHRLG90XEwy8/LHEdk4gLhepmb+3ORW7y+NSvP7woiYf5TbB82B2BJ4yFt?=
 =?iso-8859-1?Q?sTwPlMOp1mFIf70kUHqGxPMMKOY05IeghjRjzq+F8z554jj/kBMowIkbKr?=
 =?iso-8859-1?Q?aVYANUNsTquYWHl1eoT9H1XxM0RhKRfNyNpxuhfUSpCYanbu3MrXzgJx3G?=
 =?iso-8859-1?Q?QFEhoFX68Q4iRYsK3LkUwUMSPbnMf1KrtxDcEi2cqvtSAAIt0Ufb1xnVJp?=
 =?iso-8859-1?Q?hV6nX7aaLLeFMRtv/kNxhI2ZnvRvkP3g8fNPjZfhnyXoMhOeqIrIulZh3m?=
 =?iso-8859-1?Q?4r2SpF8OKPpByzk58p5X00/aQmrHk8qK6RODCyJ4kY+b79lp51oE9UeHUD?=
 =?iso-8859-1?Q?M7nf2Qm+p43BtPm4FPNvFFUouG42saJavoqpfbeYHjPUbPvDHMH6bNwlHc?=
 =?iso-8859-1?Q?fAHuHLu4ElbJaRLJbXhxVcQ/wi30hH8XKoribxfI9iJC2OBBkcvu46e0Hp?=
 =?iso-8859-1?Q?HCnGyn9xyRJjt40pIkIRLNsqiB/YToKxQHHSD9kjQqNBDET8r0rh2V5xq5?=
 =?iso-8859-1?Q?O8yAXZ3eaGVZlcCfF7ptnYQGqlRxwnpPcU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR08MB6959.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92831ea4-233d-4af7-ae6f-08dbaa0affdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 10:14:02.2036
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68d6b592-5008-43b5-9b04-23bec4e86cf7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H0pTAT8vo7YCrql0YCMR/d5jQj1s882xDc/YsB6q9aQyu28zbHbkaaQnlys4zSCZOxZ7PzZXE4MBi9JAANdFWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7901
X-OriginatorOrg: vtt.fi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_07,2023-08-31_01,2023-05-22_02
Message-ID-Hash: OVLKCPXZOEGA64FFH6SAMH2BZPIHQR6B
X-Message-ID-Hash: OVLKCPXZOEGA64FFH6SAMH2BZPIHQR6B
X-MailFrom: Kalle.Hanhijarvi@vtt.fi
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Run-time configurable arguments for HLS in RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OVLKCPXZOEGA64FFH6SAMH2BZPIHQR6B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0815365916384900533=="

--===============0815365916384900533==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB9PR08MB6959B948D743AE017734E340ECE5ADB9PR08MB6959eurp_"

--_000_DB9PR08MB6959B948D743AE017734E340ECE5ADB9PR08MB6959eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

What is the recommended way of supplying run-time configurable parameters t=
o HLS custom logic in an RFNoC block?

I tried modifying the gain example OOT block by adding a HLS option for the=
 user logic:

    if (IP_OPTION =3D=3D "HLS") begin: gen_hls
      gain_hls gain_hls_i (
        .ap_clk     (axis_data_clk),
        .ap_rst_n   (~axis_data_rst),
        .in_r_TDATA    (m_in_payload_tdata),
        .in_r_TVALID   (m_in_payload_tvalid),
        .in_r_TREADY   (m_in_payload_tready),
        .in_r_TLAST    (m_in_payload_tlast),
        .gain_TDATA     (reg_gain),            // (reg_gain) Real gain, {16=
'd0, reg_gain}
        .gain_TLAST     (m_in_payload_tlast),
        .gain_TVALID    (m_in_payload_tvalid),
        .gain_TREADY    (),
        .out_r_TDATA  (mult_tdata),
        .out_r_TVALID (mult_tvalid),
        .out_r_TREADY (mult_tready),
        .out_r_TLAST  (mult_tlast)

So, similar to the HDL_IP option, reg_gain is input as tdata to an AXI stre=
am input with a name "gain". Tlast and tvalid come from the master payload =
stream.

In the HLS source I have an extra input port for the gain parameters:

void gain_hls(
    hls::stream<axis_cplx>& in,
    hls::stream<axis_gain>& gain,
    hls::stream<axis_cplx_32>& out)

...

Data type for gain is an AXI stream for short ints.

However, testbed simulation times out when various gain values are tried. I=
f I completely comment out the gain input stream, testbed works fine, and f=
ails due to wrong output values (with gain being hard-coded as a constant).

I am puzzled about what could be wrong, since the definition for the HDL_IP=
 option is defined similarly and works without problems.

BR,
Kalle Hanhij=E4rvi

--_000_DB9PR08MB6959B948D743AE017734E340ECE5ADB9PR08MB6959eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Source Code Pro";
	panose-1:2 11 5 9 3 4 3 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
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
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What is the recommended way of =
supplying run-time configurable parameters to HLS custom logic in an RFNoC =
block?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried modifying the gain exam=
ple OOT block by adding a HLS option for the user logic:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp; if (IP_OPTION =3D=3D &quot;HLS&quot;)=
 begin: gen_hls<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gain_hls gain_hls_i (<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .ap_clk&nbsp;=
&nbsp;&nbsp;&nbsp; (axis_data_clk),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;.ap_rst_n&nbs=
p;&nbsp; (~axis_data_rst),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .in_r_TDATA&n=
bsp;&nbsp;&nbsp; (m_in_payload_tdata),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .in_r_TVALID&=
nbsp;&nbsp; (m_in_payload_tvalid),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .in_r_TREADY&=
nbsp;&nbsp; (m_in_payload_tready),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .in_r_TLAST&n=
bsp;&nbsp;&nbsp; (m_in_payload_tlast),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .gain_TDATA&n=
bsp;&nbsp;&nbsp;&nbsp; (reg_gain),&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;// (reg_gain) Real gain, {16'd0, reg_gain}<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .gain_TLAST&n=
bsp;&nbsp;&nbsp;&nbsp; (m_in_payload_tlast),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .gain_TVALID&=
nbsp;&nbsp;&nbsp; (m_in_payload_tvalid),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .gain_TREADY&=
nbsp;&nbsp;&nbsp; (),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .out_r_TDATA&=
nbsp; (mult_tdata),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .out_r_TVALID=
 (mult_tvalid),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .out_r_TREADY=
 (mult_tready),<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .out_r_TLAST&=
nbsp; (mult_tlast)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So, similar to the HDL_IP optio=
n, reg_gain is input as tdata to an AXI stream input with a name &quot;gain=
&quot;. Tlast and tvalid come from the master payload stream.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the HLS source I have an ext=
ra input port for the gain parameters:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">void gain_hls(<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp; hls::stream&lt;axis_cplx&gt;&amp; in,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp; hls::stream&lt;axis_gain&gt;&amp; gai=
n,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Sour=
ce Code Pro&quot;">&nbsp;&nbsp;&nbsp; hls::stream&lt;axis_cplx_32&gt;&amp; =
out)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; <o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Data type for gain is an AXI st=
ream for short ints.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However, testbed simulation tim=
es out when various gain values are tried. If I completely comment out the =
gain input stream, testbed works fine, and fails due to wrong output values=
 (with gain being hard-coded as a constant).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am puzzled about what could b=
e wrong, since the definition for the HDL_IP option is defined similarly an=
d works without problems.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">BR,<o:p></o:p></p>
<p class=3D"MsoNormal">Kalle Hanhij=E4rvi<o:p></o:p></p>
</div>
</body>
</html>

--_000_DB9PR08MB6959B948D743AE017734E340ECE5ADB9PR08MB6959eurp_--

--===============0815365916384900533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0815365916384900533==--
