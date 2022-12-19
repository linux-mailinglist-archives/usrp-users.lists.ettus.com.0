Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22597650928
	for <lists+usrp-users@lfdr.de>; Mon, 19 Dec 2022 10:11:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5454338405D
	for <lists+usrp-users@lfdr.de>; Mon, 19 Dec 2022 04:11:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671441085; bh=0EFLPvFxE1Ptcs0AcGJ9Re6Y7PJYn8dQLxDgRtTXX7A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RHXvQw5Ns9ePO4z4o5a3iG7DiXT7AHLO+5PbcU58nrVrwW4SFVXt0Uu97UP0e6ZLR
	 KEjGg4w6X/b3fI5VX53tE/RRhHUE+AJgO7c/t8sbQljiha13ezOfho24bRZa7dHZ8k
	 3zQ7fusZHB0MZ2vza8aBE0xoPN6J7wxOrT59/OB5+rl0LbFrI32/0qmXMJSSD7eSpy
	 Qm6a6EkMSZwGomfC/6SfF1Weg1nsPRhydOCG1qDF/Rq5SeBHw/PDYq6SJUruqvkCZO
	 sx9y7UVycvAa61W4dwiQbgC5EdiOshCc2NAzbszu12kQ3tU5zNmGHEkhVH0dTHDlZ3
	 h5Bk5jgmrAKjw==
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A424383FA6
	for <usrp-users@lists.ettus.com>; Mon, 19 Dec 2022 04:10:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="R8E8hqx5";
	dkim-atps=neutral
Received: by mail-wr1-f53.google.com with SMTP id h7so7933502wrs.6
        for <usrp-users@lists.ettus.com>; Mon, 19 Dec 2022 01:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EysXgXmAEaNQ0TJIvN05Ie0E1eYusqHdBoqrFNitj08=;
        b=R8E8hqx5o64jJY/TqnJuI9FUp+FES4PqGYOrOnepoYa2k94Tw9XQJ9LEn6590FNKmM
         CtP2g83EU26V9rnmJ4v4sKdR/4HnWjlO9QtW/9yw2qvKaFMWa2c8THbYyAIsy0Y+D6Ru
         NZ56ZYEeThge++Fq+wmm5Lowg51XP15tkX5fbdPcIJfAGy4yXVFH6Vg9Q70cfPt3esMj
         Pj4wPTURevrNNPrim4MVYzZbeabocpJGz63ptn8R9FeISsfwBsrv64c3TeG5wwdtGFek
         maLMBUuC4sXco2aNWAy1fhXX9mcvzuIHYAVYF7Br3IyGwt8cqb4v+BegqgddLpIYGqVL
         XBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EysXgXmAEaNQ0TJIvN05Ie0E1eYusqHdBoqrFNitj08=;
        b=gLRiaj2IkQjWq7z9+9z8dyx7/V7ZF3gC3YL6j2MyZhSzrfSye1c1PI+J181TOkjnfa
         updNTgM4/AyrO4KIuJ3AzUfUbYnuEppeZhsFy51lSlqD4XWVmZBusjUFXz2tBZEGSV/M
         vnP0bb+xdIHnk5OL+UmoVAocQe6iUH6pQInp9Z06pKFrQxmn4tI+fgyrT3Z/+KdF8dLs
         S2MmyHr2RIaFVwQBTSB5v/iveTzbin1e1tZcGmYbiqkFzu27O7yllpE8JvNOlzbv7DO6
         LqPN6HtOL04FIDGtwoRDX4xihAqDKQv2x1IRe9YR9EziZ3IRrXFGbU25S8mJZmdqeQqC
         Z9Rw==
X-Gm-Message-State: AFqh2kqG3nNUcGF54bWrd/kyH468Lxv6O2yzHWP+fUXPGISmG4J1h+ey
	QsD00t/ANmuB+JZEx6WlPRCDVnhX9UarKuySXTk=
X-Google-Smtp-Source: AMrXdXuWq/IFVkU5sMVkh+/31pWJMpuNbVcOYJ52oWrnLy/cuX7ovicmRKwyzg6M5h3r6W6fv111Fw==
X-Received: by 2002:adf:dc8e:0:b0:254:9b08:d670 with SMTP id r14-20020adfdc8e000000b002549b08d670mr17538984wrj.59.1671441034031;
        Mon, 19 Dec 2022 01:10:34 -0800 (PST)
