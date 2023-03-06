Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B19326AC97E
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 18:13:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17EF53853B3
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 12:13:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678122784; bh=d7fThsb096H0XkzkMv888gmKm67GWnOfoafBQiDFQXw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eaqK3TJE/nGR6iZEZLWEZ7xkFmthYDhOuk1sbs16jAmahvzbwj6SthIl0prvd7U9W
	 mLLFV16npKEHbdwzPZHVsE+YjzVQQie+6wkfQmEl3Y2dsaLSYddwSiF/evM2GnChaU
	 k5GQPJBdsf4VCq1tc06DxQSPY3vzi8JBK4L+dFp2dBpq9LN+LMF0v/mEm6Z+O39ZmI
	 WOD1zRMIPUeasyOB7a9tyISouDDKLzHZCjc5WL2tyQL7TJWJtB1BcIT5spfqs7jxzv
	 RzbUJMLGMi19fCr3WvED+elnImJoPnUw/oeOOyyisTRFos/rZn8djxFReU0+U2JB1D
	 hX7BxR0TJ/J5g==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 48C10384F1E
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 12:12:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L/jQfFj1";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id y3so7116430qvn.4
        for <usrp-users@lists.ettus.com>; Mon, 06 Mar 2023 09:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678122735;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+HQigC/2HKk2pVyI78eOzso7g/bH/q/u6xUyjmPdKc=;
        b=L/jQfFj15FuzearlIh3vS4XRaRwIhYlskrG4Uu8uBvs31NMf2d9oJmnP0UEwVADlzh
         aAryRn/6m54jNgSPeDmlz0jyNDhZakd6w2nfWebbn85rJGGhUjCT2Y4SCx534dfRwUTr
         gHPz8/1Hh+uyJ8ysfxGprUJ1vVnBVQi8gNr0T2sEHGvgiTMd5SlhDoiNHQmDOLjK8Ax2
         4tzGYTz78YWC0cOnRyRCjT72X56Z0FpObo/874/rVyT7sFuExPTezGjSapGknQD/V7It
         j7tp3zgnb2mWRDmF0caX/vm7pvvF4wU6LLqjHy+ZfObBqun898TbmrUZwPU9dEHtb1to
         Ypgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678122735;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+HQigC/2HKk2pVyI78eOzso7g/bH/q/u6xUyjmPdKc=;
        b=KAOU5SQ+8q/Ev+PkeLQgJHZYhi8k5kK/Plc3vUKri4dhp4YfwBDfaGkFy1HrzXoxOd
         0IZzFsEqMQaDLKEn0zTSNtPCr3a1rxmQfPPdf+DevvJw+x6Oub7PAx21D15WEU9B8F5/
         /XAt25+AndlFGV/z+m3W13ETxRU0BVgce1ZaeyKVkUy4Yd8nFOkA7LT8qjMw/lasuK4M
         idDQ3p/XiJ8RiZFGB8j9pKuJAtVAqv7H29hTh1hZnq+hz950W928rtyT9FLVFcw9RtFa
         L+xhHe0RIkFmK0urWLmkpTMMXrSk1k1R73u6gF8E+pH9hduzLLaqQJn9B5O73YgvfrEN
         49hQ==
X-Gm-Message-State: AO0yUKVu+HMpaiWmXeUbcOXyBDqZey84LV+xHJt5o6ofAuShnXh5R7C0
	LECtcKMSnVR+58LHtgJvkvJw6nPQNvU=
X-Google-Smtp-Source: AK7set+IOctEvUWbYgh4kGSn2iYjJR7jee1Q3DdstDPtH94SuHUu1QNenSNytYxVffdQlZMBnA5qbQ==
X-Received: by 2002:a05:6214:cae:b0:56e:bde8:7ab9 with SMTP id s14-20020a0562140cae00b0056ebde87ab9mr20825812qvs.41.1678122734919;
        Mon, 06 Mar 2023 09:12:14 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id e3-20020a05620a014300b00742e61999a3sm7872866qkn.64.2023.03.06.09.12.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 09:12:14 -0800 (PST)
Message-ID: <9158c2ee-9f56-9724-6bef-5754a88f5eb1@gmail.com>
Date: Mon, 6 Mar 2023 12:12:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8NUNVvJOOiemNjxv7ueYH0Y-xzwLALqCr4V1LAO3UKpqh0Ziv5SE5eF4hoAEt3mXKZ313vV_jLOTO8o8TIygAQjpwGICYqVA6a_oT8J7ty4=@protonmail.com>
 <8eae5ca8-6242-db6e-3580-00df89008df9@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8eae5ca8-6242-db6e-3580-00df89008df9@ettus.com>
