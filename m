Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8999346815C
	for <lists+usrp-users@lfdr.de>; Sat,  4 Dec 2021 01:39:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BFA9385407
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 19:39:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="IqTQ1gfi";
	dkim-atps=neutral
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C6C8384811
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 19:38:13 -0500 (EST)
Received: by mail-wm1-f41.google.com with SMTP id p27-20020a05600c1d9b00b0033bf8532855so3468760wms.3
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 16:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=6Ycpe3ctMT2XXzdzeg0qBVyOWMAMwlq5DyX5LQciirU=;
        b=IqTQ1gfivS86BixoVXnPREBh8FXTwt0uiH0MgEDj1hwndiAd/st/o+4ucExQe+zbpH
         uhSBuqm909KrejuXnaKI1x94ydKQCmt/0Zq501QA3TDR20aBtTpp8Ypyw/3eNwiUEm1K
         2RP6yf5SJbMeny5IuqklWk4Ft/g46FkNzD4JSDOcQ6iyCKNgo8/LDjF46u2kfDcqrYRg
         eXDnktZfjpRO4+TJW0fbs2Z58TKNmqSxydhkoqXZhCs9LGpOkfxXkMGIAhGuU3INdMbx
         KQCTsfUJ1uiJDic2OrdidhPXerz3hZRPZhT3ppBsTo2F2oqzwda1n/FXNb1J5m+3iOfu
         hljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6Ycpe3ctMT2XXzdzeg0qBVyOWMAMwlq5DyX5LQciirU=;
        b=UexfTPleoDxqiQbbQKX/TNm/dtDv8fzqqdvz2Z4/Q+YMcny/3iyvITAbwKdXmRB0r/
         hFGKqXBeI22mbOHIpWTnfl2LovJRnxLu0Pd8tQ72YxdmS+BTXmvpnjl8+5OLlg3cHpSW
         /dtxTxgUWZ+Nec0jVi4x5gmVY/2LJ0HfahY2dL07A9sJcu4hh1OwZRCQ1Hq9jskpGZbC
         QOAdlb6p0L0PjyTtcgTPEesAA08RPuT9c0+VgteS0n4RqTXWJ+LDPKTuCvZQUA+lUgr5
         U1QsZANqP0pIRfwDs3H++D4k4Vx/yP2AKsNLt/wYrXCZCQbGU3kHmMq1Ybb/VlAPvnBy
         7Bqg==
X-Gm-Message-State: AOAM533BbaEK9iAPXo9IiSXNnSGJFV0YTmSVw9c8HG0P9dS3CFZnqfo2
	ZRH+ZuocH+4ICxWUZdmYcrDcle00
X-Google-Smtp-Source: ABdhPJxrIGHh4NDqYcKtRzntjKSsloBYsPLKGTiKuC/pnIUjIXQvNCxJe9RMdhirCh5/0DI9xFcMMA==
X-Received: by 2002:a05:600c:4982:: with SMTP id h2mr19049534wmp.4.1638578292936;
        Fri, 03 Dec 2021 16:38:12 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-35.hsi.kabel-badenwuerttemberg.de. [46.223.163.35])
        by smtp.gmail.com with ESMTPSA id b15sm5274606wri.62.2021.12.03.16.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 16:38:12 -0800 (PST)
