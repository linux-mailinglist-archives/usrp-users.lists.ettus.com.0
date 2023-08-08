Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94044775EF3
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 14:29:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A502384AC4
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 08:29:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691584148; bh=9TP1e0T1cLT2bgZnzKlcVpVNvQMXsmKNMHC3Y8QUcR4=;
	h=In-Reply-To:Date:References:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=wLj8sbnvKCmUVpYuwSVaIqgwsHcJqtwePm8cVynSGrNAn3oapgSi5NG4zWXT6gjr4
	 vRTMBoZGTvKy+XIQ7UwS4ZesTzJYU789jP2dUVGX8qjWC44aA08QA6rRf8PqW7qeb5
	 JPvnjI8lb4Qpdxj3XNZ0cgXtIyI6pO4RtY3EXLFyTlvoDQkvdLC76gonJZtAyG4OII
	 4zP6vI3ijyA9SOaZdCEnfgN9eK2PkYx5ef+6ryb5oJf378Z7iwAIhql9OkWJ68ZxfZ
	 331GFRCEOidAABtzSAluwz1Cj1XYNW6olf98wjk0RTvUKLYT5C7DNUpXuNPeD15bEi
	 VDsK5mosTkgPA==
Received: from sonic306-21.consmr.mail.ne1.yahoo.com (sonic306-21.consmr.mail.ne1.yahoo.com [66.163.189.83])
	by mm2.emwd.com (Postfix) with ESMTPS id D5CDB384AD8
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:29:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="KkgiKJ4a";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691522985; bh=aLscTeewUOKaZ5U0NR23w8IyvYO8zuSXyYkP9wSxu3s=; h=Subject:From:In-Reply-To:Date:Cc:References:To:From:Subject:Reply-To; b=KkgiKJ4aF1BS6nGNS9tEXxlkRFItjoO4c0nDJg2O3a3aSHqkTC66QgRlh9FOLrAvxFVf5wrH4IcSXqL5G8O4K7Q31Q8C2q4ZHOpZMOl3yX5wu6lj75F48wJjl+6kdKkVlZqdil39vjoqU1vHA+E5Lao2ld4avbRpH9I0B4Dfz9IWZQi5ScBmiZOlbK8xKzUAligzidwh6MpCDwTUhcXTK21KXV2oTS9fR0DSPeBkRoxNNHA6t1063sxOUkEQxlgNXkbQ6M4qk+mkrKR409J08GOaFcDupjj+saUCNHYt7nzZWEyqWy3y3mo8dLxdatkbBDGdC6TErwD2AKaKGVSsoA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691522985; bh=Xi+CzFHepVImQ51j6d90lpqFIisZVvARzyVH+4EGzZc=; h=X-Sonic-MF:Subject:From:Date:To:From:Subject; b=jO4HmdSfq392lgS2lwsBdPqlkevuJmV8ME7M+IEvc4mSQq+aPnE/hiO5oGoejp12pjPOOxdIgU0iQ1oRL4v8U+BT0DGzVZ1+ji/VOt9614wEGcefUljyA8fPPVZyvkPzfkSif07LUfEo9iphwF7+lF1xgbNaOKc/1dwZ6rjmN4niq8xaH03XEdpfXk0vO6ihtHKk+fmwT036s2t/XPWpp/5t7v9QEqyASCE6G4u4/WB3KjxN4VCcRZRmbRlwLgtJEB+S2oS7jfpot0qsptk0EMOH1cQlwAYeTbncS36PEGBlY0BRvZ1Cvgpr9hYpV8Ew5utWqpmx3VyFAMVExx8vcw==
X-YMail-OSG: H85taGYVM1lBWRHcDD9XmHnpFE97mEhtb1qJB0kO64wQUzmOf4TYHJe3K.sm7Mt
 ypJ4RmwweDGXRD7VYGeuma4riVj0wrxSwr3eq1.g0efkDyw75VpzRiEWcg9jGfNrPO5IUtFtdtL0
 LTMnBsTDKX_3_gfwkdF9Gov4t3gVsYooFhv0qbrq5hZPQecHf6g_UqqheApPFFJAdUeMeoAh_YA4
 Ls..ZDcxECmgKiVkUYBnYF31qgIZP7_kHtJlr3d_30HLMkwjxlBIS4TQaee1Ag7t4uBChAN43gjO
 VrIhKpx1ppl9fyweFpNA55jd4ZHojNFlO6FB.l0CiC2kK0DmYjSxSFJSG4SYhXLSdJ.USTBK_yxZ
 OXtS_3H84FLuc.AgaGVvCE7kHPdkWcgoATePv0SmgnL7gMkeOd..nP.VuwsXqmpmPwZejJ1L8YBJ
 yquY.BabKMPlyUfRstlHmvr.PIGDiomMDCZFIwL9d9wfiGdmFp.I4pFL_Dqfi2t6W.AK8H3fVyQt
 gK3XbDYRdcLGgWwX9p8QjHN0mlJwIQZdTIMBr8ek1FRCNg7sPWbV5sX.Klq6ZMeb5R2fziHYE7un
 rZJQgTC1xha.3M94kxWaSAlH3yjkFRH44eOD8iX65K6iBSoT9wMvh1laTOokAGHkws8Mucn.uO5H
 N8XIrzhuqShvUZy3HBYvz7VagzFCLG3psWGVMwnP4A0.k3yVEWJ7gqrja5Kh_KxTiOyLbm899dz9
 VB4xPVh9769bMVzrqfNxiQxwdoe6bjFKFz_DgCJ2v5Xhis5kxFVhdRhIso30_mESzOJZBulOtEy3
 WO4PK5f6qhHGfbcPq6P5MKSC3vYuQ7WdArSRdkJL8Nv_CoiYWan94bx.8XhSNd85F0slZqVzDkBH
 kxNS4xS7rGWFfgmG6Odk6nl1mJKDjF30.5EUwka4EN4ykSsby_eQ5hhGjJbvWBivgldnw9OEaCi2
 K3ZcYXqRYAj4hsT0NIoGvCMBG7XpwdF0xSgqwt.7B9EXoLA9XmjreoO7JXc_AG7kMiq34SDBtF6g
 VjelQ_XRNmAn8CFfqbVkbO5GP0K5vpTjMTvOjXruOlPoFHkaYQ1FYHFRaM6EIn9ZHy6h4mvuCFtr
 6R4BrflINUJXyYcIHPQtVB.UOfovir6FVLM9mBleLlnrjNZIXVQ2hl4k4AbC97QJ0JumlLBM4qYT
 SfHvMCEVP3psZwXZmLnkhGt6bY1q4BDm8VLbY6TN4qo64GGjkrq67yFOXXfPyvx.XYMLNe7D0qit
 VChHrb4hvdAMwdMczzeNS18ZH7qfZ7fYidOOognguiDvTG6PKVuszC5Q8.mWwNPrNwhpMMTH8nBq
 7GgS.bx5LuIlLXz.._J5QcM4QRuUF5vahX4xVBke8ep6v.tF9YlK16oyq004TbADNL1aw_1SphyU
 7nCx9Z9zB7Oq.rFcxrdcWKL3M696XGqeB71c.QVnX2YlNMG7nAX.8kDCY360dmC6JDKBc2FVPZYx
 n26Mg7gd3_J7PVnQbWpiJOrfSfwQt57GLRmLF9u12ouLCQjtcyX5F8wjXa2O.L00bdli0HERI7PG
 PxN4NBopRDBvAi6lERyPgsMAZVyB7tamPKBzsd_MmlO9aQcNCP0moY7o9Nc2q96drmFwxztpCw7p
 IBLS.s2wI.wTSK8ORgmaMTuXz3qp0lGelNsFr4QLD7vaUJAhp3dXND7YJGZEVjAWfedpiUvAyLbb
 _qIxNvrrEI.9iD9y44ASbdELZAa9PxlHlvXr4JzpTFPeE4PSt1G1navcgt4lut7kR1xT_L4ALLyl
 QbESw2Tv962yVOGpPNjacxfiDOaV7PcIk9Z5_bC6iW0ueHYxf4sPLAGmzqiQyekA7fLwpXCqu8hx
 9sG8iRzqQIIFNcq19.35lQgwHofKl.3m1X1pBhYbo9545vBPfxvOMQsvRoGVzHgCa0DfBFvShdOn
 nJVrnMU4aWscL8LLekyGRbcVkmPucwAXM2S9UtF0LqjR6F5NNa2q7.x3n21OkxVikbTVbKl9V6dh
 j02qGb_jUdeP5zOPk9QPL.LmDMagruNhDuleg_b8Wh6FVjDfjx8gAfjsY98zrSuBN8rqLcWCFIKF
 _jXbBZcYkDBTSEOX5yd2awldY2gkJ9cjGHSZxb0lWCHzVJ_0hJ0PZSgfGkVKkUgFpS4rBpLdPd_f
 TEAoxk7hJAQSrZbww5CoKFPcb2HzWQhez8rKd_bSYqEdZu9jfRXKje2RN_saswfVv1OJaHGEwRsx
 beZRQeI8RKagcg1jo3_eAIVNa7FSFlc1fWSB4R7zT
