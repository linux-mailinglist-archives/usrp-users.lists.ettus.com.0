Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C37F393ED7C
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 08:30:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0587385168
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 02:30:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722234611; bh=U9dLQoZBYwDSwVasQFkCh21bSOAhbwMIJZMBefTIG90=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=cv/7s/EO8JzzJB/3xF0i8YFdMUI4Gw7TAVtGh6WQJLYUY1bgbrmzghMnDbRaPs3No
	 ddLo86FSt5JONASNwQI9O3JIu6WkPdXXhyEFBTuj9CVVbOs0ZvI9U+ak1YtqV8COYp
	 8Z4F6HCL0ialvd9qwopiQyIo/mqnkanSPK20RlMUDP+6IfjfD/uCr9k89qvkzufBxq
	 DVj8weVHiCY77l4VK0MAL7pKQvkFbMQ8TrHwmr3tzi+8qPZg3FWm7ZP/14oOhrybYC
	 LF4sLzvNEbZ/RHK6X7BJ5wwZLkL8bqsmgQDjN50LEepLLAGmYpErDQu6yJJhLqMVuM
	 NFafrDbA1QVEw==
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (mail-vi1eur03on2070.outbound.protection.outlook.com [40.107.103.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 29DC2384C84
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 02:29:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=de.bosch.com header.i=@de.bosch.com header.b="aT7867Ax";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W5VjHUSEEJgSPLfTCISAoWvrTfJQ45eSto7tv5/P/HfXX5snzpw0aZArYtegGTz1WQ/zHXqlHytSf7OKoo31Ka3BTr2f1nDdxijMClt24XM2MEerNXW5QGzIgIHZNNAKzO4G9Z1EVOvDeQBZkubRM2k5Kh1gxFBJ4M4xU/hCpVuLjgxn6umubumKdme7auH6FGBOklXzuHgC1CEIFX6nyLD+jhwFoPDsbFxWqy0jEyxuh5DSNk0bm2miEybxIl6iJ9bSejkjbgRJwkuh34Ub7mkyXQxW5IhsRMscz1aRzzrZqSgVhtzbM/exwSNK1NZJL5Qdl/4ALnLqe0DkPHJwVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8pT6tj5OUXjdzB3zaR1/K396Iy8fHbwOWYISRXLWLlY=;
 b=KVgh01GakgmafJ1fserMrWOuigQo1MxR01TK6W3+eZbBN2plRd1yJM54ISd5q9Qd9UifoxwGuUVK9h/jzQBmE2JkhnmuIxlMnZPX0fHnET7P5Q6tLBt14zdLKZtHSPLwwzJ/zmZthAODk5LkZ68kM1CzAses91VKJNFGdiOox4JmOQYDryB101nVgBEfbdvplxvD1AJgzPQu28F2pQjEE2uH90Y9LenlJGEZpImYtVyljk+qZXAGiwvFobt4sE5unDl21C/z++SqM54gpzWdG3DFHKOBzJhurKxp1ZbMSZIkNSe2cs1dQbH5AdgVojZjCTA5KWu1wcGpcbm8uoMj8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=de.bosch.com; dmarc=pass action=none header.from=de.bosch.com;
 dkim=pass header.d=de.bosch.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=de.bosch.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8pT6tj5OUXjdzB3zaR1/K396Iy8fHbwOWYISRXLWLlY=;
 b=aT7867AxNnGZtv3I03f6xr5W6fyPizTwDT4wbki0b0oW5WAmWBjZmj9nptUWNpBB36D6VBaK0nJ4nUluWezcjYzglhFUrYMG0PyGzYgxaeGOTUDygZw006zu3xdLxS/y6/0VDxdaF5uXjL+fXqW7hqiYQb0KhvA4nP9lBYxary7pE9Sot8YErBcvCVj/aweW4RjogON7S1q/5vak/M8+IuervrQeZrQ4gkmfp2/xSQl4doTlkKy7IiFWLiIWoRtDnAEPx+KHwJKSN3iF/4GZWVHukf0HAgOkoxXOFIp8P5OqkdxSdvGQUIaGqrp3oAo8FzRdtL9SH9Iwgt6wEq+OBg==
Received: from PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:102::13)
 by GVXPR10MB8701.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1e1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.23; Mon, 29 Jul
 2024 06:29:49 +0000
Received: from PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::22a:cae8:6248:d35d]) by PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::22a:cae8:6248:d35d%5]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 06:29:49 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Reaching high signal bandwidth with X410
Thread-Index: AdrhgLLnVz/CuH+XTPWbHU26iB/LqA==
Date: Mon, 29 Jul 2024 06:29:49 +0000
Message-ID: 
 <PA4PR10MB436769A925D27751E47DD659ACB72@PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=de.bosch.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR10MB4367:EE_|GVXPR10MB8701:EE_
