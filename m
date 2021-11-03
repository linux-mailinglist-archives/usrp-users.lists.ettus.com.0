Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB68844496A
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 21:17:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D926383F5C
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 16:17:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="Fw0cB+OF";
	dkim-atps=neutral
Received: from NOR01-OL1-obe.outbound.protection.outlook.com (mail-ol1nor01on2131.outbound.protection.outlook.com [40.107.224.131])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A0F5383A50
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 16:16:19 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NjsyTg0bFNWR/n27fHbTj/Lr5ftC9HI57SEjJmfcp2HXc3OJBvaoDe9cGkQHIhLyE4bl0mbkciy3S3M/jJ9nZgGwTO3Mj2eFta01hzRU0Q9p7HTBZi9wAvHuwenICKeDLTNSehhNvfM2qXmJcqL329Ut0EBA/DdEaz1ITOgRenwmIJqVfdBxwC4LWg1epFlp7Kprv2/OlBeNE0Yaz6q6IA+MDD0Zk3DPtUUiE8gA+FlHshB0Gxsuo5FBjpWOHLBZwACv41EwavL7/IAIedqIUhHxwf5zyRYP7Q0G33BOyQlmwnyc8VabCZGTWKcuhBIZALwLAlsJ2S+EgCJ1CmIcig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jM5Ww6UvUnhORbTiWSFfW2AQKf7nGR5RVp/QUfo+0E0=;
 b=ixNJF62wS4LZdgaHOvpGIaXin1kbgR79RZJoQEvJLkKhRbu6DTi78U5LSLUehyOcmqo1xgiLs6YK0A+Z7hTf4k27tlE0x3Vr1H2bd7SVS57j1ohzqi0ohfoInK+V6Mb7NWNPbcXO7Nrb560Wt6Kn16lAhf3I0pp9gntGZmrBc3rknOKmofIZpy8U8nwpLYlU3Mynof+h8uIL1Urg+OaZucG1mL1PDUP862in1xdLWs37G9ujSbeLbkGO9WDdCZzMaJ+CAfVlQ+QUogITHFdcuHcfgvQLa0okUEgsGewfenT4QGSr71su7/RPjaYFQ01xmA0YomY1Eh5leNWhOrTqvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jM5Ww6UvUnhORbTiWSFfW2AQKf7nGR5RVp/QUfo+0E0=;
 b=Fw0cB+OFDsJWspIE9HkQ3y9Y5IShrqJ695l8U5St3+t6nbeC2/yTrJdQRtmeDAMIZ7sKOXMcGdXBXEpMHJ7aOdcsIT1K1XQXYXodkIycwL7gIvlLHIhO5lcnMZPWEkdvoPXhpgXKdaIbx8xUDtwGeXk3DMiZYmRrMcghmasIbDQTBt65EO4peZLIcudJ99VWeNeF0tWjW7iazMsLuSBm2OaPJ0ZkSUtKpYYhEpazb8qnFvCBTDOGlcvkjtAmJ7JUAJER50+Yl3JXzC24daBKB44uBj8q+xrO37qkMdk0tK0mWNUCFF/8K6QwLu3DIrKuFpJnL9wr795TVtHKGBZfVA==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 OS4P279MB0402.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:1c::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.10; Wed, 3 Nov 2021 20:16:17 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a%5]) with mapi id 15.20.4649.020; Wed, 3 Nov 2021
 20:16:17 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: LO frequency change
Thread-Index: AQHX0OuUDgLx41MDwkCiEfvTJ4xFjavyO7mAgAAAZBqAAADzzA==
Date: Wed, 3 Nov 2021 20:16:17 +0000
Message-ID: 
 <OL1P279MB00831E0624666113C1F2B544A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
References: 
 <OL1P279MB00832E3402FDBDD18E8F2EE7A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <5e9e826a-79a1-f0f1-6e6b-b44ddc6864f5@gmail.com>
 <OL1P279MB0083EDF8974B201E9C6889E1A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: 
 <OL1P279MB0083EDF8974B201E9C6889E1A08C9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cda7692-f925-4592-25c7-08d99f06cb12
