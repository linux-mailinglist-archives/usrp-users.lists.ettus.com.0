Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732C421A7E
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 01:16:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E26DC38438E
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 19:16:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BXgDNXwO";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 28C50383C33
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 19:15:20 -0400 (EDT)
Received: by mail-qv1-f54.google.com with SMTP id 11so10959672qvd.11
        for <usrp-users@lists.ettus.com>; Mon, 04 Oct 2021 16:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=rvs/SwKHZ8Te+qCkCQosBR7j2KUlKeEz/faSmxmW45k=;
        b=BXgDNXwOVrJv/eHpcGJ3J1KsNYzJDgx9F2uIgsIqOnoUGaHfd0lGkbPygrHEN/7uoL
         hJz/jrQTDa4/iBzjqCpp3QcJV30+42v2Ojc9EzrV21Lde+TNZqVqTjf32sJwJ5beOSVK
         pY+KGguESfAOt/dnLkLWs8NxfI3zY2aMqZHc07/Qjrs6ACzLWdFkQarpFsjt+6IRPpHv
         T57Qoy6xTvPHWcyJM3HgpAWsEB2dc/s6vQwyH+Kvo2R04MfYc9L2faw7qE2zQSR+iQuy
         +poONUgylaaAWMDnugPiXTvbOBICv2lPiBKE9CJOT1V2/6SWKYD3gjm/XKUGvgIhuEXU
         IgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=rvs/SwKHZ8Te+qCkCQosBR7j2KUlKeEz/faSmxmW45k=;
        b=3Xdee6Ilh9ymy+WTkXRHsCPk0i9BGtSz2fg4XGae51BTEIaRVgKhLqey3KfVbb1gc7
         88s19Ln4JMbi7tNg2e8FFwAy1CaTYLzPbMG33zmxjFtF5Y3ggLfkGV6CAXBPJMQyefnH
         WlbATlLwjQlW4d+zwrUbAOcYZkQyiimNrO5f+2JmcaKS5jlrj+yDaIAdI16uh6q4hbef
         GzIfjqfkkSGmbABYZAS/aw1B5LWs6ofhUoqC3xNlNcnKXshvPzkchl66TnFxUToF++Is
         z0tnP5QtcWRZfkJCbb+LNykbVnmWC75HoXhBDSxMuLuMG7I2UE7/cdjZ/NTSUjFFm4hL
         IWeA==
X-Gm-Message-State: AOAM533/WRzbXSsMfbmgA7CGdprzwGOp9bRVTtXlwt/KF8FX/x7KHYMs
	w1KEBLCaH/tF3tcjTkpc+MTS+3GvWuE=
X-Google-Smtp-Source: ABdhPJxGB0eBEoGIFlW2mRls+bCIgxFpgP4tzK5XMAwCz27SfhYBfDCv6dHAMyu4YIVRxWw4hzTSig==
X-Received: by 2002:a0c:e090:: with SMTP id l16mr26391773qvk.60.1633389319218;
        Mon, 04 Oct 2021 16:15:19 -0700 (PDT)
Received: from [192.168.2.250] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id 188sm8348543qkm.21.2021.10.04.16.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 16:15:18 -0700 (PDT)
To: rouba zeitoun <roubazeitoun@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAHqKquxikMusGTodb+hEMtUwpdxAu=QXSvgFtSNWU4DsUkZiRg@mail.gmail.com>
 <9b016ef8-2417-c5b5-05d2-9ff57f859651@gmail.com>
 <CAHqKquzk42hw-hng32CsumPLbhOF2z=KTKtAZ7=u_z7SG+TKBQ@mail.gmail.com>
 <28473d50-9f0e-3fe2-776b-d7ebdddee1cc@gmail.com>
 <CAHqKquwnGY1afzpmo4kWZnyXxGrrKLY23zUkAH=wEcQ6tjtetg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <287a52ab-a082-2e5b-01ef-cbda8f40b6e0@gmail.com>
Date: Mon, 4 Oct 2021 19:15:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAHqKquwnGY1afzpmo4kWZnyXxGrrKLY23zUkAH=wEcQ6tjtetg@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 7BBR6R4M4VSOIDVPMI6WFFCLNMXUFZLM
X-Message-ID-Hash: 7BBR6R4M4VSOIDVPMI6WFFCLNMXUFZLM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7BBR6R4M4VSOIDVPMI6WFFCLNMXUFZLM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0wNCA2OjM2IHAubS4sIHJvdWJhIHplaXRvdW4gd3JvdGU6DQo+IEkgdHJpZWQg
dG8gdXNlIGFuIGV4dGVybmFsIHBvd2VyIHN1cHBseSwgYnV0IGFmdGVyIEkgY29ubmVjdGVkIHRo
ZSANCj4gQjIxMCB0byBteSBsYXB0b3AsIHRoZSBsZWQgbGlnaHQgb24gaXQgdHVybmVkIGZvcm0g
Ymx1ZSB0byByZWQuDQo+DQo+IE5vLCBpdCBkb2VzIG5vdCBoYXZlIGEgR1BTRE8uDQo+DQo+IENv
dWxkIHlvdSBwbGVhc2UgZXhwbGFpbiBmb3IgbWUgd2hhdCBjb3VsZCBiZcKgdGhlIHByb2JsZW0/
DQo+DQpSRUQgbGlnaHQgbWVhbnMgZXh0ZXJuYWwgcG93ZXIuwqAgVGhhdCBpcyB0byBiZSBleHBl
Y3RlZC4NCg0KUGxlYXNlIHNoYXJlIHRoZSBvdXRwdXQgb2YNCg0KdWhkX3VzcnBfcHJvYmUgLS1h
cmdzIHR5cGU9YjIwMA0KDQpJIG5lZWQgdG8gc2VlIGF0IHdoYXQgcG9pbnQgaXQgZ2V0cyBpbnRv
IHRyb3VibGUuDQoNCk15IHN1c3BpY2lvbiB3YXMgcGVyaGFwcyBhIHBvd2VyIGlzc3VlLCBhbmQg
dGhlIEZYMyBVU0IyLzMgcHJvY2Vzc29yIG9uIA0KdGhlIGJvYXJkIHdhcyBleHBlcmllbmNpbmcg
YSBicm93bi1vdXQgY29uZGl0aW9uLg0KDQpCdXQgdGhlcmUncyBubyB3YXkgZm9yIG1lIHRvIHRl
bGwgZm9yIHN1cmUuwqAgUmVhbGx5LCB0aGF0J3MgaG93IHRoaXMgDQp3b3Jrcy7CoCBJIGFzayB5
b3UgY2xhcmlmeWluZyBxdWVzdGlvbnMsIGFuZCB3aXRoIHRoZSBhbnN3ZXJzIHRvIHRob3NlDQog
wqAgcXVlc3Rpb25zLCBJIGNhbiBnZXQgY2xvc2VyIHRvIGZpZ3VyaW5nIG91dCB3aGF0J3Mgd3Jv
bmcgd2l0aCB5b3VyIGJvYXJkLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
