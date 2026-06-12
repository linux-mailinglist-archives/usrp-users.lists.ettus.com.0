Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zavXGUzIK2q9EwQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:50:20 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D479C677F56
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:50:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b="wlc8Z/JR";
	dkim=fail ("body hash did not verify") header.d=syss.de header.s=syss-de-2105 header.b=IKIEzKwT;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05AE838681E
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 04:50:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781254219; bh=GXiJ1avk/uXfLeaWm8798k9mThNfczFaGeijHNuSXyc=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=wlc8Z/JR94QYFYilcdnizLzDZw5wFNBnG9U3SIMA+mpabXoPqohxqfXvqK8ofEApG
	 oPNfbgsqvw8EcrVwtWl6LXRNUF8Ya/MKN41ExG7b+pG1Wfl7iaV1OpAVx1Mf1f1KtO
	 rCPeF23ZCmaIEu2EhTpgJFqg+yL1xsE65fXZeD/oWtbJqTZtLudUouZWlDOL8+t262
	 CXkCqBMMjXPCUDx1M83J6cr1o2zY4ULO2BZk8USQc4sB1Hfg2sHsATpZX6ETCqkiqG
	 mUBdeNnmZ/f2q7z5Adgc21bLdZAoLGQww7DsIJoOESkkVtKSEpHSMHuyLNk68gxHUc
	 04PgfggB72ptw==
Received: from mail01.syss.de (mail01.syss.de [185.142.186.14])
	by mm2.emwd.com (Postfix) with ESMTPS id 566333862F8
	for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2026 04:49:45 -0400 (EDT)
Message-ID: <ebbc933d-3e1d-40fa-845b-dc1e66f61c3d@syss.de>
Date: Fri, 12 Jun 2026 10:49:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rognskog, John-Harry" <j.rognskog@fugro.com>, usrp-users
	<usrp-users@lists.ettus.com>
References: <896d01fd-d484-4d45-89d6-7b498e03aa3a@syss.de>
 <PH0PR11MB5095564916CB9A0C3E0F11E69C182@PH0PR11MB5095.namprd11.prod.outlook.com>
Content-Language: en-US, de-DE
In-Reply-To: <PH0PR11MB5095564916CB9A0C3E0F11E69C182@PH0PR11MB5095.namprd11.prod.outlook.com>
X-FE-Attachment-Name: smime.p7s
X-FEAS-BEC-Info: WlpIGw0aAQkEARIJHAEHBlJSCRoLAAEeDUhZUEhYSFhIWUhZXkguLT4lWFpYWFhYWlleWV5aSFpcSCsAGgEbHAEJBkYyCQ0bAw0oGxEbG0YMDUhZSFpYSAJGGgcPBhsDBw8oDh0PGgdGCwcFSFhIWkhZWkhZWEZZWFlGWUZaWF9IUEhYSFhIWkhYSFhIWEhaWEgCRhoHDwYbAwcPKA4dDxoHRgsHBUhYSFpeSB0bGhhFHRsNGhsoBAEbHBtGDRwcHRtGCwcFSFg=
X-FEAS-Client-IP: 10.101.1.207
X-FE-Policy-ID: 4:7:0:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=syss.de; s=syss-de-2105; c=relaxed/relaxed;
 h=message-id:date:mime-version:subject:to:references:from:content-type;
 bh=hdA/j8gTItrIx3ZRrVHTxp3UWyYxMP4o1moWdgps8SM=;
 b=IKIEzKwTPwbblzBgIH13fFPb8g3/cGyTbGsOJr9932RIioi9HIGjkuS4Q1MIXQ6Cc6N7Wc8vWwe2
	/autvo9FK4szqfFK4NWTJgGEPLruRsh03g0+nl8gpRK3QM84S2DH62psNJdY2uAhRNcbqGAQrOQo
	ACnVgkxWEEQDZp4AUmCGHvBVFK6A9otCt2j9xgf/CCSv7q4reyvMPgwden4bFO/7oKeNGyWEbvbi
	7g4BxC8eOfjzbbO7JWcTopwoJaBQBPGoEDuzeuK/7bpUkWkl9z9xjCR3RBzlWfNWlMtTYWTlNLKU
	EYz3NbQxQ1ZIJzt2X3OBzgA6mPHUeKm9waZQyQ==
