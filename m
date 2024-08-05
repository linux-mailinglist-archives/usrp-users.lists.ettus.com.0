Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A26947F79
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2024 18:40:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5790384131
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2024 12:40:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722876002; bh=dqMOs5pVfC36zjkNGtFh47OtdrCmyMhWrJ0rI9o25rY=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=d4AzL0BNKKYGXan7xjIbb64wdwqL3pdNNgZ5UmZUvU5i4Xa9Ce+XB57vySJPCmsGf
	 YB4xjfjjQ63CgWJDgRz23k+J9LJL7gASk4y1Df+B+A96ExVSYhMDb0+SB/TK0Dgnal
	 AsmcHtaMuID50rThgI5RVV9Xu9USIBoRWyDHMbGVevjvIrg40oMvZXaoQ7GcF7/V6t
	 D9Qia9nP0Y5bcqa1xNehfddOTUXvRQaosQ/nskuzzfKwn7YPNRQUIp5bnVSZ3dqUw1
	 jCUMAQnqIszktSSNBX4l7U+bSXKvvrpics1yQD8PD8rSCZhfRsd2JfSYeyThf2YaBw
	 9Jc2zJ+70M1LQ==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0043.outbound.protection.office365.us [23.103.209.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 964B0383E7C
	for <usrp-users@lists.ettus.com>; Mon,  5 Aug 2024 12:39:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=str.us header.i=@str.us header.b="pO69IuAG";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=xcz+Zyvel9Fia+66+0mly5D/8bSK3+rrBx/Q4f52PLUSVDuVdiGVlxdyGJ3FxOtyP6gyy5VeUUZ/zoDNcXdCPQd2NRmIQIK3JWkx7plEKnxiPFtOfzZebpu+7ddtKb/+O29pGo/p7ryDG0RpgN+lNFGoec8G5FI4hnh5kvjX/jBUFf2y+yCXrajbLeg+pPSuR0PjqwUdI6RCDkX++XHbFekp0tZYYCjVRx76gylCTBT5UPqtGkF7P6RCYAkOsQbo49U+2wjooL8bh5DkpQhUg5GREqyb8tiafgnupH3O7fAqw+sBcFAV6FWEdBaZpXdFponmvIaYKa2vIr2J/wb36Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ptKsvSbOEEJ5BUVbdTpwA0uhDJviK9k6JBB2E+wzuIg=;
 b=EAL/KWGuLw/fLAp34dm3AaTonGWZO/UI+j+J+VX73YWvj3tMrwCmrGBtrmN5ha9UePWMptrT6bhl6avEbkNW5L/tiKPVWxsl4G65IXhAFAFlRKiCYjhoaUpXogK5GXyYq4H/P3xyWRN1SP6pptsGvBNA9Y+BVwTwMH5/R+Fc2oy4+TGE7bVD6TZwjK4L/IGgynR5pyebDetLZrv66xSYx5VnlBWw8NrfkjS1D83/s5lHH6t5JPUpX/BPEFgtYUxfHA/NmkgbRqOphu6BXhceTCWzR8BPr4LUM+97r3/mc7ao0kmKSaj2pUMQ/8a2aqSzNZenrPzO2+OLIUvp1QcWmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=str.us; dmarc=pass action=none header.from=str.us; dkim=pass
 header.d=str.us; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=str.us; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ptKsvSbOEEJ5BUVbdTpwA0uhDJviK9k6JBB2E+wzuIg=;
 b=pO69IuAGlhKhBJGvFFmWTneQr1p5wGtHnBd+hV7MYJuDrgl+agsAa1DD3axTHvZWYSuq3jMqWoYU0E9zJjaR4LeLpnPuqM9YcdUSEoVaTYQAMoBiNhEeGy1J8wNZE7lUc2fSVUgPYoEjffEDSttEYm/+4xrMJbY773lPUnGdytw=
Received: from BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16e::7)
 by BN0P110MB1241.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:180::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.37; Mon, 5 Aug
 2024 16:39:52 +0000
