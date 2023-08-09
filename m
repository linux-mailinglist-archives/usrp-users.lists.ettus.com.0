Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC25B775F1E
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 14:33:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B14A5384AD0
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 08:33:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691584408; bh=vcw5alhSVbr2YJoV7yCZ/KKwnRPsVOQswIFqipPy6NY=;
	h=In-Reply-To:Date:References:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=SBhVUAxNorI1465631ZIBtnjMuYWwTvF6CymTSCUKUbN9R8zSfIvWD8XMCVlTX1Fn
	 I/jpA0uOzyldaaiAooBbzPA+HzBmYfbD0WoP9kk7Fby8lOFnV4ZT9lnmcD0QUVQjRg
	 +n8cmfs3XdlsCIsjqVE+1Ocw7OlxppukTc5IA3z3xg+NLFJ+B3KvnShTiTThvunjfC
	 xQ3suZhSzneG3JN2kn6EwYdb0kdJxKR9n85uXPhrol384nJ1eh++r77fmNP7BhIS3Y
	 gR3oT4d99gfmTR8zOWCdrKpMP2EF4sh3G7KarzkzpgTGCDhKe5JqWbQ36F8IfBueh+
	 skHP2xHuBqslg==
Received: from sonic304-21.consmr.mail.ne1.yahoo.com (sonic304-21.consmr.mail.ne1.yahoo.com [66.163.191.147])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FDE7383FDA
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 08:32:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="r+jJYakb";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691584373; bh=X4timRFPL5UBy8t96Ig82wRCaWkVwyR5dYJZ8NvhYG8=; h=Subject:From:In-Reply-To:Date:Cc:References:To:From:Subject:Reply-To; b=r+jJYakbQoAaGf/v923izZ25AqaT0HGz7QrCc0PAeWzk1QDmgS0NvFSd+JBqWAH0JR35jYaRMpE8WPAlpUQKz+jyZlXOReEEP49n6LxCZD0s8ecLz6Aofu9QQAjsGFaNPNqYANJGhafSlPhkIeQgAeHCpfklosT3ua8KsR3+/60QrMooVaqBiEPdx/gF03rYNsXoPMH1HrT+kBMYC+SVIpkOYEcM4ohxYmLwKdohKVPRwVMNOpLFWDKrFZEjibQks4iGbAnWX2bPU8oGOS9d6F60fUHUCIe8EjxqYc1GvyK7ZRTAopeExPFgAM85oMZ0A2BUNwq0/aWlOy8Vyb5Gvw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691584373; bh=L6uAGrlWl0CiiWGjhtZf7xez8Re8UMdnKjM5XHDzcMa=; h=X-Sonic-MF:Subject:From:Date:To:From:Subject; b=MEoM/DF+guJNTKxYp5yxUVQ5X5xfOMRK8DGpIESr3Gb2XS0KI1+lGb2P8P3+xlpERmVEcMITWFgoWiPxtBzmWyMi4+4EUbOuMVaDOnr+biroIudOIl+BAkRNZ67ahhzI9oK/yFGZrM3N+htvC8jSAQiq5zPOtBe/P+VJodJBDPb6jYS6HI620Mt0WwbjnLM+c2vgwziRQWcPyz0G5eLIqtO2iTSXtcev4E7s64HPPlwwbIm8MXx9LI0YNt16A/y1nKpcmWe9MYm7kgp4B0swSFF/B6/ARNs3aUVBtqGqa9OSWPU0oDgdUyDtTVC6VL2yWq4X/J1UlhCFh2zHXBMIPw==
X-YMail-OSG: OM4LCSIVM1mXPiqdiO0Y0t.PzWH4vm.1E0JsDZvm5yDV3Mp0KwSkoseDxHbkTcP
 Ibw7hai7vQMMHu44wS6VsX7U9NS3555IUO3EoMBiaTLn73J5ErSZvD5pEMEBKnBDxXdpt1UqTr70
 DmvS_xpdnWLa3uuECD3QDL0rY4ccWkbI7oIXjPQKmOLkHUOqCNiim54NHxRPzPyGKKLkXk1hQACy
 nnUKPQZUI.IAe2RN4dwYOjG4Na0gF1bJKZbMiqhpmrH8ZgEvQSjboSf7lEEILvt5hG4kfQ.U3J9p
 6.u5ecXlqw4c1HEyNwlMAsFwsDMdnhNYATZcA_Sri3y4ZMcW3hBaumacYTkyGw67Ts7ReNJgwLvr
 EHHp8AFxNz9zhJDN9BWy1jOr_6jtGi2KjLnoocmzbpFKXMOAYM9H6dkZf_krM0dhwIgUCa.q3lOp
 8oaseU8uKeMVIUOuJ51EaUuFYIbVG_gMUIjfi78jVhT0_MwBHm9TSqKH5iYm762ldsV7iTcvhqqG
 FCcMZsfjKIEjgZLbSybYVqMPcaYmg3m4Y9vIfzxa3A.lOLF2blSMkbyoUWdqvdSaLeGZiDAwERrd
 9jTKldDyeVWfE9N95nSRcC7dJ7FjxZwWo6eVnO0e6pF.IQjfwIXgY54_fY_KrDe0qLzpZ1IM1qiB
 HJVNQZ1PC3TorAz6vImnMtrl4ytNrGbwhNqfwljWsGVpnmpwwf33S.jrrfTH9fkG1n7rWq1_wXPJ
 FjqENshAbKyPsvIl9R0LHWgcekA0yFtXbPCrDBBKGdAsOWC8wOrZgwXtIeBMhzlmHGYFkjDwNaGN
 I2Pw4Z_Vkz7Hi3SW3y42MCPHw4cLL18aXG5aVGGc3MSgZGMfRE8VrQkRU0dweZBceQgu0FB_h_sk
 pLOmb2lrFDu..u_GPILCcnSi.cBgaVdRUegmOBvxVSYMgBZQUCRgSMqBazKgpbKFFjlFEAmK9r2w
 rYipQcryX7Hu_2qNUYU5bTamwFrVXHT8yXuCxTr1H0lj77p1aP6br.B1lixfeTLoMHYaAGgxOSJI
 MkG0hHTkrnjXjcHWi_xQUiWa0AXOtKeZPcVNKmjInGU6mtYOnZV5R3DQ9ooEdIueSy8TW.kvNt79
 z4SDEu7zuPn_P8AhowoCOhJdC2rugPD1D7tYrZrIm6snBTG_Jr7Ga_OT_MYlDMMjlygk.IRL6BRq
 l_LAvI71.nM_xnPK1V.IT53fFi0o7sRVHanJbw7A0qVjokCn6UA_DvK0c2cI5VEDXjbV.Up.n04E
 7rm6GS87bqgx17pUXTGc1h8NfK8jxLzmbMooNxWbIYlsaLo6hIlr.nDUen0QwBJTmzUnr14Eqjvw
 P50MX.mcmAumcOiTtA8gX0ihHEhqwm4qtkmskDggsmU6yvdM50R1PFTfgYgnL3mZWPUbkmuDiraP
 XJ0uL2P7cadrbxxX7fSlqgzV1NpB1c3MQPZkLBNwsKH7lYyBDqdndWgVCGxIoRMd0qC5BGaoqZpw
 Wcg.wDrQ8k.VlTd2bnHI4mhdayU7SgMJyVcb_wliIJoHQ7H7Ii1bmQJFk_GQL2gPtdGoCOI6Rexw
 rrWfuZaF0lM9D.dUDrX9fcQYICbxCzHzy.FzIIK6m0YIxSGQhWWSnC7HElDt.PL4_qTMmabNjHu7
 GyrsndvnuRAa.31Rb7_jw7vwjy6o0r_8KhT_L7e7MTqFIFsdfr5FFvfJXFlWaeHC5jv2cWTJpkVn
 v6_RuV.GzC3Tgao7k.axNK5RFf9aaMjccDxiyp.6tahzUlBcATOPaqV8eTZLcKyR5hVQePE2ar8t
 rAi2ppy_mhcGtvAoYEAyNqCxEsP18ngv7TCpDC2KRvFct27oZ7vb4gObYWSeUltEuh49OSUx4JlW
 m8y.Rz16Jtpn6MCW976DsA0g4I2IY0vysiKkR3GzgbBqbYcGLn4tkfaieFv4Q53G08EDVoqezTuO
 VKa_iLsW5rnjKgeL5RS22MNS5Yee9q76j0FKsYuKrnFj9rjXz7dbOzvaqlrZg6cLZTlsSQjf.wwr
 Adc12vfk.PpdvEEiHNg6wMJOOx4c3nnEpnR1gCnh8UBLJYvPvCu5jB6UpiYbSRhCPU1qDVNxeb5B
 QLap2L8Y7eLDbhjswtarEBrXQg_d3ouYUUgBNIyI4f2mvyRsTs9N3N3.N4vZf4AUOGfdoKWz0Vwh
 tOPaIkyvrPaUb.VvhSQTwSXUSG4SK7MNlJi229ylyBmZWytg2tV7BxnSvrUo0.aJnzAUk_Ov1w4g
 szSiEvKYGMrgq8oMQ_IYdSnEbNlqa.W0SycE6jHwFBQCM7d0wV.s-
