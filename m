Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0979A05366
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 07:48:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 847B4385B7F
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 01:48:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736318901; bh=oy1KvgAqfjgSVLkDnBMpXFOStB6xpfainfb3zjZRyE8=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BqRye0V5He+kFLaupuY3F1DSpFf8nAFLgjwMbg3MTe9s/RCWl+wSFaB+eCvtVz0SP
	 uuZkol1H3GkHIqeUZq6G1wzfVj79wYlY8gs2JhnESvctIZRp3hapLy8rV1D8WhABLk
	 hIkjNu1NLxFYzVDXc0Gb5es9tLqox3R1Is/ih5ErIFie7m7qirVirbMmV3cAUtkOtt
	 dpZXLWAJaVMTA6PaYzytEnqRMPySeP16EhEm7pN0717M9IrupXw4girxgisuf2YRt9
	 wfdzL20xQKl5f0CJ/0WJTbFMkJMgDymPB4ggiAVZQlplhQtop9FDMte2fPwT3nq2f8
	 h0DekkGZWNFPg==
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by mm2.emwd.com (Postfix) with ESMTPS id E19F0385B18
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 01:47:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="NYEBHFLL";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp3-g21.free.fr (Postfix) with ESMTP id C9DB513F854
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 07:47:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1736318858;
	bh=2Aqlgt/spObrwe/zTmstZVoQYFXQuxjcre4g1jWpRu0=;
	h=Date:From:To:Subject:From;
	b=NYEBHFLLNFtUFZV/NkH960NKLpkNepJ99XgWneqz8fxeWBAE4Z7ubgzApBA9VpOd6
	 uYVGaCCON6cqjlt18g7ybsZdzVN7neceUv2+oNcRbSFfY8Fni11ZdGGvPh7uc8XC0T
	 3BpGp0xlzbgjRhO3knhO7hp2NKBJL04HE3ncZ0q6MomVLuIN/i2r4fJVQm71gtoXhl
	 6SH8/DkX1FRnsRhGbKqus89t0vPu2iq3NetAYL3OrdLaYPF0x5umMEkt03gccL4qtu
	 5chXwhc7zjy+jb1M295PINcMwGaFDqLaeab/tz8fmMHagtd2ETR+amAGONmokJDeg0
	 GuuCKTazkMTJw==
Date: Wed, 8 Jan 2025 07:47:38 +0100 (CET)
From: friedtj@free.fr
To: usrp-users@lists.ettus.com
Message-ID: <596764823.847657463.1736318858776.JavaMail.zimbra@free.fr>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.25]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF133 (Linux)/9.0.0_GA_1337)
Thread-Index: huBIIqDA3gKfZSDJ3GYWUhYkXioceg==
Thread-Topic: X310 clock signal for aliasing (BasicRX daughter board)
Message-ID-Hash: BXTPFCCILJ66DZNB2JJXKFVTBCDZ5ITQ
X-Message-ID-Hash: BXTPFCCILJ66DZNB2JJXKFVTBCDZ5ITQ
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BXTPFCCILJ66DZNB2JJXKFVTBCDZ5ITQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhlIGNsb2NrIHNpZ25hbCBmZWQgdG8gdGhlIGRh
dWdodGVyLWNhcmRzDQo+IGlzIHR5cGljYWxseSBzb21lIGZyYWN0aW9uIG9mIHRoZSBtYXN0ZXJf
Y2xvY2sNCj4gIMKgIGZyZXF1ZW5jeSwgYW5kIGlzIGRlc2lnbmVkIHRvIHByb3ZpZGUgYSBSRUYg
c2lnbmFsIGZvcg0KPiBzeW50aGVzaXplcnMsIGV0Yy7CoMKgIEl0IHNob3VsZCBiZSBzeW5jaHJv
bml6ZWQgdG8gdGhlDQo+ICDCoCBBREMgY2xvY2tzLCBidXQgd29uJ3QgbmVjZXNzYXJpbHkgYmUg
YXQgdGhlIHNhbWUgZnJlcXVlbmN5Lg0KDQpJIGhhdmUgZnVydGhlciBpbnZlc3RpZ2F0ZWQgYW5k
IEkgc2VlDQoxLyBhIGNsZWFyIGNsb2NrIHNpZ25hbCBiZXR3ZWVuIEdORCBhbmQgY2xrX3AgKEoz
OCBwaW4gMg0Kb24gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vc2NoZW1hdGljcy9iYXNpY19kYnMv
QmFzaWNSWC5wZGYpDQpvZiB0aGUgQmFzaWNSWCBib2FyZCBmb3IgYWJvdXQgMS1zIHdoZW4gdGhl
IFVTUlAgU291cmNlIEJsb2NrIGluIA0KR05VIFJhZGlvIENvbXBhbmlvbiBkaXNwbGF5cyANCltJ
TkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNCmJ1dCB0aGVuIHRoZSBzaWduYWwg
dmFuaXNoZXMNCjIvIEkgY2FuIGNoYW5nZSB0aGlzIHNob3J0IGNsb2NrIHNpZ25hbCBmcmVxdWVu
Y3kgYnkgcHJvdmlkaW5nIHRoZQ0KYXJndW1lbnQgZGJvYXJkX2Nsb2NrX3JhdGUgdG8gdGhlIFVT
UlAgU291cmNlIEJsb2NrOiBJIGhhdmUgY2hlY2tlZA0KdGhhdCB0aGUgZGVmYXVsdCBmcmVxdWVu
Y3kgaXMgMTAwIE1IeiwgSSBjYW4gcmVxdWVzdCA1MCBNSHogYW5kIFJGTk9DDQpzb21ld2hhdCBj
b21wbGFpbnMgd2hlbiByZXF1ZXN0aW5nIDIwMCBNSHogYnV0IHN0aWxsIHRoZSBjbG9jayBzaWdu
YWwNCmlzIHZpc2libGUgZm9yIGEgc2Vjb25kLg0KDQpzbyB0aGlzIHNpZ25hbCBjYW4gYmUgY29u
dHJvbGxlZCBmcm9tIHNvZnR3YXJlLiBJcyB0aGVyZSBhIHdheSB0byBrZWVwDQp0aGUgc2lnbmFs
IGFzIHRoZSBmbG93Z3JhcGggaXMgcnVubmluZyByYXRoZXIgdGhhbiBvbmx5IGEgc2Vjb25kIG9y
IHNvDQphdCBzdGFydHVwPw0KDQpUaGFua3MNCg0KLS0gDQpKTSBGcmllZHQsIEZFTVRPLVNUIFRp
bWUgJiBGcmVxdWVuY3ksIDI2IHJ1ZSBkZSBsJ0VwaXRhcGhlLCAyNTAwMA0KQmVzYW5jb24sIEZy
YW5jZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
