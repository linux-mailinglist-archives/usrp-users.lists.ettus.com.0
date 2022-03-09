Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B562E4D3239
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 16:54:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B65CC385034
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 10:54:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cp82+Lh1";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D49C384C25
	for <USRP-users@lists.ettus.com>; Wed,  9 Mar 2022 10:53:15 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id eq14so2300227qvb.3
        for <USRP-users@lists.ettus.com>; Wed, 09 Mar 2022 07:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uXxT4EvZGSoVhmykMl6PtQwV9d1vfEekqzkmOMKZRA8=;
        b=Cp82+Lh1zZtGEEoZWxmQ5aodUnquzKyFUbzDSnfjcVLCCC3HJmtxfM6/0D6cOy41qI
         hanYA2DOC/15MSjAi7BhrvxmjHdVJLYiZoakJ8iRa9o2h5+mQu1zZnCVDLExupEibvKX
         gmc7xL2zxKPYW8Rn8gHv4dQBC7EBAF+qGo4U6guWUxBom3W1hnGY8XrDaabJnVrEH9jp
         xlNYgVKGcnoNmnCFwNw//QOd2HNxtFKse7hpQUn70m7p7q2oIavl7gdYl0PH5Hyb/IQ/
         8LdNZqfQvP5Zz3b51oC9iXDec/ypvjLLuwEdJrNQ6W37ToqKQW/0VDtNk14wLkYWgLg4
         YAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uXxT4EvZGSoVhmykMl6PtQwV9d1vfEekqzkmOMKZRA8=;
        b=OgBBDlk60kUoW0kQFCNpZjdy0lwWcza5+JmK/I0qAdQ0Wh4MqLHifQFkRcr4izkgwo
         jqaq5aV+rTR/fBKHCOnZQ7DApoBiPMQ0Q0xgbyaJDbqrSVX+Q/yITDUkD0kj44s75saT
         23qQYjzkmBS+NWzOG+D/wzr3XC5bStvsiVxV4eQofaJaGD2+LddDsU8Qj3GIoFvyJp6Z
         H07YamHC3MnGq18HJju6Wor1ivpHJfRq1sJ7UIkyNPNuEqkZp+I2lVcI9oDp3jXulpwL
         xCKQE38tPJ7CdXlT4TPUfXS+qK3zU5qUS6DDpkkKtRrbWU3ZPCewOiofJKBfFFFS4aCP
         2Yiw==
X-Gm-Message-State: AOAM530zFag1WGQYLxXEd04c/Rn+zSz4bPK/HktiCGKt4vHCukjeFZky
	etSI3h0l2pc7WBtrvRvx75m6SIrNe/bycw==
X-Google-Smtp-Source: ABdhPJwsJA5CKrLjXH37s7yv50ualTk1pXiFdOBZTI9yL04adgVEh+CWnw00LyAJzjQa8rKQa0fycw==
X-Received: by 2002:a0c:906e:0:b0:42c:a71e:aaa1 with SMTP id o101-20020a0c906e000000b0042ca71eaaa1mr287555qvo.44.1646841194894;
        Wed, 09 Mar 2022 07:53:14 -0800 (PST)
Received: from [192.168.2.154] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x185-20020a3795c2000000b0060cb44d7eb9sm1096635qkd.11.2022.03.09.07.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 07:53:14 -0800 (PST)
Message-ID: <6b65f5f8-ce28-c663-b731-3034c03b1c67@gmail.com>
Date: Wed, 9 Mar 2022 10:53:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Dan CaJacob <dan.cajacob@gmail.com>
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
 <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
 <CAMOmJODYr23nX5vs8vJETn8neN-u+-p_0hdYoWt0Vs3dQYvSYA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMOmJODYr23nX5vs8vJETn8neN-u+-p_0hdYoWt0Vs3dQYvSYA@mail.gmail.com>
Message-ID-Hash: QLJXIMFDI7M2OOYK2XUIGJB2F7MQFVZF
X-Message-ID-Hash: QLJXIMFDI7M2OOYK2XUIGJB2F7MQFVZF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLJXIMFDI7M2OOYK2XUIGJB2F7MQFVZF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0wOSAxMDo0NCwgRGFuIENhSmFjb2Igd3JvdGU6DQo+IEl0IGxvb2tzIGxpa2Ug
dGhpcyBhbnRlbm5hIHJlcXVpcmVzIDMuM1YgYmlhcyBvbiB0aGUgY2VudGVyIHBpbiB0byANCj4g
cG93ZXIgdGhlIExOQSBpbnNpZGU/IFdoYXQgdm9sdGFnZSBpcyBzdXBwb3J0ZWQgb24gdGhlIFg0
MTAncyBjZW50ZXIgDQo+IHBpbj8gT2Z0ZW4gdGhlc2UgdGhpbmdzIHByb3ZpZGUgYSBiaWFzIHRv
IHRoZSBhY3RpdmUgYW50ZW5uYcKgdG8gcG93ZXIgaXQuDQo+DQo+IElmIHRoZSBYNDEwIGRvZXMg
bm90IHByb3ZpZGUgYSBiaWFzIHZvbHRhZ2UgKG9yIHRoZSB3cm9uZ8Kgb25lIC0gZS5nLiANCj4g
NVYpLCB5b3UgbWF5IHRyeSBwdXR0aW5nIGEgQmlhcy1UIGJldHdlZW4gdGhlIGFudGVubmEgYW5k
IHRoZSBVU1JQIGFuZCANCj4gZmVlZGluZyAzLjNWIHRvIHRoZSBhbnRlbm5hIHRoYXQgd2F5Lg0K
Pg0KPiBEbyB5b3UgaGF2ZSBhbm90aGVyIEdQUyBkZXZpY2UgdGhhdCB5b3UgY2FuIHVzZSB3aXRo
IHRoZSBhbnRlbm5hIHRvIA0KPiBlbGltaW5hdGUgdGhlIHBvc3NpYmlsaXR5IHRoYXQgdGhlIGFu
dGVubmEgaXMgYmFkPw0KPg0KVGhlIExURS1MaXRlIGJvYXJkIHRoYXQgWDQxMCB1c2VzIHByb3Zp
ZGVzIDMuM1YgcG93ZXIgb24gdGhlIGFudGVubmEgDQpjb25uZWN0b3IuDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
