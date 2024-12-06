Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F3A9E6E15
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 13:27:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E19DB385AF3
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 07:27:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733488041; bh=rhPBqem0Buo62hDPrwFp/4QV7ZTFPFwqm8fm2MJVLUA=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zUbS4ghJX6DhM6GNPpWoc4xoUXpBeWQjtuCjWPblGtkTH5DEU2US2av7jpP7xxh64
	 FY3v8ycQYZjBWkV+wvYSO3bbvBHOWP1/clSewTmtXkxuB3me8gYgI63LJRZQV1E0HL
	 9ulFu+UX67k48Fk9f6U0SEhx7DggTKVQGClcZQA6HZ/gy4QS1UjoXI8l6pd3sONmk8
	 m+IVazj4aYVje5ITB5yiFsc5ZIBXINl6vnYSFlEswziQjs9XJZ/MqnLFLCMzIkyJAJ
	 CwnnsfwDTJVTxjagPdAjLw/5ACYjAZD5R7WmHfmydUsTKPamMmB2vshJBGP78QB7Eh
	 qS9p9kguUbqzw==
Received: from MA0PR01CU009.outbound.protection.outlook.com (mail-southindiaazon11020118.outbound.protection.outlook.com [52.101.227.118])
	by mm2.emwd.com (Postfix) with ESMTPS id 942C6385AAE;
	Fri,  6 Dec 2024 07:26:48 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rW87SuHoF5hEtzxQ7EkTrNJvBGdSYbLBGXsaQQB3E68lVdbuMA1ns7MGmgXOF4uy2+UcLOmf6PyaDR3Tejh9FaC/+Nb40r3X/e7I7PHsCFS41Y39E7B/mQoefYPA3aIdOqagTyZOhawRYlm40w6ptZq/30xSXzCkxnsDKvfHXDuJqkTzPPERlJvnPXGT/nuuaueme/3c4BHj0PBzFzM54Uh5FrQmTY0xxRtfSDqbEWNY2dvu0CuuSqzf6IosKNdWFdXmANX46D1tbrdqy1NUIY8y76G3v+s8kFHMYN1nPQilalPAC+AqIFUmZ0ep6UDflRKQrHSwtg8doDbhNN9XxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r0pvv08WaqCCqTWQvXYW+SW3Hq0DyhcJrbqJalt1+XM=;
 b=bm0tIczwirRuDUy4Y01VFvDRlAOFdzie2a2hALGPkSyK3YgLvQzP/1RxryndNOGsU3T4IC/kMe4BnNufUSBW77daCQgCWoeih1ott7kblSMuUqfXV57CyUtIZxmjgpUcXo139eY7ZqbNb3hLvKUSnZcDjuO8q2c5LnAcp+5r57MNXoyCqjbXUIbicCMAqnofVFo/TnTwXVdHbt37TgW5N0x/PpNBk0h+cFCxYrJKb3ykyBHD2l4d7+ymRwBJukIxWfUNuxhfwB0N9cMWZ56ZEUIUc3iNfq24bujn3NMXaxarKTQgs5f5XvfR0G6EQCE3FEEuF4BzX1odhR/TcuWxuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cyronics.com; dmarc=pass action=none header.from=cyronics.com;
 dkim=pass header.d=cyronics.com; arc=none
Received: from PN3P287MB0291.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:d4::11)
 by PN3PPF9BD7DCB32.INDP287.PROD.OUTLOOK.COM (2603:1096:c04:1::c3) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Fri, 6 Dec
 2024 12:26:44 +0000
Received: from PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
 ([fe80::c4cc:88c0:917e:1ac2]) by PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
 ([fe80::c4cc:88c0:917e:1ac2%7]) with mapi id 15.20.8230.010; Fri, 6 Dec 2024
 12:26:44 +0000
From: Nidhi Panda <nidhi.panda@cyronics.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>
Thread-Topic: Issue with Starting Transmitter on USRP N300 without Using
 Streamers
Thread-Index: AQHbR9ejpnwlvpdtf0uIyiNIYJaqMbLZI+ON
Date: Fri, 6 Dec 2024 12:26:44 +0000
Message-ID: 
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
References: 
 <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cyronics.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN3P287MB0291:EE_|PN3PPF9BD7DCB32:EE_