Received: from BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
 ([fe80::23c7:8e15:bd:3325]) by BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
 ([fe80::23c7:8e15:bd:3325%5]) with mapi id 15.20.7784.035; Mon, 5 Aug 2024
 16:39:52 +0000
To: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 Tx and Rx Power Constraints
Thread-Index: AdriiEO92bxfVU67TCOmm+FBO9U7+ABsodMQALjj5rAADbTNQA==
Date: Mon, 5 Aug 2024 16:39:52 +0000
Message-ID: 
 <BN0P110MB101435F79D50E769F574037184BEA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
References: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
 <BN0P110MB101423D7A04A6F86EC58045E84B2A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
 <d16672fea2ee4379a73b9e5d1520bc2e@hhi.fraunhofer.de>
In-Reply-To: <d16672fea2ee4379a73b9e5d1520bc2e@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=str.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1014:EE_|BN0P110MB1241:EE_
x-ms-office365-filtering-correlation-id: 3083fdb1-2b32-47e7-2450-08dcb56d3acf
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|41320700013|1800799024|38070700018|80162021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?cbABb5XqRW2uUUofrjyLo+rUvbtfYqvq+zOjcwU4nDquYaY6gcOz4MbE4gAU?=
 =?us-ascii?Q?Xr9arUV1ok/lFEKu3LyoIouGK/gqKPg/b7nUkgl/JDkpQjU/PoWRyXEQrwe8?=
 =?us-ascii?Q?/uP9PnOt6nNEYTfDb2aoEYr5w2W91cesgU22DbTPd+NCg5SPcDp873DNC3KY?=
 =?us-ascii?Q?CG9uNPljZmXyH665aj8qZC9HnpiezL6SoJV5sGhlvlrBc9eHFwBT1DUQJjFa?=
 =?us-ascii?Q?CzDkI7E8TCbRlwfnzs3xwYIEDTmMedrNI7Tandh3Cw3ZSvzSREOD6u7C1wml?=
 =?us-ascii?Q?5bi93zK0CI5qtento3IohBKnsz9Umrhu5l6AaDiXjunRf2G7sV6lkXjs5dF5?=
 =?us-ascii?Q?boVB0NYqNK4HjEzKNGaS7zsZZafydezQspf9CiRpU3pkVpRje1/0cfHa2N3A?=
 =?us-ascii?Q?ON3SIokNRG355O5W/6gEpyrT8qCo01zq7d4cSoZ1Tab4p5mC3LJgkSe+VGXM?=
 =?us-ascii?Q?UDCiTrRFGp9NsHu51iPtqK72ImCd7WOBpbXaoLPVduwh7i8XIOwtJAO+PgsE?=
 =?us-ascii?Q?QBokyK8Ej52q+h6aewWSmzW+VQVPHr3uhnvpqztJ1tsPvZp+evUM3d9N+gTs?=
 =?us-ascii?Q?fsvK57HMK2b3fQ2YQo5pGHYVmW7XBU8hQGEmC+JRQThNebmPSMliPign2Bo+?=
 =?us-ascii?Q?v/QjMGL/+8Fe2S7usCTIL25j3zM6YKE2hzGRKp1+0o93nxG9wyAVtAqKSdLA?=
 =?us-ascii?Q?k/OI0t+sxnpE5Y5pVOwOlC9wbUyqu9PwrZ/8bI9Rly64nnsUKZGV2kKMgmqZ?=
 =?us-ascii?Q?y4xIGmd2SNrLymBkiZ4YOsiYihnjPpvUZq8EKuoMpiiRljsIPHBqD/e5usY1?=
 =?us-ascii?Q?FQpSE8iodhTWkfPgRcISc/dfZ4I2TJ5zvivXny/B5Tiqz+wQ6wda9J0U0SsC?=
 =?us-ascii?Q?WQm+ARe4nRjc+4ZyvTnsVXDag+OXsxdx3hvIdkd13BtOhIHYjVzmscwV4lwv?=
 =?us-ascii?Q?s3REJHZe0MGzn1dHGSLqVI+NVCrZ4PcqrrjzL05lCXf7KTbKj3/119NMVPsq?=
 =?us-ascii?Q?3JLFhQ1ExroBaRLM5U2JY0LIIFMcf8VQV+3smiUva8fyu84co9ZNYSqzJDtR?=
 =?us-ascii?Q?FhF8iDLV5yk851OLvP7OeAXNO4YsYYXK05SQKA0AjGygdhz4a/42VBf2eaa2?=
 =?us-ascii?Q?Is2i+yVurVM2r8Oe7LqZ9VdGyzDmLqFlZ9DgGdQTgRbtDLO2GieXxpgLyLOc?=
 =?us-ascii?Q?9KMd2TQNc2dpGVEqReUICmUdFNhgpQ/LihUrnGz3A/91I/RaRA4JrV/qgjj6?=
 =?us-ascii?Q?iFg7k20kkBa/2tl5R6kVVWEt+lzLJGCKuzH/pIHWD46Nap2kpTU7sHyzWih9?=
 =?us-ascii?Q?186EO5/iveZ6SaHB/IMb7GcWqfiAYchFliMXN/j0qy9ppu788IUItp4sI7iE?=
 =?us-ascii?Q?2dtQQ1z/eXXS4xh1JF79x5hupRGs?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(38070700018)(80162021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?FYAEfXdc2BvzbIQ6kFqqA3EHinewCL1kdbuVrKJj8V5F8axlcGdJDVIBm2hU?=
 =?us-ascii?Q?i9YVnmI75BB8ZFxfv6pvv1+e2KYZwbFDTPQtcK9QqphSNug/XrcUoVRDhVV7?=
 =?us-ascii?Q?VL3iGgK1gyiWx5Zom3rILvsaSGsRPizbGXu+bNc8o/omA2Eb24u83FW9GK3v?=
 =?us-ascii?Q?qvjrde1c5C5JCBTuKmUr66gSHFGrN3QONNp5acXow1MFz4FYW4F5T9Zi5cfu?=
 =?us-ascii?Q?zAy9KBXalrnB8qyuG+pvafQNK9EN7cohvvU59T/6WNc6zswRKzxMcuQEocHY?=
 =?us-ascii?Q?zCYwoL2XdKTVOjl7cKaMFnEervyZT+nmRYKf2ROR9xfw139pfsOJ7F+6yZIM?=
 =?us-ascii?Q?zrfFVrTl0HU+2LSZCQAZx6EBU2FzgJ484CJjHd5QTJPOC1XAD3dKiC4t8dP4?=
 =?us-ascii?Q?hZ9i2e432HvY0KxGGFIYE0Spa/G9O7pd9CFdIeSOV9bxDyEiXt8TB3mVIpo2?=
 =?us-ascii?Q?aXM1SQwztXrQXx3gj/K9COyT7ugLVzndPbcUAFr9ay43Ggks4kfWi1BVuOt2?=
 =?us-ascii?Q?SJyG8TXRBri4QXJWllpRNc35pc2F+fLxK18z+J23xFBF7ZXxt+8nuanhyZ7C?=
 =?us-ascii?Q?Xwrjgm2J1BLLg8t9A2HEl5CUsa/6pmDMlCfuvXmqFm6UJUUiYrCfV8xTNrJz?=
 =?us-ascii?Q?RG8I/NkUe1WPx6QC4SG1gJ9ZZO8X5fLCPNRL00qaZ+DYY8qiBdNVOL7G7Wl+?=
 =?us-ascii?Q?4uT2uuTjBAh9fMVpr0gpEe87cgQCWJphLZdgTyKsnAuFSMeLO5MiKxsueLa/?=
 =?us-ascii?Q?SjJW+UxN67yJiStCc920Ob8xdBh3IAH5XGKaGdWQatcOqY/drhMOxi8Nb/Qm?=
 =?us-ascii?Q?jlrGGi8mEZUkA65wJec1UAtDnzrUg2nSp7ufcRP20cYOmV3DYWLGAxC5bwGZ?=
 =?us-ascii?Q?1x9EGMBYY3a6UthN1EzdcswRUcoaEWiSp7CEMW2ygW3RLcYvb50dQO1cYUUf?=
 =?us-ascii?Q?2k47bR6dtx8aHD7N/8OcAdolSHwPx54X0fZim3xyGzUalR34TP6fgIZcx1WJ?=
 =?us-ascii?Q?lBEFVxs8Hbbi0FcFlJVIkMb13z4wC+Z2J5uA+w5TGIihROAjmXnJfcFT9U16?=
 =?us-ascii?Q?Fvf4/Hf5+/YGkJA+kAVB0xN+DdUyxRoN36iIntVZt2Xh+agEQ4bHtWWdABqu?=
 =?us-ascii?Q?A4Uk+3e5c+GsypXUSQR/HbvvXWeURKmDZpU3SO1/W0PGgAiwBypiuEbQGKwi?=
 =?us-ascii?Q?fC+UV5NCo0PPQbPpZ0Ieu1XkAU9Pes9x2envN5T0RSEVQX7vmA0uuwHgNpl7?=
 =?us-ascii?Q?11vzrL5bRQV4GsZ/udV3vaeMnsf7FhXL83YpoBPkq2E4r5WJ5HwOgZmQx4yD?=
 =?us-ascii?Q?w+EUyBXdhSLa6MIo/Y/lG7PfDca7vQwzAKXy/yXPv9jzh1u2tgkSfe9sbPUu?=
 =?us-ascii?Q?OXM9pTXJy+gbMNfJ3n3q0ZRE7X/4dPMkQfky1Su5yEMDRZVP+J3ni1EigLX1?=
 =?us-ascii?Q?OOdmGq+rsqdT9FZGDkomVT/Dd6f0K4nwhh4/xIbweAl3oHxFDS8rxNkj4ufp?=
 =?us-ascii?Q?d+9lfENtHJHdNJ4=3D?=
MIME-Version: 1.0
X-OriginatorOrg: str.us
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3083fdb1-2b32-47e7-2450-08dcb56d3acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2024 16:39:52.1984
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e436f686-4fd8-4b6f-ac36-441e84fbfa24
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1241
Message-ID-Hash: YNEPLMXC4KYWTX73CGFRD6DTKGIT6HHO
X-Message-ID-Hash: YNEPLMXC4KYWTX73CGFRD6DTKGIT6HHO
X-MailFrom: patrick.panuski@str.us
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MOBAVFIDBP33SWWFMVMNJCCUM6KCYXGZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Panuski, Patrick via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Panuski, Patrick" <patrick.panuski@str.us>
Content-Type: multipart/mixed; boundary="===============6193297689871912501=="

--===============6193297689871912501==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB101435F79D50E769F574037184BEABN0P110MB1014NAMP_"

--_000_BN0P110MB101435F79D50E769F574037184BEABN0P110MB1014NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

My only other thought here is that I think the NI graphs were created using=
 the X4_400 FPGA image whereas you're using the CG_1600 image. You could tr=
y loading the X4_400 image and seeing if that has any effect on your Tx pow=
er.

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>
Sent: Monday, August 5, 2024 6:40 AM
To: Panuski, Patrick <patrick.panuski@str.us>; usrp-users@lists.ettus.com
Subject: RE: X440 Tx and Rx Power Constraints

*** WARNING: This message originates from outside the STR organization. ***
*** Please take appropriate care in opening any links or attachments. ***

Hi Patrick,

Thank you for your detailed answer based on your experience. Please find my=
 last, and probably the final, findings about this topic.


  1.  I checked the MMPX connection once again. It is definitely not the be=
st type of connector if your setup consists of SMA-type attenuators/analog =
filters. They might bend the MMPX-to-SMA cable around and cause lose connec=
tions, you are right. In addition, the MCR was set to 368.64 MHz in order t=
o set a converter rate of 2.94912 MHz. Furthermore, instead of measuring th=
e power of the constant wave at 500 MHz with a marker of the spectrum analy=
zer, I started to use a Power Meter from Rohde & Schwarz to consider the co=
ntribution of aliases due to having a RF Sampling device. Moreover, I used =
two different X440's and their 2 possible Tx ports (4 ports in total due to=
 CG_1600 image) to eliminate port specific problems.

