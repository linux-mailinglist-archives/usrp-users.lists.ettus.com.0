Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3EA6203C6
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 00:30:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6F973809BE
	for <lists+usrp-users@lfdr.de>; Mon,  7 Nov 2022 18:30:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667863811; bh=QRtaQt5ywHpjf9Qoo7vCh6+RcPpcmstZylAoEpEVbNE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hMS1dCJqssNqzo8x6AIbSn43tzcBBvUqD2fvcil4zUGXJIE7GOjBS9l9YPpyzG7wH
	 YFjk4ValTyan/vM1m7GydFi6nHGEVhXU8v6MHrMgusomczYdrHMjNPTYjFbQyG08to
	 CYxJ/D8GmiFnCa0cuAmWvKqIIRLtf6dtZmZoXZvAyiQBbNx+BfTgW5u4wosrWhQr2I
	 MO+qsMkVkYTYLiHQdvIgGZCgeZvibJ1gmyhRKn8GY2tJR05hTZaF3BlU24pQZcSkjS
	 SSfEMIWoYVWHfLn0Ev0TdN0jAmXl5iyy5eY6dgmpdFsQtTmY9kF8pIXP32le5v6Mim
	 UcyIOuSYNCcVA==
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 61C3A380CEB
	for <usrp-users@lists.ettus.com>; Mon,  7 Nov 2022 18:28:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="brFRdPr9";
	dkim-atps=neutral
Received: by mail-wm1-f43.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so2659745wmi.3
        for <usrp-users@lists.ettus.com>; Mon, 07 Nov 2022 15:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=56Y53viEp6aFSvWRLIwSWJf+LRG3V9wcbSzgWoyb6LA=;
        b=brFRdPr9Xt2t8IW3hMIGGjKBXP0jhxXFcOUp5EzwmXwyCy8DHuk/RI+J/NbxZrDVkQ
         0MWLe0WCbGOt96lc46sfne3AbxeszD/1ueoZw9qJ8Kcwvo2J2nBUzbLmh5pG/Cki21mA
         D2xvmFrxIvUCinKeDzFZfej28ELMnkisQz411X1KYAEO3AK6gSc7vFcH7MPbM6dOpM5z
         OXazg8j+vWk99oRncLsUy5waykfh5wjP7i1Xs7J6lxwXNP7d5AbKTTYnxMvwrnJtPc8e
         9G8OkbLUz8+fm2R21XZMzpYwyWyDia7s6tCO8rh3MOef5xD0uacTN1rUhQZEAOFmOL5n
         S4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=56Y53viEp6aFSvWRLIwSWJf+LRG3V9wcbSzgWoyb6LA=;
        b=G5zz0u/U/F3/fnolxZ84/SMdAlpv0qFD9INuMPzXJ+ysuGDSNpgFB8uWix4ezLTd0S
         L5agLnzCLjR5jtOtCSlwI0tIbUgkoDrcXlFaYQduBz2WKo1Pzz+b/ig+B40kFOPeyO2/
         U5u/vrRCGku0WMdpfc6R/24qIYP0+TR/JzAKsOdIfzJR/jZ/qQAJBCwbiByVQEVjktI3
         zqxzoUltLhsZJpa7fJ/EYg0a/6EaO638xEds3ksQvuB2zN784PrM9fBiDJ+Ap11NZsSG
         RyE90tQBmbrGIQDh+opdGb3kwUosuc6tzX15v4er03KyI0ezq2eLjwiPpVltT0ry+8ms
         Y/Sg==
X-Gm-Message-State: ACrzQf0mTju0+cYM13GcedYPod2X7bydh2xxo4ieAjXQdmSVQ3wpugm2
	1fqQGGfGchYvOcadBFzIIbQ/sGNkPECHBZy8
X-Google-Smtp-Source: AMsMyM5WazDQQ0tp93DThu8c96U40mOwjdU5LmT1PwhAkdzgYO49NK9runvrepO7jNcjIOgiTFecHg==
X-Received: by 2002:a05:600c:4d08:b0:3cf:674a:d3c2 with SMTP id u8-20020a05600c4d0800b003cf674ad3c2mr35184509wmp.157.1667863706975;
        Mon, 07 Nov 2022 15:28:26 -0800 (PST)