Message-ID: <0c9ec73e-ca9c-21dd-7126-19d4cb076d9f@ettus.com>
Date: Sat, 4 Dec 2021 01:38:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: =?UTF-8?B?57+B5YGJ5ZC+?= <cmdjbst@gmail.com>, usrp-users@lists.ettus.com
References: <CACfkGzVBb8d_A-ZJJKODKj3by_4bPTXsOCrzAsQOgh=-mObqKA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CACfkGzVBb8d_A-ZJJKODKj3by_4bPTXsOCrzAsQOgh=-mObqKA@mail.gmail.com>
Message-ID-Hash: JNUAFXCWOS726EIZ2G23BZJP7F3U36D7
X-Message-ID-Hash: JNUAFXCWOS726EIZ2G23BZJP7F3U36D7
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using N200 with UBX160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JNUAFXCWOS726EIZ2G23BZJP7F3U36D7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8hDQoNCiA+IEkgd2FudCB0byBrbm93IGlmIEkgY2FuIHVzZSBOMjAwIHdpdGggVUJYMTYw
DQoNClNhZGx5LCBuby4gVGhlIE4yMDAgbmVlZHMgYW4gYW50aS1hbGlhcyBmaWx0ZXIgb2YgYXQg
bW9zdCA1MCBNSHogYmFuZHdpZHRoIChvbmUtc2lkZWQpIGZvciANCmVmZmVjdGl2ZWx5IGFsaWFz
LWZyZWUgb3BlcmF0aW9uLCBhbmQgYSBVQlgxNjAgaGFzIDgwIE1Iei4NCg0KID4gTXkgZ29hbCBp
cyB0byBydW4gdGhlIE4yMDAgYXQgMTAwTXNwcyB0byByZWNlaXZlIDEwME1IeiBiYW5kd2lkdGgg
b2Ygc2lnbmFsLg0KDQpUaGF0IGlzIGltcG9zc2libGUuIFRoZSBOMjAwIGhhcyBhIG1hc3RlciBj
bG9jayByYXRlIG9mIDEwMCBNSHosIHRoYXQgaXMgdHJ1ZSwgYnV0IGl0J3MgDQppbXBvc3NpYmxl
IHRvIGdldCB0aGF0IGFtb3VudCBvZiBkYXRhIG91dCBvZiB0aGUgTjIwMCAodGhlIEV0aGVybmV0
IGlzIG11Y2ggdG9vIHNsb3cgZm9yIA0KaXQsIGFuZCB0aGVyZSdzIG5vIHNpZ25pZmljYW50IG1l
bW9yeSBvbiB0aGUgTjIwMCB0byBzdG9yZSBpdCkuDQoNCiA+IFdoaWNoIG1lYW5zIHRoYXQgVUJY
NDAgaXMgbm90IHRoZSByaWdodCBjaG9pY2UuDQoNCk1vcmUgaW1wb3J0YW50bHksIHRoZSBOMjAw
IGlzIG5vdCB0aGUgcmlnaHQgY2hvaWNlIQ0KDQogPiBJIGRvbid0IHNlZSB0aGUgVUJYMTYwIG9u
IHRoZSByZWNvbW1lbmRlZCBjb21wYXRpYmxlIHByb2R1Y3RzIG9mIE4gc2VyaWVzIGRldmljZXMN
Cg0KQ29ycmVjdCENCg0KID4gQnV0IEkndmUgZm91bmQgb3V0IHRoZSBkYXRhc2hlZXQgb2YgVUJY
MTYwIHNwZWNpZmllZCB0aGF0IFVCWDE2MCBpcyBjb21wYXRpYmxlIHdpdGggDQpib3RoIFggYW5k
IE4gc2VyaWVzLg0KDQpPaCwgdGhhdCBpcyBpbmRlZWQgYW4gZXJyb3IgaW4gdGhlIGRhdGFzaGVl
dCEgVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dCB0byB1cyENCg0KID4gU28sIHdpbGwg
dGhpcyBjb21iaW5hdGlvbiB3b3JrPw0KDQpObzsgaWYgeW91IHdhbnQgMTAwIE1IeiBiYW5kd2lk
dGgsIHlvdSB3aWxsIG5lZWQgYSBYMzAwL1gzMTAgd2l0aCBhIFVCWDE2MCwgb3IgYSBVU1JQIA0K
TjMwMC9OMzEwL04zMjAvTjMyMSBvciBYNDAwIGFsb25lLiBJJ2QgcGVyc29uYWxseSBnbyBmb3Ig
WDMwMCtVQlgxNjAsIHdoaWNoIGlzIHByb2JhYmx5IA0KdGhlIG1vc3QgY29zdC1lZmZlY3RpdmUg
c29sdXRpb24uDQoNCkJlc3QgcmVnYXJkcywNCg0KTWFyY3VzIE3DvGxsZXINCg0KDQpESVNDTEFJ
TUVSOiBBbnkgYXR0YWNoZWQgQ29kZSBpcyBwcm92aWRlZCBBcyBJcy4gSXQgaGFzIG5vdCBiZWVu
IHRlc3RlZCBvciB2YWxpZGF0ZWQgYXMgYSBwcm9kdWN0LCBmb3IgdXNlIGluIGEgZGVwbG95ZWQg
YXBwbGljYXRpb24gb3Igc3lzdGVtLCBvciBmb3IgdXNlIGluIGhhemFyZG91cyBlbnZpcm9ubWVu
dHMuIFlvdSBhc3N1bWUgYWxsIHJpc2tzIGZvciB1c2Ugb2YgdGhlIENvZGUuIFVzZSBvZiB0aGUg
Q29kZSBpcyBzdWJqZWN0IHRvIHRlcm1zIG9mIHRoZSBsaWNlbnNlcyB0byB0aGUgVUhEIG9yIFJG
Tm9DIGNvZGUgd2l0aCB3aGljaCB0aGUgQ29kZSBpcyB1c2VkLiBTdGFuZGFyZCBsaWNlbnNlcyB0
byBVSEQgYW5kIFJGTm9DIGNhbiBiZSBmb3VuZCBhdCBodHRwczovL3d3dy5ldHR1cy5jb20vc2Ry
LXNvZnR3YXJlL2xpY2Vuc2VzLy4NCg0KTkkgd2lsbCBvbmx5IHBlcmZvcm0gc2VydmljZXMgYmFz
ZWQgb24gaXRzIHVuZGVyc3RhbmRpbmcgYW5kIGNvbmRpdGlvbiB0aGF0IHRoZSBnb29kcyBvciBz
ZXJ2aWNlcyAoaSkgYXJlIG5vdCBmb3IgdGhlIHVzZSBpbiB0aGUgcHJvZHVjdGlvbiBvciBkZXZl
bG9wbWVudCBvZiBhbnkgaXRlbSBwcm9kdWNlZCwgcHVyY2hhc2VkLCBvciBvcmRlcmVkIGJ5IGFu
eSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4gdGhlIGxpY2Vuc2UgcmVx
dWlyZW1lbnQgY29sdW1uIG9mIFN1cHBsZW1lbnQgTm8uIDQgdG8gUGFydCA3NDQsIFUuUy4gRXhw
b3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zIGFuZCAoaWkpIHN1Y2ggYSBjb21wYW55IGlz
IG5vdCBhIHBhcnR5IHRvIHRoZSB0cmFuc2FjdGlvbi4gIElmIG91ciB1bmRlcnN0YW5kaW5nIGlz
IGluY29ycmVjdCwgcGxlYXNlIG5vdGlmeSB1cyBpbW1lZGlhdGVseSBiZWNhdXNlIGEgc3BlY2lm
aWMgYXV0aG9yaXphdGlvbiBtYXkgYmUgcmVxdWlyZWQgZnJvbSB0aGUgVS5TLiBDb21tZXJjZSBE
ZXBhcnRtZW50IGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2NlZWQgZnVydGhlci4NCg0K
T24gMDMuMTIuMjEgMDg6MzQsIOe/geWBieWQviB3cm90ZToNCj4gSGksIEkgd2FudCB0byBrbm93
IGlmIEkgY2FuIHVzZSBOMjAwIHdpdGggVUJYMTYwLiBNeSBnb2FsIGlzIHRvIHJ1biB0aGUgTjIw
MCBhdCAxMDBNc3BzIA0KPiB0byByZWNlaXZlIDEwME1IeiBiYW5kd2lkdGggb2Ygc2lnbmFsLsKg
IFdoaWNoIG1lYW5zIHRoYXQgVUJYNDAgaXMgbm90IHRoZSByaWdodCBjaG9pY2UuIA0KPiBJIGRv
bid0IHNlZSB0aGUgVUJYMTYwIG9uIHRoZSByZWNvbW1lbmRlZCBjb21wYXRpYmxlIHByb2R1Y3Rz
IG9mIE4gc2VyaWVzIGRldmljZXMuIEJ1dCANCj4gSSd2ZSBmb3VuZCBvdXQgdGhlIGRhdGFzaGVl
dCBvZiBVQlgxNjAgc3BlY2lmaWVkIHRoYXTCoCBVQlgxNjAgaXMgY29tcGF0aWJsZSB3aXRoIGJv
dGggWCANCj4gYW5kIE4gc2VyaWVzLiBTbywgd2lsbCB0aGlzIGNvbWJpbmF0aW9uIHdvcms/IElz
IHRoZXJlIGdvaW5nIHRvIGJlIHNvbWUgYWxpYXNpbmcgaXNzdWU/DQo+DQo+DQo+DQo+DQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
