Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EA1BB0049
	for <lists+usrp-users@lfdr.de>; Wed, 01 Oct 2025 12:31:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B3B738653A
	for <lists+usrp-users@lfdr.de>; Wed,  1 Oct 2025 06:31:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759314688; bh=XSV+IJi2CK67xgBt5Dvoc8Ok1HpJ4p5FGg3nXZpPJZQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rTHpBM2JmQWfyzYCYTduhtKwFExxIzjO/Qksc9XAl+ZLaKk4wKi+l4sSLhNFOqThg
	 GHM2hA6F5w+SzI7Wp18O7EcC+l592uxoq5gS1kyecbaf9tb8nBoxF5/DnxC1JGNcBJ
	 JoJwbmma7jny+26WVKzK+GwT+ecSqM6c4AA8wVqkIOgYAjsPLPHR4Uzkjtg9QXLtNW
	 thR4ZxA7vBwzkAkVAfO7AXRKdbg2JjpN+cHW2JH/tq7KUBYQQahQlr7F4Xr30iJ8sU
	 44O9GN3L/1/vvJZR/xvGpF1a6mqUbMUnODy+huboSgANwoXG4KDpHAwbBSc9auf9eq
	 LPDX9BWgSC93w==
Received: from corg.destevez.net (corg.destevez.net [51.75.17.244])
	by mm2.emwd.com (Postfix) with ESMTPS id D1A3E386418
	for <usrp-users@lists.ettus.com>; Wed,  1 Oct 2025 06:30:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (4096-bit key; unprotected) header.d=destevez.net header.i=@destevez.net header.b="pOzG2ROz";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=destevez.net; s=corg; h=Content-Type:In-Reply-To:Subject:From:References:To
	:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MROvmzuh5h7XPn3fjooR61rrkSfBxi54eh9ZBAqm73c=; b=pOzG2ROzVNxygCit5lgtxGxet3
	BKJJRZBSm0ADxutbwJOsLEbNfBjO0Dcy+zSHSSY6L6zX54fF675V/UbhsWipVI4unzf3K4Ko0mkdv
	yCvNBCH6wwZFLVpWs1jyRRhUzJk5oEsic4CAtqzCULatPMmLgcL56etDcdYuRCf82QA4VTMZcssX7
	ht6MSOOLJRdCMeI7nTxNrYZFa0x74+FxMb7MpB3Om/k0WJIVxqNtYJwpK89dc80U4Wbm/rE7iCO+j
	QOVy/OJ2PTE7wWPX4uq/xgd4q+leC0quluJgOhPgC4NDDSiITqPFvevqQ7MugmOlznwn1VXV1eoWb
	+3m9iiAanaJpfMoJiAzjWH30zTis2uy8wHfzJGALdOtkTfHL+x1Pc4De80dKju3vFZcNxlUCEA1Dg
	qeR2oFEWw/YHANN7rLuLucYBHb7usZbANcJMTl28jTQmKpPj6mybRbafgkvEke4aObiu0v1DRT+2J
	/g3SEbuc43sUzhJKNe3ip9oqCV0ts1KBoDorYfTg9/qrxTigW83geKUt5kC7LLxvSpFr6dMBF1gaM
	mA30CZkV7o5AecYFWZP+nPCyqLcLbT3DppECYIL2nshpqz7lo/97lxRcO/FWm6+0V3Nw2AwHoleV3
	ebT3Jc7SHHIvbeSqSe8rGv2gbmewZyKXbj1qJ6RAc=;
Received: from [2001:470:6915:1:2e0:4cff:fe68:540]
	by corg.destevez.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.98.2)
	(envelope-from <daniel@destevez.net>)
	id 1v3u6F-00000002J9z-1Ggw
	for usrp-users@lists.ettus.com;
	Wed, 01 Oct 2025 12:30:19 +0200
Message-ID: <8228be74-104e-4b63-9ddc-0791d7dbc66d@destevez.net>
Date: Wed, 1 Oct 2025 12:30:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Content-Language: en-US
From: =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
Autocrypt: addr=daniel@destevez.net; keydata=
 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
In-Reply-To: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Message-ID-Hash: B7HJW5UZMSGGZBBEWIDFPNRC77W7AVMX
X-Message-ID-Hash: B7HJW5UZMSGGZBBEWIDFPNRC77W7AVMX
X-MailFrom: daniel@destevez.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Half duplex with USRP B2xx and GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B7HJW5UZMSGGZBBEWIDFPNRC77W7AVMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3296258871328322179=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3296258871328322179==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xb8D8uCVvEjY0Zx1wXLz3VIN"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xb8D8uCVvEjY0Zx1wXLz3VIN
Content-Type: multipart/mixed; boundary="------------uoOKgeFzFnbJqHT8B1OZMJXq";
 protected-headers="v1"