x-ms-traffictypediagnostic: OS4P279MB0402:
x-microsoft-antispam-prvs: 
 <OS4P279MB04020A122F86A79F5C7B24D4A08C9@OS4P279MB0402.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aCMYf2OC/csNLEHGNivtjz8FZF01Kl8p0DrWEyElPtrMZDogQ8PHDgfpdW5uPkXZy2VcCraAv5UPy4m7diHE8OGwzCwxhHrlsTIPyZ0JqylpkjG7DmzJg8++92HfADtdaNgjKBdj50//7BAro9FsWgaslIhq+IKrxfV7DBDTxw+AISjFQhWKm3d5HAy07jIcLfuptmlxlvXjM4bE+MytvJ+anyJcqX82MFyAAdIROCKkcLAALxtXwoUezCmYBBimz8go64kiZlCGR+bXwlMHFOsqzIDy03KH51bAPovIrrN54Z/587hDU6jp3WvLpx2AnEGpvCWukZx5wNZD/EsQpNALcAj4rRXnd22OX9mesT+liEWbJsFTGkSvkjmNG8NPtPuwpFsbDMRD0FvD2YgfaEza4pDIGfm4I1GnQA9pKs3P20p1OiUUebDOPj7Z2E35udNsuj3zd6Yu85peuPdA9kzX0O6cJFMQK56J9JH+bTKiQmn5VX7e1RyTffHj024rwjhHece1k0UArchlYfC7z+9Q/+I+TYOTjzIfKsCPaK/h3oQMmFg1nSVyiLRzkFwo1m1jFdHC37WuCEXczsY2L6/9MXo4kbeeo7SQ0elgbmutMcsBPg7c1gvJXawcBTpAAOE1vNW5plVvccNi0OuUBSnevkXEI/mpHu8Gn1q5R/CuGgjVFX5+pzt3YEJBqNpJlmTFt2V23KAVXzVUOnBpDA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(346002)(396003)(376002)(366004)(66946007)(55016002)(38100700002)(7696005)(66574015)(8936002)(83380400001)(76116006)(33656002)(26005)(2906002)(2940100002)(52536014)(66446008)(64756008)(9686003)(66476007)(71200400001)(53546011)(6506007)(66556008)(8676002)(38070700005)(86362001)(6916009)(5660300002)(316002)(122000001)(186003)(508600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?4+bOfnSiUhM7IgaG7389z6z03AI/01a3puSYZ3oByxmSv1mxj0eTCh9dKa?=
 =?iso-8859-1?Q?WkhiX3bE6908iF/X4FY2cA2jVIPRF+MyI2vCvjg/7VMyUODO7BNcPNbfIs?=
 =?iso-8859-1?Q?6OmHS7HLEfu0HQaBDjW1bOPXB547cc4p0JVz88q+E5rNiRUOFfEyyLS8aK?=
 =?iso-8859-1?Q?epuJ7TQmPVM2wYVwYZzC/2NGhcDLd8cE4xSue0SMYVCeAH+yz68Y8CT5qT?=
 =?iso-8859-1?Q?06UlvA8f+zdHSQBa7a0BhB73BzuGMEqz/Ul+akDuuY75+Zhw072V4VA4z/?=
 =?iso-8859-1?Q?rMb9U+sTpoj0RonDIK1dFsQ95gIlpIN9NT4/P2VHTHCx6B0zZRSkVvGno8?=
 =?iso-8859-1?Q?kp4D9okFLcV2BOfEZn3kfQgqgOZfElSYQCpUAN9WUgcCDA7ZYWvNkhVLeS?=
 =?iso-8859-1?Q?Tw0q0RG+aRWCxJfSu7ZO3lynbWGalFe4vLjMqcernS4PZN+cust/hZJECD?=
 =?iso-8859-1?Q?JnT6Z8QI62K5DyWU8tiC9BGBNSMd4UOEkBCTIjRXd/n4hdWo+5SKHuY9kv?=
 =?iso-8859-1?Q?piIqVRM/DPXFiQNWGoblXdtKX8/1T4HEr50J9BfohFzfeGF4x1sAi3lGxa?=
 =?iso-8859-1?Q?srRKRPap5HdHP914u0Z5cIw8D8LRA9XCaG1je4xdkuOTG4MO9l+Qm4gYDp?=
 =?iso-8859-1?Q?f/okiCD5kWYiXGQ2ohG8Jv1VHk7xIpbvD+KtRaN5IAWwNOpS5u804cVOSl?=
 =?iso-8859-1?Q?uXQZz0OFnFM7UBf49UC8AIbEysR3Gc3VmwsnyqjhMR0lScCCHH+H3ekFSV?=
 =?iso-8859-1?Q?vrIj22ikvhLEothnTIyxg0D5fRzhiJkVtYQdecNW0L58Q21X1vFxB10Gjf?=
 =?iso-8859-1?Q?mtog54UEpdhxoGylLmKFnlRE21mP4HbuGa6RFQWOPzjajQVFlao/F4Gq/U?=
 =?iso-8859-1?Q?yfDGTXD84qb24hV8o2/WPmBhncuyqeYrAaYRKqgXeSoJ7yjjP4QPDCbIy6?=
 =?iso-8859-1?Q?2MXc0zpHP10TU0vZ3xykCHX1VqzpuDgPYFlfNwc7JQSrB2SGglG8Y5Dm2m?=
 =?iso-8859-1?Q?Z4pZ7Y2II8vMM8SE+YZGs+gEk8fNHIkdzbC+FmXOrgwUvHGm71ID87sFp4?=
 =?iso-8859-1?Q?ee2x9yUByoLq7TMF76ofhKURZNjlWZmi7H0F6qKu48Gt8LNIEqe4CVh8+e?=
 =?iso-8859-1?Q?dGdekS7Q1SzPIzF94bY1RWiFzO4ChK+6ZrNr46R1gZdPw5J0OO8o/ehm7l?=
 =?iso-8859-1?Q?NZ9NuJIp8iIi7B942US2lTgidonxvl5fpG6Xhk6+PKC4cCpzvkzN2zoj7p?=
 =?iso-8859-1?Q?FC9DXiTdXA38RPIcF9a8sqqWRvM+fKxNkXF4y/ltyA5SoRpD/FaHyrdBQq?=
 =?iso-8859-1?Q?6qYqBZpMp22V7tPemfnnUmLFXG5naKm9u40PLvxKT20HQ1L5ZupuxkExhs?=
 =?iso-8859-1?Q?nrNy7ogm1kFXfxFb0KZKwMYQHsCkjED44IObSNTvM569ufoqTM4XorC87G?=
 =?iso-8859-1?Q?rc2V+spDf+EqEp/Aav4+Uf1ZaTa3tl6UtAPtNw/Wvizc7GWLviNHaAADZ1?=
 =?iso-8859-1?Q?34sxTevVjT/JHQlzCrsKwD7zxRDUzmAdonc1kdLtMnxbr9C75/hXDrjMp6?=
 =?iso-8859-1?Q?yMILqsENJ7Dc3+ETM8X/peHWOajPdTsL922Tk6uCZIPT/6pKOfULUSOpjx?=
 =?iso-8859-1?Q?AUbl7Qra7UGv0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cda7692-f925-4592-25c7-08d99f06cb12
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 20:16:17.4523
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Ei5fSuz5y5SYt1ILPFe7b2aqOvuFX98bgceJZTf5I/ix1twXK18BGvLiPOwYKiV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS4P279MB0402
Message-ID-Hash: ZWKJXGVDNB73TPEBFRDXRGZD3LAO6LVZ
X-Message-ID-Hash: ZWKJXGVDNB73TPEBFRDXRGZD3LAO6LVZ
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO frequency change
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I3HXNUJNXDRPMBOH5SNAUNDKOAVIQQPB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1786086904020398568=="

