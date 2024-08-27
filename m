Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F809960B32
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 15:00:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6670C3855FE
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 09:00:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724763643; bh=HqFys/Hp6YDvokvkdJvMGNoxEOhl6P+0JhAj8PRLW/4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=S5PjY/msDqvuhAjpnAGjwPJUH8Eh7ne4nQ6/ZKBxjk0Hyps+1ttsXs63iOFse/YhV
	 xXtzbk9hO3EUmgPOdDeU0nbkpy+pLW3yXet3DNzbYdzC+oLQaxcOtoQylXPLO/Xfgn
	 vut3BPSC27Ldpm6nDuJ61V9pmJ5M2mp1GghZUM1u4dYTJ2Kd3moHmI2GYZaCKfWHs4
	 yvb4DZRPn2KM35YdAvuFbzquqDitXig3rkT8il9Hk09JCNEC8lnIa7Fj3gRNiVNXPJ
	 otqgQQxUPJGPqrvyIImAMnTmhHqIrb5jc3np3D/WrHbMlLHxEzxK6ob3ulJSV1n0z3
	 EZlHHvuES9QGg==
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C3A7C385436
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 08:59:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hoDZF6lQ";
	dkim-atps=neutral
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-842f91f2545so1495125241.3
        for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 05:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724763585; x=1725368385; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R1ecatMHhgVyyGjgFkzIaY5AkqKTCYK9WQQLOCJxMz4=;
        b=hoDZF6lQvDbNKP6uTYvPQnTQVY4lmdv6SMFXCsX0cUQ89G8KcZE1lqUJsyzAU/Xhy9
         x+EJ4gE+siNwL6BNFJt7+wRUDa06EynZRmO4Xhswi4P9DJXl8f21JUHQm4odnXjnfJbV
         tZpoZ2weQxMzzcdKUTdXWW+ZNTjmSV2bJhgMKOaA+nNuxi/9JgqXO/zdeFBWYgsN8zoa
         XG4kRPIhNLljvHnWbKLCgOH0FSgDLiWzLZ8boN/PftetAc2r320beHI73aieBkpe387i
         bueTrUO91QprOVHB5mPjVr8WW7hOpgkINUA3Ju+RBa6YKWyx1rRDexBBlJ+S2v9rm9jv
         xC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724763585; x=1725368385;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R1ecatMHhgVyyGjgFkzIaY5AkqKTCYK9WQQLOCJxMz4=;
        b=K8GnIyBIMNqC7oshJUZrQoFBcltFfaZAYvit8Ab02u8AH45iOztzDrUjO8T1qjv1rI
         Nc67RHh3WqWaO/03OxDlKBxbUPa9In44yRqLg2grj8Xmjvkd6iA2pL1X2dnRVQ7v5++f
         RXhDvezps5iy8jtXHfFIDGrKsfIojBKOizOqars3FACsVqQuEJjJWC4GV9SBMI7c8Z/0
         LRYewfzcGCsJ+qakfMKiCdIUeTNNgwyS64l4Nkf3HJyAPPO6hcVytNCWfczfRu4Rjq5D
         kz+VIK3b5aFCzqE13WP+ZhYMzX64u8yE/H4EtnqRBzOQPt6BcQNyTlRy45jHOWNNfu2k
         iiOg==
X-Gm-Message-State: AOJu0YzSIMNTvvG2rb6LF7Zr1mMD92ALXEdD0JhreztyoiDFvdfHWEhM
	GoZgg/vV+NVjLhvYWwinCrPQc3xL5J94QXB7uGgX++K3cEZb/aKNwcZI4Q==
X-Google-Smtp-Source: AGHT+IFxc3GxMN0rDRbZX7mX6aLI5GLcEZoypfkAeuWVQw8BhaEBzpoU71AoNx+KXrpFel5YSK4WZw==
X-Received: by 2002:a05:6102:50a7:b0:492:a11f:a87a with SMTP id ada2fe7eead31-498f4719ad1mr14506995137.25.1724763584622;
        Tue, 27 Aug 2024 05:59:44 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a67f343d3asm546607885a.48.2024.08.27.05.59.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 05:59:44 -0700 (PDT)
Message-ID: <2e4f73e0-30b0-4951-b81f-afc09a65a3cb@gmail.com>
Date: Tue, 27 Aug 2024 08:59:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0@lists.ettus.com>
Message-ID-Hash: UDNYLDIL6SGYHTN3QYJL6B6JFWUOWWLZ
X-Message-ID-Hash: UDNYLDIL6SGYHTN3QYJL6B6JFWUOWWLZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why does the self-calibration utility not work?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UDNYLDIL6SGYHTN3QYJL6B6JFWUOWWLZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDgvMjAyNCAwNzo1MCwgSG9zc2VpbiB2aWEgVVNSUC11c2VycyB3cm90ZToNCj4NCj4g
SSB3b3JrIHdpdGggYSBVU1JQIFgzMTAgYW5kIHR3byBDQlgtMTIwIGRhdWdodGVyYm9hcmRzLiBJ
IHdvdWxkIGxpa2UgDQo+IHRvIGNhbGlicmF0ZSB0aGUgZGF1Z2h0ZXJib2FyZHMgYWNjb3JkaW5n
IHRvIHRoZSBwYWdlIA0KPiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9jYWxp
YnJhdGlvbi5odG1sIG9uIFVTUlAgSGFyZHdhcmUgDQo+IERyaXZlciAoVUhEKSBtYW51YWwuIEFm
dGVyIGFwcGx5aW5nIHRoZSB1dGlsaXRpZXMgZm9yIA0KPiBzZWxmLWNhbGlicmF0aW9uLCB3aXRo
IG9yIHdpdGhvdXQgNTAgT2htIHRlcm1pbmF0b3JzIGF0dGFjaGVkIHRvIHRoZSANCj4gUkYgcG9y
dHMsIEkgc2VlIG5vIGRpZmZlcmVuY2Ugd2l0aCDigJxpZ25vcmUtY2FsLWZpbGXigJ0gZW5hYmxl
ZCBvciANCj4gZGlzYWJsZWQuIEkgdHJhbnNtaXR0ZWQgYm90aCBhIHNpbmdsZSB0b25lIGFuZCBh
biBPRkRNLWxpa2Ugd2F2ZWZvcm0gDQo+IGF0IExvdy1JRiBtb2RlLiBUaGVyZSB3YXMgbm8gZGlm
ZmVyZW5jZSBpbiB0ZXJtcyBvZiBMTyBsZWFrYWdlIG9yIElRIA0KPiBpbWJhbGFuY2UuIEkgYW0g
bm90IHN1cmUgaWYgSSBtaXNzZWQgc29tZXRoaW5nIHRvIGRvLiBEbyB5b3UgaGF2ZSBhbnkgDQo+
IGlkZWFzPw0KPg0KPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IG5lZWQgYW55IHNwZWNpZmlj
IGluZm9ybWF0aW9uIHRvIGhlbHAgbWUuDQo+DQo+IFRoYW5rcyENCj4NCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KQ291bGQg
eW91IGNvbmZpcm0gdGhhdCBpdCBwbGFjZWQgQ0FMIGZpbGVzIGluwqAgeW91ciAiLnVoZC9jYWwi
IGRpcmVjdG9yeSANCnVuZGVyIHlvdXIgaG9tZSBkaXJlY3Rvcnk/DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