Received: from ?IPV6:2001:9e8:385a:c300:998f:ca6a:6065:3212? ([2001:9e8:385a:c300:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id f2-20020a5d50c2000000b002362f6fcaf5sm9301395wrt.48.2022.12.19.01.10.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 01:10:33 -0800 (PST)
Message-ID: <07abac9f-4317-4ab0-c231-cb986c24ce8e@ettus.com>
Date: Mon, 19 Dec 2022 10:10:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <F387B265-2071-4821-ACAA-BB8A02E5F232@me.com>
 <8de7ee4a-35ff-3b7f-2393-d015cae07476@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <8de7ee4a-35ff-3b7f-2393-d015cae07476@gmail.com>
Message-ID-Hash: XMIYQZJBIKBE3VLIMZYQSSYFZ32EGOS5
X-Message-ID-Hash: XMIYQZJBIKBE3VLIMZYQSSYFZ32EGOS5
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD routable through port forwarding?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XMIYQZJBIKBE3VLIMZYQSSYFZ32EGOS5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

Tm90ZSB0aGF0IGl0J3MgcmF0aGVyIGltcG9ydGFudCB0aGF0IHlvdXIgcm91dGVyIGRvZXMgbm90
IHJlb3JkZXIgcGFja2V0czsgSSB0aGluayBVSEQgZm9yIA0KdGhlIG1vc3Qgb2YgaXRzIGV4aXN0
ZW5jZSB3YXNuJ3QgYWJsZSB0byBwdXQgaW5jb3JyZWN0bHkgb3JkZXJlZCBwYWNrZXRzIGJhY2ss
IGFuZCBldmVuIGlmIA0KaXQgY2FuLCBpdCBjb21lcyB3aXRoIGFuIGluaGVyZW50IGxhdGVuY3kg
YW5kIENQVSBsb2FkIOKAkyBib3RoIHRoaW5ncyB5b3UgbmVlZCB0byBhdm9pZC4NCg0KQWxzbzog
WW91IG1pZ2h0IGhhdmUgYSBnaWdhYml0IEludGVybmV0IGxpbmUsIGJ1dCBkb24ndCBmb3JnZXQg
dGhhdCBldmVuIGEgbWVkaW9jcmUgMTAgDQpNUy9zIHN0cmVhbSBmcm9tIHlvdXIgVVNSUCBtZWFu
cyBhICpjb25zdGFudCogbG9hZCBvZiAzMjAgTWIvcy4gSSBrbm93IG5vIHJlc2lkZW50aWFsIElT
UCANCndobyB3b3VsZCBndWFyYW50ZWUgdGhhdCBmb3IgYW55IGR1cmF0aW9uIG9mIHRpbWUhIFVu
aXZlcnNpdHkvUmVzZWFyY2ggaW5zdGl0dXRlIGFjY2VzcyANCm1pZ2h0IGJlIGRpZmZlcmVudCwg
YnV0IGV2ZW4gdGhlbiwgeW91IHdvdWxkIHByb2JhYmx5IHdhbnQgdG8gZ2l2ZSB5b3VyIG5ldHdv
cmsgb3BlcmF0aW9uIA0KdGVhbSBhIGJpdCBvZiBhIGhlYWRzIHVwIGFuZCBsZXQgdGhlbSBoYXZl
IGlucHV0IG9uIHlvdXIgcHJvYmxlbTsgaXQncyB0aG9yb3VnaGx5IHBvc3NpYmxlIA0KdGhhdCB5
b3UgZW5kIHVwIGdldHRpbmcgYSBOQVQtZnJlZSBWTEFOIGNvbm5lY3RpbmcgdGhlIHR3byBlbmRz
IG9mIHlvdXIgZXhwZXJpbWVudCBpZiB5b3VyIA0KdW5pJ3MgdGVhbSBpcyBhcyBjb29sIGFzIG1p
bmUuDQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpPbiAxNy4xMi4yMiAwNDowOCwgTWFyY3Vz
IEQuIExlZWNoIHdyb3RlOg0KPiBPbiAxNi8xMi8yMDIyIDIxOjI4LCBMb3VpcyBCcm93biB2aWEg
VVNSUC11c2VycyB3cm90ZToNCj4+IEkgaGF2ZSBhbiBYMzAwIGFuZCBOMjEwIEnigJlkIGxpa2Ug
dG8gYWNjZXNzIHRocm91Z2ggbXkgZmlyZXdhbGwgdmlhIGEgVUhEIGJhc2VkIGFwcC7CoCBJcyAN
Cj4+IHRoaXMgcG9zc2libGUsIGFuZCB3aGljaCBwb3J0IHNob3VsZCBJIGZvcndhcmQ/DQo+Pg0K
Pj4gVGhhbmtzLA0KPj4gTG91DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gV2UgZG9uJ3QgcmVjb21tZW5kIHVzaW5nIFVT
UlBzIHRocm91Z2ggcm91dGVycyAtLSB0aGV5IGhhdmUgYSBkZS1taW5pbWlzIElQIHJvdXRpbmcg
DQo+IHN0YWNrIGluIHRoZW0sIGFuZCBzaG91bGQgYmUgdGhvdWdodA0KPiDCoCBvZiBtb3JlIGFz
IGEgaGFyZHdhcmUgZGV2aWNlIHRoYXQgaGFwcGVucyB0byB1c2UgZXRoZXJuZXQgYXMgYSAiZGV2
aWNlIGJ1cyIgdGhhbiBhIA0KPiBmaXJzdC1jbGFzcyBJUCBob3N0Lg0KPg0KPiBUaGVyZSBhcmUg
YWxzbyBib3RoIHBlcmZvcm1hbmNlIGFuZCByZWxpYWJpbGl0eSBpc3N1ZXMtLXRoZSBwcm90b2Nv
bHMgdXNlZCBhcmUgVURQIA0KPiBiYXNlZCwgYW5kIHRoZXkgZG9uJ3QgaGF2ZSBhbnkNCj4gwqAg
cmV0cmFuc21pdCBjYXBhYmlsaXR5LCBzbyBjYW5ub3QgaGFuZGxlIHBhY2tldC1sb3NzIHRoYXQg
aXMgaW5ldml0YWJsZSBvbiBtdWx0aS1ob3AgDQo+IHJvdXRlZCBjb25uZWN0aW9ucy4NCj4NCj4g
VGhhdCBzYWlkLCB0aGUgVURQIHBvcnRzIGludm9sdmVkIGF0IDQ5MTUyIGFuZCA0OTE1MyBhcyBJ
IHJlY2FsbC4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