From: =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
To: usrp-users@lists.ettus.com
Message-ID: <8228be74-104e-4b63-9ddc-0791d7dbc66d@destevez.net>
Subject: Re: [USRP-users] Half duplex with USRP B2xx and GNU Radio
References: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
In-Reply-To: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>

--------------uoOKgeFzFnbJqHT8B1OZMJXq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNClRoYW5rcyBmb3IgYWxsIHRoZSBpZGVhcyBhbmQgc3VnZ2VzdGlvbnMgSSBo
YXZlIHJlY2VpdmVkLg0KDQpGaW5hbGx5IEkgaGF2ZSBmb3VuZCBhIHNpbXBsZSB3YXkgdG8g
d29yayBhcm91bmQgdGhpcyBpc3N1ZS4gSSBoYWQgdGhlIA0KaWRlYSB0byBjb25maWd1cmUg
bXkgQ1NNQSBsb2dpYyBpbiBHTlUgUmFkaW8gaW4gc3VjaCBhIHdheSB0aGF0IHdoZW4gDQp0
aGVyZSBhcmUgYmFjay10by1iYWNrIHBhY2tldHMgaW4gdGhlIHRyYW5zbWl0IHBhdGggKGlu
IHRlY2huaWNhbCB0ZXJtcywgDQp3aGVuZXZlciB0aGUgQ1NNQSBibG9jayB3b3JrKCkgZnVu
Y3Rpb24gc2VlcyBtdWx0aXBsZSBwYWNrZXRzIGluIGEgZ2l2ZW4gDQpjYWxsKSwgdGhlbiB0
aGUgQ1NNQSBibG9jayBhbGxvd3MgdGhlIHRyYW5zbWl0IHBhdGggdG8gY29udGludWUgDQp0
cmFuc21pdHRpbmcgdGhlIHJlbWFpbmluZyBwYWNrZXRzLCBpZ25vcmluZyB0aGUgY2Fycmll
ciBzZW5zZSBzdGF0dXMuDQoNClRoaXMgYWNoaWV2ZXMgdGhlIGludGVuZGVkIGJlaGF2aW9y
LCByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIGNhcnJpZXIgDQpzZW5zZSBhbHNvIGRldGVj
dHMgdGhlIHBhY2tldHMgdHJhbnNtaXR0ZWQgYnkgdGhpcyByYWRpby4gVGhlIG9ubHkgY2Fz
ZSANCndoZXJlIHRoaXMgYXBwcm9hY2ggZG9lc24ndCB3b3JrIGV4YWN0bHkgYXMgSSBpbnRl
bmRlZCBpcyB3aGVuIGEgcGFja2V0IA0KYXJyaXZlcyB0byB0aGUgdHJhbnNtaXQgcGF0aCBz
aG9ydGx5IGFmdGVyIHRoZSBlbmQgb2YgdGhlIHByZXZpb3VzIA0KcGFja2V0IGlzIGJlaW5n
IHRyYW5zbWl0dGVkLiBJbiB0aGlzIGNhc2UgdGhlIGNhcnJpZXIgc2Vuc2UgaXMgdHJpZ2dl
cmVkIA0KYnkgdGhlIHBhY2tldCB0aGF0IHRoZSByYWRpbyBpcyB0cmFuc21pdHRpbmcsIGFu
ZCB0aGUgc2Vjb25kIHBhY2tldCB3aWxsIA0KYmUgZm9yY2VkIHRvIHdhaXQgdW50aWwgdGhl
IGNhcnJpZXIgc2Vuc2UgZ29lcyBkb3duLCB3aGljaCBoYXBwZW5zIHNvbWUgDQptaWxsaXNl
Y29uZHMgYWZ0ZXIgdGhlIGVuZCBvZiB0aGUgcGFja2V0IGlzIHRyYW5zbWl0dGVkLCBkdWUg
dG8gdGhlIA0KUlgtVFggbGF0ZW5jeSBzZWVuIGJ5IEdOVSBSYWRpby4gVGhpcyBzaXR1YXRp
b24gaGFwcGVucyByYXJlbHksIHNvIGl0IGlzIA0KYWNjZXB0YWJsZSB0byBtZS4NCg0KSWYg
YW55b25lIGlzIGN1cmlvdXMgYWJvdXQgdGhlIGRldGFpbHMgb2YgdGhpcyBhcHByb2FjaCwg
dGhlIGNvZGUgaXMgDQpoZXJlOiBodHRwczovL2dpdGh1Yi5jb20vZGFuaWVzdGV2ZXovZ3It
c2F0ZWxsaXRlcy9wdWxsLzc2Ng0KDQpCZXN0LA0KRGFuaWVsLg0KDQpPbiAyOS8wOS8yMDI1
IDEyOjE1LCBEYW5pZWwgRXN0w6l2ZXogd3JvdGU6DQo+IEhlbGxvLA0KPiANCj4gSSBhbSBp
bXBsZW1lbnRpbmcgYSBoYWxmLWR1cGxleCBtb2RlbSB3aXRoIEdOVSBSYWRpbyBhbmQgYSBV
U1JQIEIyeHggDQo+IHRoYXQgdXNlcyBDU01BIHRvIGNvbnRyb2wgbWVkaXVtIGFjY2Vzcy4g
SSBoYXZlIGEgR05VIFJhZGlvIGZsb3dncmFwaCANCj4gd2l0aCBhIFVTUlAgU291cmNlIGFu
ZCBVU1JQIFNpbmsgYmxvY2tzIGJvdGggc2V0IHRvIHVzZSB0aGUgVFgvUlggDQo+IGFudGVu
bmEuIFRoZSBVU1JQIFNpbmsgYmxvY2sgdXNlcyBidXJzdCB0cmFuc21pc3Npb24uIFdoZW4g
YSBidXJzdCBpcyANCj4gc2VudCwgdGhlIEIyeHggYXV0b21hdGljYWxseSBzd2l0Y2hlcyB0
aGUgcmVjZWl2ZSB0byB0aGUgUlgyIHBvcnQuDQo+IA0KPiBUaGUgaXNzdWUgaXMgdGhhdCB0
aGVyZSBpcyBlbm91Z2ggbGVha2FnZSB0aHJvdWdoIHRoZSBSWDIgcG9ydCB0aGF0IHRoZSAN
Cj4gc3lzdGVtIGlzIGFibGUgdG8gcmVjZWl2ZSBpdHMgb3duIHRyYW5zbWl0IHBhY2tldHMg
d2l0aCBnb29kIFNOUi4gVGhpcyANCj4gaXMgYSBwcm9ibGVtIGZvciB0aGUgQ1NNQSBzeXN0
ZW0gYmVjYXVzZSBpdCBtYWtlcyB0aGUgc3lzdGVtIGRldGVjdCB0aGF0IA0KPiB0aGUgY2hh
bm5lbCBpcyBidXN5IHdoaWxlIGl0IGlzIHRyYW5zbWl0dGluZyBpdHMgb3duIHBhY2tldC4g
RHVlIHRvIHRoZSANCj4gbGF0ZW5jeSBiZXR3ZWVuIHRoZSBSWCBhbmQgVFggc3RyZWFtcyBp
biBHTlUgUmFkaW8sIHRoaXMgcHJldmVudHMgdGhlIA0KPiBtb2RlbSBmcm9tIHRyYW5zbWl0
dGluZyBiYWNrLXRvLWJhY2sgcGFja2V0cyAod2hpY2ggaXMgYWxsb3dlZCBhbmQgDQo+IGV4
cGVjdGVkIGJ5IHRoaXMgQ1NNQSBzY2hlbWUpLCBiZWNhdXNlIHdoZW4gdGhlIHNlY29uZCBw
YWNrZXQgaXMgYWJvdXQgDQo+IHRvIGJlIHNlbnQsIHRoZSBtb2RlbSByZWNlaXZlciBpcyBz
dGlsbCBzZWVpbmcgdGhlIGVuZCBvZiB0aGUgcHJldmlvdXMgDQo+IHBhY2tldCBhbmQgZGV0
ZXJtaW5lcyB0aGF0IHRoZSBjaGFubmVsIGlzIHN0aWxsIGJ1c3kuDQo+IA0KPiBUbyBzb2x2
ZSB0aGlzIGlzc3VlLCBJIHdvdWxkIGxpa2UgdGhlIFVTUlAgU291cmNlIHRvIHJlY2VpdmUg
ZWl0aGVyIA0KPiB6ZXJvcywgbm8gc2FtcGxlcyBhdCBhbGwsIG9yIHNvbWV0aGluZyB0aGF0
IGF0IGxlYXN0IGRvZXMgbm90IGhhdmUgc28gDQo+IG11Y2ggbGVha2FnZSBvZiBpdHMgb3du
IFRYIHNpZ25hbC4NCj4gDQo+IElzIGl0IHBvc3NpYmxlIHRvIGRvIHRoaXMgZWl0aGVyIGJ5
IGFwcHJvcHJpYXRlIGNvbmZpZ3VyYXRpb24gaW4gR05VIA0KPiBSYWRpbyBvciBVSEQ/DQo+
IA0KPiBJJ3ZlIGJlZW4gc3R1ZHlpbmcgdGhlIHNvdXJjZXMgb2YgVUhEIGFuZCBHTlUgUmFk
aW8gdG8gc2VlIGhvdyB0aGlzIA0KPiBjb3VsZCBiZSBkb25lLiBUaGUgb25seSB0aGluZyBJ
IGhhdmUgZm91bmQgaXMgdGhhdCB0aGlzIHdvdWxkIGJlIA0KPiBwb3NzaWJsZSB3aXRoIGEg
c21hbGwgY2hhbmdlIHRvIHRoZSBGUEdBIGltYWdlLiBGb3IgaW5zdGFuY2UsIHRoaXMgbGlu
ZQ0KPiANCj4gaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFz
dGVyL2ZwZ2EvdXNycDMvbGliLyANCj4gcmFkaW9fMjAwL3JhZGlvX2xlZ2FjeS52I0w0NDYN
Cj4gDQo+IGNvdWxkIGJlIG1vZGlmaWVkIHRvIHJlcGxhY2UgdGhlIFJYIHNhbXBsZXMgYnkg
emVyb3Mgd2hlbmV2ZXIgcnVuX3J4IGlzIA0KPiBhc3NlcnRlZC4NCj4gDQo+IEhvd2V2ZXIg
SSB3b3VsZCBwcmVmZXIgbm90IHRvIGJ1aWxkIGEgbW9kaWZpZWQgRlBHQSBpbWFnZSBmb3Ig
dGhpcyANCj4gc3lzdGVtLCBzbyBJIHdhcyB3b25kZXJpbmcgaWYgb3RoZXIgc29sdXRpb25z
IGV4aXN0Lg0KPiANCj4gQmVzdCwNCj4gRGFuaWVsLg0KPiANCj4gDQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
Cg0K