Received: from ?IPV6:2001:9e8:386e:f400:5bc8:3cc3:e10b:748e? ([2001:9e8:386e:f400:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id g2-20020a5d4882000000b00236cb3fec8fsm10263503wrq.9.2022.11.07.15.28.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 15:28:26 -0800 (PST)
Message-ID: <c1675c20-fbad-cb18-f817-df7bf69f217f@ettus.com>
Date: Tue, 8 Nov 2022 00:28:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: usrp-users@lists.ettus.com
References: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
Message-ID-Hash: LHVT5MGD7OHW4SQXQ4MG7J5XDNNGPWCG
X-Message-ID-Hash: LHVT5MGD7OHW4SQXQ4MG7J5XDNNGPWCG
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can I define a global reg variable in Verilog between RFNOC blocks?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LHVT5MGD7OHW4SQXQ4MG7J5XDNNGPWCG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgc3AsDQoNClRoYXQgc291bmRzIGxpa2UgYSBiYWQgaWRlYS4gSG93IGFyZSB5b3UgcGxhbm5p
bmcgdG8gc3luY2hyb25pemUgYWNjZXNzIHRvIHRoYXQgcmVnaXN0ZXI/DQoNCkdlbmVyYWxseSwg
aW4gYWxtb3N0ICphbnkqIGNvbnRleHQsIGF2b2lkIGdsb2JhbCBzdGF0ZS4gVGhhdCBtYWtlcyB0
aGluZ3MgY29tcGxpY2F0ZWQgYW5kIA0KZXJyb3IgcHJvbmU7IHRoaXMgaXMgdHJ1ZSBmb3IgcHl0
aG9uIGFzIG11Y2ggYXMgaXQgaXMgZm9yIEMrKywgYXMgbXVjaCBhcyBpdCBpcyBmb3IgDQpkaWdp
dGFsIGhhcmR3YXJlIGRlc2lnbiAoaW4gdmVyaWxvZyBvciBhbnkgb3RoZXIgd2F5KTsgaXQncyBl
dmVuIHRydWUgZm9yIGRlc2lnbiBvZiANCm1lY2hhbmljYWwgbWFjaGluZSBmYWN0b3J5IGZsb29y
cyAoaWYgeW91IG1ha2UgZWFjaCBwcm9jZXNzaW5nIHN0ZXAgYXMgaW5kZXBlbmRlbnQgZnJvbSAN
CnRoZSBvdGhlciBhcyBwb3NzaWJsZSwgeW91IGluY3JlYXNlIHJlbGlhYmlsaXR5KS4NCg0KU28s
IEknZCByZWNvbW1lbmQgeW91IGZpbmQgYSBkaWZmZXJlbnQgd2F5IHRvIGV4Y2hhbmdlIGluZm9y
bWF0aW9uIGJldHdlZW4gdHdvIGJsb2Nrcy4gDQpFeGNoYW5naW5nIGluZm9ybWF0aW9uIGlzIHRo
ZSBwb2ludCBvZiBSRk5vQywgYnkgdGhlIHdheS4NCg0KQmVzdCByZWdhcmRzLA0KTWFyY3VzDQoN
Ck9uIDMxLjA3LjIyIDE3OjUyLCBzcCB3cm90ZToNCj4gSG93IGNhbiBJIGRlZmluZSBhIGdsb2Jh
bCByZWcgdmFyaWFibGUgaW4gVmVyaWxvZyBiZXR3ZWVuIFJGTk9DIGJsb2Nrcz8NCj4gSSBkZXZl
bG9wZWQgdHdvIFJGTk9DIGJsb2NrczogUkZOT0MgYmxvY2sgQSwgYW5kIFJGTk9DIGJsb2NrIEIN
Cj4gSG93IGNhbiBkZWZpbmUgYSByZWcgdmFyaWFibGXCoHRoYXQgc2hhcmVzIGJldHdlZW4gUkZO
T0MgYmxvY2tzIGluIFVTUlA/DQo+IENhbiBhbnlvbmUgZ3VpZGUgbWU/DQo+DQo+IEkgc3R1ZHkg
YWJvdXQgZ2xvYmFsIHJlZyB2YXJpYWJsZcKgaW4gdGhlIFZlcmlsb2cgbW9kdWxlLCBzZWUgYmVs
b3cgbGluayzCoMKgYnV0IEkgY2FuIG5vdCANCj4gZG8gaXQgZm9yIFJGTk9DIGJsb2Nrcy4uLg0K
PiBIb3cgY2FuIGltcGxlbWVudCB0aGlzIG1lY2hhbmlzbSBpbiBSRk5PQyBibG9ja3MNCj4gaHR0
cHM6Ly93d3cuZWRhYm9hcmQuY29tL3RocmVhZHMvaG93LXRvLWRlZmluZS1nbG9iYWwtdmFyaWFi
bGUtaW4tdmVyaWxvZy4xNzQxNzIvDQo+DQo+IFRoYW5rcyBpbiBhZHZhbmNlDQo+DQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
