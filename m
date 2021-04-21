Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFAE366F0C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 17:22:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D8B3384190
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 11:22:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hq6mTS7n";
	dkim-atps=neutral
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8415B383D79
	for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 11:22:08 -0400 (EDT)
Received: by mail-qv1-f47.google.com with SMTP id i9so20312243qvo.3
        for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 08:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-transfer-encoding;
        bh=c+AT6jaUmF+/VH72W2eYXf0BBhGC74vzmKfuPnOOIYI=;
        b=hq6mTS7njTw27RkG17kAffOZsjP8NOvJE187fNWD+lsRhfLjmP2JaunSj2Uf6GMIZc
         1pVaqsKGtMjiweBhMdKUKXYBEe03eedkKBR0kGaS4bCk5wLL3/gq6QTPw7BjxtpGgPgt
         K4+uGrLLHU01MBb6pJWkYBlz0IeRSb9lozvRS+tepQlbQZsj4DoKPErlnhcbkqpMFTCZ
         EZkGyZs3sqq2q4sVvFSVkDF/nJzEsTFF4QaB4xmkY9ilWvOuNftaipOZK1VRHo3nbuO0
         mk6bnHkOb9AoQ0KIPKf+LQ8ktFU3jKI7qDPwgzxlNFIbENzRX4QJjg+oCWVuQ7FJDm+7
         ta0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-transfer-encoding;
        bh=c+AT6jaUmF+/VH72W2eYXf0BBhGC74vzmKfuPnOOIYI=;
        b=uFnYHICMMz9TOSek6/Svi4x2nHZuECrc5AS8tzuTdRKP2ZHfnxITXDZ+YwH6wCCO7s
         lfrawvHAZ9UcwzFBswsJ/Ibq7TCpKv5N9v4WkwAfjP00xHcQXhFVmayW8CeHL+TUCm1Z
         OB8JHuUTenU8inLJBfPrtn7+uRpnjaMvcHRmzhd1xQGWSTBN1loKeRBrNGdDiuOKAWH7
         mRM/8XKDGG2qS63waFqdAYMyfwmNVlX8XT4eZ0dEzKNyZwUwfum1/++cpXqtTjJik+59
         F0u4nkaZTQDKTbBJ0U+88ot7pUvn54ymbiJ7cIVr4KO0Hg4rRtehWpkGDtXQ0KVmGuU3
         a3cg==
X-Gm-Message-State: AOAM533tIdGeA1fn1wOwda66DcFZOjbesV8QTt710qX9+47FL4BtknOI
	S1DbUKgdUQ5HlFzqmq97J5sw75oC6PF+ow==
X-Google-Smtp-Source: ABdhPJzrUpG9/hyUz7c0sMo7f/+pctx8SiguH02pMtYKLcdqPc9Lwk9c3evg867z2U5Sqb/qgTLNwg==
X-Received: by 2002:a0c:f247:: with SMTP id z7mr33450937qvl.24.1619018527490;
        Wed, 21 Apr 2021 08:22:07 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id u190sm2421870qkc.18.2021.04.21.08.22.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 08:22:07 -0700 (PDT)
