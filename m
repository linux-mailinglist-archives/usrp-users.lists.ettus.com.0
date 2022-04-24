Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D80B50D51F
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 22:43:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 886E638454E
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 16:43:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650832995; bh=3MaoBq4mDFYxZV/05+WSdXyXu4yMOrQc8+xdc5U5lvU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=o8wMZp/4QuiQQ2AWvUzF8FgDB9te09QSIqZ9VDydI2gcemPyqHz2ig35iR9TM0WRU
	 QvSVwdDa0EoyQaRhIXJ1kfMhuIBROBerHF2FMF/8vYSzsAr8g1L1fjY1o9XoKbiaB4
	 7LLTR3sqWHHmW+fG90GcjCKvhHFUsEH15snISwQCpOJbRJcFyglpzOFZltEK8dxzxv
	 +BgThwGqRqptK+WfZyWFSgBkMPbF/F5XikWomPiTwHJ9UVfgoRGMrTyU2P3BR4oXkD
	 W1uLGwGHrfSHBz9DENwzCmhpqA+CA+PR808Tb6Kr9llEH4/z0/vzuFJ6/zXVFj3gJO
	 RF0GflVY4HGMA==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E155938458C
	for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 16:42:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mwlv5g5n";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id d22so4433570wrc.13
        for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 13:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=p1pZvZVSx+dsVtDVbxIunS6whZL7baJrl5CRI07zlAY=;
        b=Mwlv5g5nS3lGIBl08Ui+7Pot3xrkd1r8K49CAwcQshHt3965wdZ2woy/HuVZp4r9UA
         Q0sTnDogYwGSuZ7E1jNie04kNwUAfgGBYll3JydLGhCW81aJ+NFDxCUuHQYMFA4lNdCG
         KLHCKhJUb+Zsi7fdmu2nE0kEgj/vmny106yVvZhG05B1LPvEQ7oqzvbFB6T7IQrFG7sT
         apatNOI3dG9H0OpK6hJQlRQzAXl9qBz+HsTdgPNU0daf/GgZsO3qQfnERmFesIDXItJm
         x1aStfkwIdrb/Reg2z/uHHP8HVI/Izcud98oygCpeWcHdMRQh7VpMBQ8DNqM4tPI+h4O
         FjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=p1pZvZVSx+dsVtDVbxIunS6whZL7baJrl5CRI07zlAY=;
        b=2HzyDBuyHDdLpwuipwXQQWnUR3ytYvbkk7FW+bfa5pGpBNch0ZYfCGSDvg39TBuY3E
         LZQsYTjQ9037YBjNPP7VdqPl0XrcvHoRnRAxMRVsdd7BTlqZIe6jiQ95YcvSsy5/6tSS
         jEujr9xx+76b+L4/9+j6f2zS/cw5rqyV5rFXVInlqIQMt/IugOB+nnSVaNWy1Pvxb9m/
         ff7V6t/eQ3hZKWeec2+DpwzKfMdwvYULKQpPdnBl7aspuPjGHdKHkiAukGo0SVZqNLl1
         By+7oZ2M+VivSPTk1P/sN6WomllBgiZVIKpG5mDCVzVaoiHt/1xxJJQM1R5TMya2URHN
         oiZQ==
X-Gm-Message-State: AOAM5314bKdUWCjtoQ23NBGWkSQyUvi558oRejK8DWGoVIQxpN1T/Uab
	8Q4IC69GMmDzd4dQVH8BNheCsrKlGeHo7GWc30U=
X-Google-Smtp-Source: ABdhPJxIvUNsTfsxPkvKqZkke73BT2dk1I9GqQXaLLPdDIEP22iHgEJaBAIagct7ZuxF/X7bf5L4QvA2PcKJM5karNA=
X-Received: by 2002:adf:e0c5:0:b0:206:1ba3:26aa with SMTP id
 m5-20020adfe0c5000000b002061ba326aamr11624513wri.645.1650832933645; Sun, 24
 Apr 2022 13:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HZnkFzUBtu+YY5aQ2Kr6NDNfvC0V0CSzx+4scL=iA7gg@mail.gmail.com>
 <2299DA86-434B-4FB9-8414-7311746868E0@gmail.com>
In-Reply-To: <2299DA86-434B-4FB9-8414-7311746868E0@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sun, 24 Apr 2022 23:42:02 +0300
Message-ID: <CAAxXO2HcY7sLCEqAvVWpp8V25EvFjTdbEZOf6oQRpNjaOnruug@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: ALHQJ4I7YVBTPN5IDGRLSAKAHD2Z7QBV
X-Message-ID-Hash: ALHQJ4I7YVBTPN5IDGRLSAKAHD2Z7QBV
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid key
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALHQJ4I7YVBTPN5IDGRLSAKAHD2Z7QBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGh4IGZvciB5b3VyIGZhc3QgcmVwbHksDQoNCkkgcG93ZXJlZCBjeWNsZWQsIGJ1dCBJIGRpZG4n
dCB1cGdyYWRlIG15IGZpcm13YXJlIGFuZCBGUEdBLg0KRm9yZ290dGVuIGhvdyB0by4gSGF2ZW4n
dCBkb25lIGl0IGluIGEgbG9uZyB0aW1lLiBBIGxpbms/DQoNCk5pa29zDQoNCk9uIFN1biwgQXBy
IDI0LCAyMDIyIGF0IDExOjE1IFBNIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWls
LmNvbT4gd3JvdGU6DQo+DQo+IERpZCB5b3UgYWxzbyB1cGdyYWRlIHRoZSBmaXJtd2FyZSBhbmQg
RlBHYSBvbiB0aGUgWDMwMCBhbmQgcG93ZXIgY3ljbGU/DQo+DQo+IFNlbnQgZnJvbSBteSBpUGhv
bmUNCj4NCj4gPiBPbiBBcHIgMjQsIDIwMjIsIGF0IDM6MjMgUE0sIE5pa29zIEJhbGthbmFzIDxu
YmFsa2FuYXNAZ21haWwuY29tPiB3cm90ZToNCj4gPg0KPiA+IO+7v0hpLA0KPiA+DQo+ID4gQWZ0
ZXIgdXBncmFkaW5nIHRvIHVoZCAzLjE1LjAgSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvciB3aGVu
ZXZlciBJIHRyeQ0KPiA+IHRvIGFjY2VzcyBteSBYMzAwOg0KPiA+DQo+ID4gU3VuIEFwciAyNCAy
MjoxMzo1NyAyMDIyIFswMF0gWyFdIHVzcnAuYzoxMTU6dWhkX2luaXQgRmFpbGVkIHRvIGNyZWF0
ZQ0KPiA+IFVTUlAgKDExKS4gSW52YWxpZCBrZXkgZm9yIGRpY3Rpb25hcnkgb2JqZWN0IChpbmNs
dWRlcyBwcm9wZXJ0eSB0cmVlKS4NCj4gPg0KPiA+IFdoYXQgc2hvdWxkIEkgZG8/DQo+ID4NCj4g
PiBUSUENCj4gPiBOaWtvcw0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4gPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
