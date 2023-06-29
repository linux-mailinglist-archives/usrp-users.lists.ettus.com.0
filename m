Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C06E7429D4
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 17:43:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49BEE384190
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 11:43:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688053437; bh=aqXGV6iysHg/0rCog9mk+tOakN0uVFVqEuwsv3i/JeY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JvQC7CGExfNCcLJbIKdcW1vX8I0ORKBF+AfR0FIrNK430bXZfEGHRFsTvxDA9ySBX
	 d/Z/AMxs2WDirT4P3WFy3NbWRKgad9jqhWwSub1KLq+G6ArdK4dSybCk+Wfr/nYRi7
	 q/q8ARNcJZv/os571lX7PIjPip8jb1FnemZIedusvwNZe2rSdrWYK6RyXu5KsROH2J
	 uaejwlKGDklyVXDIzSOaKBOewlMjry9lgXqzmp9aTBQdLkHx2yC6o5tfKCM5cgsouJ
	 6brvSc7r38boPffsM84ZrfJ1yYvlPclQiCK8EXMP/fksypLMcpLMuNF15b+sE3kU9b
	 neixdFajW/10Q==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 349D4383C41
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:43:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VPjTWzGs";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-402532f9721so3433151cf.1
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 08:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688053381; x=1690645381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DGj2KXR5g+QpKpswT/RPpzP3gjhol75VSBbBSnUR2S8=;
        b=VPjTWzGszR6QtycC9oKF4nju1cNrWGxPlLw9CSUqvzvSPz6RXueodu+5tE/SosaQMX
         qJ7eDXQUeN0+KNEq71ULCTESdv6IchvvJWw8M7uPCSt3F8ZZ2JIGyzzrbZJ77Ac7JzCs
         fCwoCikVROiDKRWg53Hwzh+VPsHzGJpbD3C8BRN0s1dun124dOBelPulECnycKJK+Txi
         QEt+ygLh4yQQBKwO1gV0EjO1hNRgzuxRIaMH6ugYHgbJyzrpZaahvZ0CbqBYhtI9GNTE
         wI4aD3o0CmMZCuM6JpYjjFR4b/KzhJ7urcfUMjys8TVeKpLOxnmIU1DAWnaCq8gTBLyj
         otcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688053381; x=1690645381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DGj2KXR5g+QpKpswT/RPpzP3gjhol75VSBbBSnUR2S8=;
        b=Lqs0dVFeeFUm6hFXrO0TOW+SnZKkAF2JA/1+5WJGcTg2Sx0ghPa8YJH0Krk2ZHW1ZV
         nGsPC1kRJM40uErSEBr3PeE5Br2XIOhXPV7okT7zdIrdZMvOVFiu7jPe6WeD8T69plho
         Ojg5bAlewypLIL/3fAUBAsyGoqz5bQl2/j6qTgjbGHUGhkNn6sq5j0mgyuc8ceEx+9or
         txXHA5+rtWqcQxL95uL0zNpvQMv1g1X6rhzRxPx9v2EaMfd71MA4WxUQplRvCMYdEOi3
         wLdGc8ihUO6+rp7zhHpacTxmKKOhE1hKS7b6+bXEdxgFi1jOgEhAQnB5CFptDvMsG8t9
         sLqw==
X-Gm-Message-State: AC+VfDwn7cKT85+L302IM7j+rTXQP7fQ8RGGulkIXChErPbjJD4vFm7g
	0PcexNZPU4UCr1AX4mM7DyubyVCN7Dc=
X-Google-Smtp-Source: ACHHUZ7j1SO5bQMa3+B8UJ8dDaZ9TFzULBelZKwKwV1F/wvwWcrJTqARyR5th2zDL+QKdXe+VGr4VA==
X-Received: by 2002:ac8:584d:0:b0:3f8:6eaa:dcc4 with SMTP id h13-20020ac8584d000000b003f86eaadcc4mr6266631qth.22.1688053381547;
        Thu, 29 Jun 2023 08:43:01 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id fw15-20020a05622a4a8f00b00400a5ca26fesm5797553qtb.2.2023.06.29.08.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 08:43:01 -0700 (PDT)
Message-ID: <17f0f095-b9c9-254c-45d2-a1403026b760@gmail.com>
Date: Thu, 29 Jun 2023 11:43:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
 <1346881245.172465.1688045768643@mail.yahoo.com>
 <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com>
 <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com>