Unfortunately, I still measure around -5.2 dBm instead of around -2 dBm dBm=
 (according to this graph given for 2.94912 GSps https://www.ni.com/docs/de=
-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DFigure%202.%20TX=
%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94912%20GSps%20Conver=
ter%20Rate%2C%200%20Hz%20Waveform%20Frequency). Apparently, I have to live =
with the current status of this setup.


  1.  I agree. An update on the knowledge base page (https://kb.ettus.com/U=
SRP_X410/X440_Getting_Started_Guide#:~:text=3DX440%3A%20Always%20use%20at%2=
0least%2030dB%20attenuation%20if%20operating%20in%20loopback%20configuratio=
n) can certainly clear this confusion.

From: Panuski, Patrick <patrick.panuski@str.us<mailto:patrick.panuski@str.u=
s>>
Sent: Thursday, August 1, 2024 8:31 PM
To: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunho=
fer.de>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: RE: X440 Tx and Rx Power Constraints

Hi Altug,


  1.  Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison?  Also in my ex=
perience, a weak MMPX connection can cause at least a 3dB loss... You can s=
ometimes see the observed Tx power jump around when you wiggle or adjust th=
e connectors. My X440 currently has one transmit channel that transmits abo=
ut 3 dB less power than the others, and I think I've narrowed this down to =
the particular MMPX connector on that channel being weak/faulty. I'd sugges=
t trying a different cable and also testing transmission on other channels,=
 but overall I wouldn't be surprised if the different clock rate was having=
 an effect here.
  2.  On the X440, you're probably okay directly connecting Tx to Rx. I thi=
