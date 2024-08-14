Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BBD951158
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 03:03:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D72C3855DC
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 21:03:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723597413; bh=p5725v0Zkk5bGnvGy0YSP+FHKm5FBQAd9K8cPP74Xuk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZAIR/A9isv0bqLZ4xrBKHwPbWRtqU49yViyrg2lHxK4I2htVcLu00LBxc7Nx5zCfU
	 kDdUeXgDs5ZGCoP+TTfy3ijlhAYaPRPPXQDYqW0FHIPV6RDELdnr7HV+CS8KGEoY8c
	 gVlg21oczLW/bnva08qQuXA1N58kH93Kc6YXzufzZz6cQK/VTObEAiZ9G7LviDBZ1f
	 PmdAGuG1h5A7VcL8QuoldK0GzCiuzr9o+CX+kP1zKpJxQXEz68Fa+Q/Kv/N4Jy/q40
	 B1ui7PSAu6JJmiG/9MEk+Uoz9dxWaxcNeGMfMWETxdizb85TIij9xygPoY7v8xP2MP
	 ldlSXu3rSISlg==
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11020083.outbound.protection.outlook.com [52.101.193.83])
	by mm2.emwd.com (Postfix) with ESMTPS id B94D2385554
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 21:03:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=VirginiaTech.onmicrosoft.com header.i=@VirginiaTech.onmicrosoft.com header.b="flpAb38V";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kAyg9unXDy/wJNN2zBJMr7opYth5GPm3MeaRUpd2PPMSHApf7FCkZkulao6ogCanSnxT3IeDYMsjUJAeP5yauMtnR8muQA+qS1tYapGwKih16Felk2SMB7+36WUW7DJnjxphWf9+ppJ498MDV+OpLrf66d3MFolYw/CBSpIY5Md20cch6rOvFWDQ4+p53PJdd5wYps2JQDGdwB+C26gnX3tFahAnZRvnNrPN9ZE67QgGaz4q8+YDvtVPvjw3D6fOI4zQcjCIKgTmhHesq8Wkk5lhN2Urg+iExUjg3qQsqCF2GBuZwxhoWGFjwxU1SQTX+D8fXcHi5QGVN7THo2tfRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ooUTzaseO+5TEaBoS3EpMda+q1q5KbqhSljAnmIj/IQ=;
 b=BvjFPfaCXZYFN/5NPWjP9rnJSX/b7yklOLGNPIrfz8wD610eUPJucREH0IivBAjeQ/uAM35o9EC9Iw1g0aYf4y6oPTV7rCHNIBApD0uawdOJLM1svQ1bp5KlE5hEje2GH6FZX9rnIiqjRGLSEkOYpEUXH2e72Y7zoVjjw0lB+udrfzO0Ar2U05AIIWp+3Vwi8lmxOb5n2bFTXNzJlnTw9cEjmxrbipBBS0C7e+CIIB2af7nte8NtsnVIgpUmL9av1AJKfKPnqGdKdZNz6gBQh8+VhFbHHKUgimyTWAVE5UN4zDqU8Ouw8g3ahRfKIpMhdwgY8WLUMFIACwV2+f7sbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vt.edu; dmarc=pass action=none header.from=vt.edu; dkim=pass
 header.d=vt.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=VirginiaTech.onmicrosoft.com; s=selector1-VirginiaTech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ooUTzaseO+5TEaBoS3EpMda+q1q5KbqhSljAnmIj/IQ=;
 b=flpAb38VLBJZSt/av8qpCrDVFk+Kqlq3BDl/8hYAxfnrya6FBWgL1cjS7ro2sekLs+Oc8sSHcqKO1e/KPVhYFhTdT+oJyrq9sU8JrC0ZxKFriT+BmoJ2QErwXUc6LTpLHpv4cfVq6R0BmIonSu2hRQq264pRQUtc01mLEm9fZAY=