x-ms-office365-filtering-correlation-id: a1b69ef7-ca87-4504-90ef-08dd15f13ecd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?Un4Pv84LW2KfJc+hew75SL1ytpS2fFu2FKrJ9egiS55V1fmUjYB8vp/CWR?=
 =?iso-8859-1?Q?VuAWDSyMAMslsTm29yLFPKIQjGOY+fPgh0V2amS0K1cU8zVpnFfNpdX2m0?=
 =?iso-8859-1?Q?5tztjCtg1pps4kCeV553wSYxtGc5I2CaImO/NaqIY2jD1q4Air4szi2x6o?=
 =?iso-8859-1?Q?qTa3S4dGQmEBHpKND45Xv0IWLOyUqhJ+16KVxlRXPfLpr0/KbWEKQXnwQX?=
 =?iso-8859-1?Q?ijJ4PBbp8dW9ZNCo3aYd0SZe9E/QxdKhO3StXEtOk6q88BT3B2fbqVn/Gr?=
 =?iso-8859-1?Q?6VaYA3t1MP3iwWCydwqfAO0s1XPvX14SZLMFECVn1CHxcLtq6LzXv7G+lK?=
 =?iso-8859-1?Q?PJP4Wp9OFx1RwC31gSZ9yxzojrEh0KTAnGABIkB8uPVoXXGUKyOquAp2a/?=
 =?iso-8859-1?Q?/W5RYnzKqVjO9d2f+PofmdByIMfjN5Tyl4Kqs0XQKD77m4/ZXhceeL593h?=
 =?iso-8859-1?Q?UAJeYuCm4cb3rr8ZiUNV4pOdlnvfUn5Ea9K5oxr/BU32vFpAb62Z7iEQ7l?=
 =?iso-8859-1?Q?LTIwOuWzpJ6BE3nPHjI62dYVktTCzyTBvbxa0Zshik2N3R46fLB8aSnCi9?=
 =?iso-8859-1?Q?dz9//0AsfjRh2bGKbyKQc7qlTLyed73wRUEIuiblWiODokW5ZvGWpSrUUV?=
 =?iso-8859-1?Q?HFsEvv+BDHlb0PSsSarmNfP4iDOQuJEPe3d01EYIr+BJhAnKvwaUrYsemM?=
 =?iso-8859-1?Q?XZKftPgTS3E5r/IGL1URVwouymhdoY9rIUrIOLVjgk0rkyr8QDuUzRYFz1?=
 =?iso-8859-1?Q?h2fDIyqQKdPNdd8BsqxS6L2HDtCLta3E4qgwx7I1hLsa+kMsN0a1SCNwPM?=
 =?iso-8859-1?Q?e6W1YoEIrxSAEDsS5qAqrvFHZjTglspzbB0qf8IpWjYGffjmQFMbt0F9Uk?=
 =?iso-8859-1?Q?bK2YFEaYo4/5WhmDzyVZdXFASk7EnA1GqskhWPaIidv7NaXat88kgTPbqs?=
 =?iso-8859-1?Q?qeCddn4H0Fqe334M1UpQgr58po6Bq2ZJgYrDaMssgDQzoCTOyUXHyaOJ9u?=
 =?iso-8859-1?Q?KYV2UcbRFycTfSRwpJZdWyPMoevBvBilOF2jPUUpcnHqQPfUDT31H97tti?=
 =?iso-8859-1?Q?JPwWek6ovE9UIFQcCRRGt1Cd4J04vr5fa5ntKCmuhxmDXRFUZaUTxc3zM3?=
 =?iso-8859-1?Q?AqE2O31/g0IVNpguuJH2kNkL86DGI9h8Aalo2smu6b1YuybKfEgtd1NqaO?=
 =?iso-8859-1?Q?GJDV3pF75ZwsJN1LGx5FC1i/oTQmE3gdRtkAHdiZfkpCu1Bth5W9qre3Rh?=
 =?iso-8859-1?Q?FP9rVKxiuHnLtJT1FIu/bZNopHaRXjZiA7F9g2u2REDliGmdvGuKt1VrIC?=
 =?iso-8859-1?Q?RDY0tUs3oJITUO8QLVD2pMVBoNApNeQ8kXGlue192Cr/JfphDFqc83dxyo?=
 =?iso-8859-1?Q?Pvw7P1Pi8oWOeJ4PSDCOHqM1bGXF8YEf5hLgaGw7QYMnZy8mPuviW/bYFa?=
 =?iso-8859-1?Q?I7Ft5xPpGicd0V0SSPiMDtMZtJ7wliDhoYHrrg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PN3P287MB0291.INDP287.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?O6oUZB/SAKDl+yYLPuMlRozeNyvq61dninaLRJxjGjaFrF4WlMz2eIYo9o?=
 =?iso-8859-1?Q?AfooMQt9eSPR/ScYKtdP5Em2fgaFFtuZXVudXtPjxU14sCPly1RYSfOBvU?=
 =?iso-8859-1?Q?TSR6wEqb5mquZr99YQjB/uhMu+lloM+tf2UdzLdARfDpYJVMR2u0WHagqW?=
 =?iso-8859-1?Q?opQdT/jaXN8WQNGDghZYKeifof+lS3rkMLHKlixUa0Oea9X08UG6VWoOCK?=
 =?iso-8859-1?Q?Uh8luvQHyPAjMKCddMIl2rpCq1jWL2vpOcr66pfhWqCmsl3ZUJgjw5H4s4?=
 =?iso-8859-1?Q?/ASRkL6yFAjC6ynueF8MKeWmHV0HNdN4aPA38IxoJLTGVPeImIj1l6zSEd?=
 =?iso-8859-1?Q?hy9XmoiswdWIPWo9fLUd0rbFCEzVgItK+EMtY59OI8DFgi5ob2xvsKSRE+?=
 =?iso-8859-1?Q?Yi4ff5cs5zp0ijr/Utt0ne4TkRc6fIacKBsuyeI75vpp264Msnb5ya+EiR?=
 =?iso-8859-1?Q?vSRaSGdC0H8KKcnZyAsC6E4jwyLD26QYgCIimq5oLnaVNZGWbkO0TotYsa?=
 =?iso-8859-1?Q?mtqywwXVcEvrR2BUJqPnvr/H/2pEp5UWw97ZpfZJ4nkXmxA1kwxE2uNNaG?=
 =?iso-8859-1?Q?sRL0tS655TTvJpSNU1xBjTx8l+xngljIS0j+0Vdd3upPgZ4niwUDyPgqKS?=
 =?iso-8859-1?Q?aMirmeuKDJUNflSaNTXNTHeW6PbNtvHwt/6/e6g4e60tg4a6VHyFhFZLwZ?=
 =?iso-8859-1?Q?9/ek3sWctSNaElRGXPnHcdx/dR/eSxeJpH8hPrZNYyVYenWuKiL8w7jiBQ?=
 =?iso-8859-1?Q?aI3llf6njSsb47O4uGcikOkcfq/mc3gQSVt6IvXd1jXbaKP/PO2LbnF9zF?=
 =?iso-8859-1?Q?oNHxIbkCDc28ToC9K/Z65cgf3ixxlCGzpaf9PTKCI3djNIv5tQabV/g6WD?=
 =?iso-8859-1?Q?VG4ID0Y5U99OM6rfb9zNeI3T4I/Ev3+vwzXnO8eti+0GPFGKCQ2xq/ZXoo?=
 =?iso-8859-1?Q?4QVL0kJquJYbQO/U0A+jDN0MDkuo92Sxe0E1+jDXu28sIR8daklvSuAkrO?=
 =?iso-8859-1?Q?tw3mbrXvZzXSXLpbGpBRPUW8WmldYX+WuvNRuXgmqKl5k5XCcBYHZZrZee?=
 =?iso-8859-1?Q?++2s351fE5pwaJ/w+GNjmESJslFT738Ea2MTv0cHkZeeLo0VYztdVNFxF4?=
 =?iso-8859-1?Q?xZQu7lZRg6Y+GV7oKgLB/oez/+rGm819SO+bFDKZuTUHJ8mbNsn3+Rzl5T?=
 =?iso-8859-1?Q?/wI7w325TGw4SxFfQ6JWGOOrZBJ0vmKnxH7/k8/pqxQxjQfdCiOd8yXT5O?=
 =?iso-8859-1?Q?dIMEoB1ROEzSCWkNaF+1YXBy0IXRZ5bbK9m5SmMgYZlvQDUsVyvnXMX2HQ?=
 =?iso-8859-1?Q?/s6laDrbdXCLErz1k+PUNc3xCAtWw0xSbNiqgnlFBgCmXVMHxnRJdOisnH?=
 =?iso-8859-1?Q?LOdK52ZyJIoF7Gk/CM4glbLnoPrgbdH/L+pUGj8ynqq5epH0edrhgg1Vcr?=
 =?iso-8859-1?Q?wdBGzT+vgVVi5aa7m0oBsH8KCFGvOPDQWeV00y9Rg8iQyevpNDpQwbE/QF?=
 =?iso-8859-1?Q?mI7wykjpQjYpVKv95sEHXR6ZvApNjn8gyYELU0Ab9woDOgi2/k1yI7yEzV?=
 =?iso-8859-1?Q?5oPdoTeTx4Z/ilpNEQnizxdMoBxL1GmbgldJ+woeOtkR6Cd7MB5hwgeUsJ?=
 =?iso-8859-1?Q?YrJw8wUaM0lss7ylECgKkUWmO7GLD0+Ekl?=