--===============1786086904020398568==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB00831E0624666113C1F2B544A08C9OL1P279MB0083NORP_"

--_000_OL1P279MB00831E0624666113C1F2B544A08C9OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



Good point. I am using an E310, program runs on the unit itself (No network=
 mode).

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, November 3, 2021 9:10:01 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: LO frequency change

On 2021-11-03 16:00, Skorstad, J=F8rn wrote:
Hi all,

Started rewriting my code to work with UHD 4.1 recently. I notice that the =
command set_rx_frequency() in uhd::rdnoc::radio_control takes about 104 ms =
to complete, no matter what frequency is set.

Is this blocking time something like worst case scenario time it can take t=
o retune the LO? I think this command was faster in UHD 3.8.

Is it possible to do the LO retuning faster manually somehow?

BR
Jorn





_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


You haven't mentioned which of MANY USRP and USRP+daughtercard combinations=
 you're using, so it's impossible to say.




--_000_OL1P279MB00831E0624666113C1F2B544A08C9OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div id=3D"id-385a43c5-4b83-4740-acec-19bee89fb05f" class=3D"ms-outlook-mob=
ile-reference-message" dir=3D"auto">
<div style=3D"font-family: sans-serif; font-size: 12pt; color: rgb(0, 0, 0)=
;" dir=3D"auto">
<br>
</div>
<br>
Good point. I am using an E310, program runs on the unit itself (No network=
 mode).&nbsp;</div>
<div id=3D"id-385a43c5-4b83-4740-acec-19bee89fb05f" class=3D"ms-outlook-mob=
ile-reference-message">
&nbsp;
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, November 3, 2021 9:10:01 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: LO frequency change</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2021-11-03 16:00, Skorstad, J=F8rn wrot=
e:<br>
</div>
<blockquote type=3D"cite">
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
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___=0A=
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=0A=
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>=0A=
</pre>
</blockquote>
You haven't mentioned which of MANY USRP and USRP+daughtercard combinations=
 you're using, so it's impossible to say.<br>
<br>
<br>
</div>
<br>
</div>
</body>
</html>

--_000_OL1P279MB00831E0624666113C1F2B544A08C9OL1P279MB0083NORP_--

--===============1786086904020398568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1786086904020398568==--
