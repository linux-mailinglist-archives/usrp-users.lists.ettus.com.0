Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B3975B28A
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 17:28:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C5DE384B5E
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 11:28:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689866923; bh=3HK7vzkNMJVXfw8BCwuX33uka2jjO43rT72EizxvID8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xR7p7lPvEe1rUm1ZDQolTdo3bxO6h8YN1fKlK7Vv8Fg6UvhiqyGBB/QfMfi9nD7TP
	 iGXULdXeVxfkjayVY8mVcA8ersiAfPThNfCAG/U3yjgI1aIBV1Tg14LUDWrlcQS5wD
	 HUUE6oplM/zFtBUHmM1zTsPZN4ZnHiC5CN0hr7ctJzfbqWlwZSl6CQYyL52hWM1cHA
	 4HaeViS56tSZdpnahGlWF3kWp3V9hS9gvc7bl3LL7WvTqZxYiEIZ3fPSd1vlSv2v1d
	 7IO+dZEIpU9edJfHc208sTmmCuql1D/Z6SE0NnD/pZ52f7Mqzbcv5lUtp4Rrg1p1qq
	 7N4QS1jGUw2Zg==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id CF054383C28
	for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 11:28:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="sorsZcih";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-635e54e22d6so7222686d6.2
        for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 08:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689866886; x=1690471686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OA7HbX8ajJ1Gk1cBC/+OfVmcBQ1y0j8gsEd2efLs/QY=;
        b=sorsZcihz3j/xRR5FJoRu68WuF42qgcVJQXBEBSMi/7+5ZdKAJsH032HZ0hOtFy0y6
         Lc46Yl3i4ES0SPDqvsrEI3NFDThe9bFIiyceGVjjIjM7pvfUvznAGEzk79SdG7Tp1sqS
         gh+R19p6hLGIcdR778qtxXyhaYTgf529RchS2XfLj/lalZQXCHl3Lcdx7qgppIlE99rR
         OPEuZraMdG5k6GZnSIQzBx/L7AamyXlMZvw4ECXzW+M94M1sSwYxa+mj2AlNH+gjyH1i
         XGCUtRbPmOGubuIXAKjiAvPhGl9TsM06iKXxf1rKeKFEvkCbprbfavDt7Ukr5xWDU8Jj
         dGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689866886; x=1690471686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OA7HbX8ajJ1Gk1cBC/+OfVmcBQ1y0j8gsEd2efLs/QY=;
        b=ggzT+mByviPtamnxrw/agddD8OZ8JBGTq5YCp1uUm2gXfUOHbY/Bw+f2FuxEuHgyCh
         yifL0Aeu6eBDcOTazVqJIkBjPSxG3nKvG+tO4zoPEQULVUKMS6LnIvFb2svb9wTub6x+
         7tQ3FcIYvhQFW0QAmnCmAoVeBdz1avv0rermYeoSXJts5pvmS+H8MPAE5FL9a+YprUBl
         NtwLOUAdPot/icsfQdYfEHtWf5UaPxqv5V1OlPeRUGXu1mzpfS3s0Re+6K0AExg243bI
         MhMsEXLU2ojZh1D7DbGakyoVpJu10yfpudziOyoGIANWMj2H6key5CsSYDZZSI8oKeru
         FNEg==
X-Gm-Message-State: ABy/qLYuBPkiA4uMlreJa530QpxpAXSE5/898LBingBwXlhlZ1Rnr3DD
	WW8NBupjQtjB8+lGZzgqs+IDZ/ll/iY=
X-Google-Smtp-Source: APBJJlFYpDdJIghdvQLEkQ5XYH0i8kMk6BkoToEC+upvn0Yy+5yHms9Vj0sr+QXxM4cGClaOlFhaMA==
X-Received: by 2002:a0c:f4d1:0:b0:636:58fb:b119 with SMTP id o17-20020a0cf4d1000000b0063658fbb119mr4832668qvm.31.1689866886173;
        Thu, 20 Jul 2023 08:28:06 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o10-20020a05620a110a00b00767f14f5856sm358771qkk.117.2023.07.20.08.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 08:28:05 -0700 (PDT)
Message-ID: <2dbad268-1942-e14a-3cc5-b6d5c744143f@gmail.com>
Date: Thu, 20 Jul 2023 11:27:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: friedtj@free.fr
References: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr>
 <7b567967-a9f7-6223-3120-a13a4ce6d9cf@gmail.com>
 <1665021956.105780246.1689833084445.JavaMail.zimbra@free.fr>
 <d8b3e016-3255-7757-92ff-8a0edbdcc3f2@gmail.com>
 <1697525267.109285969.1689864097045.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1697525267.109285969.1689864097045.JavaMail.zimbra@free.fr>