Message-ID-Hash: E7GY3YM7667HEMZ462264OAQU7642HZW
X-Message-ID-Hash: E7GY3YM7667HEMZ462264OAQU7642HZW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10 Gigabit Ethernet for USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7GY3YM7667HEMZ462264OAQU7642HZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDMvMjAyMyAwODo0MywgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IERlYXIgT2xvLA0K
Pg0KPiB0aGF0IGNlcnRhaW5seSBkb2VzIHNvdW5kIGxpa2UgaXQgc2hvdWxkIHdvcmsuDQo+DQo+
IE5vdGUgdGhhdCB0aGUgbGltaXRpbmcgZmFjdG9yIGlzIGhvdyB3ZWxsIHlvdXIgbm90ZWJvb2sn
cyB0aHVuZGVyYm9sdCANCj4gd29ya3Mgd2l0aCB0aGF0IFN0YXJ0ZWNoIGJveC4gQWxzbyBub3Rl
IHRoYXQgaWYgeW91IGFjdHVhbGx5IG5lZWQgdG8gDQo+IHByb2Nlc3MgZnVsbC1yYXRlIGRhdGUg
ZnJvbSB0d28gVHdpblJYLCB0aGUgdGhlcm1hbCBsaW1pdGF0aW9ucyBvZiBhIA0KPiBub3RlYm9v
ayBjb21wdXRlciBtaWdodCBsaW1pdCB5b3VyIENQVSBwZXJmb3JtYW5jZS4gVGhlbiBhZ2Fpbiwg
DQo+IHRoZXJlJ3MgdmVyeSBpbXByZXNzaXZlIHdvcmtzdGF0aW9uIG5vdGVib29rcyB0aGVzZSBk
YXlzOyBpbiB0aGUgZW5kLCANCj4gaXQgZGVwZW5kcyBvbiB3aGF0IHlvdSdyZSBnb2luZyB0byBk
byB3aXRoIHRoZSBzaWduYWxzIHlvdSdsbCBiZSANCj4gcmVjZWl2aW5nLg0KPg0KPiBCZXN0IHJl
Z2FyZHMsDQo+IE1hcmN1cw0KTXkgYW5hbG9neSBpcyB0aGlzOsKgICJTRFJzIGFyZSBsaWtlIE5p
YWdhcmEgRmFsbHMuwqAgVGhlIGZhbGxzIGFyZSANCm9ibGl2aW91cyB0byB0aGUgc2l6ZSBvZiBi
dWNrZXQgeW91IGhhdmUgdW5kZXIgdGhlbS4uLiINCg0KPg0KPiBPbiAwNi4wMy4yMyAxMDo1Niwg
T2xvIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPj4gSGVsbG8sDQo+PiBwbGVhc2UgSSB3YW50IHRv
IGtub3cgaWYgaXQgaXMgcG9zc2libGUgdG8gY29ubmVjdCBVU1JQIFgzMTAgd2l0aCB0d28gDQo+
PiBUd2luUlggdG8gbXkgbm90ZWJvb2sgdGhyb3VnaHQgZHVhbCAxMEdiRSB0byB0aHVuZGVyYm9s
dCBhZGFwdGVyIGZyb20gDQo+PiBTdGFydGVjaCAocHJvZHVjdCBpbiBsaW5rKToNCj4+IGh0dHBz
Oi8vd3d3LnN0YXJ0ZWNoLmNvbS9lbi11cy9uZXR3b3JraW5nLWlvL2JuZHRiMjEwZ3NmcCANCj4+
IDxodHRwczovL3d3dy5zdGFydGVjaC5jb20vZW4tdXMvbmV0d29ya2luZy1pby9ibmR0YjIxMGdz
ZnA+DQo+Pg0KPj4gSXQgdXNlcyBQQ0llIENhcmQgd2l0aCBJbnRlbCA4MjU5OSBjaGlwc2V0IHdo
aWNoIGlzIHN1aXRhYmxlIGZvciB0aGlzIA0KPj4gcHVycG91c2UgKG1lbnRpb25lZCBpbiB0aGlz
IGxpbmtzKToNCj4+IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfeDN4
MC5odG1sIA0KPj4gPGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfeDN4
MC5odG1sPg0KPj4gYW5kDQo+PiBodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQLTI5NzQjQ2hvb3Np
bmdfYW5fSW50ZXJmYWNlIA0KPj4gPGh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlAtMjk3NCNDaG9v
c2luZ19hbl9JbnRlcmZhY2U+DQo+Pg0KPj4gVGhhbmsgeW91IGZvciB5b3VyIHJlcGx5Lg0KPj4N
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
