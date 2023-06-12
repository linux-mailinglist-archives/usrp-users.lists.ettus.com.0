Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F389A72D07E
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jun 2023 22:33:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D00EB384995
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jun 2023 16:33:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686602004; bh=abyU657ExXEkfBIvDsNaX7fdmKHvpZcfVMUwAcpP/S4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N/dgVcLK+WbGkL9UZkZ86RJoDgUceeean+A97ASArUWojKDMdodlbP0plc8DGrpdE
	 lf2Dhqf2DCDwjuvXXB1IPCVHkxqenom89cJEKKoZzk4t6hNQ/9vNHn8lEo7C/YUAiB
	 UW82Tcaj9dojg+rC/jYvF2rhg9rtjvMWIIxRCCAeOREy7Dc/5Uqm+UzWynjVEMUgtq
	 Eu556YzVcL/eWoGLe2HuloeemUjyDdr7DKfp2ixKDCWceMpQzBUSQsee8W71S793ee
	 Hh81hfwN1AXhAN6r/0+/TZA+OXeLnOQQi8j0duV5sm+KLxnyB2/bVoNZpQgV0XQ4MZ
	 pcPLYmGyiBLYA==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id F08DF384857
	for <usrp-users@lists.ettus.com>; Mon, 12 Jun 2023 16:31:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pBznHzTs";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-62de8bce252so2582576d6.0
        for <usrp-users@lists.ettus.com>; Mon, 12 Jun 2023 13:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686601885; x=1689193885;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wdRASa7kx8Vslii3cfTww3vWkjnbvx/JzaVF1aXF9IQ=;
        b=pBznHzTsW+utq1ZmJlvB0yKJ2IWxMhA1ip0HV/HDWIbXU6i8CuiZmvb4naFCs0n5AV
         JWPJhVTkMSqZF8qMtKKZLcTLuMxkwzt2X4DgYc6jLQz/P3gC0tVKdaXQYoJ/0ixTlCT7
         YzZR8+5rWUerKVXWeXDnWttnTQIM0H2DafkDhE3F2Qgj9NDYdPMuxUhNyuZuUWkMkhAc
         cHS12X8Z6A3KsXISxBdnLx25A3kENmCCDHT9ZcFKTDPAVSZU1xxKZdeVBs37zrBm7IE9
         y+dzh1YW1eLOzoSfQ8aOxcaf52fWHrX7NK8TdZxMRc8nB0F4hB8hO05JA8uCK2i0jzak
         pyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686601885; x=1689193885;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wdRASa7kx8Vslii3cfTww3vWkjnbvx/JzaVF1aXF9IQ=;
        b=EHl8FFAsgn9C91XGzLneTlDWpzcuBmCypV30fDaG5uMyM9OVze0o7yskECMpnEeUZh
         7Y9atVJ0UR+PwkThy9Ur65aaGwiyUVr9l6Y/BCZ0hUfmTlYBCevcNZXSZpVESASZQg7o
         cWliUwAgDd+gwTILAK9fIITnHJUAMq10d4uo2sYrDFYQZE20TuksgA6gMFLBfpyS4tac
         9dQtqhy1si+h6CCGJLEjfziDSftt3wz+9OnYErw7aomSXBeYXUxaQ6OmShubW2PNlmVd
         WBci4P8cziKIx8VaWjfPVMpHLTHfgxgROMMHYHdzb1d1Mspsx99Ntwfm4dPJ7GIw3vZi
         Z0sw==
X-Gm-Message-State: AC+VfDxqlAjUugl8WeyQdc83GfB24me/23+VzVqtagE1RFHVMLvLKVtt
	ZaoaUxAj14IjnT2xeTI7W1RFIS6XII3sVg==
X-Google-Smtp-Source: ACHHUZ4u8dKW2qJdCHPbEXfftj8TTRyr4143mkH1MOvIKM+PaUUwvrwNNgpR3bt3Zjx46joa32j2Bg==
X-Received: by 2002:ad4:5ca9:0:b0:626:29d4:9a26 with SMTP id q9-20020ad45ca9000000b0062629d49a26mr13166486qvh.37.1686601885142;
        Mon, 12 Jun 2023 13:31:25 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id w10-20020a0ce10a000000b006261c80d76dsm3469842qvk.71.2023.06.12.13.31.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 13:31:24 -0700 (PDT)
Message-ID: <679340f6-46c3-94a0-7d82-800b007e8b8f@gmail.com>
Date: Mon, 12 Jun 2023 16:31:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE@lists.ettus.com>
Message-ID-Hash: G2FF77ZOPT3HGQK3N2QRPEXV3IIRGD5Z
X-Message-ID-Hash: G2FF77ZOPT3HGQK3N2QRPEXV3IIRGD5Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using dual 10G ethernet synchronously x310s
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G2FF77ZOPT3HGQK3N2QRPEXV3IIRGD5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDYvMjAyMyAxNjoyMCwgV2lsbCBIYWZ0ZWwgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
DQo+IEhpLA0KPg0KPiBJIGFtIHRyeWluZyB0byBzdHJlYW0gZGF0YSBhdCAyMDAgTXMvcyB3aXRo
IDIgeDMxMHMgYW5kIGFtIGhhdmluZyANCj4gdHJvdWJsZSBmaWd1cmluZyBvdXQgdGhlIG1ha2Ug
YXJncyBmb3IgdGhpcyBjb25maWd1cmF0aW9uLiBJIGhhdmUgYmVlbiANCj4gYWJsZSB0byB1c2Ug
YWRkciBhbmQgc2Vjb25kX2FkZHIgb24gMSBkZXZpY2UgdG8gZW5hYmxlIGR1YWwgMTBnIGV0aCwg
DQo+IGJ1dCB0aGlzIHN5bnRheCBkb2VzbuKAmXQgc2VlbSB0byB3b3JrIHdoZW4gY29tYmluaW5n
IHdpdGggYWRkcjAgYW5kIA0KPiBhZGRyMSBmb3IgbXVsdGlwbGUgeDMxMHMuIElzIHRoaXMgY29u
ZmlndXJhdGlvbiBzdXBwb3J0ZWQ/DQo+DQo+DQo+IFRoYW5rcw0KPg0KPg0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpUaGUgInNl
Y29uZF9hZGRyIiBhcmd1bWVudCBpcyBBTFNPIG51bWVyaWNhbGx5IGluZGV4ZWQgZm9yIG11bHRp
cGxlIA0KZGV2aWNlcywgc286DQoNCmFkZHIwPWZvbyxzZWNvbmRfYWRkcjA9Zm9vLGFkZHIxPWJh
cixzZWNvbmRfYWRkcjE9YmFyDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
