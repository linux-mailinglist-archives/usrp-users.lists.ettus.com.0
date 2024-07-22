Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E40B19396AD
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 00:43:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38EB238598E
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 18:43:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721688190; bh=HYCa/N+uGIEcnEvTtVP+mZ/9GfDRyfmfLFt5d5Crhjc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=i39j3pMI/Q/xTN/IDRuuCT/JiUb0PBXVUWdi4aAsHjlUbBORietZN8Yr6Q7+iVULL
	 MEIZ8eFnQ0TBhFL0fdsaacm7aL8pHhzNBjH7cxKrUXwKJEan8uiDFsV2Pb0lO2BYUP
	 sdLGsr1UejRKHwBoSXdsGRtINojZTXkCKG6k8tsqvIZoJ5ey8AYabRQFSuJMUU1P/C
	 0CvaY9VLRprrHu0BNApjKW7CRfjs+suKPIbGsZLjz2ILaSbDmFdz+2K0TSsNiGW5fF
	 w9biHYP16h/hI0VniRbAIbdfOgTN/P9frSoOBRK+zgQw/zn76/OHhJKiBnO0TjRLuM
	 RPdpPmVzaJY6Q==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A6A0385812
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 18:42:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I7g0Kgw2";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6b6199ef089so29454806d6.3
        for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 15:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721688172; x=1722292972; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YTFsdaIGdQkZzcu52iJyffFLNNaYcRmSbDrGw4KqTYM=;
        b=I7g0Kgw21gbcCPDORFBolcetLW+MIyG/kC1+NjZ0/He/Ugc9ow6ypqS7YjRGL+5upL
         HL7P6+mR+IN20TWTjk3xCj7pgwZL1ObUO+OBQMvUjzIdz8GB/GS9JAXSkn5CilINlvjt
         eIEG3UN170QzNmCUJGLU8paERHRLw0LF3oqdeOSK750Bb7k3lFQ0kDPmXl3g1zGszQey
         aPnnRTOrdGJ2XDBIlLNfcQPwkTrFNPOmlrUZANZgRwJhQhKuuqKs2bwqTA9mR0RewrkM
         U91uJx+BZ+2+UCsxaOo/kVh27NNohdWGGyPkzbuQ/LlpuXYfeXm30XOm4OjOhrvTn7Qx
         c/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721688172; x=1722292972;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YTFsdaIGdQkZzcu52iJyffFLNNaYcRmSbDrGw4KqTYM=;
        b=q2MPCB91loaollPypNGvI33i/i3CJeYajzMDdVNFkhOsdleT94AyvzymjsBC8bvosq
         sb8aDvzXO9D4JG0dzQhPdaR4IzrAU2Cv/zfZ5pBsE3JVgReQjmOQywALoI6kugtPdEWW
         nbgkBMD82v5dmKwBb+Kjlvbj5zh7Acjf9AkSRRDBx+BxEyIyRJw4b+iHPOOHkAItIT/o
         tqsMcjyCOeGUhdjdliO4YpwkzmF8YVOteUydcyGBpO7Z2co/tpUX9dSMcInOJSMCtuVE
         BHXuL0/u7kbz4+9Q+iMiPlrroud0mRnCt7jDWnxedXii8X5+AXT/uHoyG0Sg4VGYgyPG
         oS2g==
X-Gm-Message-State: AOJu0YzENwsn2RecnZmUx96nSyzqWfLXM9xPcdc5uqrsANs1TxhB5V+f
	tr1ASIlQPS5MzCgJnIYU+JtudT0Z7DiwUHGrkrZlWhWx5fvZf7vSETRB7g==
X-Google-Smtp-Source: AGHT+IEAROYoxxc4BaUiZRmmbWVKdbV0NQgvoXVJkEr52JWGWb7UGq84z1RPdjOnAmC+E/gdlqtODA==
X-Received: by 2002:a05:6214:d09:b0:6b5:7fe8:c4fc with SMTP id 6a1803df08f44-6b981a5e062mr11091276d6.56.1721688172365;
        Mon, 22 Jul 2024 15:42:52 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b85542ae24sm35394566d6.53.2024.07.22.15.42.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 15:42:52 -0700 (PDT)
Message-ID: <79503be0-0b7e-4172-b0fc-a74e1cbd9cac@gmail.com>
Date: Mon, 22 Jul 2024 18:42:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac@lists.ettus.com>
Message-ID-Hash: 3DW6JP5GHZ3V5C6GUHC3HD4XONJOJMMH
X-Message-ID-Hash: 3DW6JP5GHZ3V5C6GUHC3HD4XONJOJMMH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DW6JP5GHZ3V5C6GUHC3HD4XONJOJMMH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMDcvMjAyNCAxODozOSwgY2pvaG5zb25Ac2VycmFub3N5c3RlbXMuY29tIHdyb3RlOg0K
Pg0KPiBUaGFuayB5b3UgUm9i4oCmIEkgd2lsbCBleHBsb3JlIHRoaXMgYmVjYXVzZSBJIGRvbuKA
mXQgd2FudCB0byBkZWFsIHdpdGggDQo+IERQREsuIEkgcmVhZCBpbiBvdGhlciBwb3N0cyB0aGF0
IGl0IGRpZG7igJl0IHNlZW0gdG8gbWFrZSBhIGRpZmZlcmVuY2UuDQo+DQpJdCdzIGNlcnRhaW5s
eSB0aGUgY2FzZSB0aGF0IGF0IGxvd2VyIHJhdGVzLCBEUERLIHdvbid0IG1ha2UgYSANCm5vdGlj
ZWFibGUgZGlmZmVyZW5jZS7CoCBBdCBoaWdoIHNhbXBsZSByYXRlcywgaXQgKmNhbioNCiDCoCBt
YWtlIGEgZGlmZmVyZW5jZSwgYmVjYXVzZSBpdCBzaWRlLXN0ZXBzIHRoZSBvdmVyaGVhZCBvZiBM
aW51eCBrZXJuZWwgDQpuZXR3b3JrIGRyaXZlcnMsIHN1Y2ggb3ZlcmhlYWQgaXNuJ3QgZW5vcm1v
dXMsDQogwqAgYnV0IGl0IGNhbiBiZSB0aGUgZGlmZmVyZW5jZSB0aGF0IG1ha2VzIGEgZGlmZmVy
ZW5jZSwgYW5kIGluZGl2aWR1YWwgDQpyZXN1bHRzIHdpbGwsIHVuZm9ydHVuYXRlbHksIHZhcnku
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
