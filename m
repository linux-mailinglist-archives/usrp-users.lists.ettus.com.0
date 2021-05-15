Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 022C23819E5
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 18:33:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBB4A383D8C
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 12:33:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L46nEZTL";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EC8A3839D4
	for <USRP-users@lists.ettus.com>; Sat, 15 May 2021 12:33:09 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id i67so1953377qkc.4
        for <USRP-users@lists.ettus.com>; Sat, 15 May 2021 09:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-transfer-encoding;
        bh=dEXTjJM7jaOpqtyPyJzpUG5yt6wD5U1Nz5H55S7bgoU=;
        b=L46nEZTLVtoJnTeDvUmNIG5bK6mLAmNUZRONFOuF/wkMkfySMt+DhRmGeolU7gLwyP
         2Egk4zRDPthRMZA3xYpdNh7qI8TPZGRc/hHLiZI+WSikOEUuIqZ/g/ZpMbZQRXDMH1en
         Obvau6BZEFFhDbHnjR/9TSd98Rn5xO0Pj9Hy6OSqENDU2Csj78hE/cqCpB7g/Ja5ybQK
         AT3+W1XKlq4CDgMqBdghG0ELnpulEu/DUziGwOa0LMelbFkz6AUmazvaGtNBFSNHPmXr
         b62dXUAXODF96GjK6BL28LT5dO6uOGvrRgGj1bPMJlVo3sqdb04WYUHf1GYME91daG3p
         skYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-transfer-encoding;
        bh=dEXTjJM7jaOpqtyPyJzpUG5yt6wD5U1Nz5H55S7bgoU=;
        b=ZT9sYUGZ+Sm13jmDVUnVZv0XuHsqGZ51YseZ5hHSUF+WD593TOuQdAhfIC+zBBWTLj
         iuwUoEkCs3HYtxHTx8d5rZ62054p+805gmjMFopMlf1n13WVhJNzcyQ88Hc02LQY8lUk
         n31mTL1G59cejOrPGv0RlbItV0mLmR922sw2+03T6MJ1eLZxA80QRvuH5LyVjjQJIlOs
         USuhBoH0T0cI83CotaTWYdnqcsIZDBRG/t5bK6yFKKruzaCv3a2cvn5ood+cRAZ5o3sE
         xf4As2Jlhm6nE/m/CxgpS1pf71NSFm63GpaH6C1Na+AtH3LVUhMtIQL2hLit9xuVWmeX
         qMOQ==
X-Gm-Message-State: AOAM5323VR40BZKVHCylrqPpfmO5YtGSMaywPMj9pd5qyUdwbyju/kEU
	8qnrARIj3nHBv8dUYJ//1pdkouJKb2k=
X-Google-Smtp-Source: ABdhPJyjCMWohDEkSEoNARebJsnbBnRdxqffQ9QIhjMQ0Hx8n6DyLvrJqjMYKAvBAE4ciGRTRWxjeA==
X-Received: by 2002:a37:384:: with SMTP id 126mr51038627qkd.387.1621096389151;
        Sat, 15 May 2021 09:33:09 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s24sm6937520qtx.94.2021.05.15.09.33.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 May 2021 09:33:08 -0700 (PDT)
Message-ID: <609FF7C3.10107@gmail.com>
Date: Sat, 15 May 2021 12:33:07 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Martin <usrp-users-list@olifantasia.com>
References: <42f4dc77-e817-171a-ad75-ba2d4ac51e63@olifantasia.com> <A86ADD35-1A53-4DCF-8F77-E29172D9E135@gmail.com> <a28fd43f-a2fd-ba66-cbf5-cb0493035431@olifantasia.com>
In-Reply-To: <a28fd43f-a2fd-ba66-cbf5-cb0493035431@olifantasia.com>
Message-ID-Hash: 24YIVCB45ZYIJA4LQCQN7JRTRXF5MFFX
X-Message-ID-Hash: 24YIVCB45ZYIJA4LQCQN7JRTRXF5MFFX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/24YIVCB45ZYIJA4LQCQN7JRTRXF5MFFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMTUvMjAyMSAxMDoxOSBBTSwgTWFydGluIHdyb3RlOg0KPiBPbiAxNC0wNS0yMDIxIDIx
OjI2LCBNYXJjdXMgRCBMZWVjaCB3cm90ZToNCj4+IFdoYXQgaGFwcGVucyBpZiB5b3UgZG9u4oCZ
dCBzcGVjaWZ5IGFueSBhcmdzIGF0IGFsbD8NCj4gVGhlbiBJIGFsc28gZ2V0IE5vIERldmljZSBm
b3VuZC4NCj4NCj4gTWFydGluDQpNYXJ0aW46DQoNCldoZXJlIGRpZCB5b3UgZ2V0IHlvdXIgc2Rp
bWcgZnJvbT8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQo=
