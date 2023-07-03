Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FC3745F9D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 17:14:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 572203840DA
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 11:14:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688397259; bh=QaVVAzLDnmDhYQTadLHZeUO7OVV1zYw+1UcWZ2ecdKc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YhNLhjh8UpUHZQneV1IQZ3s7T4DnoZuqVNelbWUzBIq8R3sB0nX97cc6xO4LVQqE1
	 PYV/PiUTqOcQfy3qF7x5/w2zx1PjDRdWGCHzriYxAvZ6GbFCMuD2hkpT4UMsWdp1p+
	 XrDNGbSWqxV2MzpXkv+MW9weBxps1eRH6PPlB/039XBBQOrCcPDJI3dSX9Jus//ZHA
	 ZiIQ8H/RkKPmrxo1AsDnVQf5YjmXmx9aGy6Cp+fVga+HI26o9EKSf8/6B+eVjV6xqH
	 1XoN/DhUn1XOwBq77G54DhEqiZgRyxBDyT6xcAlYPGerdYNsA1nfyKw16HGLSnITX/
	 heWGZZoYD1KQQ==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 398F4380953
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 11:13:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ecFuBP9N";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-635f48814b4so25885496d6.1
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 08:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688397235; x=1690989235;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oeJ39KFhakSP4mgW4YtWHt3AkNNqzYjgz3IfBQIC1yU=;
        b=ecFuBP9N9M7cJAvLGiRbOkyUiHOgzQ8jq1DGsrL+S1evof7DLH0M/Bwvjiz+ev8aw1
         8Avg8m8N8uGcFfPsbW2yhDeS7Gqoaibe5NVNdRx1zdOO29HmJfpS6DUcRuTUoDvnDPik
         SiSzudeq/SS81rppHCs3Ckv1Z/Zh+SP9N5Z8wSm+qNBpFJMT6/LbaRsYfD223Z9JF5CX
         RB4CTFi/UlbjejOUwpQ2lQPlpdqyDfPqPbdXYQZUgNpITrmD+sYR4QFs5O2Rch4l8zcB
         568pDcU5xN/6rcO25clE/tOHj5p14Wn3OIm8bop/9MaRK9lshRaURmtUUJrcrZ8s/zKb
         2ljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688397235; x=1690989235;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oeJ39KFhakSP4mgW4YtWHt3AkNNqzYjgz3IfBQIC1yU=;
        b=dHrUdPqGdSC+o/ScK1AM+klAUEm4BdznHTpRkyaMo8bfC+gyEWALlGE0ExAkSsK6rk
         +RWi6tgsEvqzXk3OFzWStP3ryAmv8YdGf/2X+gflxb5SU8f8G9kxw2wmO1RDEgJaohbb
         J2x9rwxQRtYl2/htgE0UfJ+OQcS1vP5S8rLREpCbwcKqsLWCvwqc9gO9HTatlVnoWeir
         /wzBzw7BeT7bRwehosZtxZCIEt0Np1flJL5/cqsJcMGGVl36xLdzxcvtt5Z6Kcx+PfxK
         e1pVVfM8dx92cFywtTqZC2r//u3EqkcbYyk8rz9UBICBK0b8NjjBMcsRbtaCgo6D0wPs
         qz/Q==
X-Gm-Message-State: ABy/qLaaokJu3HX/0y/cveJUbdqVjzIGkIggLmIQQ8IdOWl+rQcMCvug
	sLjsRpGuhhpzKOhMoL0uPzdNp4YqN+k=
X-Google-Smtp-Source: APBJJlGlSo8Jgzi/6DDDhRLp13jImoEwqcAho9KmnU9Aj1dc+HfUckPjVNFsRh7YTcETdM62hc+GCA==
X-Received: by 2002:a05:6214:20e7:b0:62d:fa7c:6b95 with SMTP id 7-20020a05621420e700b0062dfa7c6b95mr8885189qvk.32.1688397235522;
        Mon, 03 Jul 2023 08:13:55 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o15-20020a0ceccf000000b0063642bcc5e4sm4586014qvq.9.2023.07.03.08.13.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 08:13:55 -0700 (PDT)