Received: from PH0PR05MB7768.namprd05.prod.outlook.com (2603:10b6:510:2b::17)
 by PH0PR05MB7929.namprd05.prod.outlook.com (2603:10b6:510:77::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Wed, 14 Aug
 2024 01:03:13 +0000
Received: from PH0PR05MB7768.namprd05.prod.outlook.com
 ([fe80::22fa:6669:775c:8362]) by PH0PR05MB7768.namprd05.prod.outlook.com
 ([fe80::22fa:6669:775c:8362%4]) with mapi id 15.20.7849.021; Wed, 14 Aug 2024
 01:03:13 +0000
From: "Sathish, Aditya" <saditya@vt.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Managing Half Duplex with X-310 and RFNoC
Thread-Index: Adrt5YMTCFqTf1LzR5y2rbJzMlwr1w==
Date: Wed, 14 Aug 2024 01:03:13 +0000
Message-ID: 
 <PH0PR05MB7768455FE7B996179FDE2899D1872@PH0PR05MB7768.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vt.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR05MB7768:EE_|PH0PR05MB7929:EE_
x-ms-office365-filtering-correlation-id: 46166a09-0696-4464-c50a-08dcbbfcdfb1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?b3mCyIlnalHpuY3ej/3W52SUK3XGSeAExQ6S4He/GXckRRGW2k6+49HiF6GX?=
 =?us-ascii?Q?jyJH86m90MAHAVQTkRDIjZbyHIVE0xUHW/8WGNytTGnArR7kqVXsLoqrwMpV?=
 =?us-ascii?Q?dkmeIhUv2mfQ26FjVYZW1NIteekLjjVac6smIScgJAhZTO9lm6UnQ6OypCtx?=
 =?us-ascii?Q?wlDlDrzplG0KHtZU8U66DQjZhprtzoXruDpTWpSc5WTXRglTgy4lmwm1Gfb3?=
 =?us-ascii?Q?zpjUpq7dQvVHW8klbK6H0OLSHPIbupVLh6l5aAztXq7iX+H8eHAiZ/QbzqUE?=
 =?us-ascii?Q?OUWujgXN09Vt66EvFg+dNpCbVh2nhSS4tA9etPojl/41fX+CS+Z2FAFkY39t?=
 =?us-ascii?Q?HrgUqfO+oBCVLX/8HRPkMhqz4rhMgL+lxdCT/h+4RJqlHrb6kNauyges2w0M?=
 =?us-ascii?Q?Aq8iZxUvdm91gE1pniBQzMBzaWCbAh6fuXRjWtE1pqSU51BfJIhC99gFPBQ1?=
 =?us-ascii?Q?UPcaBYwQ8lYVfgshBIf/5gG9BtKIqE8BpDGn33qHjJVEDXPvUw1ZQ+U+nKza?=
 =?us-ascii?Q?bzq25lPpXss3X9mwbi36KxVk4Lle9AzumWhLBDP5ZLHc4gkzyR4jVN5KnIMw?=
 =?us-ascii?Q?JntXLOxaKA2D7ydG0xgRqlUbJiyY53TvC+sVXyokMXFUwHflPIUvrmMut4SL?=
 =?us-ascii?Q?X/h7upswsFTPHoJ9rV3OyoJChuZFY8NNI+nYNomAi8Cb8BTohBRpz99bQZw5?=
 =?us-ascii?Q?KBtS4s8uaDbc4uoNbvrWj7m/SASbpwaNDU1bm03lTvWgm4d39qB/lpA1UAXI?=
 =?us-ascii?Q?Zrj+B4x43JPLQ7Dd7Q8seFdYRFfbvp50HYZtzANMoUF67iFEcrazcExIdbki?=
 =?us-ascii?Q?DutNyoF7peuAis3DAXG9+wJkLpHZPTN35hsncdluekP+6QojCbXbRO++GOUp?=
 =?us-ascii?Q?rOmecMRnhTVEvgRbcsLViaB5nkd5aR53CpPwloQm/VPvkFB1ZOzst0pdKy8y?=
 =?us-ascii?Q?VZfClSQZua1tw+cT4Z0ekDHGW216+PvgehjB8iiHYXEv/GC47IM+iB0DxjKe?=
 =?us-ascii?Q?QLCpLawsFlbm4bUnoMyY4Skpbc/REyqN8YXyZN7asQ9Z5RHsGYtJRTTTRxwQ?=
 =?us-ascii?Q?dzmcvAcdC0HkWVZauvyu7gGfN648eW0AXSzSPfGGPZZIalRKy43iDnm9ALQR?=
 =?us-ascii?Q?rHDY9xDe+O4zRWV3OAoaPciob0byhQjdIteGaPhfKhkTILpsnaNFMe3VOMiW?=
 =?us-ascii?Q?pLyCm2mZI+y8NCBIhetoT/y0MTp3ycdbEdV23Bs9JU1CmDWCqiVDtYsiMoY5?=
 =?us-ascii?Q?vYFqKy5YaOwyEBFNSmg/lKLxcDN44Y0uciNDAqnTGCJDw+kzFVVJn74MBG62?=
 =?us-ascii?Q?h6TmFRTfp6WV3pkTqkdzQ4snjrsRsTNAFPxxpyszrF2amv3Bsv+TxkVO0pR2?=
 =?us-ascii?Q?JzKmR5I=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR05MB7768.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?F7UPEGcUK0J9l4zMcDQePXG7IPJA5sO47qcTAEoS9hwbngAaX39dmEq+QJwM?=
 =?us-ascii?Q?lIk+kV2RlblQYjJP+ZdkqSk/4THTCtFr4wbDzMK1qfJZGBMq+Px5NS2GHdOe?=
 =?us-ascii?Q?e3WgGBJMKSHemH2wXNGA5xFaWgo7exquyI1htjIu1Krnhn2ZELPHrhtv8EJZ?=
 =?us-ascii?Q?FgQSSZhbCNHYjycFGfj4dtfsuoMd0yZ8wWJupd/LfD9czcxE8yfFMdtPx3WP?=
 =?us-ascii?Q?bHEdZF2a0AebUgs371YTPX1BmTJu07AvUc+XqclaSXWAyaweQgTftaMtnJ2e?=
 =?us-ascii?Q?IEMpVdLEG/7HKdF5oNq0MEQNTi3fL6UBqspb7RfR2o5QRGCiKAUsyUW2XixP?=
 =?us-ascii?Q?ckBOHpNggDubEFSqrHuWE1wdX844rVE4gK+rH1ffPnfjTNYcGRfozaUflO/v?=
 =?us-ascii?Q?/XuvEbb7RIaORZJ1hesdbJrdcX3zcZTNlyCP73+S8fJ1FE4icfNObM/XFBl7?=
 =?us-ascii?Q?XdYbuN0zAjpgQViAOVqn6vBwuk+KmjpArGTiNUCIMsGX4WgKZk5hpe7Xq+TX?=
 =?us-ascii?Q?9pivRyTxKRQZWzte2YYJaa3+i+KJoMtllu+k34uZJD4rJGqLEhVtQrBHbkld?=
 =?us-ascii?Q?xJV59wM/9WwNAKuhibTWFVwLwif5pKTtvDDy5tyLllegl4mtTMDEQcpJxu1+?=
 =?us-ascii?Q?xA4KE+QpqiTZku/VrkktEtv+CrqQZ5Ne0QifwgBTZiThlwnuWLSdxmZCGM5P?=
 =?us-ascii?Q?Zxw6FlGdCjftoC38xpERZx6BCvdadNnyYsVzP2UDD16mUlnIRfurYDA8ECBd?=
 =?us-ascii?Q?gfSLpHwtUEC/JGIM38KwUiuaUfeI1utE5NzAiJh66a9231+gr53kjC421Z/2?=
 =?us-ascii?Q?ZLfLUGzewALMP/XthnUOKpsZtQxgxdY2Jzfzfz7WHqlukvdw17MSUGR9G8NT?=
 =?us-ascii?Q?IRIRcbrvfWcLMFcydNWC5wlh5Oi5be7W5GSfo8CD5uDWWxD0QZnSeV/xGtU7?=
 =?us-ascii?Q?e+TSgTAGO7NBBfNVPn85g6Jo64wr0sRd/RuoCloxQX2CnCrXTioBlGq6lhuS?=
 =?us-ascii?Q?XN9ILVYv1dBcqeiyZQwyHtNU+Rp7A9gqAd2yqFHX66KudgxNB3GY1C19AuVi?=
 =?us-ascii?Q?+WUZXVcNvnA4g5FqhKfw/fFHmZ9dSk+mh94J3Dgf8+/DiACe3ifdmpdKWvEN?=
 =?us-ascii?Q?WcZAPxxbhw4W8y+9+Y7DITgJ71i9un2q34PTQmLjnIqQxyiafUr+XJ8W9Te0?=
 =?us-ascii?Q?owcFDRbJu4DbZmGMIW0DQl5Ue1GaCBCdYEbjYEfnpzLM8O0WOi03qfCveZbs?=
 =?us-ascii?Q?0qah9o7VCUNju3uJoYvdwD9meeox94/YTOH8BTs6/HZEa3kmJTH0iiBb8DL5?=
 =?us-ascii?Q?u7H2ads9Z1/b9Hjaxe3RGbIiK/He5WI9mx/c/LISu68R1kgxjPgeAwjIv2JN?=
 =?us-ascii?Q?y1g+/FjRNIQG6OZiAbhEYl44MAKLn6Bmnwyke1JcGyM7edtBBBFoupL5DF+j?=
 =?us-ascii?Q?oO+evTtqazRIhu6m7fK1F/+MQILDvIjO7dnJz+ulrY1j3+B0MkqYEaIKXZGi?=
 =?us-ascii?Q?a++RLsxHMhY5smTG1i5saabp2r6jR+LlikjI2XDuFQf2q6yf/Ms/a9JhFfk9?=
 =?us-ascii?Q?t0Heg3hTbTEwvyBZiWw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: vt.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR05MB7768.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46166a09-0696-4464-c50a-08dcbbfcdfb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 01:03:13.8554
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 60956884-10ad-40fa-863d-4f32c1e3a37a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WitNATZeulnF6Vt4kQ2Utr5kK1qg4yfpdNeWOT/yJnGIu/Vv1dbjAuT+rz3e7Xwn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR05MB7929
Message-ID-Hash: 7ZJCYX3UIAUDRUSTRQH2MPSIE5CQUOWW
X-Message-ID-Hash: 7ZJCYX3UIAUDRUSTRQH2MPSIE5CQUOWW
X-MailFrom: saditya@vt.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Managing Half Duplex with X-310 and RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6NRUC3WR25XENI5HWF5UOZLPPY76GRMS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7132769078601399405=="

--===============7132769078601399405==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR05MB7768455FE7B996179FDE2899D1872PH0PR05MB7768namp_"

--_000_PH0PR05MB7768455FE7B996179FDE2899D1872PH0PR05MB7768namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to perform spectrum sensing in my USRP in half-duplex mode. My =
host application is constantly sending packets to transmit, and I have crea=
ted an FPGA RFNoC block that is intending to sense the spectrum and change =
the packet before transmitting it.
I understand that the ATR logic in USRP X310 will allow Rx only when there =
is nothing to transmit. However, when exactly does the ATR logic get trigge=
red to switch from Rx to Tx? Is it when the signal reaches the radio contro=
l block or when the packets enter the Tx streamer?

The reason I ask this is because if the ATR logic switches from Rx to Tx wh=
en the packets reach the Tx streamer then my FPGA block would never really =
get any spectrum to sense per-se.
But if the ATR logic is kicked when the signal reaches the radio control, I=
 can perform spectrum sensing and then if required, pass the data over to t=
he radio block

My RFNoC Block is currently as below:
[------------------] <-- [RX STREAMER] <-- [GAIN SENSING BLOCK] <-- [DUC] <=
-- [RADIO CONTROL RX]
[ APPLICATION]                                                             =
       \/
[------------------] --> [TX STREAMER] --> [MODIFIED BLOCK] --> [DDC] --> [=
RADIO CONTROL TX]

Regards,
Aditya

--_000_PH0PR05MB7768455FE7B996179FDE2899D1872PH0PR05MB7768namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to perform spectrum sensing in my USRP i=
n half-duplex mode. My host application is constantly sending packets to tr=
ansmit, and I have created an FPGA RFNoC block that is intending to sense t=
he spectrum and change the packet
 before transmitting it.<o:p></o:p></p>
<p class=3D"MsoNormal">I understand that the ATR logic in USRP X310 will al=
low Rx only when there is nothing to transmit. However, when exactly does t=
he ATR logic get triggered to switch
<span style=3D"background:yellow;mso-highlight:yellow">from Rx to Tx</span>=
? Is it when the signal reaches the radio control block or when the packets=
 enter the Tx streamer?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The reason I ask this is because if the ATR logic sw=
itches from Rx to Tx when the packets reach the Tx streamer then my FPGA bl=
ock would never really get any spectrum to sense per-se.<o:p></o:p></p>
<p class=3D"MsoNormal">But if the ATR logic is kicked when the signal reach=
es the radio control, I can perform spectrum sensing and then if required, =
pass the data over to the radio block<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My RFNoC Block is currently as below:<br>
[------------------] <span style=3D"font-family:Wingdings">&szlig;</span> [=
RX STREAMER] <span style=3D"font-family:Wingdings">
&szlig;</span> <span style=3D"background:lime;mso-highlight:lime">[GAIN SEN=
SING BLOCK]</span>
<span style=3D"font-family:Wingdings">&szlig;</span> [DUC] <span style=3D"f=
ont-family:Wingdings">
&szlig;</span> [RADIO CONTROL RX]<br>
[ APPLICATION]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\/<br>
[------------------] <span style=3D"font-family:Wingdings">&agrave;</span> =
[TX STREAMER] <span style=3D"font-family:Wingdings">
&agrave;</span> <span style=3D"background:lime;mso-highlight:lime">[MODIFIE=
D BLOCK]</span>
<span style=3D"font-family:Wingdings">&agrave;</span> [DDC] <span style=3D"=
font-family:Wingdings">
&agrave;</span> [RADIO CONTROL TX]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Aditya<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH0PR05MB7768455FE7B996179FDE2899D1872PH0PR05MB7768namp_--

--===============7132769078601399405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7132769078601399405==--