nk the 30 dB attenuator recommendation is left over from older USRP devices=
 and is less applicable to the X440 architecture. The older USRPs had separ=
ate RF front ends with amplifiers on the transmit side and LNAs on the rece=
ive side that could be individually controlled in software, so it was possi=
ble to set transmit/receive gains too high for a loopback configuration and=
 the device could damage itself. With a 30 dB attenuator, virtually no soft=
ware settings could make the device damage itself in a loopback configurati=
on. However on the X440, the entire front end is integrated into the RFSoC =
and the daughter card is now just a passthrough. This means that your UHD p=
rogram cannot change amplifiers and gains so the max transmit power will be=
 capped in hardware around 0 dBm which is significantly below the sustained=
 Rx damage threshold.
  3.  Disclaimer: I'm not an expert here, just a user

Thanks,
Patrick

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraun=
hofer.de>>
Sent: Wednesday, July 31, 2024 5:57 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] X440 Tx and Rx Power Constraints

*** WARNING: This message originates from outside the STR organization. ***
*** Please take appropriate care in opening any links or attachments. ***

Dear USRP Mailing List Members,

I have two questions regarding power constraints of X440:


  1.  I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps.  I used an UHD example call=
ed "tx_waveforms" to verify the maximum output power. To compare the result=
s with the specification sheet, a constant ('CONST') wave of 500 MHz freque=
ncy with an amplitude of 1 is used. While expecting a single tone whose pow=
er is around -2 dBm (according to this graph given for 2.94912 GSps https:/=
/www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=
=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94=
912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency), it is ar=
ound -5 dBm. Does the output power vary that much between the converter rat=
es of 2.94912 GSps and 2.88 GSps?



  1.  I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10 dBm. This is further elaborated down to=
 the operational frequency in this webpage (https://www.ni.com/docs/de-DE/b=
undle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DMaximum%20input%20pow=
er%2C%20damage%20level). On the other hand, in the loop back configuration,=
 >30dB attenuation between ports were recommended.