--------------uoOKgeFzFnbJqHT8B1OZMJXq--

--------------xb8D8uCVvEjY0Zx1wXLz3VIN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOn0gFAd3OQG8ow6EtFwrk3lBwykFAmjdAroACgkQtFwrk3lB
wyn3OxAAiTMsaxz6kSYappPGt7RCx4QcWkakccvUuXy0LW93so/+5wwjbQ9PqWhg
yal1C6loEZ/jtfVVewBExrb3Pt6NMxOiGqlbGuldggfWxamCCW1Vw4/Bn86DOk/k
HTZOtDZtojUhWQ9aS/bRhGAFuFBvixsVp8Y5eDWeRrSbdEVsPpBKZ8yefv0Gy4/o
/mxYJpHNsTnOwIISrZGMM3WEiyPE8wQn+a6YWPPIjUitSAdRfmNrHZmkv2OGwvZM
zyFOjNmAPDYgv0cD1dlLGP1wNJXkxT6FH+j4TRmyD392VWgHNjKzM2Ym4LCPdYw/
Q90QdZoy8Fcl0a0YNd5HqlSTakG60LwQG/5ONONoFfTgupZtB42O47suWmrZFSvU
PUSUlU6FZdSe86AJ5tqZ2KM7pq5XiBikjqljvy6StvTsDsOnOE/+yEjePIX4DQ9j
WiVZW0kKf5bCB84WVgY+5WkWbrNTf/UfjEFnYiLeNv2D1HrNeNPCNz8exqg5XSel
z47exGW1ACfP96fXwE/lckU4mO+VeaB+48JVqmMQDrMNn+hAtzJODHYnDvOOGzj+
+p561lhtHb/hDkRoJ+0gI4LMRjQnfa2J350ExH2Jv/uMm5W55PcrRieoZlxVtaDw
wPTsTypCMXUrCVwnXsHqn2niiLYE0NJtLsHTrXMtpj6NVR8Am5w=
=21Fb
-----END PGP SIGNATURE-----

--------------xb8D8uCVvEjY0Zx1wXLz3VIN--

--===============3296258871328322179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3296258871328322179==--
