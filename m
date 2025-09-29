Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A566FBA8D7B
	for <lists+usrp-users@lfdr.de>; Mon, 29 Sep 2025 12:15:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCB3E3861FD
	for <lists+usrp-users@lfdr.de>; Mon, 29 Sep 2025 06:15:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759140942; bh=oQFDME4as8SCOrR1RV5+y8sALFk6NMv+Nw5M5kvvp7U=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MXCG4RPB7IgQ5naFUB6bM5R07fpsIE5gsuxvmEmbYO/lnQfnmSI8x9SYIPbJZ3SNc
	 P+saT9dtRB4pFP3HZeLrKTL0vnXemQ3XcnKVPAgqyqBqicZ+54zEP+bhWq62zkou4Y
	 x1ivOD1tiL79D/SckE+RdnCuo52htLA78Txdt2VDqFUg6flSSL/00hkgNQF8e1HYsS
	 HRP60R3xRY0E8NFJMfrOgXxpfpALPcRUH0mjkJFusItl1QdsCumHUntezi/BWTSPdc
	 9O+GJxdwEUeoMoYbth6vZARScczvCLLBcihcW+T8reU4m/YZhzG9uSGk+Jr6/upfZE
	 xcBO2b1L8vSHA==
Received: from corg.destevez.net (corg.destevez.net [51.75.17.244])
	by mm2.emwd.com (Postfix) with ESMTPS id 28986386190
	for <usrp-users@lists.ettus.com>; Mon, 29 Sep 2025 06:15:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (4096-bit key; unprotected) header.d=destevez.net header.i=@destevez.net header.b="LPSEZKaB";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=destevez.net; s=corg; h=Content-Type:Subject:From:To:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kmNip15lOtxAXQdoMSUj8kekUN+TYJPli9iCXo4y2pQ=; b=LPSEZKaB+66jQ0KqABRtSF01v6
	Ai5J0R2nJAT6zPc/4ePPMwdJz+FdsYxfjaQ6X8bHxW9Roz4ytv2O8iniaycNvRMJRnkJ64sIrO3WP
	NE999Xxsi260bMUPuvhI+RptGQdDLcBkcHPzH8toP2blXZZX8o8p3BHdPGm5sjPA8PV3IWOd5KNJL
	bh7VLAFtrhRF7ONI000FyYJr7rNaewVJtwZnFycEa6p2MhriktJcou+FO2MnVZnf8kfyDiOj6WP9s
	doE5TVVbv3sUQ2z8l5I7ev/9ucXD73ojSI5mTetV/83JFUzVUkiu477qQNkBXrdJDSn/phepNxdQV
	T8LeIg3v3vNMYGlWVO3xFBbHG1KfKilXEkIrOivGb1Yg3mMsk0gLhEX27DnaKf2jRysHga9HAz4EA
	XUmUbzwPWG/FfWPafwK+MGnvy5ML/ujEJq5Fr3TlCgAz2O8WfL6u2Zx7EYIHX5NJEV9VMY+Hac+C+
	vX0Xp5KQdBaFpbAqSqqspySVbUIF+F9gPNqwXLZOF5gqxwShr0XlW4/DC8JUH0MZz65/CEAl43VA3
	LCFoydnS0xFKvNvNmiAICLd2cxolYW2fotCWoo344j5ij+TN4EuEdUBPVM03yLb4mO9ayV5yqQSUF
	ky2E//TGdjev5Vhmf896sPDW3F5zEJ7npexABRo6c=;
Received: from [2001:470:6915:1:2e0:4cff:fe68:540]
	by corg.destevez.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.98.2)
	(envelope-from <daniel@destevez.net>)
	id 1v3Auh-00000001xGC-3kcA
	for usrp-users@lists.ettus.com;
	Mon, 29 Sep 2025 12:15:24 +0200
Message-ID: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Date: Mon, 29 Sep 2025 12:15:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
Content-Language: en-US
From: =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
Autocrypt: addr=daniel@destevez.net; keydata=
 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