X-Sonic-MF: <royceconnerley@yahoo.com>
X-Sonic-ID: 2446fb7c-6b99-4aae-b60a-8fd1197e6afd
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.ne1.yahoo.com with HTTP; Wed, 9 Aug 2023 12:32:53 +0000
Received: by hermes--production-ne1-7b767b77cc-84nnk (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID cdfce1f3d28b7929c5262e7f6e6ada6a;
          Wed, 09 Aug 2023 12:32:49 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
In-Reply-To: <C97261E2-EE56-4818-AD1A-C516A94A8C31@yahoo.com>
Date: Wed, 9 Aug 2023 07:32:38 -0500
Message-Id: <00D240A2-D170-4CD1-98E3-867F79B09BCB@yahoo.com>
References: <fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno@lists.ettus.com>
 <e577b681-b065-f2ee-a2f0-f18f6f4a828b@gmail.com>
 <C97261E2-EE56-4818-AD1A-C516A94A8C31@yahoo.com>
To: Royce Connerley <royceconnerley@yahoo.com>
X-Mailer: Apple Mail (2.3731.600.7)
Message-ID-Hash: 63MQJSAWBU2BDOBAOLAWWRIS7URKTNDS
X-Message-ID-Hash: 63MQJSAWBU2BDOBAOLAWWRIS7URKTNDS
X-MailFrom: royceconnerley@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is the power socket on an Octoclock CDA-2990?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/63MQJSAWBU2BDOBAOLAWWRIS7URKTNDS/>
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

SSByZXRyYWN0IG15IHN1Z2dlc3Rpb24sIG5vdyB0aGF0IEkgaGF2ZSBzZWVuIHRoZSBjb25uZWN0
b3IuDQoNCj4gT24gQXVnIDgsIDIwMjMsIGF0IDI6MjkgUE0sIFJveWNlIENvbm5lcmxleSB2aWEg
VVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPiANCj4gVGhl
IEUzMTAgdXNlcyBhIGJheW9uZXQgc3R5bGUgbG9ja2luZyBiYXJyZWwgY29ubmVjdG9yLiAgSSBo
YXZlIHVzZWQgS3ljb24gS0xEWC1QQS0wMjAyLUEtTFQgb24gdGhlIEUzMTAuICBEaWdpS2V5IGhh
cyB0aGVtIGluIHN0b2NrLg0KPiANCj4+IE9uIEF1ZyA4LCAyMDIzLCBhdCAxMjoyMiBQTSwgTWFy
Y3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiANCj4+IE9u
IDA4LzA4LzIwMjMgMTM6MTYsIHNoYXBraXF1YXJyeUBnbWFpbC5jb20gd3JvdGU6DQo+Pj4gDQo+
Pj4gSGVsbG8gTWFyY3VzLA0KPj4+IA0KPj4+IFRoYW5rIHlvdSBmb3IgYSByZXNwb25zZS4gQnV0
IEkgaGF2ZSBiZWVuIGh1bnRpbmcgZG93biBhIGJhcnJlbCBjb25uZWN0b3IgZm9yIG92ZXIgYSB3
ZWVrLiBJIGhhdmUgc2VhcmNoZWQgYWxsIG9mIGRpZ2lrZXksIG1vdXNlciwgYW5kIGFtYXpvbi4g
SSBoYXZlIGFscmVhZHkgYm91Z2h0IGFuZCByZWNlaXZlZCBhIGJhcnJlbCBjb25uZWN0b3Igd2hp
Y2ggSSBwdXJjaGFzZWQgZnJvbSBFYmF5LCBhbmQgaXQgd2FzIHRvbyB3aWRlIGZvciB0aGlzIHNv
Y2tldC4gSSBhbSBjdXJyZW50bHkgYnV5aW5nIHZhcmlvdXMgY29ubmVjdG9ycyB3aXRoIOKAnGxv
bmcgYmFycmVs4oCdIHZlcnN1cyDigJxzaG9ydCBiYXJyZWzigJ0gYW5kIHNpbXBseSBzaG9vdGlu
ZyBpbiB0aGUgZGFyayBub3cuDQo+Pj4gDQo+Pj4gSWYgYW55b25lIGhhcyBhbnkgZGVmaW5pdGl2
ZSBkYXRhc2hlZXRzIG9uIHRoaXMgd2l0aCBhY3R1YWwgc3BlY2lmaWNhdGlvbnMsIHBsZWFzZSBs
ZXQgbWUga25vdy4NCj4+PiANCj4+PiANCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPj4gSSdtIHRyeWluZyB0byBnZXQg
cGFydCBudW1iZXJzLiAgIEZyb20gbXkgb3duIGV4cGVyaWVuY2UsIEkgdGhpbmsgaXQncyBqdXN0
IGJhc2ljYWxseSBhIHN0YW5kYXJkIDUuNW1tIHggMi4xbW0gYmFycmVsIGNvbm5lY3RvciwNCj4+
ICB3aXRoIHRoZSBhZGRlZCBmcmlsbCBvZiB0aGUgdGhyZWFkZWQgbG9ja2luZyBhcnJhbmdlbWVu
dC4NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
