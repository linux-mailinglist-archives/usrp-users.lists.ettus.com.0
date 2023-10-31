Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F6D7DD1AD
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 17:34:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3EEE385A35
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 12:34:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698770078; bh=EF/aVmbzM6KLOINa/4PRnPukaP7UVW4S+EQCWjRuMvg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N9G2nRuINP+q05f0uaP71XPOXUyJEQgq6zqvMDLBUMCynp4X3FX0Et23zKvq1ChjY
	 BVIuLQlUS96ENHm6aE55anfmOpU79b98u/IJaJjNa15Khuto6zOGM8n7doPPaJ4P0D
	 6+0EOGnzvumOesRzcfjbPK+5Qw27DdZc6DIHWUutWULPEPb9iMDO+eL9pHCf2JsoGv
	 vyULXyo7ZpjBnbfqTudZSV/pTOf5mKRIecchTcGaUK/Pt8BHOK27q99uZsiITOdCIO
	 ITwZfvFYv6XdMQvE8a8JeARzPtqjvIvzrx69pPKAXb7jdUwNAGkF7otjKCaJm9tcE9
	 5Rxpxsav9t/IA==
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 95A1E3859D8
	for <usrp-users@lists.ettus.com>; Tue, 31 Oct 2023 12:34:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="kEeLkNFw";
	dkim-atps=neutral
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-32dff08bbdbso4023427f8f.2
        for <usrp-users@lists.ettus.com>; Tue, 31 Oct 2023 09:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1698770049; x=1699374849; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39wId+3ZLKCkAF7SgEhiU6Pw7OzJYfWUAFui49lcF0Q=;
        b=kEeLkNFwisc5e0cqjxpv+jtVaW7EbCXaFV8NZ+5OgKF4B3qOv7fmdd6fQJLDrlmtqj
         jgjKV97u6kczhrEEAY5oiq4oTtxC7nfR1FPupS7aw5xdKHAKN+JIqVQD9CNNlFsK9RAX
         jUNf95G1G7svGocvFAf2//yPg5DR2RDvFTIVeEAJfomdAeE0RXj6P5QVlsBXQg/wqTwP
         pbLJOkFHaO01678wr06z15ROvNe0Jq10YuuQeiXMnxcx93qiqsdNs5uOGEyH97u0uqvn
         0qHKv9zoa72p9Nb8CzMP63shZhmb7CONshr/8r1R0h8N1ssvZ88z+ksXzeXEd/0nuzY5
         kwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698770049; x=1699374849;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=39wId+3ZLKCkAF7SgEhiU6Pw7OzJYfWUAFui49lcF0Q=;
        b=Y7WYKe+0cktSmsh6VLFHPUW3KlYGFQ2lPPlu/bEclW6pHTac/5DY46fEASxGM0HPMd
         ehp33/GQgrtXXqE+Wedr0yZquapUqcqFIGg/LnTunQUx89EAgv2PMsYTP8d/dw4h3Cq2
         RAIOFMWhnhAQnxoKNClH5/EqSLOmiEwWpYj4QGI8rp8MK3SOAcj9Gi9LBy9xmVTwF61g
         M3hMYHw/A3At6eDOTlX1h84sVy3ze3zLZtePENaQrzrE2sK0GQNuoFIvKGOR0VLRN9O9
         5eeuxcec7w5/fVXsIIcRJiC56NnuBxhDCYiuLYI/qZ6/0g8mYMVPw66Te8vEUIjVIIfz
         t81w==
X-Gm-Message-State: AOJu0Yy4VKnSiij+W0bRWlkf7CsvgbxP0C4BaJW7e63iEe6AS/azva+Z
	3Ee6L+aDbd3QrLeHQne+W6hDo6G9ZLmOLMZIqNmieA==
