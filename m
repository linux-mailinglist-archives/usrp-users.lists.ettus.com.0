Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6B16218DB
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 16:55:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DBB1383783
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 10:55:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667922916; bh=aYgSWmtL0DmnXUeTXAqMhVFgH90PLKTsLFd43fWxL6g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AWsAXSjSiW2mFgwf2e8KCJl5SwP93R9EqxzZsK4D8sEAeNs77ng+CwR0RxiUXEkJ2
	 T/kzekupUM29TkRUu8w7zCwMxnQJYW7lNU0Zqdmad5nrL93Lqyr1365BiLyWvHhEvI
	 9YLqPYNwVZn8DshrBbL/L2csui8LUhcUO8OpHGRWrulhoMlYArjPJrS7uBaCDxErof
	 DX12VMPqlQtGyWTAoiGyCNbqC30oIJCgtGEjAAjuVRY4Mw1Ssv0b+n6goMNUzLUG64
	 cvwOKPCWvKY9e5aTCDhFpONq2ohT2xwLSBzqfbEaeG5M7a8I12pSg4vrh/eoSFBOby
	 ytRMRKZbwJQGQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 92C7B38140E
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 10:54:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="uVWID5tf";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id f7so23127887edc.6
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 07:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWc1LOjleDdIY/i3yM4saehGVHQjbq/AvPk2vD89VmM=;
        b=uVWID5tf7mXlTMww/SLd/jCCQvWRb3VCea+ie6WRBUnpQp8Fu539WUnKuNII+JtBFs
         qGlkCZPWxrnQ2LYlNlMpeaoGuhQcxe5wEE/TIVAx/RD5WvirzTlHJiDgf5ZtsDnbVaMY
         JM2eELtot8tYP8YU5i/bozcG+TEiT6lQvn5S1OIjnFH0F66dO0W3IswGSUSYEN2BtWm0
         bPiQBn3tbraFkfhNoDzqIsrf2ynhi97sXtT881Ordlzx62YOTFqQ6HJT4MLXKlbV7PV2
         rkqZkHsM0vyzIvhdOc79A9gvC1Ah6cODMwd/656fAaNghCwz519CoZS5m59UnScAZyhK
         MTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWc1LOjleDdIY/i3yM4saehGVHQjbq/AvPk2vD89VmM=;
        b=c/oUZ+93iTwVY7G7mmekpsz0akaaHQzqY2Ot1mjRevNFQvgBKw8RCxWzP31GU68M6I
         pKCb4bmNYrg9z05GYQWL1Tq5nysB+ldwHdODfQ7X0r349pbJFbRShEzjz+mUuXpyP25B
         HHz67Q9noFuYaircOcg0DYV9d1OeUBflPM63ArnbEDVj8CGYWSnDHHy44q0WGwhmFOrG
         BCZ+OTuDvX1oVnd5XlOXQlUXMrLoiptY0IZvfUX3ahaxT9u3xz7BWsA7Srq3rCeg2Ar9
         f6uux8TTBCWtD6GyL/rgp/M/HXv3jE2x2Kl0BZ/2RK4DF7hKcnkNMAted9DL5Sd19vZp
         QM+g==
X-Gm-Message-State: ACrzQf3ixR/7fC2zx1MuPmduk24ZBNurX3SDZnbbZcqeCf7M5upgg7f4
	W9hYdjINXvRijzIKYbwyUdQiavp7tWNFos2M
X-Google-Smtp-Source: AMsMyM4O90wrXTR9fmE3N/ky8K9mCc+FlLj2B8efyfCdPjOFinmP0XCkVzfImZATngMCp2b102DHcg==
X-Received: by 2002:aa7:d91a:0:b0:462:d2f6:26c6 with SMTP id a26-20020aa7d91a000000b00462d2f626c6mr57925021edr.180.1667922865250;
        Tue, 08 Nov 2022 07:54:25 -0800 (PST)
Received: from ?IPV6:2001:9e8:3843:4500:5bc8:3cc3:e10b:748e? ([2001:9e8:3843:4500:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id r24-20020aa7da18000000b004643f1524f3sm5678641eds.44.2022.11.08.07.54.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 07:54:24 -0800 (PST)
Message-ID: <4f9703ad-cf27-a721-9615-411c4836e314@ettus.com>
Date: Tue, 8 Nov 2022 16:54:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM@lists.ettus.com>
Message-ID-Hash: R4S6FRB6ZN7D42LHRB4OOOCE4E6IAIWI
X-Message-ID-Hash: R4S6FRB6ZN7D42LHRB4OOOCE4E6IAIWI
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R4S6FRB6ZN7D42LHRB4OOOCE4E6IAIWI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QXMgeW91IG1pZ2h0IGhhdmUgZ3Vlc3NlZCwgSSdtIG5vdCBhd2FyZSBhdCBhbGwgb2YgdGhlIE5J
LVVTUlAgdXRpbGl0aWVzLiBJZiB0aGV5IGp1c3QgDQphbGxvdyBzZXR0aW5nIGFuIElQIGFkZHJl
c3MsIGJ1dCBub3QgYSBzdWJuZXQsIHRoYXQgd291bGQgYmUgcHJldHR5IOKApiBpbmNvbXBsZXRl
Lg0KDQpJZiB0aGF0J3MgdGhlIGNhc2UsIHBsZWFzZSB0cnkgZm9sbG93aW5nIHRoZSBndWlkZSBJ
IGxpbmtlZCB5b3UgdG8gYWJvdXQgc2V0dGluZyBgaXAtYWRkcmAgDQphbmQgYHN1Ym5ldGAgZmll
bGRzIGluIHRoZSBOMnh4Lg0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCg0KT24gMDguMTEuMjIg
MTU6NDMsIGFsaS5tYWhiYXNAYnJ1bmVsLmFjLnVrIHdyb3RlOg0KPg0KPiBpdCB3YXMgY2hhbmdl
ZCB0byAxOTIuMTY4LjEwLjMuIFRoZSB1dGlsaXR5IG9ubHkgYWxsb3dzIHRvIGNoYW5nZSB0aGUg
SVAgbm90IHRoZSBzdWJuZXQuDQo+DQo+DQo+DQo+IGtpbmQgcmVnYXJkcywNCj4NCj4gQWxpDQo+
DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
