Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF0984098C
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 16:17:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A9653850C8
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 10:17:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706541464; bh=aEIgsBcwtmtvnJuPnNayR0hVxKgJZu6BWGF+c/Z0+3w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qGuG7pyFxVG9kh9RhNa5CQmfyuJI5YQXCSJiw9m7Rh0Fr1JmsK+bECWnVA6m92Hc1
	 Sx9RogH/6FKSY3zQW2NOibMhHGmcliNOtWhmwPJWU2OWUDihg27hLuS7Bv1gpKmFbb
	 EiBIX+5uEBqnVRpQFgHxf0RDpNwd6pJ/GduJZBObV8ELndk0APl32rLCA7vPVtLeEv
	 1K/Iq/jVmQAh1jJRJZWMXU4HFUEWBfxSBaT4Z8zC9lcPnADYXMY+NMzem37UhnspqD
	 f76+dNqvI9fw1VTGsmuLFv7oYqybYx+xGaCwi1pdt3msOC8+TB3GUcLgsXqyfNrj/F
	 cfbBaeh+1Yt3w==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 19A6A384DA9
	for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 10:16:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Hx6Nwrjy";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso334481066b.2
        for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 07:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1706541407; x=1707146207; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=snoPG+8VfUsKVtSrUKFGfDWCDA2jR2qs53KcBqN65k4=;
        b=Hx6NwrjyF0T1O4zDN1RSzWM8iKQO+zJYIHxsiIxrB/Dn20SulcVe67oO/uj7jj2sKz
         05D2vYg1gCo+mnquGvu08lkNPBWrUTIdaVszMKh9ATw21XoNy+n9SEdVsfhFlRR4c6gL
         J6ky8o0ISrJDN+2wqf9B+go2fMTrarQC/Lrq9MASoGXIoM6Pm/oW6zfMrART/J4Wbci7
         0FBy+QGhNQlzRx5Q/x+awD6MzHooRUpXqRz2yYnoy5USdWf4bAGrUoI9efDZ7epcsT5t
         bapLvflxaU4tHfTitjdLlA3cemmVXYjr+I91DYU6gTgEY0Eanh7BOqOeYyTNt+xqwJWJ
         iZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706541407; x=1707146207;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=snoPG+8VfUsKVtSrUKFGfDWCDA2jR2qs53KcBqN65k4=;
        b=WWO611oB70pLm0/1ckrjWGtHxn3LvDxRhnk39FC6zc1oQz208jav45SiCD4NemSP5n
         jk7h9kr761hnPSCqqcgZQzGb3B5s3XoippVTXF14Eq+2+guu9Mwi0OMF47DNNO4tsdQo
         545QT0ZcrAbMkEyb25rTZ0mc9RoUVxJIIuJoWe+H+bMgC/msOToT1zZukJk/4cTnj4iH
         z/oqclM9PiHlhCnlX1wj0j9Gsn9j8KL5PG0GMBhbKYv0J7HRYj1/lLBOsTRCGzSEaGJq
         tCZ8RvvqObDtVpe7s+NnL1+0v30ELOG81YAt5CrXdHEK+XcsnuhnTSubIpkR6E9Rrej7
         1xIA==
X-Gm-Message-State: AOJu0YxX/ck6161hu0jUTVDxVEnIYX39d2v99CtDN2AAkqN5SH/mrHnp
	kwtjQbRrWzskrmRACORfqvFltt11HtUKRtTkV76L+eRF0Waq/9zn1Y+e18dfSkTGNXIR/f+6DVJ
	mlJY=
