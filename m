Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 067BD20F2D3
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2020 12:39:41 +0200 (CEST)
Received: from [::1] (port=48082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqDfs-0000kf-PY; Tue, 30 Jun 2020 06:39:36 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:36971)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <i1ndp.nando@gmail.com>)
 id 1jqDfp-0000PS-9c
 for USRP-users@lists.ettus.com; Tue, 30 Jun 2020 06:39:33 -0400
Received: by mail-ed1-f67.google.com with SMTP id g20so15474309edm.4
 for <USRP-users@lists.ettus.com>; Tue, 30 Jun 2020 03:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=hEP3/3U4Y1FKnM6Yr3SGmL3UGh+QoUlh75UYODJYIMA=;
 b=bPg/w9bzqCEQUGNNKUPgPIg9ThzmZtdAcYdktEcNmzcxDatjOoIbZb6s1VYOoTut5a
 FwNL6QWw93/51F1ZjSUoJjKvuztKVXcIp/ByDHFINQjmJG2if3oo3lNSo4gGEk4RFwg2
 ZrassuNQ9LnyMbNRES3XNeQU8IXgvcU49293JBGd+BxwYboHVIfc9XYOeN2saP+t5rK8
 TZlg60+OjQRnRnkPbbxbqvU3KH3SeWS/Vz5I2i/yZRXn6OaRjQqfaH0oJQ9zYKy3IbLH
 4sqXU5b4tihqy4dPFly8O8ixPcVpigL1z83mQsI/RTPzOC2vzPMPB+6oZYo18XSOBdpB
 fxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=hEP3/3U4Y1FKnM6Yr3SGmL3UGh+QoUlh75UYODJYIMA=;
 b=nKJWwwoFZyysQ5Y6k1/cwiBD7mRJA3f2551a3dL+0WeLbLJBWyd1ASjOdUcqxZQYrD
 LRR99miRfr9MCTNoDZ/BMsJhcNRsSH11HoaR5vsJh75wiPF75FC75ywf5EwjcCadGmqI
 kGBQJT5AkMWght/NXtW9RdOOGFksrB+qkcxIX84fvv3rTJ8CpyqD04PygGLOZQQeZT8E
 V9olS3hv8vKjYpXbntYZUBMyj1Jeis3g3pRDj5gU0MYhYnhYrGc5WP9WlD2JAeSdaac9
 UtGDOG3pXlGVX58PtfpQzB9luWeDba61dmUEXpsAD/zDk5+FGCNA7MysCHsXnHBzB0cc
 HE6A==
X-Gm-Message-State: AOAM533Yx9fK3fJbrExcw4+4oupaNN43TFnu47yI3ORxME2ckPGk40jN
 zQn3zQvulHe8GhPbWpXe1Gsu+Xvy
X-Google-Smtp-Source: ABdhPJxcSQI0VKfOmNIBtiB5Ewk7Vn4aIi+PliYn/Y95mVnNGO/iRm3Gq571DwFMi5nsUD4NUCErtw==
X-Received: by 2002:aa7:ce84:: with SMTP id y4mr20962327edv.113.1593513532269; 
 Tue, 30 Jun 2020 03:38:52 -0700 (PDT)
Received: from [10.0.0.4] ([176.65.80.99])
 by smtp.gmail.com with ESMTPSA id n2sm2379255edq.73.2020.06.30.03.38.51
 for <USRP-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Jun 2020 03:38:51 -0700 (PDT)
To: USRP-users@lists.ettus.com
Message-ID: <dd50baf6-aabd-1ce3-1014-f8ae91e4c969@gmail.com>
Date: Tue, 30 Jun 2020 12:38:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Problems with "uhd::set_thread_priority_safe"
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
From: Nando Pellegrini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nando Pellegrini <i1ndp.nando@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SSBhbSBhIEIyMDBtaW5pIHVzZXIgc2luY2UgZmV3IHllYXJzIHVzZWQgZm9yIHJhZGlvIGFzdHJv
bm9teSAKb2JzZXJ2YXRpb25zIHdpdGggaG9tZSBtYWRlIHNvZnR3YXJlLiBObyB0cm91YmxlIHNv
IGZhci4KSSBkZWNpZGVkIG5vdyB0byBtb3ZlIHRvIGEgbmV3IGxhcHRvcCBQQyBydW5uaW5nIFVi
dW50dSAxOC40IHdpdGggbGF0ZXN0IAp1cGRhdGUgKGtlcm5lbCA1LjMuMC02MSkgLCBhZnRlciBw
b3J0aW5nIG15IHNvZnR3YXJlIGkgYW0gbm90IGFibGUgdG8gCnJlY2VpdmUgYW55dGhpbmcgYWJv
dmUgNDBNIHNhbXBsZXMgL3NlYyB3aXRob3V0IGRyb3BwaW5nIGluIG92ZXJmbG93IGVycm9yLgpJ
IHN1c3BlY3RlZCB0aGF0IHRoZSBzZXR0aW5nIG9mIGhpZ2ggcHJpb3JpdHkgd2FzIG5vdCBydW5u
aW5nIGFueW1vcmUuCkkgdHJpZWQgYSBzaG9ydCBjb2RlwqAgbG9vcCBvZiByZWNlaXZpbmcgc3Ry
ZWFtZWQgYmxvY2tzIGZyb20gQjIwMCAoYSAKc2luZ2xlIHRocmVhZCBjb2RpbmcpIGFuZCB3aXRo
IG9yIHdpdGhvdXQgaXNzdWluZyAKInVoZDo6c2V0X3RocmVhZF9wcmlvcml0eV9zYWZlIiB0aGUg
cmVzdWx0IHdhcyB0aGUgc2FtZSAob3ZlcmZsb3cgYWZ0ZXIgCmEgbnVtYmVyIG9mIGJsb2NrcyBy
ZWNlaXZlZCB2ZXJ5IHZhcmlhYmxlKSBtdWNoIGRpZmZlcmVudCB0aGF0IHByZXZpb3VzIAppbnN0
YWxsYXRpb24gYmVpbmcgYWJsZSB0byByZWNlaXZlIGFuZCBoYW5kbGUgNTYgc2FtcGxlcy9zZWMu
CkkgY291bGQgbm90IGZpbmQgYW55IHdheSB0byBjaGVjayB0aGUgcmVhbCBwcmlvcml0eSB2aWEg
YysrIG9yIGF2YWlsYWJsZSAKdG9vbHMuCkFueSBoZWxwL3N1Z2dlc3Rpb25zIHZlcnkgYXBwcmVj
aWF0ZWQuCk5hbmRvIFBlbGxlZ3JpbmkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo=
