Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7418567B91B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:17:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7679C38440B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 13:17:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674670632; bh=Wsdfho8oCGCu4zXO4eTCjrJN+obOVeJXqiNUhFCGGbo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MXEVNr9xLP+qwkAfFHFFxeWjRuCgwxA5xhxYk+zDS7Brce0pW6bvvsjq2zqjy0ofo
	 jPXg6/7vGxOUCkhbam2UHUEjWQYuiFji+PcSm/EzkmD3SyyGd8XDzN7GC4pUT0lMhf
	 TpjZdhL0SftIkRy/FzXIegf4sEOs3N3JJCAMLV+hWzGSBrp4lhejkmw4zVcTh/o5ml
	 qOjdb3JIW7F9xN5J5yOaK24pXLUS8Zhw1kWtWh6haGHNodcno9ubwRS40w21CjqsHp
	 K0eaW8G5pX+qzkvM8tqjktv6AqUlevYcSQWbaxSwjHvudzN6TgBNclZKW4kzUw5o2t
	 BE0FeW62eLxVw==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 70880380F6F
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:15:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SLQz25MR";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 123so24101415ybv.6
        for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 10:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lMRP5GQXyPpitY/3qoVF32457O37EBqUMV1A6+fGdFM=;
        b=SLQz25MRftsAPsyw98KCaleZS6N2NAbnjYmA8VUjUGDVUSIltn9u3QqgzQ8iH55oA7
         5NEN/To0G5u0nwKm8QP2YGJzXFvcH+KktWOEQ2v0hFZgmalFqF741nIr3Ej57YQjxJwx
         O5OBXqOA8PgStIO+guqxBTXhCwIr2hWMPwF9LGVPlNuJfed+GR/XETGQ67slur3JNXcg
         Yk98T8rhe/qP7buwMcSeHuOud2b4YLcstd8ArIqBB4jRKIi2+cQ845mbD7YE85FvBqQE
         rpFel+G+92CxsdN5u17diEs9TQkJ5shxB9Tnc13xyr39/268PBe5kHd8rFjakppxQzj8
         mOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lMRP5GQXyPpitY/3qoVF32457O37EBqUMV1A6+fGdFM=;
        b=Vh6LuR6He/er2UyF2stx2zYRAUT2xdI8f2bCnn4XGC7scFLQS54axbYPkgMp+Tnz2S
         xMxuyX7tOTEjb1npF6uvaoLuEdGH8V8GRsFs10qO5Z7LdGpk3PpzR4yZ0YiSYdQtWHdM
         AWcFOtpldZ0Erinn+ss8pKgZG6b6vUdOW8fl2xagcQ6fNvkymqokv9Mtj3ufMVgXNQ5I
         jRJ5l0zzNNXwnIyxoQRHHlQmckyZP0AGkUgSqVt/anlNj/XazGNwkACKcLqfOA3imJl1
         pAxa6usI0OWSAw5lz1xZWsIsKxdFO+FZa8Qr16NzmStjVtxGqPHhLQXcJ+s/X33aeQ9I
         Kf8g==
X-Gm-Message-State: AFqh2kqlDWTnDk+aULvdwuswAcLdTq4asBOhPaZIK1dL0rei9vh33w5a
	jiEQDN4zH/nudRTr64ny3NTIbB9cvj0=
X-Google-Smtp-Source: AMrXdXsioELfS8QBqld6cszGQvX40DVFxaUtpJYnySwyELpN4VD3oG2ZqdKMGo/Khq9D5oTCiCmfyg==
X-Received: by 2002:a25:6587:0:b0:803:f82c:c6e2 with SMTP id z129-20020a256587000000b00803f82cc6e2mr12676499ybb.43.1674670549439;
        Wed, 25 Jan 2023 10:15:49 -0800 (PST)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id x2-20020a376302000000b007069375e0f4sm3905458qkb.122.2023.01.25.10.15.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 10:15:49 -0800 (PST)
Message-ID: <bc7b7ff5-e626-793a-97f1-8b71624fb5ba@gmail.com>
Date: Wed, 25 Jan 2023 13:15:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vQf8lJzwYBnGEd7aA7DOs9vWtXsjnIME7j266t3YZ4@lists.ettus.com>
Message-ID-Hash: S6NFGGJSPJC2USDMIOY7WHIMB3FNBTZS
X-Message-ID-Hash: S6NFGGJSPJC2USDMIOY7WHIMB3FNBTZS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Parsing dat file produced by rfnoc_rx_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S6NFGGJSPJC2USDMIOY7WHIMB3FNBTZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDEvMjAyMyAxMzoxMCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBUaGlz
IHdhcyB0aGUgZnVsbCBsaW5lIC4vcmZub2NfcnhfdG9fZmlsZSAtLWZyZXEgMi40ZTMgLS1yYXRl
IDFlNiANCj4gLS1kdXJhdGlvbiAzLCBzbyBteSBndWVzcyBpcyBieSBkZWZhdWx0IGl0IGlzIHVz
aW5nIHNjMTYuIEhvd2V2ZXIsIEkgDQo+IHdvdWxkIGxpa2UgdG8ga25vdyB0aGUgZm9ybWF0IG9m
IHRoZSBiaXRzdHJlYW0gaXRzZWxmKGkuZSB3aGF0IGJpdHMgDQo+IGFyZSBhc3NvY2lhdGVkIHdp
dGggSSxRLGV0YyBhbG9uZyB0aGUgYml0c3RyZWFtKS4NCj4NCj4NCk9LLCBzbyBpbnRlcmxlYXZl
ZCBuYXRpdmUtYmluYXJ5ICJpbnQxNiIuDQoNCkl0IHJlY29yZHMgYSBzZXQgb2YgY29tcGxleC1i
YXNlYmFuZCBzYW1wbGVzIGluIHdoYXRldmVyIGZvcm1hdCB5b3UgDQpzcGVjaWZ5LCBpbiB5b3Vy
IGNhc2UsIGFzIGEgc2V0IG9mIGludGVybGVhdmVkDQogwqAgImludDE2IiAodG8gdXNlIEMrKyBw
YXJsYW5jZSkuDQoNClNvIHRoZSBmaWxlIGlzIGp1c3QgYSBjb250aW51b3VzIGNvbGxlY3Rpb24g
b2YgSVFJUUlRSVFJUUlRLiBUaGVyZSdzIG5vIA0KaGVhZGVycyBvciBhbnl0aGluZy4NCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