X-Sonic-MF: <royceconnerley@yahoo.com>
X-Sonic-ID: 7b28031d-844e-48c3-8115-8f20c1603ffe
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.ne1.yahoo.com with HTTP; Tue, 8 Aug 2023 19:29:45 +0000
Received: by hermes--production-bf1-865889d799-r6v2w (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 9364e46f41948c9efd971e5628c0a4a0;
          Tue, 08 Aug 2023 19:29:41 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
In-Reply-To: <e577b681-b065-f2ee-a2f0-f18f6f4a828b@gmail.com>
Date: Tue, 8 Aug 2023 14:29:29 -0500
Message-Id: <C97261E2-EE56-4818-AD1A-C516A94A8C31@yahoo.com>
References: <fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno@lists.ettus.com>
 <e577b681-b065-f2ee-a2f0-f18f6f4a828b@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: Apple Mail (2.3731.700.6)
X-MailFrom: royceconnerley@yahoo.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: WRR6JYEQKAVZULD44GWNPVV2OUWQT77L
X-Message-ID-Hash: WRR6JYEQKAVZULD44GWNPVV2OUWQT77L
X-Mailman-Approved-At: Wed, 09 Aug 2023 08:28:36 -0400
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is the power socket on an Octoclock CDA-2990?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRR6JYEQKAVZULD44GWNPVV2OUWQT77L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Royce Connerley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Royce Connerley <royceconnerley@yahoo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIEUzMTAgdXNlcyBhIGJheW9uZXQgc3R5bGUgbG9ja2luZyBiYXJyZWwgY29ubmVjdG9yLiAg
SSBoYXZlIHVzZWQgS3ljb24gS0xEWC1QQS0wMjAyLUEtTFQgb24gdGhlIEUzMTAuICBEaWdpS2V5
IGhhcyB0aGVtIGluIHN0b2NrLg0KDQo+IE9uIEF1ZyA4LCAyMDIzLCBhdCAxMjoyMiBQTSwgTWFy
Y3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiBPbiAw
OC8wOC8yMDIzIDEzOjE2LCBzaGFwa2lxdWFycnlAZ21haWwuY29tIHdyb3RlOg0KPj4gDQo+PiBI
ZWxsbyBNYXJjdXMsDQo+PiANCj4+IFRoYW5rIHlvdSBmb3IgYSByZXNwb25zZS4gQnV0IEkgaGF2
ZSBiZWVuIGh1bnRpbmcgZG93biBhIGJhcnJlbCBjb25uZWN0b3IgZm9yIG92ZXIgYSB3ZWVrLiBJ
IGhhdmUgc2VhcmNoZWQgYWxsIG9mIGRpZ2lrZXksIG1vdXNlciwgYW5kIGFtYXpvbi4gSSBoYXZl
IGFscmVhZHkgYm91Z2h0IGFuZCByZWNlaXZlZCBhIGJhcnJlbCBjb25uZWN0b3Igd2hpY2ggSSBw
dXJjaGFzZWQgZnJvbSBFYmF5LCBhbmQgaXQgd2FzIHRvbyB3aWRlIGZvciB0aGlzIHNvY2tldC4g
SSBhbSBjdXJyZW50bHkgYnV5aW5nIHZhcmlvdXMgY29ubmVjdG9ycyB3aXRoIOKAnGxvbmcgYmFy
cmVs4oCdIHZlcnN1cyDigJxzaG9ydCBiYXJyZWzigJ0gYW5kIHNpbXBseSBzaG9vdGluZyBpbiB0
aGUgZGFyayBub3cuDQo+PiANCj4+IElmIGFueW9uZSBoYXMgYW55IGRlZmluaXRpdmUgZGF0YXNo
ZWV0cyBvbiB0aGlzIHdpdGggYWN0dWFsIHNwZWNpZmljYXRpb25zLCBwbGVhc2UgbGV0IG1lIGtu
b3cuDQo+PiANCj4+IA0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IEknbSB0cnlpbmcgdG8gZ2V0IHBhcnQgbnVtYmVycy4g
ICBGcm9tIG15IG93biBleHBlcmllbmNlLCBJIHRoaW5rIGl0J3MganVzdCBiYXNpY2FsbHkgYSBz
dGFuZGFyZCA1LjVtbSB4IDIuMW1tIGJhcnJlbCBjb25uZWN0b3IsDQo+ICAgd2l0aCB0aGUgYWRk
ZWQgZnJpbGwgb2YgdGhlIHRocmVhZGVkIGxvY2tpbmcgYXJyYW5nZW1lbnQuDQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
