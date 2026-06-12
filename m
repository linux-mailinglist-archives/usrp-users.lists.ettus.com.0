Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id THytL/LEK2rLEgQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:36:02 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE802677D91
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:36:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b="MU/kmKyd";
	dkim=fail ("body hash did not verify") header.d=syss.de header.s=syss-de-2105 header.b=SPpMYYsy;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83D8F3867A5
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 04:36:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781253360; bh=Uc1kCo6gJ1ul4DP3BecxNjUJmFwGORPvJOXxvvBu4zU=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=MU/kmKydedUvSqQ1isX3FkhuKclafrtlfVb+X1xMcsIYuNiar0VY+tej4wxEqcBTq
	 8w6dSiGEv9ky/bo2bs0XoYaVFDZIimnxEVP9/TUKT5ho2T/PQHCda0U6kQXsSpwsVV
	 RVCmoQSB9fVQLnxuRTiU+5lcXotb+Yy9jMVB7tzcDHLK2pRUGM6IPWZ799nNWRiq9r
	 scgEyMcOgvbwXCyeFw2ukqAVhD9jTzpZxCK4FIL3w28jldjGlQ4b3DwqIlcZmUND53
	 fGRZAjVVNNVG5B9SLgG8lH1L6uGtl6psWmpyC8LvLw+xfFtmrFiBNDXpvBmVPf3tm6
	 K7a3k8as4U4LQ==
Received: from mail01.syss.de (mail01.syss.de [185.142.186.14])
	by mm2.emwd.com (Postfix) with ESMTPS id D9C863866E8
	for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2026 04:35:18 -0400 (EDT)
Message-ID: <896d01fd-d484-4d45-89d6-7b498e03aa3a@syss.de>
Date: Fri, 12 Jun 2026 10:35:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users <usrp-users@lists.ettus.com>
Content-Language: en-US, de-DE
X-FE-Attachment-Name: smime.p7s
X-FEAS-BEC-Info: WlpIGw0aAQkEARIJHAEHBlJSCRoLAAEeDUhZUEhYSFhIWUhZXkguLT4lWFpYWFhYWlleWV5aSFpcSCsAGgEbHAEJBkYyCQ0bAw0oGxEbG0YMDUhZSFpeSB0bGhhFHRsNGhsoBAEbHBtGDRwcHRtGCwcFSFhIWkhZWkhZWEZZWFlGWUZaWF9IUEhYSFhIWUhYSFhIWEhaXkgdGxoYRR0bDRobKAQBGxwbRg0cHB0bRgsHBUhY
X-FEAS-Client-IP: 10.101.1.207
X-FE-Policy-ID: 4:7:0:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=syss.de; s=syss-de-2105; c=relaxed/relaxed;
 h=message-id:date:mime-version:to:from:subject:content-type;
 bh=QiVrryJvcTR/KmfRnXb2QdrQgIRBkUt3FYXdWKB33cg=;
 b=SPpMYYsyPBA5mrvc3k2Z7cY1F7tYA8qfz6H2MS1hm0Fvdx572Hib30bfilh+4NjTSb44MIZVEoMW
	PbywEBx/OHbGX17qRMKesjiReBHY3KQB3AUL2GLnrmcdTuT4+v1zcjilCUek9GffXYDT3rGBxJX2
	c47ja46W4hnuNyoprhA6PykDfr/L6pLDdrIUp2v5md52N/4LLNdBzqni4RHmfsdVc4QOEU+/5hE1
	fC9xtttyt9O4dsGaPdl5NV9t0j+tJTit5yYgyOpOCHxvkS/3qXSotYzHSWQJWsBNqTtGPX1qI65W
	uYkBfbMEtNBYdj2oUmtxfElj0vcHRCzXScDYXQ==
