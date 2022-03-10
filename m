Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE74D502A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 18:24:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F05C238459E
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 12:24:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h+MjqOxk";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 64DBA38459A
	for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 12:23:49 -0500 (EST)
Received: by mail-qt1-f170.google.com with SMTP id u9so1618037qta.5
        for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 09:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BWVZcLDrSBjY0wjkRtcZsmdSyBSkkOuKirZcR1Zz10w=;
        b=h+MjqOxkez8PYhI8eKDzy6AgnBlDdCudJwVxc1D3tdxFMYRVIRAGyPLdoFY3CzWtmU
         3MiM9a6sJkN0zH5wJySOztK3W7MFh5fCfKxOc9J2gk6KQCKqhVN9dDvZFH7LcticTfUU
         4btyTLz1Jb41EVlURG3s2MK7E/i74JGfuoxLyo7/FpwEtiRMuVv622vPav23lUxI6Ead
         4Gsl16O6TXiSMPlB8F7JSAu6EGxsm/eg33qPwSnvQsUs6Efn3p8rV8ppeMbdgdEtHECe
         E+jvGE5WHKY1Y+JcdRkwI2vYfiHmmjZ0C7QUd42+1y9cMJFBdtqb719HtC3vj7TIvxq6
         PTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BWVZcLDrSBjY0wjkRtcZsmdSyBSkkOuKirZcR1Zz10w=;
        b=tK4T025PZQ76K3McowVGfbYI8F8zuJfDoL3DwgA7Hl0XFr4W9IM4rAW7JL9XhL20Tf
         38qF6UPYKk7Db6TTlLfnv0qlXPjGlC7SuzgPFPE7TP9ySMI4QtVMm21cACNMlknaRufo
         129CaCJE7OSKbdYWSk6WP52C4TB8yRQ1WHErXUJ1VLwd5kO2U1u8HozIBgXAO2GXT/BY
         aXm04M+W2tTufeV74i6JU5eyAgq7ALWzmteQ7sFNWIFhk5H3ucAKa0sr6opoTJuFdWVl
         ov3LKnj9BtXD1aVF/lDWaM7anYDVpwlwX205m7fuUQOI6ziR7/W2QbCXbfp3rNCo6Mi4
         LO6w==
X-Gm-Message-State: AOAM533IElxlowQvjViUFRaMCt6rDhPJVbZ8KBqnlLOb0u/LT0Wr/IFT
	3uCj2C6ojcioeDICCnNQRGU=
X-Google-Smtp-Source: ABdhPJxuUt9rypEzQZ6s6Nkp4qbyMA63myYAbmG706irft7a6LXwQLHuZFrkAmH4KdXTfUt2uHpJGw==
X-Received: by 2002:ac8:5b82:0:b0:2cf:232d:b1f8 with SMTP id a2-20020ac85b82000000b002cf232db1f8mr4868495qta.58.1646933028869;
        Thu, 10 Mar 2022 09:23:48 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c6-20020ac87d86000000b002ddd9f33ed1sm3643626qtd.44.2022.03.10.09.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 09:23:48 -0800 (PST)
Message-ID: <2f5081ed-2c75-79dd-3e52-06f6d1998690@gmail.com>
Date: Thu, 10 Mar 2022 12:23:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Robert McGwier <rwmcgwier@gmail.com>
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
 <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
 <AM8P250MB0107C81BA07940913350EBF09B0B9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <81f8a42f-3bd8-b7a3-fefd-51938ca7f696@gmail.com>
 <CA+K5gzfiy=xED9M4-PvViOrS1yWujBcUB=Ny6OaUU-2ORsE+Ng@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+K5gzfiy=xED9M4-PvViOrS1yWujBcUB=Ny6OaUU-2ORsE+Ng@mail.gmail.com>
Message-ID-Hash: 7J3CRWD224UEJBLTGIAIZUOBXE5FQPD5
X-Message-ID-Hash: 7J3CRWD224UEJBLTGIAIZUOBXE5FQPD5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7J3CRWD224UEJBLTGIAIZUOBXE5FQPD5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0xMCAxMTo0MiwgUm9iZXJ0IE1jR3dpZXIgd3JvdGU6DQo+IFRoZSBhbGdvcml0
aG1zIGZvciByYXBpZCBhY3F1aXNpdGlvbiBhcmUgcGF0ZW50ZWQgYW5kIHdvcnRoIGEgZm9ydHVu
ZSANCj4gYmVjYXVzZSB0aGV5IGFyZSB1c2VkIGJ5IGV2ZXJ5IGNoaXBzZXQgaW4gZXZlcnkgY2Vs
bC7CoCBHb29kIHRvIHNlZSB5b3UgDQo+IGhlcmUgTWFyYyENCj4NCj4gQm9iDQo+DQpIZXkgQm9i
LsKgIEkndmUgYmVlbiAib24gaGVyZSIgc2luY2UgYmVmb3JlIHRpbWUgaXRzZWxmIDopIDopDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