X-Google-Smtp-Source: AGHT+IFeGF/i0is/Z6uNYgkzbv9IgRRF6MqYev/7DNznZfzX2VbHudZgF3whe04vCtSQ/A8ICtENAw==
X-Received: by 2002:adf:f94a:0:b0:32d:a35d:bd1c with SMTP id q10-20020adff94a000000b0032da35dbd1cmr8552272wrr.39.1698770048692;
        Tue, 31 Oct 2023 09:34:08 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3849:5300:10fc:1619:bea3:90d1? ([2001:9e8:3849:5300:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d6849000000b003233b554e6esm1858396wrw.85.2023.10.31.09.34.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 09:34:08 -0700 (PDT)
Message-ID: <3758214b-7c25-447a-b425-f97fb7b6afc8@ettus.com>
Date: Tue, 31 Oct 2023 17:34:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOkUcSvJhKr-==9CN_P4yNibExh1rgHxifHM697-4Utewb0Hqg@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAOkUcSvJhKr-==9CN_P4yNibExh1rgHxifHM697-4Utewb0Hqg@mail.gmail.com>
Message-ID-Hash: 4QM7M3UUIMIZE2X3AAMXGXVEWLIS2AEI
X-Message-ID-Hash: 4QM7M3UUIMIZE2X3AAMXGXVEWLIS2AEI
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA bit file binary differences with GIT commit (X300)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4QM7M3UUIMIZE2X3AAMXGXVEWLIS2AEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ3liZXJwaG94LA0KDQphcyBNYXJjdXMgTGVlY2ggYWxsdWRlcyB0bywgdGhlcmUncyBtYW55
IHRoaW5ncyB0aGF0IGFjdHVhbGx5IGFmZmVjdCB0aGUgZ2VuZXJhdGlvbiBvZiANCmJpdHN0cmVh
bXMgZm9yIEZQR0EgcHJvZ3JhbW1pbmcuIFlvdSB3aWxsIG5lZWQgdG8gY2FwdHVyZSBhbGwgdGhl
c2UgdmFyaWFibGVzLg0KDQogPiBCYXNpY2FsbHkgaWYgSSB0YWtlIHRoZSBmaWxlIGNoYW5nZXMg
ZnJvbSBteSBjb2xsZWFndWXCoGFuZCBidWlsZCB0aGUgRlBHQSBzdGFydGluZyBmcm9tIA0KdGhl
IHNhbWUgcmVmZXJlbmNlIGJyYW5jaCwgY3JlYXRlIG15IG93biB3b3JraW5nIGJyYW5jaCBvZmYg
dGhpcyBhbmQgY29weSB0aGVtIGluLCBidWlsZCANCnRoZSBGUEdBIEkgZ2V0IHRoZSBzYW1lIGJp
dGZpbGUgYmluYXJ5IHdpdGggb25seSB0aGUgZGF0ZS90aW1lIHN0YW1wIGRpZmZlcmVuY2UuIE9u
Y2UgSSANCmNvbW1pdCB0aGUgY2hhbmdlcyBhbmQgdGhlbiBidWlsZCBpdCBvbmNlIGFnYWluLCB0
aGUgYml0ZmlsZSBoYXMgYSBsb3Qgb2YgZGlmZmVyZW5jZXMuDQoNCkl0J3MgYSBiaXRzdHJlYW0g
Zm9yIGFuIEZQR0EsIG5vdCwgc2F5LCBhbiBFTEYgZmlsZTsgc28gbWlub3IgbW9kaWZpY2F0aW9u
cyBsZWFkaW5nIHRvIA0KZGlmZmVyZW50IGxheW91dCBzb3VuZHMgbm90IHVuZXhwZWN0ZWQuDQoN
CkJlc3QsDQpNYXJjdXMgTQ0KDQpPbiAzMS4xMC4yMyAxMDoyOCwgY3liZXJwaG94IHdyb3RlOg0K
PiBIaSBhbGwsDQo+DQo+IFdlIGhhdmUgYnVpbHQgb3VyIG93biBSRk5PQyBibG9jayBhbmQgYXJl
IHRyeWluZyB0byBkbyBhIGNsZWFuIGJ1aWxkIGFuZCBjb21wYXJlIHRoZSANCj4gZ2VuZXJhdGVk
IGJpdCBmaWxlIGFnYWluc3QgdGhlIG9yaWdpbmFsIGZpbGVzIGZyb20gdGhlIEZQR0EgZGV2ZWxv
cGVyLg0KPg0KPiBJIHdvdWxkIGxpa2UgdG8ga25vdyBpZiB0aGUgYml0ZmlsZSBnZW5lcmF0ZWQg
aGFzIHNvbWUgZGVwZW5kZW5jeSB3aXRoIHRoZSBHSVQgY29tbWl0IGluIA0KPiBzb21lIHdheS4N
Cj4NCj4gQmFzaWNhbGx5IGlmIEkgdGFrZSB0aGUgZmlsZSBjaGFuZ2VzIGZyb20gbXkgY29sbGVh
Z3VlwqBhbmQgYnVpbGQgdGhlIEZQR0Egc3RhcnRpbmcgZnJvbSANCj4gdGhlIHNhbWUgcmVmZXJl
bmNlIGJyYW5jaCwgY3JlYXRlIG15IG93biB3b3JraW5nIGJyYW5jaCBvZmYgdGhpcyBhbmQgY29w
eSB0aGVtIGluLCBidWlsZCANCj4gdGhlIEZQR0EgSSBnZXQgdGhlIHNhbWUgYml0ZmlsZSBiaW5h
cnkgd2l0aCBvbmx5IHRoZSBkYXRlL3RpbWUgc3RhbXAgZGlmZmVyZW5jZS7CoCBPbmNlIEkgDQo+
IGNvbW1pdCB0aGUgY2hhbmdlcyBhbmQgdGhlbiBidWlsZCBpdCBvbmNlIGFnYWluLCB0aGUgYml0
ZmlsZSBoYXMgYSBsb3Qgb2YgZGlmZmVyZW5jZXMuDQo+DQo+IFRoYW5rcyBmb3IgdGFraW5nIHRp
bWUgdG8gcmVhZCB0aGlzLg0KPg0KPiBBbGwgdGhlwqBiZXN0DQo+IG1hcmlubw0KPg0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
