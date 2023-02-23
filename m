Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DFE6A0CA9
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 16:14:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8595C384202
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 10:14:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677165245; bh=rtIfBjVp6OQwszoqggWTzHwmBoVzIM8HYhy2XiUgsno=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PibDssDX05Q87yYvVXdSPSCAGzpNaScRsikQGUKD4VXf8nrDlpaip9GTVfaFv1Dkk
	 e6uA2AMWoD5CDcmGIGWfpviiN01ZCeSXlgPMaOQKU3ayMSkv89chZym/1q0AwTjgYq
	 bwvnXufz8/najs8Y7DPLUEo4TZ3M2XXDL9g+AxATKQU4iPz/71EHUU0dFeMvAK4fHc
	 d5ESH8/ds8hsRFhjCs4ac8A+/5jC1AdWygiWdDF1Lz2mZCSHRMSQLttbgC7IJDt0Ia
	 QBMR4Hwb3tCA142RwhaTLxCK9XX6yE1vbiGtaTV+wopMiFuBBoUXQ2CYBZboBtDLkn
	 Rv0+YRnKc5YMQ==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id AF6FE384028
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 10:13:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bXbxZ0Nv";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id i34so17959922eda.7
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 07:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=arN/DDUc2aclEQmknVHrhpuE/gVVnrucCwPNUP66RtM=;
        b=bXbxZ0NvrYymDOXnndaCFSAJh6qrQSjkLEZ8lsRf3xpV19uz/EIslEFiTGt3L8lanS
         FGmtgJRtV8pQa1L2R+sybsioNyOpPw42guSr1596BPSKXRUouiF5mEKVR9T2gBnNBkkC
         LuDBrNU34YHuqvtzAS9dvtWuXydbr2y6L7ojNTDVer39Cqn2sugZ67gi+TVtci5xvpGk
         RVdIr3T4VBecZmLv2kIgNjHOxhD8kn5NGbcVMs7n4ojsZnuC24RnQgYgE9UpkPLTHFVj
         nzwe38GywOaw+b7Rb1nQVzPvX9O8NPTbFSYCtK6BOPFeEk2IC+EtS3WgG8YJ9DbbCxI0
         SqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=arN/DDUc2aclEQmknVHrhpuE/gVVnrucCwPNUP66RtM=;
        b=c6/XQMJqua5jzCsewAXS4DVU1k3GrG0WIoAAMO4fssn2cTpGQv8TejTrIvyTpYrnoT
         k8r5RCY1jiLoJefyACbvGH/fs946jFxjBH6QY2qu4IqMXNVmj2WDwGY3AW1J2N7XYQl1
         PdS6p/kx8c8pha/bI31tpILaHwgKnozwYxvu3685RpHfHq9x+MekDHG/cgMkmZ+aU5XA
         kJprkXBEUUVVGCQQWACVEgHMASsbANKZJ16z0RwsneWgX5I82mHDkmaeaKgQdjZJGSF4
         FXBeCUGCbXUiSAcZdY1Jw+f7s37785yc1N3VSRbJcL7mgDoe967+OGVlSg5imgFZNrUV
         8m+g==
X-Gm-Message-State: AO0yUKWydbFw/1FuKd8xZStQ2LoDYPmW+mRbTOHT+mYA3QifrtrKoOWP
	o0uyXvor3eMNDQRF16bX4gaEMd5OzBQ3s6eqSeNbpA==
X-Google-Smtp-Source: AK7set8ZNmzykNO7vGD7x2ZT9APGJAjrrX7DJk3tF5iDOjZfvWvDpgwDbMj3H+Ycrw/JflxLjiyYCf7ER3YhCtGG2W8=
X-Received: by 2002:a17:907:7669:b0:888:3bc4:7e86 with SMTP id
 kk9-20020a170907766900b008883bc47e86mr9319793ejc.14.1677165208360; Thu, 23
 Feb 2023 07:13:28 -0800 (PST)
