Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0876457AA8
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 03:54:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50C9F38422D
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 21:54:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V1WrxFnJ";
	dkim-atps=neutral
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id AD51A384222
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 21:54:05 -0500 (EST)
Received: by mail-il1-f175.google.com with SMTP id s14so12057171ilv.10
        for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 18:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=hEgwxNqoLSqx1zFEg4YNVZmOAOrAfb6qDwlZplnW2oE=;
        b=V1WrxFnJExucahJgL7LzQg2nmvxU7i21ftTjOaGwaLuNPqJ2aziiFde6Kf2gmudaZM
         9e0+elvP2GZxFYOA4f1boqvhXNVFVCAeJRWIO2+UECyZiaOvJrFkBvq5wtiws/2B2TGh
         rbZ7zDxYknbImGkmmP3d0xPrrYtQJc8DeQ4OCmq0wKzaFRw3sNqbx6NGlU/ZNpDgsQ6V
         iHdBBVeOXCsSRK/dBCV4p8ngowwwK3YffHFmfd2LnZKbKR29OoIFNsOtxUKK76W02Orl
         mX3W7U5DWi+CJ+XjlAQuuwngoIBpl31vjKoBa2joiuW5sNcPmGl8iTxAFvNXuY+MIHa3
         JgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hEgwxNqoLSqx1zFEg4YNVZmOAOrAfb6qDwlZplnW2oE=;
        b=CNIihvsi6LN0t2HGmcEPNr5Fhtk6AyipzHl8sECzk70NPh/KsAthYKU5TlkE0I3WTt
         R/B5nxSJHu9hlfT0jZK9tGzHLVwgnwJBZh7OjfzllOCexnnDv5kddHWNF4Eclq/dQbez
         Kdwjlar+IcHtg/O2wBfMZtPCoLNIMk3niQBXIzcOFQqptm3RuUqy3wrqLUO2dO7nF2iX
         PQgtfSz2s56ao3acTjgrCzIQYKVzx+Z+p38k4CSv42wvhp1m4wCIujKu78N65lPdTzW2
         n3gMQwddJqi5aKvhCY4egGmMA25Ojq7BR2TLiZrMSPxGz4v/2zmO+hRBvAPXLuZZzxOR
         VokQ==
X-Gm-Message-State: AOAM5315P776xXp0IBuXA7FuWGUYLFqOvGHb6mULX8afbs2BDeYRBkZE
	RghXijHWZgqXvgpzJlgmtabUa5CInJ4=
X-Google-Smtp-Source: ABdhPJzZX+7KK3U1tEAYGcY4Sg0lco/4/0ZLZTuXQL2Fj1FiJ4tNoUa0Zp8zYcL1LPvNjf2RVo6sMw==
X-Received: by 2002:a05:6e02:174a:: with SMTP id y10mr7950523ill.68.1637376844877;
        Fri, 19 Nov 2021 18:54:04 -0800 (PST)
Received: from [192.168.2.240] (bras-base-smflon1825w-grc-06-174-88-54-236.dsl.bell.ca. [174.88.54.236])
        by smtp.googlemail.com with ESMTPSA id m15sm1339297ilh.32.2021.11.19.18.54.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Nov 2021 18:54:04 -0800 (PST)
Message-ID: <9595e8fe-e16f-2f57-81f0-bdc6967f9b9a@gmail.com>
Date: Fri, 19 Nov 2021 21:54:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
 <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com>
 <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
 <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
 <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com>
 <f2e476e2-20c7-5f0d-18ff-fb14ba86d223@gmail.com>
 <7ac64ef957f2477ea403b0b03739ce8c@gmv.com>
 <a925d2f2-aa2b-4e2a-318c-248c2c101178@gmail.com>
 <053b1b73b720470b846a73d8f79c5f72@gmv.com>
 <CAB__hTQGyfjs=1r3cffcfac8=TN-DTRqTUL2WD8KQXXx062FGw@mail.gmail.com>
 <CAA7+tqSZ2KtkP1Kmu=a2Q4Rvk=hbdqJaeAEA_dYz2p1xG0bUVg@mail.gmail.com>
 <CAGNhwTP07=GSHcfkgczAActtxLqjQe66g9c_YAJoiQ+anio5Rg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGNhwTP07=GSHcfkgczAActtxLqjQe66g9c_YAJoiQ+anio5Rg@mail.gmail.com>