Content-Type: multipart/mixed;
	boundary="_004_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_"
MIME-Version: 1.0
X-OriginatorOrg: cyronics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3P287MB0291.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a1b69ef7-ca87-4504-90ef-08dd15f13ecd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2024 12:26:44.0813
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be1a3fdc-e532-4f10-81f4-e383b8410e95
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: juNLfi9Mm3gC3gUcD+RSMaFfa8k4DssKNUqgTgsXImcgdw6EAbw0QCViShIJDTfTFw7uWIU2sn2m9TSKKE7YoJVxV0OHeKshcyNUxmiA4jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PPF9BD7DCB32
Message-ID-Hash: 7X24R5B63SOIG3KOQQNWE2FIL7GMMWGM
X-Message-ID-Hash: 7X24R5B63SOIG3KOQQNWE2FIL7GMMWGM
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sachin Waghmare <waghmare.sachin@cyronics.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/34PO5M2CBPZ6N3XAFCZ6RTYF3BAMT7OK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_
Content-Type: multipart/alternative;
	boundary="_000_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_"

--_000_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear USRP Support Team,
Greetings of the day!
I am currently working with a USRP N300 device with uhd 4.7 and gnu radio v=
3.11.  I have created a simple loopback configuration in which the data flo=
ws through the following blocks:
Rx_Radio > DDC > DMAFifo > DUC > Tx_Radio.
However, I am encountering an issue where only the receiver is working, and=
 the transmitter is not starting. My objective is to receive data and trans=
