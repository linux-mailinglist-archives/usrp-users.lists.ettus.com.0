Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EDE4B36DD
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 18:49:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95BF538573B
	for <lists+usrp-users@lfdr.de>; Sat, 12 Feb 2022 12:49:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ufr4wXsI";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EDEA3850D6
	for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 12:48:33 -0500 (EST)
Received: by mail-qt1-f173.google.com with SMTP id s1so11822691qtw.9
        for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 09:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=dCKNgf7UmW0uxEhujN76acNkgXtCh1Mi8sTCwObI2w8=;
        b=Ufr4wXsIyXTTs4bhExSuZW+E41UdhVVm6jk63q3KLsYa1Sf5WSUgNorP/X6XMMUOS2
         aUO5q/80R3XMnFCK8/RyK89YOr/wEkOmIQ3i6cONkQJuXlvUr5AU1ZPeQd9vmwAyHvwg
         pOaLPvVc9KuRFT75YyHsC86BMwa7bUvt+RracCCvnbJ141cHgn+edWAL7SojME75Fvvf
         C0g4QndoRUcAQCe6YlCOpLuGxXu2R2rz6oBzK9NsbngP2g7UQuwuXZwxAybsKLtwftuo
         wKR6mWJvQ+zr8MYvYEAHFJetthsIINvKO6yta/IkliO4Shx/CVsznr98i2p5o6HyTV5W
         GLQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dCKNgf7UmW0uxEhujN76acNkgXtCh1Mi8sTCwObI2w8=;
        b=l0KtSOPYIznJjweY2hUQv4t+1TR1f9n+jD7TBwFH0jvgdQgePAGoP5LgEL9CfYxugR
         8TaxLmgX37UaVUpNajqK8qTN29RorSkb8bJYAtkL9/G+nvGjefNRQixUVqe+0RSsW3Z2
         t0r437qd0zO8gWFxhs5XrYdv2gOVtmdbzk9TQHksBAlWPJYSfs2zoOEzUH3lFMcVDdEs
         20MV1/Ceiey95thCm6EJt/2r90hWm76bytzBDlu7Hayf3RqLp48vgDvLirr5fCGvWfwx
         EktVo1W7OZB99wd1erqBG7wQp6hmPEDoeHDGsMpCwBJrEU617dhWZv8Y0r7xsY64UdLr
         fD9w==
X-Gm-Message-State: AOAM532FyteJpYQwd7pQapG3XymLr7ZecM9o+SZ0QIO0yu4ogV648hX9
	LrDevU3AdWq2b3BWnrCc+D1xoqBaetxHQw==
X-Google-Smtp-Source: ABdhPJwfRIXONdNUQx7FEOLZwT3AhD6HtQ+682jHr5iOGX3e1kpFZx0buFweyuzWGsm+6HA2QqHhHA==
X-Received: by 2002:a05:622a:1350:: with SMTP id w16mr4829516qtk.320.1644688113243;
        Sat, 12 Feb 2022 09:48:33 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w4sm13828430qko.123.2022.02.12.09.48.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Feb 2022 09:48:32 -0800 (PST)
Message-ID: <4c247270-6870-46b5-2a5f-750ea6b27804@gmail.com>
Date: Sat, 12 Feb 2022 12:48:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAM06atakJGZCyrZRnBciHc=ZUaSp6YJHiy7e3gJ0qwRG2dTiBA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAM06atakJGZCyrZRnBciHc=ZUaSp6YJHiy7e3gJ0qwRG2dTiBA@mail.gmail.com>
Message-ID-Hash: FFP2EYY6QJEXZKUOGFSSQGQ2CM5QJVPJ
X-Message-ID-Hash: FFP2EYY6QJEXZKUOGFSSQGQ2CM5QJVPJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E313 dropped samples and overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FFP2EYY6QJEXZKUOGFSSQGQ2CM5QJVPJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0xMiAwNzo1MywgQ2FzZXkgV29sc2llZmZlciB3cm90ZToNCj4gSGVsbG8sDQo+
DQo+IEkgaGF2ZSBhbiBlMzEzIHRoYXQgaXMgdW5hYmxlIHRvIHJlY2VpdmUgYXQgcmF0ZXMgYWJv
dmUgMU1TL3Mgb3Igc28uIA0KPiBBdCBmaXJzdCBJIHRob3VnaHQgaXQgd2FzIG15IGNvZGUgYnV0
IGV2ZW4gcnVubmluZyB0aGUgYmVuY2htYXJrIA0KPiBleGFtcGxlIGl0IGlzIGxpbWl0ZWQgdGhp
cyB3YXkuIEFueSBpZGVhcz8NCj4NCj4gVGhhbmtzIQ0KPg0KPg0KQXJlIHlvdSB1c2luZyBpdCBp
biBOZXR3b3JrIE1vZGU/wqAgV2hhdCB2ZXJzaW9uIG9mIFVIRD8NCg0KSW4gTmV0d29yayBNb2Rl
ICh0aGUgRTMxMyBiZWluZyB1c2VkIHdpdGggYSBob3N0IGNvbXB1dGVyIHVzaW5nIHRoZSANCm5l
dHdvcmsgaW50ZXJmYWNlKSwgdGhlIG1vc3QgeW91IGNhbiBleHBlY3QgaXMgYWJvdXQgMU1zcHMt
LWl0J3Mgb25seSANCnJlYWxseSB1c2VmdWwgZm9yDQogwqAgZGVidWdnaW5nIGFuZCBjaGVjay1v
dXQuDQoNClJ1bm5pbmcgb24gdGhlIEUzMTMgaXRzZWxmLCBpbiBlbWJlZGRlZCBtb2RlLCB5b3Ug
Y2FuIGV4cGVjdCBwZXJoYXBzIA0KNU1zcHMgaW50byB0aGUgWnlucSBDUFUuDQoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
