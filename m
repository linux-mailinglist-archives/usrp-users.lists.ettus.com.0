Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0657407325
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 23:58:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE2E4384763
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 17:58:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ay3jmo5r";
	dkim-atps=neutral
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A6DC138469D
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 17:57:52 -0400 (EDT)
Received: by mail-wr1-f44.google.com with SMTP id g16so4607144wrb.3
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 14:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=5E8gToAAizJLL6phBtbG0gXXTkrBpM+auzoO5e/sfV0=;
        b=Ay3jmo5rkQkJTxRAyNyKJ1F6IpTqvqQKkKqVw9AxPjOSHpfI3xTiUKcxVyvG2LSN1i
         6IqpYyMxmNs8OR4lLWuDAM5UfhRRCXlDyOefSCOFcqpL5AsVc4B63hbm6xgRU2tWo/tZ
         7MPQhoD0ABzRStt66rKKS5R2K9i+WGWbjmyB84cMYfAcUNICv80Zbl6Le1EkYi3q76+Y
         J8h5qsPRbXeSod+yWh/InZnR9orJ6y4Fl7Is9BrPm3lJmyxuWqAcacDp/4xA+tqmVLA7
         qp4/O3UavxQnVpOC8VJKKSz0CxgsTTBIpIYJU3a9AECZTxKACAS5PW+YT5DKQJt9hu4H
         7IFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=5E8gToAAizJLL6phBtbG0gXXTkrBpM+auzoO5e/sfV0=;
        b=ZiZ+brgboUnj+5CCeUq3ZicwJ871CSnw0BOEvv05lZ7N18OERsAftah14hWeV6q4GT
         RARtsg+ZSO7naLmedhj3hlU6nw0GR/S6+LIoB+nKWSWYIY8kPjtORdDWGJimZ5oFnDlT
         TogMlNU4uk/acLDeXqE2HqVbSGsc2O1AAUxBCbLqPxxEU6+Oim15D6wUf2tEclLBtocQ
         ypi9harsP+5cI7QUCBV/28pow1GKuoVaTHfcRWKlWGaDJJa77rBad3b6XDcVYm0gDPzV
         rmLxvURm2vqPDJFtZlbrD4B+FbxdJ5Vm++A4JYtng74wOGURx7O24RDLLM6D0oRpJm3u
         RH+A==
X-Gm-Message-State: AOAM530p3t2Rj0A035mIUhwaWpcCZHXiuVYxZJ3ThUJ4XljTD9qlj593
	rp4w7A0XQEnof0a9kaYxZSLTqzWIdnblKA==
X-Google-Smtp-Source: ABdhPJwomcLSPerNwA4uzjYa2alomODgjmsTaZ5BG+TSFt516t+euZO+qzl3ni6T3ZFaI77P9xR3uA==
X-Received: by 2002:adf:9f0d:: with SMTP id l13mr12244881wrf.328.1631311071159;
        Fri, 10 Sep 2021 14:57:51 -0700 (PDT)
Received: from ?IPv6:2a02:908:1c11:83a0:711b:5400:643c:491? ([2a02:908:1c11:83a0:711b:5400:643c:491])
        by smtp.gmail.com with ESMTPSA id h16sm5824437wre.52.2021.09.10.14.57.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 14:57:50 -0700 (PDT)
To: usrp-users@lists.ettus.com
From: msfu <msfu666@gmail.com>
Message-ID: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
Date: Sat, 11 Sep 2021 00:03:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: QIHP6FUJAAVC4L72Y52RF7KRKFPKYCRM
X-Message-ID-Hash: QIHP6FUJAAVC4L72Y52RF7KRKFPKYCRM
X-MailFrom: msfu666@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QIHP6FUJAAVC4L72Y52RF7KRKFPKYCRM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aGkgdGhlcmUsDQoNCg0KaSBhbSB0cnlpbmcgdG8gZ2V0IG15IEdQUyB0byB3b3JrLg0KDQpzZXR1
cCBpcyBhIGIyMTAsIGV4dGVybmFsIHBsbC1ncHNkbyBiZzd0YmwgY29ubmVjdGVkIHRvIGEgbm1l
YTAxODMNCmFudGXFhG5hIGFuZCBhIHZrLTE3MiBVU0ItR1BTLW1vdXNlLg0KDQppIGNhbiBnZXQg
ZGF0YSBmcm9tIHRoZSB1c2IgcmVjZWl2ZXIgYnV0IGluIGNncHMgdGhlcmUgaXMgbm8gUFBTIGFu
ZCBubw0KM0QgRml4Lg0KDQpOb3cgdGhlIHF1ZXN0aW9uOiBjYW4gaSBhY3RpdmF0ZSBteSB1c3Jw
IHRvIGNvbW11bmljYXRlIHdpdGggdGhlDQpleHRlcm5hbCBDbG9jaz8gZXZlcnl0aW1lIGltIGRv
aW5nIHVoZF91c3JwX3Byb2JlIHRoZXJlIGlzIGEgbG9jayBvbiB0aGUNCmdwcy4gd2hhdCBjYW4g
aSBkbz8NCg0KDQp0aGFua3MgaW4gYWR2YW5jZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
