Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 111333A441F
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 16:33:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE4283840A4
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 10:33:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="x1Yuv3g9";
	dkim-atps=neutral
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 96CFA38477A
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 10:32:05 -0400 (EDT)
Received: by mail-wm1-f49.google.com with SMTP id l7-20020a05600c1d07b02901b0e2ebd6deso8649679wms.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 07:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Vf1seHhN3KWpbXgMdIQTFdArPxtfmdWY5lucJdNzBaI=;
        b=x1Yuv3g9JI5JqNw0pn+rWfYWmkDCF5wRKoTOAbHhavx/T1ZSh10uDVNbXKU2ShUsv8
         WHb3hHC+ZOHcnGf56OeyCm8BES0p9zUVfZcLCZ6GmVuysUPWAeBY5ZBMY47SDI4Yge82
         EuYOfyiLM7rR0GO1Wv01tc5awtnoeDDWJgrVOyugiPI9tDvyN5x97bRbOlkSn8wfDxeT
         aA0GULFpoZ0EhD+JUxICzAGOe9bIS4USbOTRde4gJvoeRtAHhiungdj0OyCuvn/qiAUA
         WcsPmzSsNRXeZVnKiWxlr5BADUS3/NRYxWMqSW28+nlI0NlJv3TcdNAmjeSe8RthFWVG
         4yRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Vf1seHhN3KWpbXgMdIQTFdArPxtfmdWY5lucJdNzBaI=;
        b=OHEVJKh1XxP68a9JFCm7pUrRi8rp4zqOXyN1gh2fGNjFq57a5ZU+kuug0iX0Gwo1xG
         CO9/9X9y0eRJVEu28FRJ2iWjZwm42E+TPM3tjH1iSg8bdGG+uKu/lQNC6l7QrO6zbwbr
         ukttquSyOdSVe/MHO3mxFZVf0f8b8x6ylOv71uCnsn364EWcSBQRXTAWLzGb5Q+7BmTP
         oIJkpeG3P8rnSJTFfFAQZKWOY36zaEO4ORGLBOrot6WAC6Fap76jkJb3fhtIS38HYuSj
         p4ruLQUZSFkPc1rPoT/wuMjEH8383YP2Uxag0bhhbsB5fkJdUYrym6qy1bLEG4r8WnuL
         ssyg==
X-Gm-Message-State: AOAM533PR/LrjU3Qb7glURml8lze+Wo7wPtJRW8wg/O5cgulltC+Eisc
	5Q//95+DqU6jHoieyzWl80DZyezssGV2tnYc
X-Google-Smtp-Source: ABdhPJxD24YGZ659TKeFZB5IKUqFEK9T2hEPALQx1xCscPb5lAGzL95uQt/2l2+ZL/uDp771KU5Pbw==
X-Received: by 2002:a1c:9a8e:: with SMTP id c136mr20320376wme.103.1623421924488;
        Fri, 11 Jun 2021 07:32:04 -0700 (PDT)
Received: from [192.168.1.141] (HSI-KBW-46-223-163-41.hsi.kabel-badenwuerttemberg.de. [46.223.163.41])
        by smtp.gmail.com with ESMTPSA id x3sm12647740wmj.30.2021.06.11.07.32.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 07:32:04 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CANsNear-N8KBfZO87wVk8btEnQk=tsvF_Td0zjv1YDoE2ATVFw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Message-ID: <9a02875e-a4a9-aa5a-0e3f-6d0f301aee0e@ettus.com>
Date: Fri, 11 Jun 2021 16:32:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CANsNear-N8KBfZO87wVk8btEnQk=tsvF_Td0zjv1YDoE2ATVFw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 2AMUAZY3CNYGR4IRHF5377YT2ONB4THW
X-Message-ID-Hash: 2AMUAZY3CNYGR4IRHF5377YT2ONB4THW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replacing idle FPGA image on an E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2AMUAZY3CNYGR4IRHF5377YT2ONB4THW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDQvMDYvMjAyMSAyMToxOSwgUmljaCBHb3BzdGVpbiB3cm90ZToNCj4gSSd2ZSBzdWNjZXNz
ZnVsbHkgcmVwbGFjZWQgdGhlIG5vbi1pZGxlIEZQR0EgaW1hZ2Ugb24gbXkgVUhEIDQuMCBFMzEw
IA0KPiB1c2luZ8KgdWhkX2ltYWdlX2xvYWRlci4NCj4gDQo+IFdoYXQncyB0aGUgcHJvY2VzcyB0
byByZXBsYWNlIHRoZSBpZGxlIEZQR0EgaW1hZ2U/wqAgSSBkaWRuJ3Qgc2VlIGFueSANCj4gZG9j
dW1lbnRhdGlvbiBvbiB1c2luZ8KgdWhkX2ltYWdlX2xvYWRlciBmb3IgdGhhdC4NCj4gDQo+IEkg
c2F3IEZQR0EgaW1hZ2VzIGluIC91c2VyL3NoYXJlL3VoZC9pbWFnZXMgYW5kIC9saWIvZmlybXdh
cmUsIGJ1dCANCj4gd2Fzbid0IHN1cmUgaWYgSSBjb3VsZCBqdXN0IGNvcHkgb24gdG9wIG9mIHRo
b3NlPw0KDQpZZXMsIHlvdSBjYW4gY29weSBvbiB0b3Agb2YgdGhvc2UuIC9saWIvZmlybXdhcmUg
aXMgdGhlIG9uZSB0aGF0J2xsIGdldCANCmFwcGxpZWQsIHRoZSBuZXh0IHRpbWUgYW4gaWRsZSBp
bWFnZSBpcyBsb2FkZWQuDQoNCi0tTQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