Message-ID: <6080431E.9090303@gmail.com>
Date: Wed, 21 Apr 2021 11:22:06 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Mike <mike.nelson@rdss.com>
References: <711b2f58-f0cf-0e55-c351-6aecedc0684f@rdss.com> <AF4B3E1B-34DD-407D-842F-8B1372B2B84A@gmail.com> <f643b2a5-dacb-cdf4-6289-5b260bbe6e6b@rdss.com>
In-Reply-To: <f643b2a5-dacb-cdf4-6289-5b260bbe6e6b@rdss.com>
Message-ID-Hash: VWJJOHX3DYYNWCZCC7RMAWCJNHNFUBZZ
X-Message-ID-Hash: VWJJOHX3DYYNWCZCC7RMAWCJNHNFUBZZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: GNURadio Discussion List <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive amplitude consistency
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VWJJOHX3DYYNWCZCC7RMAWCJNHNFUBZZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDQvMjEvMjAyMSAxMTowMyBBTSwgTWlrZSB3cm90ZToNCj4gTWFyY3VzLA0KPg0KPiBUaGFu
ayB5b3UgZm9yIHlvdXIgcmVzcG9uc2UuDQo+DQo+IFRoZSB2YXJpYXRpb24gaXMgb24gdGhlIG9y
ZGVyIG9mIDIwJSwgYWx0aG91Z2ggaXQgY2hhbmdlcyBmcm9tIHJ1biB0byBydW4uDQo+DQo+IFBv
d2VyIGxldmVsIGZyb20gdGhlIGdlbmVyYXRvciBpcyAxMCBtViB0aHJvdWdoIDQwIGRCIG9mIGF0
dGVudWF0aW9uLg0KPg0KPiBUaGUgQjIwMCBpcyBzZXQgZm9yIG1heGltdW0gZ2FpbiAobWluaW11
bSBhdHRlbnVhdGlvbikgYW5kIGlzIHVzaW5nIHNjOA0KPiBmb3JtYXQgd2l0aCBwZWFrPTAuMS4N
Cj4NCj4NCj4gVGhhbmtzIQ0KVGhhdCdzIGFib3V0IDAuOGRCIHZhcmlhYmlsaXR5LiAgV2hpY2gg
aXMgYSBiaXQgbW9yZSB0aGFuIEkgd291bGQgZXhwZWN0IA0Kd2l0aCB0aGUgd2F5IGFuYWxvZyBS
RiBoYXJkd2FyZSB0ZW5kcyB0byBoYXZlDQogICByZXBlYXRhYmlsaXR5IGlzc3VlcywgcGFydGlj
dWxhcmx5IGFzIHlvdSBnbyB1cCBpbiBmcmVxdWVuY3kuDQoNCldoYXQgaGFwcGVucyBpZiB5b3Ug
dXNlIDE2LWJpdCBzYW1wbGVzPyAgIFdoYXQgaGFwcGVucyBpZiB5b3UgbG93ZXIgdGhlIA0Kc2ln
LWdlbiBvdXRwdXQgYnkgYSBmdXJ0aGVyIDEwZEI/DQoNClRoZSBBRDkzNjEgY2hpcCBnb2VzIHRo
cm91Z2ggc29tZSBjYWxpYnJhdGlvbiBleGVyY2lzZXMgKGZvciBnYWluIGFuZCANCm90aGVyIHRo
aW5ncykgZXZlcnkgdGltZSBpdCBzdGFydHMgdXAsIGFuZCB3aXRoIGEgc3Ryb25nDQogICAoLTMw
ZEJtIGF0IHRoZSBpbnB1dCBpcyBzb21ld2hhdCBzdHJvbmcpIG5hcnJvd2JhbmQgc2lnbmFsIG9u
IHRoZSANCmlucHV0LCB0aGF0IGNhbGlicmF0aW9uIG1pZ2h0IGdldCAiY29uZnVzZWQiLg0KDQpJ
J3ZlIGNvcGllZCB0aGUgdXNycC11c2VycyBtYWlsaW5nIGxpc3QsIHdoZXJlIHRoaXMgZGlzY3Vz
c2lvbiBpcyANCnByb2JhYmx5IG1vcmUgYXBwcm9wcmlhdGUuDQoNCj4NCj4NCj4gT24gNC8yMS8y
MDIxIDEwOjQyIEFNLCBNYXJjdXMgRCBMZWVjaCB3cm90ZToNCj4+IFdoYXQgaXMgdGhlIG1hZ25p
dHVkZSBvZiB0aGUgaW5jb25zaXN0ZW5jeT8NCj4+DQo+PiBJZiB5b3UgcmVwbGFjZSB0aGUgc2ln
bmFsIGdlbmVyYXRvciB3aXRoIGEgNTAgb2htIHRlcm1pbmF0b3IgYW5kIGluY3JlYXNlIHRoZSBn
YWluIHRvIG5lYXIgbWF4aW11bSwgZG8geW91IHN0aWxsIHNlZSB0aGUgaW5jb25zaXN0ZW5jeT8N
Cj4+DQo+PiBXaGF0IHBvd2VyIGxldmVsIGFyZSB5b3UgaW5qZWN0aW5nIGZyb20gdGhlIHNpZ25h
bCBnZW5lcmF0b3IuDQo+Pg0KPj4gU2VudCBmcm9tIG15IGlQaG9uZQ0KPj4NCj4+PiBPbiBBcHIg
MjEsIDIwMjEsIGF0IDEyOjI3IEFNLCBNaWtlIDxtaWtlLm5lbHNvbkByZHNzLmNvbT4gd3JvdGU6
DQo+Pj4NCj4+PiDvu79IZWxsbywNCj4+Pg0KPj4+IEknbSBob3Bpbmcgc29tZW9uZSBjYW4gc2hl
ZCBzb21lIGxpZ2h0IG9uIGFuIGFwcGFyZW50IGluY29uc2lzdGVuY3kNCj4+PiBpc3N1ZSBJJ20g
c2VlaW5nIHdpdGggcmVjZWl2ZWQgSS9RIGFtcGxpdHVkZS4NCj4+Pg0KPj4+IEkgaGF2ZSBhIEIy
MDAgZGlyZWN0bHkgY29ubmVjdGVkIHRvIGFuIGFyYml0cmFyeSB3YXZlZm9ybSBnZW5lcmF0b3IN
Cj4+PiB0aHJvdWdoIGFuIGF0dGVudWF0b3IuICBUaGUgZ2VuZXJhdG9yIGlzIHByb2dyYW1tZWQg
dG8gcmVwZWF0ZWRseSBzZW5kIGENCj4+PiBmaXhlZCBzZXF1ZW5jZSBvZiBBTSBwdWxzZXMgYXQg
YSBzZXQgcG93ZXIgbGV2ZWwuICBPbiB0aGUgaG9zdCAoVWJ1bnR1DQo+Pj4gMjAuMDQsIFVIRCAz
LjE1LjApLCBhIEMrKyBwcm9ncmFtIHNpbXBseSBnYXRoZXJzIHNhbXBsZXMgKDQ4IE1TUFMsIHNj
OA0KPj4+IE9UVyBhbmQgQ1BVKSBhbmQgY29tcHV0ZXMgdGhlIGF2ZXJhZ2UgYW1wbGl0dWRlIGFz
IEleMiArIFFeMi4NCj4+Pg0KPj4+IER1cmluZyBhIHJ1biBvZiB0aGUgaG9zdCBzb2Z0d2FyZSwg
dGhlIHJlcG9ydGVkIGFtcGxpdHVkZXMgYXJlDQo+Pj4gY29uc2lzdGVudCBmcm9tIHNlcXVlbmNl
IHRvIHNlcXVlbmNlLg0KPj4+DQo+Pj4gSG93ZXZlciwgaWYgdGhlIGhvc3Qgc29mdHdhcmUgaXMg
c3RvcHBlZCBhbmQgaW1tZWRpYXRlbHkgcmVzdGFydGVkLA0KPj4+IHdpdGhvdXQgY2hhbmdpbmcg
dGhlIGdlbmVyYXRvciwgdGhlIHJlcG9ydGVkIGFtcGxpdHVkZXMgYXJlIGFnYWluDQo+Pj4gY29u
c2lzdGVudCBidXQgYXQgYSBkaWZmZXJlbnQgbGV2ZWwgdGhhbiB0aGUgcHJldmlvdXMgaW52b2Nh
dGlvbi4NCj4+Pg0KPj4+IElzIHRoZXJlIHNvbWUgaW50ZXJuYWwgYWRqdXN0bWVudCBvciB2YXJp
YWJsZSBzZXR0aW5nIHBlcmZvcm1lZCBkdXJpbmcNCj4+PiBVU1JQIGNyZWF0aW9uIGFuZCBzZXR1
cCB0aGF0IHdvdWxkIGNhdXNlIHRoZSByZWNlaXZlZCBJL1Egc2FtcGxlDQo+Pj4gYW1wbGl0dWRl
cyB0byB2YXJ5IHdpdGggZWFjaCBzdGFydHVwPw0KPj4+DQo+Pj4NCj4+PiBUaGFua3MhDQo+Pj4N
Cj4+Pg0KPj4+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