Message-ID-Hash: BJWNSQWVRFB23OUBCPPHYPS6KJAPUXHS
X-Message-ID-Hash: BJWNSQWVRFB23OUBCPPHYPS6KJAPUXHS
X-MailFrom: daniel@destevez.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Half duplex with USRP B2xx and GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BJWNSQWVRFB23OUBCPPHYPS6KJAPUXHS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6949046853566534544=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6949046853566534544==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7UVEwc7YJJWSsIhRWYx56ZVI"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7UVEwc7YJJWSsIhRWYx56ZVI
Content-Type: multipart/mixed; boundary="------------mAHLJ1BuTNXc30GunZU8ipni";
 protected-headers="v1"
From: =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
To: usrp-users@lists.ettus.com
Message-ID: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Subject: Half duplex with USRP B2xx and GNU Radio

--------------mAHLJ1BuTNXc30GunZU8ipni
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgYW0gaW1wbGVtZW50aW5nIGEgaGFsZi1kdXBsZXggbW9kZW0gd2l0aCBH
TlUgUmFkaW8gYW5kIGEgVVNSUCBCMnh4IA0KdGhhdCB1c2VzIENTTUEgdG8gY29udHJvbCBt
ZWRpdW0gYWNjZXNzLiBJIGhhdmUgYSBHTlUgUmFkaW8gZmxvd2dyYXBoIA0Kd2l0aCBhIFVT
UlAgU291cmNlIGFuZCBVU1JQIFNpbmsgYmxvY2tzIGJvdGggc2V0IHRvIHVzZSB0aGUgVFgv
UlggDQphbnRlbm5hLiBUaGUgVVNSUCBTaW5rIGJsb2NrIHVzZXMgYnVyc3QgdHJhbnNtaXNz
aW9uLiBXaGVuIGEgYnVyc3QgaXMgDQpzZW50LCB0aGUgQjJ4eCBhdXRvbWF0aWNhbGx5IHN3
aXRjaGVzIHRoZSByZWNlaXZlIHRvIHRoZSBSWDIgcG9ydC4NCg0KVGhlIGlzc3VlIGlzIHRo
YXQgdGhlcmUgaXMgZW5vdWdoIGxlYWthZ2UgdGhyb3VnaCB0aGUgUlgyIHBvcnQgdGhhdCB0
aGUgDQpzeXN0ZW0gaXMgYWJsZSB0byByZWNlaXZlIGl0cyBvd24gdHJhbnNtaXQgcGFja2V0
cyB3aXRoIGdvb2QgU05SLiBUaGlzIA0KaXMgYSBwcm9ibGVtIGZvciB0aGUgQ1NNQSBzeXN0
ZW0gYmVjYXVzZSBpdCBtYWtlcyB0aGUgc3lzdGVtIGRldGVjdCB0aGF0IA0KdGhlIGNoYW5u
ZWwgaXMgYnVzeSB3aGlsZSBpdCBpcyB0cmFuc21pdHRpbmcgaXRzIG93biBwYWNrZXQuIER1
ZSB0byB0aGUgDQpsYXRlbmN5IGJldHdlZW4gdGhlIFJYIGFuZCBUWCBzdHJlYW1zIGluIEdO
VSBSYWRpbywgdGhpcyBwcmV2ZW50cyB0aGUgDQptb2RlbSBmcm9tIHRyYW5zbWl0dGluZyBi
YWNrLXRvLWJhY2sgcGFja2V0cyAod2hpY2ggaXMgYWxsb3dlZCBhbmQgDQpleHBlY3RlZCBi
eSB0aGlzIENTTUEgc2NoZW1lKSwgYmVjYXVzZSB3aGVuIHRoZSBzZWNvbmQgcGFja2V0IGlz
IGFib3V0IA0KdG8gYmUgc2VudCwgdGhlIG1vZGVtIHJlY2VpdmVyIGlzIHN0aWxsIHNlZWlu
ZyB0aGUgZW5kIG9mIHRoZSBwcmV2aW91cyANCnBhY2tldCBhbmQgZGV0ZXJtaW5lcyB0aGF0
IHRoZSBjaGFubmVsIGlzIHN0aWxsIGJ1c3kuDQoNClRvIHNvbHZlIHRoaXMgaXNzdWUsIEkg
d291bGQgbGlrZSB0aGUgVVNSUCBTb3VyY2UgdG8gcmVjZWl2ZSBlaXRoZXIgDQp6ZXJvcywg
bm8gc2FtcGxlcyBhdCBhbGwsIG9yIHNvbWV0aGluZyB0aGF0IGF0IGxlYXN0IGRvZXMgbm90
IGhhdmUgc28gDQptdWNoIGxlYWthZ2Ugb2YgaXRzIG93biBUWCBzaWduYWwuDQoNCklzIGl0
IHBvc3NpYmxlIHRvIGRvIHRoaXMgZWl0aGVyIGJ5IGFwcHJvcHJpYXRlIGNvbmZpZ3VyYXRp
b24gaW4gR05VIA0KUmFkaW8gb3IgVUhEPw0KDQpJJ3ZlIGJlZW4gc3R1ZHlpbmcgdGhlIHNv
dXJjZXMgb2YgVUhEIGFuZCBHTlUgUmFkaW8gdG8gc2VlIGhvdyB0aGlzIA0KY291bGQgYmUg
ZG9uZS4gVGhlIG9ubHkgdGhpbmcgSSBoYXZlIGZvdW5kIGlzIHRoYXQgdGhpcyB3b3VsZCBi
ZSANCnBvc3NpYmxlIHdpdGggYSBzbWFsbCBjaGFuZ2UgdG8gdGhlIEZQR0EgaW1hZ2UuIEZv
ciBpbnN0YW5jZSwgdGhpcyBsaW5lDQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2Vh
cmNoL3VoZC9ibG9iL21hc3Rlci9mcGdhL3VzcnAzL2xpYi9yYWRpb18yMDAvcmFkaW9fbGVn
YWN5LnYjTDQ0Ng0KDQpjb3VsZCBiZSBtb2RpZmllZCB0byByZXBsYWNlIHRoZSBSWCBzYW1w
bGVzIGJ5IHplcm9zIHdoZW5ldmVyIHJ1bl9yeCBpcyANCmFzc2VydGVkLg0KDQpIb3dldmVy
IEkgd291bGQgcHJlZmVyIG5vdCB0byBidWlsZCBhIG1vZGlmaWVkIEZQR0EgaW1hZ2UgZm9y
IHRoaXMgDQpzeXN0ZW0sIHNvIEkgd2FzIHdvbmRlcmluZyBpZiBvdGhlciBzb2x1dGlvbnMg
ZXhpc3QuDQoNCkJlc3QsDQpEYW5pZWwuDQoNCg==