mit it back without using host-side streamers, i.e., I intend to handle eve=
rything on the RFNoC hardware blocks directly.
I have set the configuration for the transmitter using the RadioControl blo=
cks (as shown in the attached script), but I am unable to start the transmi=
tter. It seems that the transmitter is not getting activated or streaming, =
even though the receiver works correctly.
Could you please guide me on how to start the transmitter without relying o=
n host-side streamers? Any assistance or clarification regarding the correc=
t method to achieve this will be greatly appreciated.
Thank you for your support, and I look forward to your guidance.

Regards,
Nidhi



--_000_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_
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
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Aptos, Ap=
tos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font=
-size: 12pt; color: rgb(0, 0, 0);"><b>Dear USRP Support Team,</b></span></d=
iv>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Greetings of the day!</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am currently working with a <b>USRP N300 device with uhd 4.7 and gnu radi=
o v3.11.</b>&nbsp; I have created a simple loopback configuration in which =
the data flows through the following blocks:</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<code>Rx_Radio &gt; DDC &gt; DMAFifo &gt; DUC &gt; Tx_Radio</code>.</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);">
However, I am encountering an issue where <b>only the receiver is working</=
b>, and the
<b>transmitter is not starting</b>. My objective is to <b>receive data</b>&=
nbsp;and <b>
transmit it back</b>&nbsp;without using <b>host-side streamers</b>, i.e., I=
 intend to handle everything on the RFNoC hardware blocks directly.</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I have set the configuration for the transmitter using the <code>RadioContr=
ol</code>&nbsp;blocks (as shown in the attached script), but I am unable to=
 start the transmitter. It seems that the transmitter is not getting activa=
ted or streaming, even though the receiver
 works correctly.</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Could you please guide me on how to <b>start the transmitter</b>&nbsp;witho=
ut relying on host-side streamers? Any assistance or clarification regardin=
g the correct method to achieve this will be greatly appreciated.</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for your support, and I look forward to your guidance.</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"direction: ltr; margin-top: 1em; margin-bottom: 1em; font-fam=
ily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sa=
ns-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Nidhi</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
<br>
</div>
</body>
</html>

--_000_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_--

