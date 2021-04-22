Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D42136857F
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 19:07:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DFFB3842B9
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 13:07:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IzwKBibd";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id BBC5B383F10
	for <USRP-users@lists.ettus.com>; Thu, 22 Apr 2021 13:07:02 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id z2so10038955qkb.9
        for <USRP-users@lists.ettus.com>; Thu, 22 Apr 2021 10:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=iWLY7KAa2FbdHu5rfufoEeM4z2dxohz+7WPiAnDkNwU=;
        b=IzwKBibd3VEnR1vO5upy8/0Vo8q+gSOlJuIIy+9VwYjFcksU4aRfgPINDMXyWh0WuP
         XlKlFgqab6fQYjv4tFjy/K9HocR/12ylXrnoMGbIJfxj9lBtwLz8wLzJFyn3czqDJR8O
         H8f8bkAUbbcvcA4tNqdJSi+Ib6jYejkt7iMCBBjUYJ1LSGHCobWSevnNXEgPnWpkWZJh
         QBiZk491y6P1RlYbQPo3X7xxe2rqwb0Rsb0lf7SQuXVLy8ROzigFrywXeC5h414lOnn1
         KzKE8kBosa4vmCOtVebKLL6DqWudvaRA4nK9sHTxq65CTnIB1QCeGs09D/X5JLvpATR+
         2OBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=iWLY7KAa2FbdHu5rfufoEeM4z2dxohz+7WPiAnDkNwU=;
        b=a65oybYmjKFX5OsW3sX4B05lsqGmo8yB4iJ2/5WiEmzUnMnUNKN3rnjFk7TEIi0ii1
         Yk5qz/nVmD5yDP7+DmsnhoIyn/3dLCs03j5KmUzKNakUecUVGigZyRhtB5JXf8C6jkPx
         f3BgUnix9VWjaacaBBaotw8qShx4fiqHjjzuPs9IY6Ls5vhI2YmihazXlb+7ERfd/7p3
         qeHR35tnaIjIkFImv93CcN68yKWNcj6cOaN9dD8IfBtrWH2Gy8Xtj26vEwKz/w/DahmE
         e9nk2vF6rK4/UFYbZtp7NY9FXcBS4O9i5mOUnb+jDmbnm5BNAFsBRawf3GNUywwIr+RC
         3w9A==
X-Gm-Message-State: AOAM531z2aPmGCYIEY1SIpvQbRtSVgpk1HIGpd2XOhAFlSrZ00UUGOpE
	0BAsGC2/zwxs49V1YhK5Phs=
X-Google-Smtp-Source: ABdhPJxXihdbjv9R3vvXX1gLBcwcHxs3Zyx8tQtgFbCvovhcWJar2L7QYFjBUAZHBXwj1Zq5IkkmSg==
X-Received: by 2002:a37:c244:: with SMTP id j4mr4648355qkm.10.1619111222168;
        Thu, 22 Apr 2021 10:07:02 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id x1sm2617227qtp.84.2021.04.22.10.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 10:07:01 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 22 Apr 2021 13:07:00 -0400
Message-Id: <6F4B55B1-6B85-4A30-8CA8-A792D5D8595A@gmail.com>
References: <CAOR0_ujqoh33cpKzeTpBVGzzY=v2BYyVL=w9WmX8NSUfjSbKkg@mail.gmail.com>
In-Reply-To: <CAOR0_ujqoh33cpKzeTpBVGzzY=v2BYyVL=w9WmX8NSUfjSbKkg@mail.gmail.com>
To: Huacheng Zeng <zenghuacheng@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: ZFRCP3PH2TE753PKDV4WHCEVJFXZLZCA
X-Message-ID-Hash: ZFRCP3PH2TE753PKDV4WHCEVJFXZLZCA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "LLLLLL" message from USRP X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZFRCP3PH2TE753PKDV4WHCEVJFXZLZCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91IHNldCB1cCB0aGUgc3RlYW0gdG8gYmUgYSBjb250aW51b3VzIHN0cmVhbSwgdGhlIFVT
UlAgZXhwZWN0cyBjb250aW51b3VzIHNhbXBsZXMsIGFuZCBpZiBpdCBkb2VzbuKAmXQgZ2V0IHRo
ZW0sIGl0IHByb2R1Y2VzIGVycm9ycy4gDQoNCllvdSB3YW50IHRvIGNvbmZpZ3VyZSB5b3VyIHN0
cmVhbSBmb3IgYnVyc3RzLCBwcm9iYWJseSB0aW1lZCBidXJzdHMuIA0KDQpBcmUgeW91IHVzaW5n
IEdudSBSYWRpbywgb3IgdGhlIFVIRCBBUEkgZGlyZWN0bHk/DQoNClNlbnQgZnJvbSBteSBpUGhv
bmUNCg0KPiBPbiBBcHIgMjIsIDIwMjEsIGF0IDE6MDEgUE0sIEh1YWNoZW5nIFplbmcgPHplbmdo
dWFjaGVuZ0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/DQo+IEhpIGFsbCwNCj4gDQo+IEkg
YW0gdXNpbmcgVVNSUCBYMzEwIGFzIGFuIE1JTU8gdHJhbnNtaXR0ZXIgdG8gc2VuZCB0d28gc3Ry
ZWFtcyBmcm9tIGEgY29tcHV0ZXIuIFRoZSBzYW1wbGluZyByYXRlIGlzIHNldCB0byAyIE1TcHMu
IFdoZW4gdGhlIGNvbXB1dGVyIGNvbnRpbnVvdXNseSBzZW5kcyBkYXRhIHRvIFVTUlAsIGl0IHdv
cmtzIHdlbGwuIFdoZW4gdGhlIGNvbXB1dGVyIHNlbmRzIGRhdGEgYXQgYSBzbG93IHJhdGUgKGUu
Zy4sIDEwIHBhY2tldHMgcGVyIHNlY29uZCksIFVTUlAgcHJpbnRzIG91dCAiTExMTExMTExMTCIg
bWVzc2FnZSBhbmQgaXQgc2VlbXMgdGhlIFVTUlAgZG9lcyBub3QgdHJhbnNtaXQgYW55IHNpZ25h
bC4gDQo+IA0KPiBJIGV4cGVjdCBVU1JQIHRvIHRyYW5zbWl0IHNpZ25hbCB3aGVuIGl0IHJlY2Vp
dmVzIGRhdGEgZnJvbSB0aGUgY29tcHV0ZXIgYW5kIG5vdCB0cmFuc21pdCBzaWduYWwgaWYgbm8g
ZGF0YSBjb21lcyBpbi4gDQo+IA0KPiBBbnkgYWR2aWNlIHdvdWxkIGJlIGFwcHJlY2lhdGVkIQ0K
PiANCj4gQmVzdCwNCj4gSHVhY2hlbmcNCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