Message-ID-Hash: IUR27AHPJMXGUFFG2I57YGGNWL22QTZ5
X-Message-ID-Hash: IUR27AHPJMXGUFFG2I57YGGNWL22QTZ5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUR27AHPJMXGUFFG2I57YGGNWL22QTZ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDYvMjAyMyAxMTozOCwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IE9uIFRodSwgSnVuIDI5
LCAyMDIzIGF0IDExOjA54oCvQU0gTWFyY3VzIEQuIExlZWNoDQo+IDxwYXRjaHZvbmJyYXVuQGdt
YWlsLmNvbT4gd3JvdGU6DQo+PiBPbiAyOS8wNi8yMDIzIDA5OjM2LCB6aG91IHZpYSBVU1JQLXVz
ZXJzIHdyb3RlOg0KPj4gSSBhbSB1c2luZyBYMzEwIFVTUlBzLiBJIGRpZCBhIGxvb3BiYWNrIHRl
c3Qgd2l0aCB0aGlzIFVTUlAsIHRoYXQgaXMsIFR4IHdhcyBjb25uZWN0ZWQgdG8gUnggKHdpdGgg
YSAyMGRCIGF0dGVudWF0b3IgYmV0d2VlbiB0aGVtKS4gVGhpcyBpcyBmb3IgY2hlY2tpbmcgdGhl
IGNoYW5uZWwgc3RhdHVzLg0KPj4gSW4gbXkgdGVzdCwgVHggaXMgZnJlZSBydW5uaW5nIHdpdGhv
dXQgc3RvcCwgYW5kIFJ4IGlzIG9jY2FzaW9uYWwuIEJvdGggdHJhbnNtaXNzaW9uIGFuZCBjYXB0
dXJlIGFyZSB0aW1lLWJhc2VkLCB0aGF0IGlzLCBzaWduYWxzIGFyZSB0cmFuc21pdHRlZCBhdCBz
cGVjaWZpZWQgdGltZSwgYW5kIGNhcHR1cmUgc3RhcnRzIGF0IHNwZWNpZmllZCB0aW1lLg0KPj4N
Cj4+IE1hc3RlciBjbG9jayByYXRlOiAxODQuMzJNSHoNCj4+IFNhbXBsaW5nIHJhdGU6IDE4NC4z
Mk1Ieg0KPj4NCj4+IFVzaW5nIHRoZSBjYXB0dXJlZCBzaWduYWxzLCBJIGNhbiBjYWxjdWxhdGUg
dGhlIGNoYW5uZWwgY29lZmZpY2llbnQuIEEgZmV3IGNhcHR1cmVzIHdlcmUgbWFkZS4NCj4+DQo+
PiBJIGV4cGVjdGVkIGNvbnN0YW50IGNoYW5uZWwgYmVjYXVzZSBpdCB3YXMgY2FibGUgY29ubmVj
dGlvbiBhbmQgaXQgd2FzIGluIHRoZSBzYW1lIFVTUlAsIGJ1dCBJIGZvdW5kIHRoYXQgdGhlIGNv
bnN0ZWxsYXRpb25zIG9mIHRoZSBwaWxvdCBzaWduYWxzIHJvdGF0ZWQgd2hlbiBjb21wYXJpbmcg
ZGlmZmVyZW50IGNhcHR1cmVzLiBJIHRoaW5rIHRoaXMgY2FuIGJlIGNhdXNlZCBieSB0aGUgcGhh
c2UgZGlmZmVyZW5jZSBiZXR3ZWVuIFR4IExPIGFuZCBSeCBMTywgYnV0IG5vdCBzdXJlLg0KPj4N
Cj4+IFF1ZXN0aW9uczoNCj4+IDEuIGFyZSB0aGVyZSBpbmRlcGVuZGVudCBMT3MgZm9yIFR4IGFu
ZCBSeCBpbiBhIFVTUlA/DQo+Pg0KPj4gWWVzLiAgIEluIGZhY3QsIGluIGFueSByZWFsaXN0aWMg
b24tdGhlLWFpciBzY2VuYXJpbywgeW91ciBSWCBhbmQgVFggd2lsbCBuZXZlciBiZSBwaGFzZSBh
bGlnbmVkLCBvciBldmVuIHBoYXNlLWNvaGVyZW50Lg0KPiBBbHRob3VnaCB0aGVyZSBhcmUgc2Vw
YXJhdGUgTE9zLCB0aGV5IGFyZSBib3RoIGRpc2NpcGxpbmVkIHRvIHRoZSAxMA0KPiBNSHogcmVm
ZXJlbmNlLiBJZiB0aGV5IGFyZSBzZXQgdXNpbmcgdGltZWQgY29tbWFuZHMsIHRoZXkgY2FuIHBy
b3ZpZGUNCj4gcmVwZWF0YWJsZSBwaGFzZSAoYXQgbGVhc3QgZm9yIHNvbWUgZGF1Z2h0ZXJib2Fy
ZHMgbGlrZSBVQlggYW5kIFNCWCkuDQo+IEluIHJhZGFyIGFwcGxpY2F0aW9ucywgcGhhc2UgY29o
ZXJlbnQgUngvVHggaXMgY29tbW9uLg0KSW5kZWVkLCBJIHdhcyBjb25zaWRlcmluZyBvbmx5IHRl
bGVjb20gdHlwZSBhcHBsaWNhdGlvbnMgaW4gbXkgDQpjb21tZW50cy7CoCBGb3IgcmFkYXIsIHll
cywgbXV0dWFsIGNvaGVyZW5jZSBiZXR3ZWVuIFRYIGFuZA0KIMKgIFJYIGlzIHZlcnkgY29tbW9u
Lg0KDQpNeSBwb2ludCByZW1haW5zIHRoYXQgaW4gYSB0ZWxlY29tIGFwcGxpY2F0aW9uLCBvbmUg
d291bGQgbmV2ZXIgZXhwZWN0IA0KbXV0dWFsIGNvaGVyZW5jZSBiZXR3ZWVuIFRYIGFuZCBSWCwg
YmVjYXVzZSBpbg0KIMKgIHRoZSBnZW5lcmFsIGNhc2UgdGhleSBhcmUgc2VwYXJhdGUgcGh5c2lj
YWwgYm94ZXMgb2Z0ZW4gbWFueSBtYW55IGttIA0KYXBhcnQgYW5kIG9mdGVuIG9wZXJhdGVkIGJ5
IGVudGlyZWx5IGRpZmZlcmVudA0KIMKgIGVudGl0aWVzLsKgIFNvIGlmIHlvdXIgc2lnbmFsIHBy
b2Nlc3Npbmcgc2NoZW1lIHJlbGllcyBvbiBtdXR1YWwgDQpjb2hlcmVuY2UsIHRoZW4gaXQgaXMg
b3BlcmF0aW9uYWxseSBkZWZlY3RpdmUuLi4NCg0KSG93ZXZlciwgYXMgeW91IHBvaW50IG91dCBy
YWRhciBoYXMgdGhpcyByZXF1aXJlbWVudCBpbiBtYW55IGNhc2VzLi4uDQoNCg0KPg0KPj4gMi4g
SXMgdGhlIFJ4IExPIG9uIGFuZCBvZmYgaW4gdGVzdCwgdGhhdCBpcywgaXQgc3RhcnRzIHdoZW4g
Y2FwdHVyZSBzdGFydHMgYW5kIHN0b3BzIHdoZW4gY2FwdHVyZSBpcyBjb21wbGV0ZWQ/IFNvLCB0
aGUgTE8gcGhhc2Ugb2Zmc2V0IGJldHdlZW4gVHggYW5kIFJ4IGlzIHJhbmRvbT8NCj4+DQo+PiBJ
IHdvdWxkIGV4cGVjdCB0aGUgUlggTE8gcGhhc2UgdG8gcmFuZG9tIHdpdGggcmVzcGVjdCB0byB0
aGUgVFggZXZlcnkgdGltZSB5b3Ugc3RhcnQvc3RvcCB0aGUgUlguDQo+IEluIHRoZSBkZXNjcmlw
dGlvbiBhYm92ZSwgeW91IG1lbnRpb25lZCBmcmVlLXJ1bm5pbmcgVHggYnV0IHlvdSBhbHNvDQo+
IG1lbnRpb25lZCB0aW1lZCB0cmFuc21pc3Npb24gYW5kIGNhcHR1cmUuIElmIHlvdSBhcmUgdXNp
bmcgdGltZWQgVHgNCj4gYW5kIFJ4IGFsb25nIHdpdGggdGhlIHRpbWVkIHR1bmluZyBjb21tYW5k
cywgSSB3b3VsZCBleHBlY3QgYQ0KPiBjb25zaXN0ZW50IHBoYXNlIG9mZnNldCAoZGVwZW5kaW5n
IGFnYWluIG9uIGRhdWdodGVyYm9hcmQpLiAgSWYgeW91DQo+IGhhdmUgZnJlZSBydW5uaW5nIFR4
LCB0aGVuIEkgd291bGQgZXhwZWN0IGl0IHRvIGJlIHJhbmRvbS4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