--_004_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_
Content-Type: text/plain; name="loopback.txt"
Content-Description: loopback.txt
Content-Disposition: attachment; filename="loopback.txt"; size=2577;
	creation-date="Fri, 06 Dec 2024 12:21:35 GMT";
	modification-date="Fri, 06 Dec 2024 12:24:24 GMT"
Content-Transfer-Encoding: base64

aW1wb3J0IHVoZAppbXBvcnQgdGltZQojIGZyb20gZ251cmFkaW8gaW1wb3J0IHVoZAoKIyBSRk5v
QyBHcmFwaCBJbml0aWFsaXphdGlvbgpncmFwaCA9IHVoZC5yZm5vYy5SZm5vY0dyYXBoKCdhZGRy
ID0gMTkyLjE2OC4yMC4yJykKCiMgVHJhbnNtaXR0ZXIgUHJvcGVydGllcwpyYWRpb19ub2NfYmxv
Y2tfdHggPSBncmFwaC5nZXRfYmxvY2soIjAvUmFkaW8jMCIpCnR4X3JhZGlvX2Jsb2NrID0gdWhk
LnJmbm9jLlJhZGlvQ29udHJvbChyYWRpb19ub2NfYmxvY2tfdHgpCnR4X3JhZGlvX2Jsb2NrLnNl
dF90eF9mcmVxdWVuY3koNDAwZTYsIDApCnR4X3JhZGlvX2Jsb2NrLnNldF90eF9nYWluKDQ1LCAw
KQp0eF9yYWRpb19ibG9jay5zZXRfdHhfYmFuZHdpZHRoKDEwMGU2LCAwKQp0eF9yYWRpb19ibG9j
ay5zZXRfdHhfYW50ZW5uYSgiVFgvUlgiLCAwKQp0eF9yYWRpb19ibG9jay5zZXRfcmF0ZSgxMjVl
NikKCiMgUmVjZWl2ZXIgUHJvcGVydGllcwpyYWRpb19ub2NfYmxvY2tfcnggPSBncmFwaC5nZXRf
YmxvY2soIjAvUmFkaW8jMCIpCnJ4X3JhZGlvX2Jsb2NrID0gdWhkLnJmbm9jLlJhZGlvQ29udHJv
bChyYWRpb19ub2NfYmxvY2tfcngpCnJ4X3JhZGlvX2Jsb2NrLnNldF9yeF9mcmVxdWVuY3koNDAw
ZTYsIDApCnJ4X3JhZGlvX2Jsb2NrLnNldF9yeF9nYWluKDQ1LCAwKQpyeF9yYWRpb19ibG9jay5z
ZXRfcnhfYmFuZHdpZHRoKDEwMGU2LCAwKQpyeF9yYWRpb19ibG9jay5zZXRfcnhfYW50ZW5uYSgi
UlgyIiwgMCkKcnhfcmFkaW9fYmxvY2suc2V0X3JhdGUoMTI1ZTYpCgojIEREQyBhbmQgRFVDIFBy
b3BlcnRpZXMgKGZvciBkb3duY29udmVyc2lvbiBhbmQgdXBjb252ZXJzaW9uKQpkZGNfYmxvY2sg
PSB1aGQucmZub2MuRGRjQmxvY2tDb250cm9sKGdyYXBoLmdldF9ibG9jaygiMC9EREMjMCIpKQpk
ZGNfYmxvY2suc2V0X2lucHV0X3JhdGUoMTI1ZTYsIDApCmRkY19ibG9jay5zZXRfb3V0cHV0X3Jh
dGUoMWU2LCAwKQoKZHVjX2Jsb2NrID0gdWhkLnJmbm9jLkR1Y0Jsb2NrQ29udHJvbChncmFwaC5n
ZXRfYmxvY2soIjAvRFVDIzAiKSkKZHVjX2Jsb2NrLnNldF9pbnB1dF9yYXRlKDFlNiwgMCkKZHVj
X2Jsb2NrLnNldF9vdXRwdXRfcmF0ZSgxMjVlNiwgMCkKCiMgRE1BIEJsb2NrIGZvciBoYW5kbGlu
ZyB0aGUgZGF0YSBiZXR3ZWVuIGJsb2NrcwpkbWFfYmxvY2sgPSBncmFwaC5nZXRfYmxvY2soIjAv
RG1hRklGTyMwIikKIyByZXBsYXlfYmxvY2sgPSBncmFwaC5nZXRfYmxvY2soIlJlcGxheSMwIikK
CiMgQ29ubmVjdCBibG9ja3Mgd2l0aG91dCBob3N0LXNpZGUgc3RyZWFtZXJzCmdyYXBoLmNvbm5l
Y3QoIjAvUmFkaW8jMCIsIDAsICIwL0REQyMwIiwgMCwgVHJ1ZSkgICMgUmFkaW8gLT4gRERDIEJs
b2NrCmdyYXBoLmNvbm5lY3QoIjAvRERDIzAiLCAwLCAiMC9EbWFGSUZPIzAiLCAwLCBGYWxzZSkg
ICMgRERDIC0+IERNQSBGSUZPCmdyYXBoLmNvbm5lY3QoIjAvRG1hRklGTyMwIiwgMCwgIjAvRFVD
IzAiLCAwLCBGYWxzZSkgICMgRE1BIEZJRk8gLT4gRFVDCmdyYXBoLmNvbm5lY3QoIjAvRFVDIzAi
LCAwLCAiMC9SYWRpbyMwIiwgMCwgRmFsc2UpICAjIERVQyAtPiBSYWRpbwoKIyBDb21taXQgdGhl
IGdyYXBoIGFmdGVyIGNvbm5lY3RpbmcgYWxsIGJsb2NrcwpncmFwaC5jb21taXQoKQoKIyBDcmVh
dGUgU3RyZWFtQ01EIGZvciBSWCBhbmQgVFgKcnhfc3RyZWFtX2NtZCA9IHVoZC50eXBlcy5TdHJl
YW1DTUQodWhkLnR5cGVzLlN0cmVhbU1vZGUuc3RhcnRfY29udCkKcnhfc3RyZWFtX2NtZC50aW1l
X3NwZWMgPSB1aGQudHlwZXMuVGltZVNwZWMoMC4wKSAgIyBUaW1lc3RhbXAgZm9yIHN0YXJ0IG9m
IFJYCgp0eF9zdHJlYW1fY21kID0gdWhkLnR5cGVzLlN0cmVhbUNNRCh1aGQudHlwZXMuU3RyZWFt
TW9kZS5zdGFydF9jb250KQp0eF9zdHJlYW1fY21kLnRpbWVfc3BlYyA9IHVoZC50eXBlcy5UaW1l
U3BlYygwLjApICAjIFRpbWVzdGFtcCBmb3Igc3RhcnQgb2YgVFgKCiMgU3RhcnQgUlggYW5kIFRY
IHN0cmVhbXMgZGlyZWN0bHkgKHRocm91Z2ggUkZOb0MgYmxvY2tzLCBub3Qgc3RyZWFtZXJzKQpy
eF9yYWRpb19ibG9jay5pc3N1ZV9zdHJlYW1fY21kKHJ4X3N0cmVhbV9jbWQsIDApCnR4X3JhZGlv
X2Jsb2NrLmlzc3VlX3N0cmVhbV9jbWQodHhfc3RyZWFtX2NtZCwgMCkKCiMgTWFpbiBsb29wIHRv
IGtlZXAgdGhlIHByb2dyYW0gYWxpdmUKY291bnRlciA9IDAKd2hpbGUgVHJ1ZToKICAgIGlmIGNv
dW50ZXIgPT0gMjoKICAgICAgICBicmVhawogICAgY291bnRlciArPSAxCiAgICB0aW1lLnNsZWVw
KDUpCiAgICBwcmludCgiSSBhbSBhbGl2ZSEiKQoKIyBTdG9wIHN0cmVhbWluZyB3aGVuIGRvbmUg
KGJ5IHN0b3BwaW5nIHRoZSBSWCBhbmQgVFggYmxvY2tzKQpyeF9yYWRpb19ibG9jay5pc3N1ZV9z
dHJlYW1fY21kKHVoZC50eXBlcy5TdHJlYW1DTUQodWhkLnR5cGVzLlN0cmVhbU1vZGUuc3RvcF9j
b250KSwgMCkKdHhfcmFkaW9fYmxvY2suaXNzdWVfc3RyZWFtX2NtZCh1aGQudHlwZXMuU3RyZWFt
Q01EKHVoZC50eXBlcy5TdHJlYW1Nb2RlLnN0b3BfY29udCksIDApCgpwcmludCgiU3RyZWFtaW5n
IGNsb3NlZC4iKQoK

--_004_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_PN3P287MB029100B601063D556709482893312PN3P287MB0291INDP_--