x-ms-office365-filtering-correlation-id: 43f8ff54-66d0-47f1-fe58-08dcaf97d91e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?jkkeWmUg4lrbVphpHXKANUpSESGgdXiuKDJkUaa6003fUYiWlR9rOLHpzVja?=
 =?us-ascii?Q?aT2x0sLIa+e3K9GorzhnIRjlYdPe2ryP5sIMQYfoQBy3HZcMw7cxcC9tan2A?=
 =?us-ascii?Q?+kCE7I1MXs5LvdEzjGAgA/wJ11t7weijuEiYhlDtlqcCMIIjATsaJzwbB49k?=
 =?us-ascii?Q?vIWFv7KqchYa8DluUKE41dwJHzt1s9x61EQki0nk3euxV67rmsl6DPGiv+VS?=
 =?us-ascii?Q?HqqAdkZe0YgQTR+GJLdonQIQkdat3vcK1+SCAVmTujVf3jrORBUQF5e4e5Ks?=
 =?us-ascii?Q?yK+32CVvcGDrBJNVWrUozmXbb4I3tNZkRjJdBh1iEUEb+15BlB2gJoXTf1nL?=
 =?us-ascii?Q?MaeuBqFNZ9rhoWByThcJZG+wzHk8rTIBUv4nYKwMrkQxFutYeeg46YPExhqq?=
 =?us-ascii?Q?tCYJ02Tz3zkh2Uw1xq7zsMG0OsyGaI+nhazhTLWWDA5n9NCxBX3X4JYh6Ziu?=
 =?us-ascii?Q?luC2mTXFgnbz/3toWimjijVdURGOR+PImfBgFVhs0oUNsSadzH3Z6WLsWI37?=
 =?us-ascii?Q?VYgHQc7XHKS0VsyaBPCsBkFnF+59wr3wYDO1chlYeG3S5phI/+byodKYBHND?=
 =?us-ascii?Q?PhyMv9fT7GldvsLyafroyBGYrrs1vDvD4Iipqka7OVwWvyoF2CBlE5FGXfSW?=
 =?us-ascii?Q?8vzvnv8ikrzMiogxTGQR/zD0UcGN1ANYU8dregID6b0lXpYk4BgWPFXDC4+Q?=
 =?us-ascii?Q?NnFKqQ/HfswPyGZUuhLGX32VBAQdIgtu+erClfGtsgzrfZwCytNverHOTUnn?=
 =?us-ascii?Q?D6PucSB9uXqMWA0SW8J6cktZ+nGM//sB9v4pb6yXsBtqU1Oz+4zQBueCmGye?=
 =?us-ascii?Q?zrPtVNGiSI6NYb/D1jUcqQjYcQ347HvNwyPLBo7gHm2AoHbJtrUyqx3cTGX7?=
 =?us-ascii?Q?qjOGt0XhQJ0Lco0tnaIuffSOwCpuFUghYBeraTw96vYawUDgX9DYIWF0bnaG?=
 =?us-ascii?Q?+kH5bDcYlHLsILIlMgKL3MKCQ7/YLqaQCerR7n7mhKA/3h5KLQ5vTBkwmNh4?=
 =?us-ascii?Q?iIfVBMIxNW1maNZdO249NB6JwdQyP09opMZCfJnfIM4//mixy3RYbkPYL7X+?=
 =?us-ascii?Q?aHLA1Zc6mzDo5wlrTAotStlxNjy/SJT+O0Y7FecVwus1ZIdfW0Est7oRL65f?=
 =?us-ascii?Q?TYXXhr8JMA4cDKrzOg7K+IqvN2JvzdEMpixO/PyanbTW0KuKD3Of/ePUAqJU?=
 =?us-ascii?Q?jtrgf/wICPLK58eVsb3MJtkuA5u/OrC+/v+rZuICbmTDdC+IsK7DkqIhxZSM?=
 =?us-ascii?Q?dOzMEqrmPH/EkORE9wiRpiNTK+9PdRmIERfxn1JhmeInCetL57KQq3+BUBi6?=
 =?us-ascii?Q?0LhqqkG0Uo8UY6PxkLtvszWDm5T6Fgz1CEbX0qyO5h/scbsFdSqyWdIQC78P?=
 =?us-ascii?Q?nnB1jMe3YxGzUZ2pT9DyvMp+4+Zq9hjn2tiAanaReVlt4uhZLQ=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?qmzSjCRyzdPtEgFiNmxVqiYDt6BhjCpGsT8zt9x3bfA+BTFt2x14MHXgIFHO?=
 =?us-ascii?Q?F0uX6Ufg1KeGJE7NdhArUQBdhn0JKcAKB1a1BNhopxKF7jC0+W9I68pqbVwA?=
 =?us-ascii?Q?ljBUHvxQ6U4zFd6df/3zZA0GJfnmfDUX5LSAeH98Blk5ufhjJtWlbbFelwNv?=
 =?us-ascii?Q?AGwLJWzwEvKyjNKjWrGn6ZpE6gIhVIri7/yRg5V4qBxlEYfdMg4NV8y4p9Ui?=
 =?us-ascii?Q?zDKKeRNSV9FO390KC4ndtLJ3HqpJjWlg4zO6YpmpAAwda4NhI1NrNTeh0S41?=
 =?us-ascii?Q?88FCDkjXYx+w4KP2kAmpr4ZJEln/UZ6VEF0M8tQBN0aBQ6lwt0p1Ykfof2yk?=
 =?us-ascii?Q?svyrIyTS1G2taFKk/lt+43RHHfpWkXYFo+EdaE6trc/jwls6JRQpCdeQz4JH?=
 =?us-ascii?Q?3ZINb7yYnJeykrC4QdRxaBQxDK5cKgVlxaAHyHoWNV9tsT7mC+JPt0ytK1Xw?=
 =?us-ascii?Q?NfkQ14B5GotKAXuEz/aoDO9d2qLUHQbzBdooXEuMaPxzRH7+ae7dQfhRriVQ?=
 =?us-ascii?Q?Dco9VfwuRK2SpHoQQtPeqbLybh4BGEREPVLXlwoViYOZ5rV73I/O0TStxYEs?=
 =?us-ascii?Q?8V8SHPpL4NFsUK4CvG2io1WviTfmfwA2YDWqbsRA9FIibZeb4hQFOOYnI8pe?=
 =?us-ascii?Q?yYFIASSthgTH8rjqJqzPumpTg5xzc5plpxBUMnpfzwSSHXwy64BsAN6yn2M7?=
 =?us-ascii?Q?b9ILnkRi8C/uEapjvQ8NIdYt3wV86Qxtu7cI0HDOFYPufrwxfU9uZn4ovsqe?=
 =?us-ascii?Q?GPpIt3iJLDescxuhNuNQs6nMSilwwtO/J8RkUp4/Kct7t1iMs0MR1JxV6Qkt?=
 =?us-ascii?Q?+a0i/mdHwyPtsuWy3ZrM6VsVVFG4ewUVKi2rI8D5zQY5EB8eGAiRcQWZSmCn?=
 =?us-ascii?Q?oSID905ma7BDVh/o/FcgrUKBHM9wVl3ZcZM3wYiUvRmHKyBFsLqjD2lCkMEo?=
 =?us-ascii?Q?xOseJVzz+6yNxEDAm9s92BTJJGGBkqNdgjgyTdGt8XNV+RqfArt5ujBcVOoN?=
 =?us-ascii?Q?KeHmP4DZlJ5VHl7RHAsSeG07PE3k+lkmYxMGsVwWxcR9j1zbCqk5TqazHAe2?=
 =?us-ascii?Q?qW/Yj+ffNsEWQk08MnKfA4a487OvsE2LDnTi5uaV5KD+owua+prWXsIiJWwt?=
 =?us-ascii?Q?o/YTdVpBeifoz3lN2HNJljkJjYRT5wC1+SSNx3eAeAL79ZpV3hFRP2el10UK?=
 =?us-ascii?Q?8hKUmFAVKA/ODK/outPFbMj797JhaLGNNksbDnSqOUsiNEHulj3TsbCdWxCN?=
 =?us-ascii?Q?QNy7H1f1SDiqV+S7Ml9ikjgrcEGYYq2eRJTnqcW+d0uQR9lTNx6ZfalNhh3T?=
 =?us-ascii?Q?OpkPJQRBhC7fXZUPbHzl1xf+nPvm+xL5R1WKfCqsvXfL2+DXBZcAsMrXvcF0?=
 =?us-ascii?Q?/3BHBoRcAHFhJqySqFQg+rr3n+uRSqqM4hRVLBRF7rAW/kbK9BeJXF9Yzghe?=
 =?us-ascii?Q?wZA0I3AmWZFQWDRQO1wuCXIVV/e/MulJEuDYtZ4Nwr0d9Yob84AJWn4qTboe?=
 =?us-ascii?Q?xLn8uqp9P0c0NSjry76mfPyGBoIhCDPiPhpYhePPJVwo6gibKDZKEapUX0Zu?=
 =?us-ascii?Q?pzqi07uG4OX/bWwVLV0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: de.bosch.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 43f8ff54-66d0-47f1-fe58-08dcaf97d91e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 06:29:49.7123
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B3zjVujQUVteC+q6S3FCN27o3ZiomLJGdilTBFGmEd/Z5GL/OB2S0CwrHFWcjTWoqQUG9A0yBz60pmU9IUX6VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR10MB8701
Message-ID-Hash: F6N35INC4GRKHSPCD352UP5SBCV62FHG
X-Message-ID-Hash: F6N35INC4GRKHSPCD352UP5SBCV62FHG
X-MailFrom: Ali.Kariminezhad@de.bosch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reaching high signal bandwidth with X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V6DCIAFS6K7MC7Q5KPGE3YKURLB4CDO7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Kariminezhad Ali (CR/APC1) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Kariminezhad Ali (CR/APC1)" <Ali.Kariminezhad@de.bosch.com>
Content-Type: multipart/mixed; boundary="===============1664002090702515200=="