Message-ID-Hash: Y6WQEDBAQPVNLR5TGCX3KEB3JSZLVL6K
X-Message-ID-Hash: Y6WQEDBAQPVNLR5TGCX3KEB3JSZLVL6K
X-MailFrom: Christian.Zaeske@syss.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B200 frequency shifted
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y6WQEDBAQPVNLR5TGCX3KEB3JSZLVL6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Christian_Z=C3=A4ske_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Christian_Z=C3=A4ske?= <christian.zaeske@syss.de>
Content-Type: multipart/mixed; boundary="===============8754903562250202070=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.71 / 15.00];
	SIGNED_SMIME(-2.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TO_DN_ALL(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[syss.de:s=syss-de-2105];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[emwd.com:+,syss.de:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_EQ_FROM(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	HAS_REPLYTO(0.00)[christian.zaeske@syss.de]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE802677D91

--===============8754903562250202070==
Content-Language: en-US, de-DE
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms090903090909070100040509"

--------------ms090903090909070100040509
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCihTb3JyeSBpZiB0aGlzIGlzIGEgZHVwbGljYXRlLCBJIHRoaW5rIHRoZXJl
IHdlbnQgc29tZXRoaW5nIHdyb25nIHdpdGggDQpteSBsYXN0IGVtYWlsIHRvIHRoZSBtYWls
aW5nIGxpc3QpDQoNCkluIHRoZSBwYXN0LCB3ZSB1c2VkIGEgQjIwMCBhbmQgc3JzUkFOIHRv
IGJ1aWxkIG91ciBvd24gTFRFIGNlbGwsIHdoaWNoIA0KYWx3YXlzIHdvcmtlZCBmbGF3bGVz
c2x5LiBBZnRlciBzb21lIHRpbWUsIHdlIHdhbnRlZCB0byBidWlsZCB0aGlzIHNldHVwIA0K
YWdhaW4gYnV0IHdlIHJhbiBpbnRvIGFuIGlzc3VlOiBUaGUgcGhvbmUgbmV2ZXIgZm91bmQg
dGhlIGNlbGwuDQoNCkFmdGVyIGxvb2tpbmcgaW50byB0aGUgcHJvYmxlbSBJIG5vdGljZWQs
IHRoYXQgdGhlIG91dHB1dCBmcmVxdWVuY3kgb2YgDQp0aGUgQjIwMCBpcyBzaGlmdGVkIGFy
b3VuZCArNSBrSHogYXQgYXJvdW5kIDIuNiBHSHogKFZlcmlmaWVkIGl0IHdpdGggDQphbm90
aGVyIFNEUikuIFRvbyBtdWNoIGZvciB0aGUgcGhvbmUgdG8gZ2V0IHRoZSBzaWduYWwgcHJv
cGVybHkuIFdoZW4gSSANCm1hbnVhbGx5IGFkanVzdCB0aGUgZnJlcXVlbmN5IGluIHNyc1JB
TiB0byBjb21wZW5zYXRlIGZvciB0aGUgNSBrSHogDQpzaGlmdCwgdGhlIHBob25lIGltbWVk
aWF0ZWx5IGRldGVjdHMgdGhlIGNlbGwuDQoNCkF0IGxvd2VyIGZyZXF1ZW5jaWVzLCB0aGUg
c2hpZnQgYWxzbyBnZXRzIGxvd2VyLg0KDQpJcyB0aGVyZSBzb21ldGhpbmcgd2UgY2FuIGRv
IHRvIHJldml2ZSB0aGUgQjIwMD/CoCBCZWNhdXNlIHRoaXMgZXhhY3QgDQpzZXR1cCB3b3Jr
ZWQgaW4gdGhlIHBhc3QsIEkgdGhpbmsgc29tZXRoaW5nIGhhcHBlbmVkIHRvIHRoZSBiMjAw
IHRoYXQgDQpjYXVzZXMgdGhpcyBzaGlmdC4NCg0KVGhhbmtzIGluIGFkdmFuY2UsDQpDaHJp
c3RpYW4NCg0K

--------------ms090903090909070100040509
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
MDgzNTEyWjBPBgkqhkiG9w0BCQQxQgRATg8aIIVf/5ZHXSs5MT8A1SvecxkjqDfjn7R0vNpv
7It++kOdeXFo+Q1kOzkQvc2ESuSg66AlmgBGPH3mtY/ljzByBgkrBgEEAYI3EAQxZTBjMFMx
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
ATAIBgYrgQQBDgIwCAYGK4EEAQ4DMA0GCSqGSIb3DQEBAQUABIICAG3OroCd4Ym/8vkqxU4b
A8Z6bBtXDBzRUElZh57QMyqwo0+kYqC7e8+MC3uCPVqbi7OoFUHsi7AHNnSXtEbm64mY80yM
9n0da+TUUDkjTcj9RdoLaxlsJMkY73LUrkWbY8g3zizSNUMPCW5Acyb5opKlMbi6/J6Jn7cs
kIt5MRLKwg2OLgT8bBLar8qLd52kxYbfoGAU39G+CG8FHqRTzIR1eFhcbnO8vQxX4756sMx0
nqRFsXSgcVXmngVeO5mB+1/zqNt1EXxgGz8RESGBlQfX7yqUMk3USxiLvVlyv28ZtDZ8ysUo
+/hzuhfXUkwSaIrRccvU3021IqQTep8KTE1HoH4R78qdoFrAO5GhQ/uAVgZ1ySxBO+hgSOKk
bSGNxGl/OAfjCwd9tIG7MSXDHx3Oi/coi6VNBpN9veh4Z53vHphZrfFcxi7edDJvWWyraGtS
u6/2ZyJogTbnE4zTgZKMCfjh7vkV0zmsRrHScGDX6ZT+oV9xhevECjHIhVnvNaakb3306Wxa
jqQtOo6TThBSEx9NCUjAm+oMIR0lqxlMmkszHdao+WxB31XEIEtrd0XFDB79RrHXbEeoExnG
6jrOTqedqGDutR/w9Si4OW5XvUIDpRaOG3TFtUGnLoANTC2oVCWrA3HBsGj7tS7y2OPVTFEa
offUBUFBGGnyVkCzAAAAAAAA
--------------ms090903090909070100040509--

--===============8754903562250202070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8754903562250202070==--