Message-ID: <666634be-1d43-aae7-f72e-bfe097227c74@gmail.com>
Date: Mon, 3 Jul 2023 11:13:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI@lists.ettus.com>
Message-ID-Hash: 2777GRNCTNXBWGBH5EDG7EHOQN3A5HMO
X-Message-ID-Hash: 2777GRNCTNXBWGBH5EDG7EHOQN3A5HMO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2777GRNCTNXBWGBH5EDG7EHOQN3A5HMO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDcvMjAyMyAxMTowNiwgam51bmV6QGN1ZC51dmlnby5lcyB3cm90ZToNCj4NCj4gQnV0
IHRoZXJlIGlzIG9ubHkgYSBkZWxheSBvZiAxMDMuNyBtcyBiZXR3ZWVuIHNpZ25hbHMgYW5kIG5v
dCBhIGRlbGF5IA0KPiBvZiAoNCBzICsgMTAzLjcgbXMpLiBXaGF0IGFib3V0IHRoaXMgNCBleHRy
YSBzZWNvbmRzPyBXaHkgNCBhbmQgbm90IDY/DQo+DQo+IFNvcnJ5LCBJIGNhbuKAmXQgc2VlIHdo
YXQgeW91IG1lYW4gaW4gdGhlIGdlbmVyYXRlZCBjb2RlLg0KPg0KPg0KVGhlICJ1bmtub3duIFBQ
UyIgc3luY2hyb25pemF0aW9uIG1ldGhvZCB3YWl0cyBmb3IgYSAxUFBTIHB1bHNlIHRvIA0KYXJy
aXZlLCBhbmQgdGhlbiBjb21tYW5kcyB0aGUgaGFyZHdhcmUgdG8gc2V0IHRoZQ0KIMKgIHRpbWUt
b2YtZGF5IGNsb2NrIHRvIDAgYXQgdGhlIG5leHQgUFBTLg0KDQpCZWNhdXNlIHlvdSBoYXZlIHR3
byBlbnRpcmVseSBkaWZmZXJlbnQgc291cmNlIGJsb2NrcyAobmVjZXNzaXRhdGVkIGJ5IA0KdGhl
IGZhY3QgdGhhdCB5b3UgaGF2ZSB0d28gZGlmZmVyZW50IHR5cGVzIG9mIGhhcmR3YXJlKSwNCiDC
oCB0aGVyZSB3aWxsIG5lY2Vzc2FyaWx5IGJlIGEgdGltZS1vZi1kYXkgZGlzYWdyZWVtZW50IGJl
dHdlZW4gdGhlIA0KZGV2aWNlcyBiZWNhdXNlIGZpcnN0IG9uZSBibG9jayBkb2VzIHRoaXMgc3lu
Y2hyb25pemF0aW9uDQogwqAgKHdhaXRpbmcgZm9yIHRoaW5ncyB0byBoYXBwZW4pLCBhbmQgVEhF
TiB0aGUgb3RoZXIgYmxvY2sgZG9lcyB0aGUgDQpzYW1lLsKgIE9uY2UgdGhlIGZpcnN0IGJsb2Nr
IGlzIGRvbmUgaXRzIHN5bmNocm9uaXphdGlvbiwNCiDCoCBpdHMgdGltZS1vZi1kYXkgY2xvY2sg
bWFyY2hlcyBmb3J3YXJkLCBhbmQgVEhFTiB0aGUgc2Vjb25kIGJsb2NrIGRvZXMgDQp0aGUgc2Ft
ZSB0aGluZy7CoCBUaGUgdHdvIHRpbWUtb2YtZGF5IGNsb2Nrcw0KIMKgIGRvbid0IG1hdGNoLg0K
DQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