What is the difference between connecting the Tx port of one X440 to the Rx=
 port of another X440 and connecting Tx&Rx ports of different daughter boar=
ds of the same X440? Why does the maximum receiver power requirement change=
? The maximum one can transmit from a Tx port of X440 is 0 dBm. According t=
o my understanding, it should be safe to connect Tx and Rx ports (of either=
 same or different X440s) to each other as long as I am working with a cons=
tant waveform with a PAPR of 0 dB.

I am grateful for your time and effort. If anything is unclear and you are =
willing to help, I can provide further details.

Best regards,
Altug KAYA



--_000_BN0P110MB101435F79D50E769F574037184BEABN0P110MB1014NAMP_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:420183726;
	mso-list-type:hybrid;
	mso-list-template-ids:-1053519324 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:776415424;
	mso-list-type:hybrid;
	mso-list-template-ids:-1446986388 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:2070299612;
	mso-list-type:hybrid;
	mso-list-template-ids:853935170 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">My only other thought here is that I think the NI gr=
aphs were created using the X4_400 FPGA image whereas you&#8217;re using th=
e CG_1600 image. You could try loading the X4_400 image and seeing if that =
has any effect on your Tx power.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhof=
er.de&gt; <br>
<b>Sent:</b> Monday, August 5, 2024 6:40 AM<br>
<b>To:</b> Panuski, Patrick &lt;patrick.panuski@str.us&gt;; usrp-users@list=
s.ettus.com<br>
<b>Subject:</b> RE: X440 Tx and Rx Power Constraints<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:dotted #003333 1.5pt;padding:2.0pt 2.0pt 2.0pt 2.0pt">
<p class=3D"MsoNormal" style=3D"background:pink"><b><span style=3D"font-siz=
e:12.0pt;font-family:&quot;Courier New&quot;;color:black">*** WARNING: This=
 message originates from outside the STR organization. ***
