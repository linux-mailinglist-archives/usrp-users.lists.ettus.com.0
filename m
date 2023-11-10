Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA387E9BBA
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 13:00:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69059383BD0
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 07:00:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699876855; bh=b3PAJkmGWpRv4ZEWL/CXjvkt+aEvgoSHhK+P3ojZMiI=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=lH92ljusnmUNhOSlCyR3wliQLjgmolLtepyODelquz5VzIpbk54UzyRWwL6GwKlpe
	 4wfbtqmgoiAM0b4Oy9Ww0HHLtEFudgYQQV0UI0yxN7Qn3bQ0AoJmjTjfbOERtHXrdo
	 epLafpbAOfnVRuF2Rsj9ViXyFf+aC7erVdxZuR5epX9/3NTaDPbeiND9beMJYuO8Ow
	 cy96skOFt4kycnXrr4RcCeb6i4ofAxfXHT8ilKQRv8KPKUW/RiECtEnPvGcwZHQaoo
	 DLzniKky08CP8LxzAPfhhlXVU1gPv/Dc+M03q1BsSOFeNr61hT35snfIR2F3LZY6Fi
	 vTRf2oeOnvn6g==
Received: from out162-62-57-252.mail.qq.com (out162-62-57-252.mail.qq.com [162.62.57.252])
	by mm2.emwd.com (Postfix) with ESMTPS id E7A31384A31
	for <usrp-users@lists.ettus.com>; Fri, 10 Nov 2023 04:44:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=qq.com header.i=@qq.com header.b="mUbodYGd";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1699609456; bh=pF1jGZFnrT4jSgstcHkGvoID8ojMIlBfrOAvvwyW5Fc=;
	h=From:To:Subject:Date;
	b=mUbodYGdmgUUlI01MKgT2vyRHeBf9hXFlnomEA9lKQypetxe2jK644B3IYHpJ9JdD
	 VjHM8JI3+tPjr+EeOB/XZiSFm4HR7klhbhwfE73rwX0OBMT2/tgrThWfSYYq4mCItJ
	 mLywJhwEAtHcFJwni36joIggaCKhhFS/1V/iK25Y=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-XMAILINFO: OGrDiTRVoknsM9trMF1zoTCElmwWpbCfmdGDQm7pA1b8o7pFduUuZdnKHyDTcW
	 J1p31ZXrF4qMtl3U/QUt9oT9PUy3eGNBrziGZXduhbDRy+UcRojilj/oaSj1IRr4xf2hKFTtIHVNU
	 nml4kTk4FAEgeA0DC8v0Snp7Lf6jXUuMXu/+Qts/Q6oSwVUdWpev0WBVoMUmxwbt/0g3+DqGMpifL
	 RwTHtW8iV3HTauXec7nEwhZfTIgjl6mkHOsa6A4GV5bUiKUykKfyytP5EOabmWoLEPuX4bVV3sGmd
	 nI0SSxNyaWKa+BUBFrgfMMtMj65y/pmo7B8NoNMQ+bMjH17LiJaDACwuwbcX2VEfgpm0trEj6Fvcu
	 MulKfxOf5rsl26hu5/sDMl522dbBXs86qJPDBRtHzY8QNTLpk73bCFiiZE2aCOM2MiL/3bp+1MXmn
	 mP0Ko4qfb5zg0GfIecJRQh4h5zAEGa0yvoOiuueomQ4SbFz0wIEe88sgrpw5T+JTHgKzy2lIHIlV1
	 Y4rQfzoEPcvR/1XH/m1B4888QAIScCJWbiWVdFNY2D/FdwZgxbWtEKbuPofrObWATd9RWetjoK0Qr
	 qqUBNWcVOOWKCgHsJG5berwCx0NCBZANqPlIz6vE9Xr6h6LAVW/DH3SG6kOeWdbZ0pVdLd0eCq8O1
	 +A1k3jf4faoEo3TPYu6b+/T2NQ8oeapSJe2wigmNr6sO4b7FQ9n6sueT0waxYyV3xWaz+BI6d8+6o
	 O96HjlKbpIZKVjJG0UFXboEzqbMWzRe8qZHPDgGn0OMXQ1c6f0FWyKeRygnHiUxVxdirgobKtHqZz
	 rE1x6v5szOvPv3/NDpFAEQvh4KwOMLHBl+mxVFx64sKztVOMH+JpErMb6vWsGvGBfVI9sJ+HNVEcx
	 Q+lMjmno/AnDcmu+E8MYRNK7NGi4DL2zgjj03VYFFOkeUOrFspBiQnzcgcRzBzAOaHWztw/8Z42g0
	 jFlFVBjmtzfAYXbHIcjMigebMYW9Va6tGHymQNwT2lvUep6vYz
To: "=?utf-8?B?dXNycC11c2Vycw==?=" <usrp-users@lists.ettus.com>
Mime-Version: 1.0
Date: Fri, 10 Nov 2023 17:44:15 +0800
X-Priority: 3
Message-ID: <tencent_1F60E38847DC36C1CD99948ADD9F64F09006@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmapsza9-0t1699609455tsskzlc23
X-MailFrom: 38426014@qq.com
X-Mailman-Rule-Hits: suspicious-header
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests
Message-ID-Hash: UAQUD6I2KZTX7XPM5JDY5V5CBCJE3P47
X-Message-ID-Hash: UAQUD6I2KZTX7XPM5JDY5V5CBCJE3P47
X-Mailman-Approved-At: Mon, 13 Nov 2023 07:00:20 -0500
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can RFNoC blocks connected cross USRPs?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UAQUD6I2KZTX7XPM5JDY5V5CBCJE3P47/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Romander via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?Um9tYW5kZXI=?= <38426014@qq.com>
Content-Type: multipart/mixed; boundary="===============4513097439786175917=="

This is a multi-part message in MIME format.

--===============4513097439786175917==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_654DFB6F_544152C0_7C2245A5"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

------=_NextPart_654DFB6F_544152C0_7C2245A5
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG/vvIxFdmVyeW9uZS4NCkNhbiBJIHN0cmVhbSBkYXRhIGJldHdlZW4gdG93IHVzcnAg
ZGV2aWNlIGRpcmVjdGx5IHdpdGhvdXQgY3Jvc3MgaG9zdD8NCiZuYnNwO1RoYW5rIHlvdSE=

------=_NextPart_654DFB6F_544152C0_7C2245A5
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PGRpdj5IZWxsb++8jEV2ZXJ5b25lLjwvZGl2PjxkaXY+Q2FuIEkgc3RyZWFtIGRhdGEgYmV0
d2VlbiB0b3cgdXNycCBkZXZpY2UgZGlyZWN0bHkgd2l0aG91dCBjcm9zcyBob3N0PzwvZGl2
PjxkaXY+Jm5ic3A7VGhhbmsgeW91ITwvZGl2PjxkaXY+PCEtLWVtcHR5c2lnbi0tPjwvZGl2
Pg==

------=_NextPart_654DFB6F_544152C0_7C2245A5--

--===============4513097439786175917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4513097439786175917==--