--------------mAHLJ1BuTNXc30GunZU8ipni--

--------------7UVEwc7YJJWSsIhRWYx56ZVI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOn0gFAd3OQG8ow6EtFwrk3lBwykFAmjaXDYACgkQtFwrk3lB
wymLrA/8D01ek8uOOPsbTnxvaLlIjwFcFA7GEwYeRMmF87IZfDKQroSH2xuOoSKz
Fz48sHEW46X7uYkscxDvfMiUp+beIH8mVIPo4n4GZ0SEb8S1CmBB01od4G1ItNC0
OAilgYJKY3TwZTDXGGtIkcOhKjpgJSHKPLYn3s6U42bY4cG6XwKy0sz5jw50TaUe
eGfgZZ2SgFlyauRdt5xOVG88OM797dEuTCOVAnKCmJR9NPTr6UyTFwd9d9WJFRJX
OGyvlEr33/TfclhKWQtMOBiKyySYogzPTmfkB3DmUxqszDKI0UCG8ErYHcSoYs19
I4G/QOcEERKaA2SgZPaD5+r+dx2YQ0EOMX+hHk7GtWhbjaImAgUd+O1fSMJ+MVha
ZAOkrrwBdn1AmqeLLsEyf/Il7tPk5sVQyR93CKGBt3h40WxcQho64MIgNw3vIyV1
cUUFPLy5kyXFMkNJt5d+xuWOJfK7xHrFqpv7WwE++MkvMrLDw6wxBY1F/DnlbK+l
S4TxE4W/cQ1Rx5k71hOY+cG4TY8eOBpaoCuYc9sIaZU37m2ps5+ucMMo125Bcxej
0IaLlLnofxgZ5pAg11yFkRRk9mzT3oOFMj8Py4floEY382cNjS0RA8JaHX+Y1Jot
eFrFhub1i9VLJb/u0Ka8t7gqFIZPw2xdBSPCCzxxKRfi2L9MRH4=
=J4yQ
-----END PGP SIGNATURE-----

--------------7UVEwc7YJJWSsIhRWYx56ZVI--

--===============6949046853566534544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6949046853566534544==--