Message-ID-Hash: XNJWZ55N3SHNG7OVPSX44ZLHGFS7FFRT
X-Message-ID-Hash: XNJWZ55N3SHNG7OVPSX44ZLHGFS7FFRT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XNJWZ55N3SHNG7OVPSX44ZLHGFS7FFRT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0xOSAxMDoxMywgTWljaGFlbCBEaWNrZW5zIHdyb3RlOg0KPiBJdCBpcyB3b3J0
aCB0cnlpbmcgYSBNZWxsYW5veCAxMCBHYkUgTklDLiBJbiBvdXIgcmVjZW50IGludGVybmFsIA0K
PiB0ZXN0aW5nIHdpdGggVUhEwqArIERQREvCoCsgTjMyMC9OMzIxLCB3ZSBzYXcgc2ltaWxhciBp
c3N1ZXMgYXMgQmVya2F5IA0KPiBub3RlcywgYW5kIGV2ZW50dWFsbHkgdHJhY2tlZCB0aGUgaXNz
dWUgdG8gdGhlIEludGVsIGRyaXZlci4gV2UgDQo+IGFwcHJvYWNoZWQgSW50ZWwgYW5kIHdoaWxl
IHRoZXkgYWNrbm93bGVkZ2VkIHRoZSBwcm9iYWJsZSBpc3N1ZSwgc2luY2UgDQo+IHRoZXkgaGF2
ZSBtb3ZlZCBkZXZlbG9wbWVudCB3b3JrIHRvIHRoZSA4MDAtc2VyaWVzIE5JQ3MsIHRoZXkgZGVj
bGluZWQgDQo+IHRvIGZpeCB0aGUgaXNzdWUgaW4gdGhlaXIgNTAwLzcwMCBzZXJpZXMgTklDIGRy
aXZlci4gV2Ugc3dpdGNoZWQgdG8gYSANCj4gTWVsbGFub3ggTklDIGFuZCB0aGF0IHJlc29sdmVk
IHRoZSBpc3N1ZXMuIFBsZWFzZSBub3RlIHRoYXQgVUhEIA0KPiBjdXJyZW50bHkgc3VwcG9ydHMg
RFBESyAxOC4xMSAoZXhhY3QgdmVyc2lvbiksIHdoaWNoIGRvZXMgbm90IGhhdmUgDQo+IHN1cHBv
cnQgZm9yIEludGVsIDgwMC1zZXJpZXMgTklDcyAtLSB0aGUgb2xkZXN0IERQREsgZm9yIHRoYXQg
c3VwcG9ydCANCj4gaXMgMTkuMDQsIGFuZCAxOS4xMSBpcyByZWNvbW1lbmRlZCBhcyB0aGUgbWlu
aW11bSB2ZXJzaW9uLiBXZSBhcmUgDQo+IGFjdGl2ZWx5wqB3b3JraW5nIG9uIHVwZGF0aW5nIERQ
REsgc3VwcG9ydCB0byAxOS4xMSAvIDIwLjExIC8gMjEuMTEgLS0gDQo+IGxvb2tzIGxpa2UgdGhl
IHNhbWUgQVBJLCB3aGljaCBpcyBkaWZmZXJlbnQgZnJvbSB0aGF0IGZvciAxOC4xMS4gLSBNTEQN
Cj4NClNvbWV3aGF0IHVuZnJpZW5kbHkgb2YgSW50ZWwuDQoNClJlbWluZHMgbWUgb2YgdGhlIDgy
NTc5TE0gcHJvYmxlbSB0aGV5IGhhZCBhIGZldyB5ZWFycyBiYWNrLS1pdCB3b3VsZCANCmp1c3Qg
cmFuZG9tbHkgZHJvcCBmcmFtZXMsIHBhcnRpY3VsYXJseSBhdCBsb3cgZnJhbWUgcmF0ZXMuIEl0
IHdhcyBhIA0KaGFyZHdhcmUgaXNzdWUgcmF0aGVyIHRoYW4NCiDCoCBhIGRyaXZlciBpc3N1ZSwg
YW5kIHRoZXkgc2ltcGx5IGxldCBodW5kcmVkcyBvZiB0aG91c2FuZHMgb2YgdGhlbSANCnRyaWNr
bGUgaW50byB0aGUgbWFya2V0LCB1bmZpeGVkLsKgIFRoZWlyIGFyZ3VtZW50IHdhcyAiaGV5LCBp
ZiB5b3UgdXNlIA0KVENQLCB5b3UnbGwgbmV2ZXIgZXZlbiBub3RpY2UiLg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
