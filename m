Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CBA656E04
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 19:39:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 850F9381101
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 13:39:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672166375; bh=zfG2swLLsPYD7L6ZxEaISwVkUngclOrapkURQI112GY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=K0/vVSffKB4vxbMi8ucJcfDM/WOAhRwtB4AY1GFSgI7sPleLR375sp3oeZ4kPvWiY
	 Dps5qKiZ569DeVYWGtHlB2UjN0O5JxVHNE1/Qp2UmamrLPo292Mxr8J2VBbzWYf6u0
	 v645hVhnVm/E8U6K28imvqruHh8Lktl2arivk1xmogd3vA0UP8uGhitwqucVnle+/5
	 Cxy9SdP5BepLGLBTXNlD1QeT2svfJ/emRc/J9iYhu/ogaYbd49uq/9EWf67CY8/dWu
	 2BENNP+6BVoYP923amiOZordnd3sVzpnteelnnmZrhNQArCARnKgpbJrj1oUK//j0A
	 huA2D/mlwMa3w==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 0660A380E6F
	for <usrp-users@lists.ettus.com>; Tue, 27 Dec 2022 13:38:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YO7mduhB";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id v14so8285281qtq.3
        for <usrp-users@lists.ettus.com>; Tue, 27 Dec 2022 10:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cWfiDS46E0ZqZQ2K5pzLfS/nHUwl8lpWgIn7oDLyFw0=;
        b=YO7mduhBqAb8q1ygtlVpWudePb/eaEUioBQelUYa0wUrMVLvChrTsRKTMYHWD/XRwD
         QO1hFrg6SyGBJUwFEOpwPKMHIEaPNEZXaMwenBGkwYXbOSMGUr09xa4LjppZliB4FtHp
         k6eJijibxgNciK5OtI+uEWSCotMnat80kqpNFhmmfbmKTQpKle9qBjB0dusRX6XH+6nV
         Uo3HgvArE6vMrD8jSWVLrITeK9EsRmUc03YnOkSocJZOeMXH9BG/zVpzNPVejRcCFjkk
         uWdP6d9za5oigVQ+Bwp3U8Ikeo+qCua+vZcmrvurR/a/i3Nn9P9Veseq43kUuXD3IcRm
         Y6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cWfiDS46E0ZqZQ2K5pzLfS/nHUwl8lpWgIn7oDLyFw0=;
        b=oL+NRkAREWXtu5HcQXJ6ofofKC3XeNr7zsGVpxZ6jFffZeRWZYGdnpJ6SVulxKu1qx
         0n5joFiHeH8UgIuVFczXV4oROyRyFQyky/sAbdfjP/OT6Uq3JG1pW1/u/KffMgBw1Bs+
         lczSl4wU2K8Cebb/iHzFoDn+Hc7V4OHlfcnwSeSM68vdJBqtDxBuRIdBgQElz0MGpJMr
         MbW4tEHAo8UoOsCM+a5pAk4bz00qFjctg1GmIBOQQ5fjn+rgnSn6zHvYw/setrsKRv0g
         R/PNfH92yB7UMsPTQ+YDjC+H/Tu6xDLFSiPTzCQBzDXGtjp8LkYHCO2ZFckVRmwX/dhr
         bfsQ==
X-Gm-Message-State: AFqh2kr50i5u7b+anCaaMYw7g1h5GSK9N9FpTE8b2gIkJ6PAa0VFgry3
	ualJeWbkU/P81EP5LQ792c1ks2pWJaI=
X-Google-Smtp-Source: AMrXdXtIRfWAxgAOzwWJ1wuX+3YNy7t5qwBbpL7ny0kcnmXhIAYQ/0Aph7tlNFjzxHcsPVOzbtk24g==
X-Received: by 2002:ac8:44b2:0:b0:3a9:89f1:82a with SMTP id a18-20020ac844b2000000b003a989f1082amr28094979qto.61.1672166325366;
        Tue, 27 Dec 2022 10:38:45 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id bn9-20020a05622a1dc900b003a7e38055c9sm8609072qtb.63.2022.12.27.10.38.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 10:38:45 -0800 (PST)
Message-ID: <9e5c81f8-9f4b-09f8-2200-08b606de54a8@gmail.com>
Date: Tue, 27 Dec 2022 13:38:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI@lists.ettus.com>
Message-ID-Hash: CWL77GHI654Y2PL52NBISRSJOG26O4VM
X-Message-ID-Hash: CWL77GHI654Y2PL52NBISRSJOG26O4VM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device and Connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CWL77GHI654Y2PL52NBISRSJOG26O4VM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMTIvMjAyMiAxMzoyOCwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSWYgSSBhbHdheXMgdXNlIHVzYiBjYWJsZSwgbGV04oCZcyBhc3N1bWUgaSB1c2Ugd2hhdCBh
cmUgdGhlIGFkdmFudGFnZXMgDQo+IG9mIHVzaW5nIGFkYXB0b3IgZm9yIHRyYW5zbWl0dGluZyBv
ciByZWNlaXZpbmc/DQo+DQpUaGUgVVNSUCBCMjAwIGlzIGEgKlNvZnR3YXJlIERlZmluZWQgUmFk
aW8qLsKgIFRoZSBVU0IgY29ubmVjdGlvbiBpcyANCipyZXF1aXJlZCogZm9yIGl0IHRvIGZ1bmN0
aW9uLsKgIFlvdXIgc2lnbmFsIHByb2Nlc3NpbmcNCiDCoCAic3RhY2siIHJ1bnMgb24gYSBob3N0
IGNvbXB1dGVyLS10aGUgVVNSUCBpcyBzb21ld2hhdCAiZHVtYiIgaW4gdGhpcyANCnJlZ2FyZC4N
Cg0KPiBJIHJlYWQgdGhhdCBkb2N1bWVudC4gSSBhbSBzZWFyY2hpbmcgZG9jdW1lbnQgbW9yZSBs
aWtlIGJvb2ssIG1vcmUgDQo+IGRldGFpbCBpcyBiZXR0ZXIgZm9yIG1lLiBJIHdhbnQgdG8gcmVz
ZWFyY2guIFRoZW4gSSB3aWxsIHN0YXJ0IHRvIA0KPiBkZXZlbG9wbWVudC4NCj4NCj4NCkknbSBn
ZXR0aW5nIHRoZSBpbXByZXNzaW9uIHRoYXQgeW91IHBlcmhhcHMgYXJlbid0IGVudGlyZWx5IGNs
ZWFyIG9uIA0Kd2hhdCBhIFNvZnR3YXJlIERlZmluZWQgUmFkaW8gKHN1Y2ggYXMgdGhlIFVTUlAg
QjIwMCkgaXMsDQogwqAgYW5kIGhvdyBpdCBjYW4gYmUgdXNlZDoNCg0KDQpUaGlzIFdpa2kgcGFn
ZSBtYXkgYmUgb2Ygc29tZSB1c2U6DQoNCmh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1Nv
ZnR3YXJlLWRlZmluZWRfcmFkaW8NCg0KWW91IHNob3VsZCBhbHNvIGV4cGxvcmU6DQoNCnd3dy5n
bnVyYWRpby5vcmcNCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