X-Google-Smtp-Source: AGHT+IExC+fgvl1y4/Vxf3ImGr5TfNw/0kY4doEMHSCaJHyNK5kxN3dT3zWiX13OD+D5uNc0Pe2tUQ==
X-Received: by 2002:a17:906:5ac8:b0:a35:eaf5:4d87 with SMTP id x8-20020a1709065ac800b00a35eaf54d87mr1012721ejs.62.1706541407252;
        Mon, 29 Jan 2024 07:16:47 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc76:8d00:10fc:1619:bea3:90d1? ([2001:16b8:cc76:8d00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id a13-20020a1709066d4d00b00a35a5fe8b87sm1528943ejt.16.2024.01.29.07.16.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:16:47 -0800 (PST)
Message-ID: <865a09b1-dcd6-4182-ab49-1f33273abf27@ettus.com>
Date: Mon, 29 Jan 2024 16:16:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg@lists.ettus.com>
Message-ID-Hash: T2XIJIKY76JL6PJTVJI4VDFW5JBJTCRA
X-Message-ID-Hash: T2XIJIKY76JL6PJTVJI4VDFW5JBJTCRA
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 BasicRX Daughterboard GPIO pins in Ethernet Payload
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2XIJIKY76JL6PJTVJI4VDFW5JBJTCRA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8gTWFyaywNCg0KSSdtIGFmcmFpZCB0aGVyZSBpc24ndCBhIHN0cmFpZ2h0Zm9yd2FyZCB3
YXkgb2YgZG9pbmcgdGhhdDsgY2FuJ3QgcmVhbGx5IHRoaW5rIG9mIGEgd2F5IA0KdGhhdCB3b3Vs
ZCBlbmFibGUgdGhhdCBzaG9ydCBvZiBpbnZlbnRpbmcgYW5vdGhlciAicmFkaW8gYmxvY2siLXN0
eWxlIFJGTm9DIGNvcmUgdGhhdCANCmhhbmRsZXMgdGhlc2UgR1BJT3MgYXMgc2VwYXJhdGUgY2hh
bm5lbHM7IGFuZCB0aGF0IHdvdWxkIGJlIGEgcHJldHR5IGJpZyBlbmRlYXZvdXIuDQoNCkJlc3Qs
DQpNYXJjdXMNCg0KT24gMTcuMDEuMjQgMjI6MjcsIG1nYW5uZXRAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBHcmVldGluZ3MsDQo+DQo+IFdpdGggdGhlIFVIRCA0LnggYW5kIHRoZSByYWRpbyBiZWlu
ZyBhIGJsb2NrIGluIHRoZSBSRk5PQywgaXMgdGhlcmUgYSB3YXkgdG8gd3JpdGUgdGhlIA0KPiBz
aWduYWxzIGlucHV0IHRvIHRoZSBHUElPIHBpbnMgb2YgYSBCYXNpY1JYIGRhdWdodGVyYm9hcmQg
dG8gdGhlIEV0aGVybmV0IHBheWxvYWQ/IEkgDQo+IHVuZGVyc3RhbmQgdGhleSBjYW4gYmUgdXNl
ZCB0byBjb250cm9sIHRoZSByYWRpbywgYnV0IEnigJlkIGxpa2UgdG8gc2VlIHRoZWlyIHN0YXRl
IGluIGFuIA0KPiBvdXRwdXQgYmluYXJ5IHN0cmVhbSAoc3VjaCBhcyBjaEEuZGF0KSBvbiBhIGhv
c3QgbWFjaGluZS4NCj4NCj4gSW4gVUhEIDMuOSwgb3VyIEZQR0Egc291cmNlIHdhcyBtb2RpZmll
ZCB0byBhY2NvbXBsaXNoIHRoaXMuIFRoYXQgc291cmNlIHdhcyANCj4gc2lnbmlmaWNhbnRseSBk
aWZmZXJlbnQgYXMgaXQgYXBwZWFycyB0byBwcmUtZGF0ZSB0aGUgUkZOT0MuIFRoZSBncGlvX2F0
ciBtb2R1bGUgd2FzIGEgDQo+IHN1Ym1vZHVsZSBpbnN0YW50aWF0ZWQgdW5kZXIgdGhlIHJhZGlv
IG1vZHVsZSBhbGwgaW5zaWRlIHRoZSB4MzAwX2NvcmUuIEJ1dCBub3cgaXQgDQo+IGFwcGVhcnMg
dGhlIGdwaW9fYXRyIGluc3RhbnRpYXRpb24gaXMgb3V0c2lkZSBvZiB0aGUgcmZub2NfcmFkaW9f
YmxvY2sgaW5zdGFuY2UuDQo+DQo+IFRoYW5rIHlvdSwNCj4NCj4gTWFyayBHYW5uZXQNCj4NCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
