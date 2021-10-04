Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3873242128E
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 17:21:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C26C38437A
	for <lists+usrp-users@lfdr.de>; Mon,  4 Oct 2021 11:21:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gx+jXHMZ";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id C4FAC383CEF
	for <usrp-users@lists.ettus.com>; Mon,  4 Oct 2021 11:20:17 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id z3so3356889qvl.9
        for <usrp-users@lists.ettus.com>; Mon, 04 Oct 2021 08:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=4I7wX212Wgvmw9fIwcdiE8aa8XQxvixNgFoIk5glXwc=;
        b=Gx+jXHMZl0mzqASmCoJqgRyAMX6UD2aXzps7rlJmZMj/WsXqsaFw3cgIMSir7duB2n
         qwUOz8eiUx6IfTMKxZ05BrLjmgjr0XrLhNldvh63/CnmH9Mgk1pGppEiYTrdsv0V8CrP
         yMGviI1Ve1soHZxg/Yz5A+XNhVRjSYtWEdfsv2A74Ic7AABdv7MZ5JL/lzogc/iZpLCX
         60ofCqPzOwqD3i3YFT5Pzo2S/gbfl7acN9BAuONyjxxPM4mzf/npfJeYOovj7MmPaz3U
         hCDlr1PblTospbUWI0igwNrevX5WI324cydzBXLG/tIwBCWOyESEd53AEC6Go92VaOiW
         eTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=4I7wX212Wgvmw9fIwcdiE8aa8XQxvixNgFoIk5glXwc=;
        b=qoNIAAfAzOSmMIfnJy9WqqE28BjdvMInATQfL4u7+aVZxdbUURjOePMk1FP3IsLC/N
         +wzFjcyEJr2q3RxBCsN/z015VcjMzo+6emymRhQd8rvgkW87Kua5LvpJRS8UcnFUviLG
         JdQGt6ZODrC/RgMQbeqKF4tWXp0f7z5K/badOdDAdGsrgnkxmJRykX2kgsPozaiVeEB3
         6lzI3dvV2Mxj2aMZB4gnPanevONQasFYTzKAc9Y9TlkMBMoBnu+0DyYMT7oVCKPR7tR8
         uJNvaXqwPVKEJsMB+4DX4vO7gZi5Szua1jlaHeVLCWCT9brqm7dnEpuGIqdzTMlfFeuo
         Whdw==
X-Gm-Message-State: AOAM533OrEygibCXKwKCfOJ8teTEVlUgsWQud5zBaIvcGfDMCLBv6EuN
	R4QjfADnEbUFRnVn5C0Ephnj/UCWrmI=
X-Google-Smtp-Source: ABdhPJyW44SbULSdM/dh4Mfjux21bDFC7PE8zelun7C51oauUNHvka90I5CRXQI8Iwz2iXBh9xcyag==
X-Received: by 2002:ad4:5621:: with SMTP id cb1mr4654361qvb.6.1633360817032;
        Mon, 04 Oct 2021 08:20:17 -0700 (PDT)
Received: from [192.168.2.250] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id y6sm7675342qkj.26.2021.10.04.08.20.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 08:20:16 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAD8PmbqmOFzToVfvZerTCzAWcA3nc=fi=F6WtMRut_eUjO2Gig@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <84406f9b-642d-b1fb-cb02-ae9cd1e7fc3a@gmail.com>
Date: Mon, 4 Oct 2021 11:20:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAD8PmbqmOFzToVfvZerTCzAWcA3nc=fi=F6WtMRut_eUjO2Gig@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 3GUL5QBDE65VJMYJXG7YC7IEMK4ASBET
X-Message-ID-Hash: 3GUL5QBDE65VJMYJXG7YC7IEMK4ASBET
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Inquiry About Running srsRAN using NI USRP 2920
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3GUL5QBDE65VJMYJXG7YC7IEMK4ASBET/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0wNCA5OjQ0IGEubS4sIFNhZGlxIElxYmFsIHdyb3RlOg0KPiBIaSBndXlzLA0K
Pg0KPiBXZSBhcmUgdXNpbmcgc3JzUkFOIHdpdGggTkkgVVNSUCAyOTIwLCBXZSBhcmUgaGF2aW5n
IGlzc3VlcyBydW5uaW5nIA0KPiB0aGUgVVNSUCBjb3JyZWN0bHksIGxpa2Ugd2hlbiB3ZSBjb25u
ZWN0IHRoZSBOSSBVU1JQIHdpdGggdGhlIGhvc3QgcGMsIA0KPiB0aGUgVUhEIGRldmljZSBwcm9i
aW5nIGlzIG5vdCByZWNvZ25pc2luZyB0aGUgTkkgVVNSUC4gVGhlIHNlY29uZCANCj4gaXNzdWUg
aXMgdGhhdCB3ZSBkb24ndCBrbm93IHRoZSByZXF1aXJlZCBVSEQgaW1hZ2UgdG8gaW5zdGFsbCBv
biBOSSANCj4gVVNSUCB0aGF0IHdpbGwgcnVuIHdpdGggdGhlIHNyc1JBTiBzb2Z0d2FyZS4gV2Ug
aGF2ZSBub3RpY2VkIHRoYXQgYSANCj4gcGVyc29uIGZyb20gTkkgaXMgdXNpbmcgc3JzUkFOIHdp
dGggTkkgVVNSUCAyOTIwLCBzbyBpcyBpdCANCj4gcG9zc2libGXCoGZvciB5b3UgdG8gY29ubmVj
dCB1cyB0byBoaW0/DQo+DQo+IFRoYW5rIHlvdS4NCj4NCldoZW4gdGhlIGRldmljZSBpcyBwbHVn
Z2VkIGluLCBjYW4geW91IHBpbmcgaXQgYXQgdGhlIGRlZmF1bHQgYWRkcmVzcyBvZiANCjE5Mi4x
NjguMTAuMiA/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
