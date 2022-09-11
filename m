Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2C15B4EF9
	for <lists+usrp-users@lfdr.de>; Sun, 11 Sep 2022 15:22:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FC27383BE0
	for <lists+usrp-users@lfdr.de>; Sun, 11 Sep 2022 09:22:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662902548; bh=3q3KLNCZIm1vur63cJNLhaYs4TVGF7WkRnVEQyzG27I=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pwebe8mqSTAZDQiQ+UvhcxFDwgX+BxwALK72pgB5R6hNWmerQboAVBDW/Glsaz8tG
	 tCwVDtyph2z09J2lQn+GNnonSEIQUUEk4SNpSRPIxOYBeKLKVbWbHLscf2AVknFUAE
	 3TZmrSnrJ+9xQw5HNv94ulZ5ZsU5osBxhXluBqva8Yr8njjcCykvAdnjlQfK2IDkzX
	 NZ+oHaVGztLKkgA21nUHtVOnj4UBARTvK0EKFd54ISHH1ypVbJrK9Gh9mITrWr3S6p
	 Ov65HQGTfieBoNZvSpzAq7N9KuYdEYBKKu6AJbETeWLrxI9T7q50KJsJlPQtKfbX4M
	 L7AHUTvvyf0Nw==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 90186383B76
	for <USRP-users@lists.ettus.com>; Sun, 11 Sep 2022 09:21:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="La0b3+Xw";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id f26so1988941qto.11
        for <USRP-users@lists.ettus.com>; Sun, 11 Sep 2022 06:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date;
        bh=mlVtd8qkpnYz8rBfVvMh+vGdkiLmHTQBC3CZ1vk8wWk=;
        b=La0b3+XweSZ046JpdOeNrU8wDypnNYKLwPq8ac20pOoCZM6wb4jEC3OxX3rbHv/YSw
         NwozN6HoJZWm28oRc2d66RnPI310W5FZ+5ILZZjxl0vt9cH/aaJMW3W4uqdDV/TdK3Ka
         Xc/PVmmig1ABWykMwHmozQ6oiJGRIf8WhvwkvE8VbIdrblC7xLcsQthFjxxJCpXr3jZ2
         rNEASNFr+nECkUwn+r3jf3uTwuTJ9bEK6XzGRfk+zPBTDKAg164T9BHARaoQ+aoCByAe
         9s1uD8MuVrGU33QsFYSO6YFWEw7rqc7gnxi+tHxBwLtJS5QJX0/VWwIuXxiCuN8qQd7e
         DeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date;
        bh=mlVtd8qkpnYz8rBfVvMh+vGdkiLmHTQBC3CZ1vk8wWk=;
        b=6sbZulCeOvi44iiljgnuBX+Zd4Yipas6rteRNLgMehgUMKLZYikR9iY4KqdoxKxg3C
         mZBheEn2ADhFk6VKEjG7pT7wjcNeYnbNZdqSYg87ClxnakiDOTpEqtWWey81zVgoyeEe
         Lpdi+aCbuIqCwTBGokZzXUz147ECI5QsaedoLJHD+5QrfZPyM7WOnqpQ0B+sjfwcDOkb
         0ctDlMJ1AyoVEw/BXdPHvoA+Tj8cKPSMxC+PN1mGJDdcOhZVOnUuUEwkjr232AQJ8j0w
         EZhrVVqabWLNvIjrjQihQSjB1cw+cynEJzIbPRHAGkamWiD1v0AYFh3el6N+NLQlUsqJ
         Q4mQ==
X-Gm-Message-State: ACgBeo3LJgpi7F4S531JPbY6TnHKkeWY70u+ibH/S8H2lFnbapx8NN6r
	wrY6vUkNBmEkQ9QPVMG1tjc=
X-Google-Smtp-Source: AA6agR4M1e+vbh5i2FYq0qrdLibwKmGRm5wx9fVSlsSYeQHVNYFPaEkIOgtNUPWOhgtDJc407RcOwg==
X-Received: by 2002:a05:622a:40c:b0:344:5aba:a153 with SMTP id n12-20020a05622a040c00b003445abaa153mr20280657qtx.261.1662902479923;
        Sun, 11 Sep 2022 06:21:19 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.gmail.com with ESMTPSA id t16-20020a05622a01d000b00342fdc4004fsm4444160qtw.52.2022.09.11.06.21.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Sep 2022 06:21:19 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 11 Sep 2022 09:21:18 -0400
Message-Id: <D20BFF5F-CAE7-423D-9B79-42FAED8D1BB8@gmail.com>
References: <CANgrtSUhV0LyJoxnzjFXJi9W_OyD2p-cU=Q_6bcUC-qjKw1JEQ@mail.gmail.com>
In-Reply-To: <CANgrtSUhV0LyJoxnzjFXJi9W_OyD2p-cU=Q_6bcUC-qjKw1JEQ@mail.gmail.com>
To: YENDstudio <yend19@gmail.com>
X-Mailer: iPhone Mail (19G82)
Message-ID-Hash: PVXDIZ6YSIXEOBEDYPLT7Q2M4S2SGKDP
X-Message-ID-Hash: PVXDIZ6YSIXEOBEDYPLT7Q2M4S2SGKDP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: External reference clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVXDIZ6YSIXEOBEDYPLT7Q2M4S2SGKDP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgZGVwZW5kcyBvbiB3aGljaCB0eXBlIG9mIFVTUlAuIEJ1dCBpbiBnZW5lcmFsIGl04oCZcyBP
Sy4gDQoNClNlbnQgZnJvbSBteSBpUGhvbmUNCg0KPiBPbiBTZXAgMTEsIDIwMjIsIGF0IDY6MzQg
QU0sIFlFTkRzdHVkaW8gPHllbmQxOUBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/DQo+IEhl
bGxvLA0KPiANCj4gSSB3YW50ZWQgdGhlIHVzcnAgdG8gdXNlIHRoZSBleHRlcm5hbCByZWZlcmVu
Y2UgY2xvY2sgd2hlbmV2ZXIgcG9zc2libGUuIFdoZW4gdGhlIGV4dGVybmFsIHJlZmVyZW5jZSBp
cyBub3QgYXZhaWxhYmxlLCB0aGUgdXNycCB3b3VsZCB1c2UgdGhlIGludGVybmFsIGNsb2NrLiBJ
cyBpdCBzYWZlIHRvIGNhbGwgdXNycC0+c2V0X2Nsb2NrX3NvdXJjZSgiZXh0ZXJuYWwiKSBldmVu
IHdoZW4gdGhlIGV4dGVybmFsIHJlZmVyZW5jZSBpcyBtaXNzaW5nPyBPciwgY291bGQgaXQgaW1w
YWN0IHRoZSBwZXJmb3JtYW5jZT8NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