Message-ID-Hash: IFSWWD6N3SHNDMVS5VGGPYUW6LJQ7FV5
X-Message-ID-Hash: IFSWWD6N3SHNDMVS5VGGPYUW6LJQ7FV5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1-PPS synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IFSWWD6N3SHNDMVS5VGGPYUW6LJQ7FV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDcvMjAyMyAxMDo0MSwgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPg0KPiBPSyB3aWxs
IHRyeSB0aGF0LiBUaGUgc2V0dGluZyBpbiB0aGUgUHl0aG9uIHNjcmlwdCBpcyB0aGUgb25lIHBy
b3ZpZGVkIGJ5IEdSQy4NCj4gSW5kZWVkIGFkZGluZyBhdCB0aGUgZW5kIG9mIHRoZSBfX2luaXRf
XyhzZWxmKSBnZW5lcmF0ZWQgYnkgR1JDDQo+ICAgICAgICAgIGN1cnJfaHdfdGltZSA9IHNlbGYu
dWhkX3VzcnBfc291cmNlXzEuZ2V0X3RpbWVfbGFzdF9wcHMoKQ0KPiAgICAgICAgICBzZWxmLnVo
ZF91c3JwX3NvdXJjZV8xLnNldF90aW1lX25leHRfcHBzKChjdXJyX2h3X3RpbWUrMS4wKSkNCj4g
ICAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMS5zZXRfc3RhcnRfdGltZSgoY3Vycl9od190
aW1lKzEuMSkpDQo+IHNlZW1zIHRvIGRvIHRoZSB0cmljayB3aXRoIHRoZSAxc3QgUFBTIGVkZ2Ug
YWx3YXlzIGFsaWduZWQgdG8gdGhlIHNhbWUgc2FtcGxlIGluZGV4Lg0KPiBUb28gYmFkIEdSQyBk
b2VzIG5vdCBnZW5lcmF0ZSB0aGUgYXBwcm9wcmlhdGUgY29kZTogSSBjYW5ub3Qgc2VlIGFueSBp
bXBhY3Qgd2hlbg0KPiBjaGFuZ2luZyB0aGUgU3RhcnQgVGltZSAoc2Vjb25kcykgb2YgdGhlIFVI
RDogVVNSUCBTb3VyY2UgYmxvY2suDQpJbnRlcmVzdGluZy7CoCBUaGF0IG1heSBiZSBhIGJ1ZyBp
biBnci11aGQuDQoNCkkga25vdyB0aGF0IGluIGVhcmxpZXIgdmVyc2lvbnMgb2YgR1IvZ3ItdWhk
LCB3aGVuIHlvdSBzZXQgYSB0aW1lIGluIHRoZSANCiJTdGFydCBUaW1lIiBmaWVsZCwgaXQgc2hv
d2VkIHVwIGluIHRoZSBnZW5lcmF0ZWQgY29kZS4NCg0KDQo+DQo+PiBBbHNvLCByYXRoZXIgdGhh
biBsb29raW5nIGZvciB0aGUgUFBTIGVkZ2UgaW4gdGhlIGRhdGEsIHRoZSAiRmlsZSBNZXRhDQo+
PiBTaW5rIiBpbmNsdWRlcyBtZXRhLWRhdGEsIGxpa2UgdGltZXN0YW1wcy1hcy1zZWVuLWJ5LXRo
ZS1yYWRpby4NCj4gVGhlIFBQUyBlZGdlIHdhcyBqdXN0IHRvIGNoZWNrIHRoZSBjb25zaXN0ZW5j
eSBvZiB0aGUgZGF0ZSBsYXN0IGFjY2VzcyBkYXRlDQo+ICh3aGljaCBzZWVtcyBjb25zaXN0ZW50
IHdpdGggbXkgZXhwZWN0YXRpb24pIGFuZCB0aGUgcG9zaXRpb24gb2YgdGhlIGFjdHVhbA0KPiBk
YXRhICh3aGljaCBJIGNhbm5vdCBmaWd1cmUgb3V0IGJ5IGFuYWx5emluZyB0aGUgSVEgc3RyZWFt
KS4gSSBkaWQgY2hlY2sgdGhhdCB0aGUNCj4gbWV0YSBkYXRhIGFyZSBjb25zaXN0ZW50ICh3aXRo
IG15IGFib3ZlIGV4YW1wbGUgdGhlIGRhdGEgc3RhcnQgc3RyZWFtaW5nIGF0IDEuMSBzDQo+IG9m
IHRoZSBpbnRlcm5hbCB0aW1lciBvZiB0aGUgU0RSIHNvdXJjZSkgYnV0IG15IG9iamVjdGl2ZSBp
cyB0aGUgY29tcGFyaXNvbiB3aXRoDQo+IHRoZSBzeXN0ZW0gdGltZSwgd2hpY2ggSSBhbSBub3cg
b24gYmV0dGVyIHRyYWNrcyB0byBhY2hpZXZlIHdpdGggdGhlc2UgaW5wdXRzLg0KPg0KPiBUaGFu
a3MuDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
