Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 332E7289EA2
	for <lists+usrp-users@lfdr.de>; Sat, 10 Oct 2020 07:49:11 +0200 (CEST)
Received: from [::1] (port=39482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kR7kh-0004De-1d; Sat, 10 Oct 2020 01:49:07 -0400
Received: from mail-pf1-f175.google.com ([209.85.210.175]:41508)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <austinadam42@gmail.com>)
 id 1kR7kc-0004A8-UO
 for usrp-users@lists.ettus.com; Sat, 10 Oct 2020 01:49:03 -0400
Received: by mail-pf1-f175.google.com with SMTP id g10so8663828pfc.8
 for <usrp-users@lists.ettus.com>; Fri, 09 Oct 2020 22:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:date:subject:message-id
 :to; bh=cyoKhCVTz8h4UKAxnBOdy8/WKNoi8NC11AZc1e9fmmU=;
 b=rt1GBxX58WnqGVLsmqwrkHkE8FIT+BIYISMsS1AzIEmZIUpxCirZVXqQ+DTByrALR3
 xadOiKC9YsavtCNO2gOzOVmxzdyd1oxQ81klMOGe4oX+qFeMEa3oEHm1UUPB5zil4+82
 52kJg4/GSv8+OKtmKfAWy6DvwWlPqq3M6+m957uttLx/cfj+hO1/epaEjbAjP4MZkrDD
 Fy2AU8T47s7iJ65hI5J3fWAoBchbpc9miGn9pZyQqrjehNNAuQJagT2ye7VDC7kQFzMl
 VLl3v2Lobdp48r7nPjfHDCf/+KDh0xUFvUw18SHXhr2tnQKTpZmpftYsWDA+37Y72zBV
 zuHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
 :subject:message-id:to;
 bh=cyoKhCVTz8h4UKAxnBOdy8/WKNoi8NC11AZc1e9fmmU=;
 b=RIRsj5CSW4myzsT9PrJajA8Y3Gk4ihjKDYn2dHGdKUkETXGXCTC2ZfAesaeM7T8KAN
 X10NpxP6/t0gPWmRfHNmoS+Yh5vloNtSp1Svcw+/UKONOuHpfj+nHRZWpdgrao47hD5h
 hrHDdIwU5mY2DuVb9ierl2JhhW7AFlEOh1Ju3xlK+/yaxe0XRdPIG54tadwYSa5hNgmC
 GO3KwA8AE3wUxqiXN8/zbb9RI+T/kd2WZ7uWh6QxHbksAhIYeadlnY6veTv6M0qBpgWR
 2xLHacgGK5zhA5MyXePqvM4IePvCB5YA8MC/6x6B9OX0wPtfEV+ZCneO76dHLN5Ti0BZ
 GRTw==
X-Gm-Message-State: AOAM5319O2fYY7ONwm9S6sMf5iY+IkVvBMuBxdExMy/Ap03c0+vm4C1F
 O4hnTaKIZOoRZbyj377iVdHq/Vwy/6W+kw==
X-Google-Smtp-Source: ABdhPJz5fY8vo4PH6B1/Loo23mnpPdLAj/75vOHb5U16khZKLz3xUSfgSzKr9CzMOwbHxm7aEcVeZg==
X-Received: by 2002:a63:e47:: with SMTP id 7mr5998916pgo.13.1602308901409;
 Fri, 09 Oct 2020 22:48:21 -0700 (PDT)
Received: from [10.0.0.37] (cpe-104-35-134-27.socal.res.rr.com.
 [104.35.134.27])
 by smtp.gmail.com with ESMTPSA id j4sm13108494pfd.101.2020.10.09.22.48.20
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Oct 2020 22:48:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 9 Oct 2020 22:48:19 -0700
Message-Id: <2EDBD4B9-065E-4F8C-B041-D8A7EDFEE838@gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailer: iPhone Mail (17F80)
Subject: [USRP-users] UHD on Ubuntu 20.04 and USRP N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SGkgZXZlcnlvbmUsCkl0IGhhcyBiZWVuIGEgZmV3IG1vbnRocyBzaW5jZSBJIHVzZWQgbXkgVVNS
UCBOMzEwIGFuZCBub3cgdGhhdCBJIGFtIGdvaW5nIGJhY2sgdG8gc2V0IGV2ZXJ5dGhpbmcgYmFj
ayB1cCwgaXQgc2VlbXMgdGhhdCBJIGhhdmUgc29tZSB2ZXJzaW9uIGlzc3Vlcy4gQmFzaWNhbGx5
LCBteSBzZXR1cCB3YXMgVWJ1bnR1IDE5LjA0IGFuZCB0aGUgVVNSUCBoYWQgVUhEIHYzLjE0LjAs
IGJ1dCBub3cgaXQgc2VlbXMgdGhhdCB0aG9zZSB2ZXJzaW9ucyBhcmUgdW5zdXBwb3J0ZWQgYmVj
YXVzZSBJIHdhcyBnZXR0aW5nIGEgZmV3IGVycm9ycyB0aGF0IEkgaGF2ZSBub3Qgc2VlbiBiZWZv
cmUgd2l0aCBteSBleGFjdCBzYW1lIHNldHVwLiAKCkkgZmlndXJlZCBJIGp1c3QgbmVlZGVkIHRv
IHVwZGF0ZSBldmVyeXRoaW5nIHNvIEkgYmFzaWNhbGx5IHVwZGF0ZWQgbXkgVWJ1bnR1IHRvIHZl
cnNpb24gMjAuMDQgYW5kIHdhcyBzdGlsbCB1bmFibGUgdG8gZ2V0IGV2ZXJ5dGhpbmcgd29ya2lu
Zy4gCgpNeSBxdWVzdGlvbiBpcywgaXMgdGhlcmUgYSBzdXBwb3J0ZWQgVUhEIHJlbGVhc2UgZm9y
IFVidW50dSAyMC4wNCB0aGF0IHdvdWxkIHdvcmsgd2l0aCBteSBVU1JQIE4zMTA/IFdvdWxkIEkg
aGF2ZSB0byB1cGRhdGUgdGhlIHZlcnNpb24gb2YgVUhEIG9uIFVidW50dSBhbmQgdGhlIFVTUlAg
dG8gdjMuMTUuMD8gT3Igd291bGQgSSBiZSBiZXR0ZXIgb2ZmIHJlaW5zdGFsbGluZyBVYnVudHUg
b24gYSBwcmV2aW91c2x5IHN1cHBvcnRlZCB2ZXJzaW9uIGxpa2UgMTguMTA/IEnigJltIGp1c3Qg
bm90IHJlYWxseSBzdXJlIHdoYXQgY291cnNlIG9mIGFjdGlvbiB0byB0YWtlIGFzIEkgZG8gbm90
IHdhbnQgdG8gaGF2ZSBhbnkgaXNzdWVzIGdvaW5nIGJhY2t3YXJkcyBpZiBJIG5lZWQgdG8uIAoK
T3BlbiB0byBhbnkgc3VnZ2VzdGlvbnMhCgpUaGFuayB5b3UsCkF1c3RpbiBBZGFtCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