--===============1664002090702515200==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PA4PR10MB436769A925D27751E47DD659ACB72PA4PR10MB4367EURP_"

--_000_PA4PR10MB436769A925D27751E47DD659ACB72PA4PR10MB4367EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear USRP users,


I have been using a GNU Radio Companion model to generate a signal at 200 M=
Hz, which is then transmitted using the NI-X410. The connection between the=
 controlling PC and the USRP is established through a QSFP28 link. Despite =
utilizing this high-speed Ethernet connection, I am experiencing numerous u=
nderflow and overflow issues.

Does anyone have insights into what might be causing these problems?

Best regards

Ali Kariminezhad



--_000_PA4PR10MB436769A925D27751E47DD659ACB72PA4PR10MB4367EURP_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear USRP users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>I have been using a GNU Radio Companion model to generate a signal at 20=
0 MHz, which is then transmitted using the NI-X410. The connection between =
the controlling PC and the USRP is established through a QSFP28 link. Despi=
te utilizing this high-speed Ethernet
 connection, I am experiencing numerous underflow and overflow issues.<o:p>=
</o:p></p>
<p>Does anyone have insights into what might be causing these problems?<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-ligatures:none">Best regards
<br>
<br>
<b>Ali Kariminezhad </b><br>
<br>
<br>
</span><span lang=3D"DE"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PA4PR10MB436769A925D27751E47DD659ACB72PA4PR10MB4367EURP_--

--===============1664002090702515200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1664002090702515200==--
