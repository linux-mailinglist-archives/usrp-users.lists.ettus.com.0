Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A246EE858
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 21:38:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BFA93848F1
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 15:38:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682451528; bh=b6mYxhsvdjsXjIAjPbVEfj9h1kcGfDn+1e138KKUaAA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MAUH/OU9R0FNzfkjZHIDH9f+xUyBakZVYcM9Q28ZOZw3+jr4majsnvuh6JQeBISrj
	 kw/Cyy3Y3k71WH9osjPJAfLhMAnHptR+NMmBKWuWuMjsthcaU+IrHv9oSL81TaMvrm
	 dgML6WSuOtxzrzbVPG1mSu25Ua0KG7oCflRN6qOXiiWq0uFROCjODqoyixEE7xeeOH
	 7gQ5f1Wya6W8uNYNyrREO0p+Ie/1Z2SIq1k+3J2aZW7N+yRqJJddXjSrN5oN2QUCc6
	 LY0UzKmzQfFLfe/WQWPTcDsa52MRlo+5Y4WkPr53oKjnxBbza2qSdMJ1Ix21GRrn5m
	 fw7iGKfEe7LMQ==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A9F15383A4E
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 15:38:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dtkZlDwI";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-5ef4885bc39so27766776d6.2
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 12:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682451508; x=1685043508;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DoHQOZz/sf8SHXMcmgQwJBSbtwr8+SLfBPD4Kzvi+gA=;
        b=dtkZlDwI9mYIEXeWLMmfreQFKvwIx+Y+g0mU9Htx5WbHMg0qbHssM7U+BLrecMvAKE
         0oWhRZWtEBiWGzj+MqQcrG7K7EbrADhRiPBTqQoW9ca8M/0eICRdiBaPEymeTy+rlTFf
         wBKAVv1O+4566kX+FCTP0gSczJen8MzocKCfdKFOUdFuRkGLo15xnVSFSkkECuUVlQ4T
         fnSvs7k3CD4LzQIfmyjKY2cYXm6BhgQ1bUtbtx9nZGefaEaRtrAWz+U+3bFgcwHzUGaE
         3CNKrc0IgznUcOAb2a3jPNz4wsWnhlDgN2JD3rXrXID9QiMhqG36p/Ph4+JuRDd4+NXT
         tUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682451508; x=1685043508;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DoHQOZz/sf8SHXMcmgQwJBSbtwr8+SLfBPD4Kzvi+gA=;
        b=i9/r2zgHmuQkk4TuyQz56Oes0QK0jHQ9G2+aqwJcwwjGVPGnX5lVCPOLM5XQbWfmWL
         bfRjROZS/UKv3EMd6/5XXJzngEzudNId9P1tT3iWE/RRE3ewHw6lB6ai9Jj3GJD/f5gN
         rwrFwwNL0Joad0CjSAb21tC3uLG2HZ1QipaE34k/gFOtbbBWzxcHDADjCQ87GEd4TNEM
         bUaA+P0z1pQsHHC/c6nPXoWW5DtUZwop6wShmKjdwo0v2nFDQu6ahkBpn50QPIFF0XRl
         EuVm8kX+k97bz4pBprkxSmSmJxiYe1Ybi26QNk6pO+pvaxGTbRmtxuucn5RVYiVcM2pw
         3wtA==
X-Gm-Message-State: AAQBX9dg8YtPZ6+CLf7lRduzL/A6bdw96OyICzALZx0rj8SC63fJw8Qy
	YsspBFxxANmFTUjnxYU0ByKfBa6C+xM=
X-Google-Smtp-Source: AKy350boU8M1gYQS+RskzANoJiRU4Fs7CWlxgnpSmFAUtAaSzRx0jK+cTJ5NF7IgpHBMnwVsYfn3AA==
X-Received: by 2002:ad4:5bae:0:b0:5ee:f65c:286a with SMTP id 14-20020ad45bae000000b005eef65c286amr25551764qvq.50.1682451508069;
        Tue, 25 Apr 2023 12:38:28 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o8-20020a0ccb08000000b005f4964785b1sm4303536qvk.0.2023.04.25.12.38.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 12:38:27 -0700 (PDT)
Message-ID: <f62b14af-a4c2-a3de-a646-3c41f47fbebd@gmail.com>
Date: Tue, 25 Apr 2023 15:38:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
 <6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com>
 <ZEgALNgcA3A7TRfW@l1.fu-lab.com>
 <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
 <CAB__hTRfxiM9U9yAgp83y_h16=uv8vbRw6p78iCei+B0uAMjWQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRfxiM9U9yAgp83y_h16=uv8vbRw6p78iCei+B0uAMjWQ@mail.gmail.com>
Message-ID-Hash: LWJJS6YODM67VJAQWRG6VEKXDIYGZGWW
X-Message-ID-Hash: LWJJS6YODM67VJAQWRG6VEKXDIYGZGWW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: James Schatzman <jcs@l1.fu-lab.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWJJS6YODM67VJAQWRG6VEKXDIYGZGWW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxNTozNSwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IE9uIFR1ZSwgQXByIDI1
LCAyMDIzIGF0IDEyOjM04oCvUE0gTWFyY3VzIEQuIExlZWNoDQo+IDxwYXRjaHZvbmJyYXVuQGdt
YWlsLmNvbT4gd3JvdGU6DQo+Pg0KPiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgZHJvcHBlZCBw
YWNrZXRzIGluIFVIRCBtZWFuIHRoYXQgdGhlDQo+IHJlY2VpdmluZyBlbnRpdHkgcmVjZWl2ZWQg
Y29uc2VjdXRpdmUgcGFja2V0cyB0aGF0IGRpZCBub3QgaGF2ZQ0KPiBjb25zZWN1dGl2ZSBpbmRp
Y2VzLiAgU28sIGlmIHRoZSBGUEdBIGRldGVjdGVkIHN1Y2ggYSBjb25kaXRpb24sIGl0DQo+IHdv
dWxkIHNlbmQgYW4gYXBwcm9wcmlhdGUgZXJyb3IgbWVzc2FnZSBiYWNrIHRvIFVIRCB3aGljaCB3
b3VsZA0KPiBwcm9kdWNlIHRoZSAiRCIgb3IgIlMiLiAgRm9yIFVuZGVycnVucywgaXQgd291bGQg
YmUgdGhlIFJhZGlvIGJsb2NrDQo+IHRoYXQgc2VuZHMgdGhlIGVycm9yIG1lc3NhZ2UgYmFjayB0
byBVSEQuDQo+IFJvYg0KVW5kZXJzdG9vZC7CoCBUaGUgd2F5IHRoZSBhbnN3ZXIgd2FzIHBocmFz
ZWQgbWFkZSBtZSB0aGluayBvZiAiRHJvcHBlZCANClBhY2tldHMiIGluDQogwqAgdGhpbmdzIGxp
a2UgImlmY29uZmlnIiwgcmF0aGVyIHRoYW4ganVzdCB0aGUgdXN1YWwgVUhEIHJlcG9ydGluZy4N
Cg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