<br>
*** Please take appropriate care in opening any links or attachments. ***</=
span></b><span style=3D"color:black">
</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi Patrick,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for your detailed answer based on your exp=
erience. Please find my last, and probably the final, findings about this t=
opic.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">I checked the MMPX connection once again. It is definitely not the be=
st type of connector if your setup consists of SMA-type attenuators/analog =
filters. They might bend the MMPX-to-SMA
 cable around and cause lose connections, you are right. In addition, the M=
CR was set to 368.64 MHz in order to set a converter rate of 2.94912 MHz. F=
urthermore, instead of measuring the power of the constant wave at 500 MHz =
with a marker of the spectrum analyzer,
 I started to use a Power Meter from Rohde &amp; Schwarz to consider the co=
ntribution of aliases due to having a RF Sampling device. Moreover, I used =
two different X440&#8217;s and their 2 possible Tx ports (4 ports in total =
due to CG_1600 image) to eliminate port specific
 problems.<o:p></o:p></li></ol>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Unfortunately, I still me=
asure around -5.2 dBm instead of around -2 dBm dBm (according to this graph=
 given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
). Apparently, I have to live with
 the current status of this setup.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">I agree. An update on the knowledge base page (<a href=3D"https://kb.=
ettus.com/USRP_X410/X440_Getting_Started_Guide#:~:text=3DX440%3A%20Always%2=
0use%20at%20least%2030dB%20attenuation%20if%20operating%20in%20loopback%20c=
onfiguration">https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#:~:=
text=3DX440%3A%20Always%20use%20at%20least%2030dB%20attenuation%20if%20oper=
ating%20in%20loopback%20configuration</a>)
 can certainly clear this confusion.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Panuski, Patrick &lt;<a href=3D"mailto:=
patrick.panuski@str.us">patrick.panuski@str.us</a>&gt;
<br>
<b>Sent:</b> Thursday, August 1, 2024 8:31 PM<br>
<b>To:</b> Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">=
altug.kaya@hhi.fraunhofer.de</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Subject:</b> RE: X440 Tx and Rx Power Constraints<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi Altug,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo2">Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison? &nbsp;Also in =
my experience, a weak MMPX connection can
 cause at least a 3dB loss&#8230; You can sometimes see the observed Tx pow=