Message-ID-Hash: KDLJ4WFFLS436OM2VFHHMNGYTNKIFLBV
X-Message-ID-Hash: KDLJ4WFFLS436OM2VFHHMNGYTNKIFLBV
X-MailFrom: Christian.Zaeske@syss.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 frequency shifted
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KDLJ4WFFLS436OM2VFHHMNGYTNKIFLBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Christian_Z=C3=A4ske_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Christian_Z=C3=A4ske?= <christian.zaeske@syss.de>
Content-Type: multipart/mixed; boundary="===============5126078380719349070=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.71 / 15.00];
	SIGNED_SMIME(-2.00)[];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j.rognskog@fugro.com,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	HAS_ATTACHMENT(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,syss.de:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[syss.de:s=syss-de-2105];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	HAS_REPLYTO(0.00)[christian.zaeske@syss.de]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D479C677F56

--===============5126078380719349070==
Content-Language: en-US, de-DE
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms080907010900060100030507"

--------------ms080907010900060100030507
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9obiwNCg0KeWVzIHdlIGFyZSB1c2luZyB0aGUgaW50ZXJuYWwgY2xvY2suIEl0IGlz
IGp1c3QgYSBiaXQgd2VpcmQgdGhhdCB0aGUgDQpleGFjdCBzYW1lIHNldHVwIHdvcmtlZCBp
biB0aGUgcGFzdC4gV2UgdGhlbiBoYWQgdGhlIFNEUiBkZXBsb3llZCBpbiANCmFub3RoZXIg
cHJvamVjdCBhbmQgbm93IHdhbnRlZCB0byB0cnkgdGhlIHNldHVwIGFnYWluIGFuZCBpdCBz
dG9wcGVkIA0Kd29ya2luZyBiZWNhdXNlIG9mIHRoZSBzaGlmdC4NCg0KQnV0IGlmIGl0IGlz
IHRlY2huaWNhbGx5IHdpdGhpbiBzcGVjIGFuZCB3ZSBjYW4ndCByZWFsbHkgZG8gYW55dGhp
bmcgdG8gDQpmaXggdGhpcywgSSBndWVzcyB3ZSBqdXN0IG5lZWQgYSBuZXcgU0RSDQoNCk9u
IDYvMTIvMjYgMTA6NDIsIFJvZ25za29nLCBKb2huLUhhcnJ5IHdyb3RlOg0KPiBIaSwNCj4g
SSBhc3N1bWUgeW91IGFyZSB1c2luZyBpbnRlcm5hbCBjbG9jaz8gNWtIeiBpcyB3aXRoaW4g
aXRzIHNwZWMgKGJhcmVseSkuIE15IHVuaXRzIHZhcnkgaW4gdGhhdCByYW5nZSwgYWx0aG91
Z2ggbm90IGFzIG11Y2ggaW5kaXZpZHVhbGx5Lg0KPiBLaW5kIHJlZ2FyZHMsDQo+IEpvaG4N
Cj4NCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2hyaXN0aWFuIFrD
pHNrZSB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+IFNl
bnQ6IEZyaWRheSwgSnVuZSAxMiwgMjAyNiAxMDozNSBBTQ0KPiBUbzogdXNycC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+IFN1YmplY3Q6IFtVU1JQLXVzZXJzXSBC
MjAwIGZyZXF1ZW5jeSBzaGlmdGVkDQo+DQo+IEhlbGxvLA0KPg0KPiAoU29ycnkgaWYgdGhp
cyBpcyBhIGR1cGxpY2F0ZSwgSSB0aGluayB0aGVyZSB3ZW50IHNvbWV0aGluZyB3cm9uZyB3
aXRoIG15IGxhc3QgZW1haWwgdG8gdGhlIG1haWxpbmcgbGlzdCkNCj4NCj4gSW4gdGhlIHBh
c3QsIHdlIHVzZWQgYSBCMjAwIGFuZCBzcnNSQU4gdG8gYnVpbGQgb3VyIG93biBMVEUgY2Vs
bCwgd2hpY2ggYWx3YXlzIHdvcmtlZCBmbGF3bGVzc2x5LiBBZnRlciBzb21lIHRpbWUsIHdl
IHdhbnRlZCB0byBidWlsZCB0aGlzIHNldHVwIGFnYWluIGJ1dCB3ZSByYW4gaW50byBhbiBp
c3N1ZTogVGhlIHBob25lIG5ldmVyIGZvdW5kIHRoZSBjZWxsLg0KPg0KPiBBZnRlciBsb29r
aW5nIGludG8gdGhlIHByb2JsZW0gSSBub3RpY2VkLCB0aGF0IHRoZSBvdXRwdXQgZnJlcXVl
bmN5IG9mIHRoZSBCMjAwIGlzIHNoaWZ0ZWQgYXJvdW5kICs1IGtIeiBhdCBhcm91bmQgMi42
IEdIeiAoVmVyaWZpZWQgaXQgd2l0aCBhbm90aGVyIFNEUikuIFRvbyBtdWNoIGZvciB0aGUg
cGhvbmUgdG8gZ2V0IHRoZSBzaWduYWwgcHJvcGVybHkuIFdoZW4gSSBtYW51YWxseSBhZGp1
c3QgdGhlIGZyZXF1ZW5jeSBpbiBzcnNSQU4gdG8gY29tcGVuc2F0ZSBmb3IgdGhlIDUga0h6
IHNoaWZ0LCB0aGUgcGhvbmUgaW1tZWRpYXRlbHkgZGV0ZWN0cyB0aGUgY2VsbC4NCj4NCj4g
QXQgbG93ZXIgZnJlcXVlbmNpZXMsIHRoZSBzaGlmdCBhbHNvIGdldHMgbG93ZXIuDQo+DQo+
IElzIHRoZXJlIHNvbWV0aGluZyB3ZSBjYW4gZG8gdG8gcmV2aXZlIHRoZSBCMjAwP8KgIEJl
Y2F1c2UgdGhpcyBleGFjdCBzZXR1cCB3b3JrZWQgaW4gdGhlIHBhc3QsIEkgdGhpbmsgc29t
ZXRoaW5nIGhhcHBlbmVkIHRvIHRoZSBiMjAwIHRoYXQgY2F1c2VzIHRoaXMgc2hpZnQuDQo+
DQo+IFRoYW5rcyBpbiBhZHZhbmNlLA0KPiBDaHJpc3RpYW4NCj4NCi0tIA0KQ2hyaXN0aWFu
IFrDpHNrZQ0KSVQtU2VjdXJpdHkgQ29uc3VsdGFudA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCg0KU3lTUyBHbWJI
DQpTY2hhZmZoYXVzZW5zdHJhw59lIDc3LCA3MjA3MiBUw7xiaW5nZW4sIEdlcm1hbnkNClRl
bDogKzQ5ICgwKTcwNzEgLSA0MCA3OCA1Ni02MjExDQpNb2JpbDogKzQ5ICgwKTE1MSAtIDQz
IDE1IDc2IDE3DQpFLU1haWw6IGNocmlzdGlhbi56YWVza2VAc3lzcy5kZQ0KV2ViOiBodHRw
czovL3N5c3MuZGUNCg0KUEdQLUZpbmdlcnByaW50OiA1MUQ0IDZFOUIgM0MyOSA3MzQ3IEFD
MDEgMEY1QSA3QjAwIEQxNjQgQTMyRiA5QUM5DQoNCkdlc2Now6RmdHNmw7xocmVyOiBTZWJh
c3RpYW4gU2NocmVpYmVyLCBTZWJhc3RpYW4gTmVyeg0KUmVnaXN0ZXJnZXJpY2h0OiBBbXRz
Z2VyaWNodCBTdHV0dGdhcnQgLyBIUkIgMzgyNDIwDQpTdGV1ZXJudW1tZXI6IDg2MTE4IC8g
NTU4MDkNCg0K

--------------ms080907010900060100030507
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
DdgwggbAMIIEqKADAgECAhEAguXt1XMI1M9ja6YADLMXHDANBgkqhkiG9w0BAQwFADBSMQsw
CQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEoMCYGA1UEAxMfR2xvYmFs
U2lnbiBTZWN1cmUgTWFpbCBSb290IFI0NTAeFw0yNTAyMTkwMzE2MzJaFw0zMDAyMTkwMDAw
MDBaMFMxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSkwJwYDVQQD
EyBHbG9iYWxTaWduIEdDQyBSNDUgU01JTUUgQ0EgMjAyNTCCAiIwDQYJKoZIhvcNAQEBBQAD
ggIPADCCAgoCggIBAL1qyfjRCRfoxPUTYVUZN5AY427Wv2BO7DSa5WsshTjky7bt9HEVQCNu
MVitLYtmxgIdYO1K5vjquFQ/MVvMDdnkkkUBStIdy8itvkTolZiiQTb6/edsBzrAL+xZDn/p
wmg86IfvORo/lwQsvUS2TUew0LB47xKpUAs941HvcFWmnDyciZ5ta2iCZ4nFDbDt2HcH/+s9
RJ779Odgw/PRdjwxCg7hdxvFnIrEVTcfj1Kj9dVg1oy2mT0Wh16gxDQRhPoSdBP0B/YeFc4b
lHbt37hdglN45/CMCKuIL5r0ExDpgaqCDvUTZYgbO+yJaz3s1Qq0y9zW3xF0BCv6+o+C4lon
XnoLR/Fq6ckSgwq1b7dOZiMTulRsmyt4sQDui8pZ2yoSBWVSXYKWtkXzlbFsVE0BD0c+i1EE
5345nLzRuUGYhOUjH7IYufWYnrHQOI13obkVbw0BNmy+C00og2yU+78OPjL/0f+Ldr2k4Ggg
NNs+r8fW8rvprM9ekiTdZ7xhbmZeUTCQfCMIN6WDGDdm95DzqUntcy0aohDum3Fbw03Y0C0d
y7n3TVfieDZhUvMvywBLndEvwpVvjiqYJJ4iXsbNJMYwmtYpox6CqPVjCtxv+ejH7ghpYifs
su203RAbaKMM5Au/oQ49blaV2xVZ78U8jlx8pXxmS3t8erk8RrP/AgMBAAGjggGOMIIBijAO
BgNVHQ8BAf8EBAMCAYYwTAYDVR0lBEUwQwYIKwYBBQUHAwIGCCsGAQUFBwMEBgorBgEEAYI3
FAICBgorBgEEAYI3CgMMBgorBgEEAYI3CgMEBgkrBgEEAYI3FQYwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQU2aSgJ8sKJKoxqkN9c3DMf7Ulu5MwHwYDVR0jBBgwFoAUoJMVKG7u
jwiyNcaeYnl0p7EOK3swgYUGCCsGAQUFBwEBBHkwdzAzBggrBgEFBQcwAYYnaHR0cDovL29j
c3AuZ2xvYmFsc2lnbi5jb20vc21pbWVyb290cjQ1MEAGCCsGAQUFBzAChjRodHRwOi8vc2Vj
dXJlLmdsb2JhbHNpZ24uY29tL2NhY2VydC9zbWltZXJvb3RyNDUuY3J0MDsGA1UdHwQ0MDIw
MKAuoCyGKmh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vc21pbWVyb290cjQ1LmNybDARBgNV
HSAECjAIMAYGBFUdIAAwDQYJKoZIhvcNAQEMBQADggIBALDCxbvqOLEThKczQBqrVSOJepAw
pFQFIY6oFpkqWsgINDYdcv7ugQEXSxkb6mgPuHqH1sJZ9iO/yQvPYcGOUg8K/Tec61Le38bS
MtTufS5Kq1arWQYQgSX5QPI6I7J2BYYtA2Pt9MteQresV6Bmya8TLnG4FGCwXjrQRNnwGAZx
5Tp1p6CEr9/1JIR9ThpP3A8AQ1k47BmwTT6oV3xU0s2Bg110jHpQigR/Isvc9WN4sHlF3Wnb
PC0awf4ySojxYNCCr7WdBdltF22kkyOr4jbPcgroRlZFXLyOfevW12lEbmn3a7AXP2+QQxm4
S6CzK7BDCSk18UUlkKPZ7nBcUQbDr68JhdCamo5N9cgo9IDcYavQ8RSMQfB6aLpLWq4oz2Vj
HUHUgtPDfu8ngoq1xQU1jcC3hxXUidcOQ4ohD0Sb0M+sElXYnmGqUGY2QbLLJLVE1Dwd3Oew
P5izqIVBnVf0fp9y1fL5In5mjfKnlGeN72ln/QSlERADRIGXlB+I7N3WPgEbG+4YVy3MnSbM
aUN/NMSZAitWUzht+/e+PC4DKKxYhqxNAC2pjSKV+la44jiKcbv3YW/dTk0U2uYqCrtKE48U
fwKVcfnzbiXdA8LK0YDlsn/obFEwhq3PNJw19Yp4aZMWSwMk4mDQbhO2z9LXZl4dIy77rtvR
1ODyYl/iMIIHEDCCBPigAwIBAgIMceniZMyB8KwVGjKiMA0GCSqGSIb3DQEBCwUAMFMxCzAJ
BgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSkwJwYDVQQDEyBHbG9iYWxT
aWduIEdDQyBSNDUgU01JTUUgQ0EgMjAyNTAeFw0yNjAzMDMxMTQyMTRaFw0yNzAzMDQxMTQy
MTRaMEwxITAfBgNVBAMMGGNocmlzdGlhbi56YWVza2VAc3lzcy5kZTEnMCUGCSqGSIb3DQEJ
ARYYY2hyaXN0aWFuLnphZXNrZUBzeXNzLmRlMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIIC
CgKCAgEAsjKEjVRi/0E+bMiAfy89R6BBo74ETAwTOcLw3qNc8LQiPVPxisEXtwXSdMOR6ll9
Xgc9s8Jo4ne2iPI6onN5zu0mb6lwSMRJsASwiiGfc7KKjhcNXymOAas+nM9LIch0JIdGe1f3
BVISu67Cb8Vh8n47pTgsJpMCbdlCquw9RNQ/eurvyv7kCy++T+64Kguv9yTzSz073XQeVJYa
h8KTaGKJ4Z2EZFAD7lrYn9GmZll0q8piEBFelVB1ugotJ5I/0GFHedx18soIGcOaEjpvh9Q2
9+ow/jGY2xcVJHu3FMO7xwUiN98UBK1xXLLV8NM6J8Fk94vgzq64jS/zTvpzdOCOS881LSxE
879vA2Wz+e/ov18qZR8NjKgmWOkLYK7SlTX8uGmQeCKbfR9lolaGBQH+GsyarsGTw2yn7aOI
GUpubBafDwoLBg1QEQ5pxeNs9YudePA50w4G5EfQbcilfBwZEFqeI6hQt7Bw6z08Auo5VSTp
CFlucAlEWPkrP/MTR2EuPhqSrgO1Xe0LAPPx6goLpw8CisSDKn9fIFncVXwYJWsjzpEoxIJQ
Unw7c0Lqs9EBfbkmbfeX+m0Fk679jYD5f8oyhbd5P/Nc49rZ5zNJt91ZmUwuJG8Y4O7lZOlG
YelTYILhdo8YNt6GsxzRcltUL5f/+TBqJeoF7ezIvY8CAwEAAaOCAekwggHlMA4GA1UdDwEB
/wQEAwIFoDAMBgNVHRMBAf8EAjAAMIGVBggrBgEFBQcBAQSBiDCBhTBHBggrBgEFBQcwAoY7
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNDVzbWltZWNhMjAy
NS5jcnQwOgYIKwYBBQUHMAGGLmh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjQ1
c21pbWVjYTIwMjUwZQYDVR0gBF4wXDAJBgdngQwBBQECMAsGCSsGAQQBoDIBKDBCBgorBgEE
AaAyCgMDMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9z
aXRvcnkvMEIGA1UdHwQ7MDkwN6A1oDOGMWh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3Nn
Y2NyNDVzbWltZWNhMjAyNS5jcmwwIwYDVR0RBBwwGoEYY2hyaXN0aWFuLnphZXNrZUBzeXNz
LmRlMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAfBgNVHSMEGDAWgBTZpKAnywok
qjGqQ31zcMx/tSW7kzAdBgNVHQ4EFgQUDqUpp1an0n5L+aYKMQWzE0aMIAgwDQYJKoZIhvcN
AQELBQADggIBAA5sOVUmAJ60d+4mk9IHjlL7PphiXRUfaHoodKkVrn5NHbNU7TZHqlD2P7y0
hkTtjjUh4z3Teu9wTc7zDkGPbWWzVc8ARgzCIRoVo+1bTZEKFrgYeTWarwm7sxBI4BhArrH4
umU5siHcrdZXVwA7/aCDvz7p4UjEJZFlaHFls+36OFUl9CgGmzPAPN2PpBIOy5nO9Ipmt/7Z
BxuPKKKKNuSJTAsZngwZqFYFRjLSwgzxUYqxNCi59gwaxUB3imbLR1SUgG80TFNC98sm/k9B
b7YsDbkIPB+0qnkXq0ZcUVUYeL8CTTbvjGZ3DJfdWFKUsIXljovlrH2wpj3rBRIkzEWlNtmR
x/ZZRpLUqdeCUS8ZfRL3LQTMNxT7kbgF6rcGlNllm62cRfPLwNQlzidmb8ooD2CQy8SQ3/GG
oVVTvF9x+NVg84gEsgHjOkp+/ceFuwDb5WUhoIf2fUC9yQ4L9Nb1D0DNxZP5olbl0ECGeCyc
RB5Xnk79+vo8Lu59EgCl10QLh2YN4aIjvZsbgIMUZzbrnVMqMjqAhQu9Su++VAO7AgVvVAGx
uzU/FQ5A7TKmkQu/10hulOmExLS8K4XNXdy9d16QcP3UClgR3zPy8d98njzLkatRTEOufIK9
/s4gngHlk69mbYFBFF/WvzeeTGZGM6njdrIlVzWOBHYQ5zhWMYIFYDCCBVwCAQEwYzBTMQsw
CQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEpMCcGA1UEAxMgR2xvYmFs
U2lnbiBHQ0MgUjQ1IFNNSU1FIENBIDIwMjUCDHHp4mTMgfCsFRoyojANBglghkgBZQMEAgMF
AKCCAs4wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjYwNjEy
MDg0OTQwWjBPBgkqhkiG9w0BCQQxQgRA6EwH989uDK8zjriB+yCLIDw+g+jh0hgus++5jMOw
w+tDPjvXk8gy4kHijAO0THNpGz8cv89CvSaglJaLOSbfWjByBgkrBgEEAYI3EAQxZTBjMFMx
CzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSkwJwYDVQQDEyBHbG9i
YWxTaWduIEdDQyBSNDUgU01JTUUgQ0EgMjAyNQIMceniZMyB8KwVGjKiMHQGCyqGSIb3DQEJ
EAILMWWgYzBTMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEpMCcG
A1UEAxMgR2xvYmFsU2lnbiBHQ0MgUjQ1IFNNSU1FIENBIDIwMjUCDHHp4mTMgfCsFRoyojCC
AVcGCSqGSIb3DQEJDzGCAUgwggFEMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZI
hvcNAwcwDQYIKoZIhvcNAwICAQUwDQYIKoZIhvcNAwICAQUwBwYFKw4DAgcwDQYIKoZIhvcN
AwICAQUwBwYFKw4DAhowCwYJYIZIAWUDBAIBMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgMw
CwYJYIZIAWUDBAIEMAsGCWCGSAFlAwQCBzALBglghkgBZQMEAggwCwYJYIZIAWUDBAIJMAsG
CWCGSAFlAwQCCjALBgkqhkiG9w0BAQEwCwYJK4EFEIZIPwACMAgGBiuBBAELADAIBgYrgQQB
CwEwCAYGK4EEAQsCMAgGBiuBBAELAzALBgkrgQUQhkg/AAMwCAYGK4EEAQ4AMAgGBiuBBAEO
ATAIBgYrgQQBDgIwCAYGK4EEAQ4DMA0GCSqGSIb3DQEBAQUABIICAJFEvPM0BU8/Df/uWNH7
4b4K5CUqRUH9a0YrqSL8Czb/uMSLuo7++UxdR44vYCFzfkaZKNV87t6UvXLxHGoNMuPvBUd/
ZtotoSNUU2Lp2Gg9aTU6a5gsvSxQWi0P8Gbp7yBr3cK8xLlTTAGyXg3iz/eT8/RgCZi1r3AY
gENRQqXRHwbt3Okiyb9rzWVHw1QZeehYUq5TWI/97QUO2XUtQzf7mFPbLeH5PIf29glsAnIg
GPkKISoQXZJfu89xtO1JAFS23RhNit0iyAyhYUzEd4w9mW/eMVRErJ9tsghfZAFf4VOFCP57
ucFPi60aDOH2KZMG0Bh08j/QSwz7PJ0i8yg99zypFlZGhs6ZNxTM8Y7lRL61gzG2xugQGZwN
2wylQ3eUihcDAe+wHcsQqpTyYDGB3JYGlsi6OJSvz0AmumJue+fB/+AMOv/u7hdtSM2BmSEy
IU/jaojeNMhdCCRbphYkNLdaSfZXghiWVLAHiCZwNhLGJHyE4c7gTQiPNb726szjhqfWhg4G
VfBKGeU3tnNmGeqGprFDPUFk6jfNPbHtaxc7erB1KVxqCQowPjbztN6ilnJpxICIwmYx/UDF
UvydFF3ekqKAsM9DUpiUHwqvN/1k3fsSlMquUxwTRVgb/uEfhvSZuRwOGa5s8mXw2Rwzgp3i
k5FN1suFSdlNP6qHAAAAAAAA
--------------ms080907010900060100030507--

--===============5126078380719349070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5126078380719349070==--