MIME-Version: 1.0
References: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
In-Reply-To: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 23 Feb 2023 10:13:17 -0500
Message-ID: <CAB__hTT9azBA5hfmSOOvO=0P2-rGe0_tG7_Xc-j8f29vxZftpg@mail.gmail.com>
To: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>
Message-ID-Hash: MRBEY6NYSAXOBTF2E4YCVY5OXVLEPMXU
X-Message-ID-Hash: MRBEY6NYSAXOBTF2E4YCVY5OXVLEPMXU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd - read IQ samples without discontinuities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRBEY6NYSAXOBTF2E4YCVY5OXVLEPMXU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBGZWIgMjMsIDIwMjMgYXQgNDoyOCBBTSBQZXRlciBGZWF0aGVyc3RvbmUgKFhFTklO
VCkNCjxwZXRlci5mZWF0aGVyc3RvbmVAeGVuaW50LmNvbT4gd3JvdGU6DQo+IEnigJltIHRyeWlu
ZyB0byByZWFkIHNhbXBsZXMgZnJvbSBteSBCMjEwIGFzIGZhc3QgYXMgcG9zc2libGUgd2l0aG91
dCBnYXBzIGluIHRoZSBJUS4NCj4gSeKAmW0gdXNpbmcgYSBzYW1wbGUgcmF0ZSBvZiAxZTYgSHog
YW5kIHJlYWQgNXMgb2YgSVEuDQo+IEFzIGFuIGV4cGVyaW1lbnQsIEkgcmVhZCAxNksgc2FtcGxl
cyBhdCBhIHRpbWUgaW4gYSBsb29wLg0KPiBBdCBlYWNoIGl0ZXJhdGlvbiBJIHNsZWVwIGZvciA1
IHNlY29uZHMuDQo+IEkgd2FzIGV4cGVjdGluZyB0byBzZWUgbG9hZHMgb2YgRVJST1JfQ09ERV9P
VkVSRkxPVyBlcnJvciBjb2RlcywgYnV0IEkgZG9u4oCZdC4NCj4gSXMgaXQgdGhlIGNhc2UgdGhh
dCB0aGF0IGVycm9yIGlzIG9ubHkg4oCcdGhyb3du4oCdIHdoZW4geW91IGNhbuKAmXQgd3JpdGUg
dG8gYSBidWZmZXIgcXVpY2sgZW5vdWdoLCBidXQgbm90IG5lY2Vzc2FyaWx5IGlmIHlvdeKAmXJl
IHdhaXRpbmcgdG9vIGxvbmcgYmV0d2VlbiBzdWNjZXNzaXZlIHJlYWRzIGluIGEgY29udGludW91
cyBSWCBzdHJlYW0/DQo+DQo+IE1hbnkgdGhhbmtzLA0KPiBQZXRlcg0KDQpJIGRvbid0IGtub3cg
d2h5IHlvdSBhcmVuJ3Qgc2VlaW5nIHRoZSBlcnJvciwgYnV0IEkgdGhpbmsgeW91IHdpbGwNCm5l
ZWQgdG8gY2hhbmdlIHlvdXIgbWV0aG9kIHRvICJyZWFkIGFuZCBkaXNjYXJkIHNhbXBsZXMiIGR1
cmluZyB5b3VyDQpzbGVlcCBvciBlbHNlIHNlbmQgdGhlICJzdG9wIHN0cmVhbWluZyIgY29tbWFu
ZCB0byB0aGUgZGV2aWNlIGR1cmluZw0KeW91ciBzbGVlcC4gIEknbSBub3Qgc3VyZSB5b3Ugd2ls
bCBoYXZlIHN1Y2Nlc3MgYnkganVzdCAiaWdub3JpbmcNCmVycm9ycyIgZHVyaW5nIHlvdXIgc2xl
ZXAuDQpSb2IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