er jump around when you wiggle or adjust the connectors. My X440 currently =
has one transmit channel that transmits about 3 dB less power than the othe=
rs, and I think I&#8217;ve narrowed this down
 to the particular MMPX connector on that channel being weak/faulty. I&#821=
7;d suggest trying a different cable and also testing transmission on other=
 channels, but overall I wouldn&#8217;t be surprised if the different clock=
 rate was having an effect here.<o:p></o:p></li><li class=3D"MsoListParagra=
ph" style=3D"margin-left:0in;mso-list:l2 level1 lfo2">On the X440, you&#821=
7;re probably okay directly connecting Tx to Rx. I think the 30 dB attenuat=
or recommendation is left over from older USRP devices and is less applicab=
le to the X440
 architecture. The older USRPs had separate RF front ends with amplifiers o=
n the transmit side and LNAs on the receive side that could be individually=
 controlled in software, so it was possible to set transmit/receive gains t=
oo high for a loopback configuration
 and the device could damage itself. With a 30 dB attenuator, virtually no =
software settings could make the device damage itself in a loopback configu=
ration. However on the X440, the entire front end is integrated into the RF=
SoC and the daughter card is now
 just a passthrough. This means that your UHD program cannot change amplifi=
ers and gains so the max transmit power will be capped in hardware around 0=
 dBm which is significantly below the sustained Rx damage threshold.<o:p></=
o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l=
2 level1 lfo2">Disclaimer: I&#8217;m not an expert here, just a user<o:p></=
o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<br>
Patrick <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kaya, Altug &lt;<a href=3D"mailto:altug=
.kaya@hhi.fraunhofer.de">altug.kaya@hhi.fraunhofer.de</a>&gt;
<br>
<b>Sent:</b> Wednesday, July 31, 2024 5:57 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] X440 Tx and Rx Power Constraints<o:p></o:p></p=
>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:dotted #003333 1.5pt;padding:2.0pt 2.0pt 2.0pt 2.0pt">
<p class=3D"MsoNormal" style=3D"background:pink"><b><span style=3D"font-siz=
e:12.0pt;font-family:&quot;Courier New&quot;;color:black">*** WARNING: This=
 message originates from outside the STR organization. ***
<br>
*** Please take appropriate care in opening any links or attachments. ***</=
span></b><span style=3D"color:black">
</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have two questions regarding power constraints of =
X440:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3">I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps. &nbsp;I used an UHD example=
 called &#8220;tx_waveforms&#8221; to verify the maximum
 output power. To compare the results with the specification sheet, a const=
ant (&#8216;CONST&#8217;) wave of 500 MHz frequency with an amplitude of 1 =
is used. While expecting a single tone whose power is around -2 dBm (accord=
ing to this graph given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
), it is around -5 dBm.
<b>Does the output power vary that much between the converter rates of 2.94=
912 GSps and 2.88 GSps?</b><o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3">I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10
 dBm. This is further elaborated down to the operational frequency in this =
webpage (<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-sp=
ecs/page/specs.html#:~:text=3DMaximum%20input%20power%2C%20damage%20level">=
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DMaximum%20input%20power%2C%20damage%20level</a>).
 On the other hand, in the loop back configuration, &gt;30dB attenuation be=
tween ports were recommended.
<o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>What is the difference=
 between connecting the Tx port of one X440 to the Rx port of another X440 =
and connecting Tx&amp;Rx ports of different daughter boards of the same X44=
0? Why does the maximum receiver power requirement
 change? </b>The maximum one can transmit from a Tx port of X440 is 0 dBm. =
According to my understanding, it should be safe to connect Tx and Rx ports=
 (of either same or different X440s) to each other as long as I am working =
with a constant waveform with a
 PAPR of 0 dB.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am grateful for your time and effort. If anything =
is unclear and you are willing to help, I can provide further details.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_BN0P110MB101435F79D50E769F574037184BEABN0P110MB1014NAMP_--

--===============6193297689871912501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6193297689871912501==--
