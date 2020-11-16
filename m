Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA5D2B54E2
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 00:21:35 +0100 (CET)
Received: from [::1] (port=37752 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kenoP-0002JY-Ir; Mon, 16 Nov 2020 18:21:29 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:35420)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kenoL-000262-2O
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 18:21:25 -0500
Received: by mail-qk1-f173.google.com with SMTP id v143so18806504qkb.2
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 15:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=xE68vgLtquOdwIHI5HJ+ddmep7gyeC10obmNa0NyG5s=;
 b=bOgZzR9ee6vL/gw7VqA32/3xyJRzB1MihY61QxuA+9CkQW03KBAh+ifbJBN+z0CTV0
 44vDn+hMsHKCWXvqwdXvrlb17zkz4Tdgf26MKdGCmPH3QeP5FRBN+qw/jVtVDIQDGasm
 6aNULbefHcIKb8EtGnUwaDLrOHGi1bU+nLSd8G7zxl5Nygw5pXKxjo2pTC/u4UpYdGew
 1zASQI7jacRzwx1RyRTVAHdY0IizGXEWFV8tXLaLYoXBEQknoHiB1jMKpvMhnzKGGpSi
 rkt8BFC9cZir2RIoMOtErAMIX69Ids4imyZArZtj9WqWj5kHrSbATXiC8ZFf51Ximk5Q
 5ShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=xE68vgLtquOdwIHI5HJ+ddmep7gyeC10obmNa0NyG5s=;
 b=TP/HIOV75p9RKwvsZhhwHjc2PjnIKg2tiTSBdCBnSiDdmzmArXQn0cdaIHzztw12YX
 vZvNIu1A15QB/wGpJEzMZiaRu/tNGQNENXAymtJ4WdA2kWR1SBGbdtLDUp+mMxd4y2D6
 Pjn0DNchmKwbRlsZRwW03CupISlPDNxMHTNPxviW24f1/uK1HImh0KavPo1cF0Qcs6bs
 gWDjgRsczqb8+aiv3rXH1vPatATIilTsI0KIJPrnZJCFfuZqT8ay/Ca2cCs6q3nmJtMs
 +ELbThFyoDh5SJj7cdsfZNylETQysbuIL77//p25F1H0Wo8qcNiX6vmNURPBDTks8qFG
 caGg==
X-Gm-Message-State: AOAM530Us4JzjHtdk1vkHoajFBru7xEYU/3TkBCqhY9T8iaj3FrKCPxb
 zQsG9vjPEEftetjZWXb+FzM=
X-Google-Smtp-Source: ABdhPJzJ0w7+vkSqEsDIw+AIaf72e4Ou2epj724DiVOx8SghWwP5m1jZQXzJfsX1OqPXxRC+AiW+9g==
X-Received: by 2002:a37:70c4:: with SMTP id
 l187mr10270225qkc.264.1605568844467; 
 Mon, 16 Nov 2020 15:20:44 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id w192sm13273769qkb.17.2020.11.16.15.20.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Nov 2020 15:20:44 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 16 Nov 2020 18:20:42 -0500
Message-Id: <850F88F7-486D-4D42-9E66-E853B4ABE16E@gmail.com>
References: <CAPRRyxvjjBW1Z2htqVOO_OCLP2RXs=j6Q0B3y7L5YL0sLU4bCQ@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <Discuss-gnuradio@gnu.org>
In-Reply-To: <CAPRRyxvjjBW1Z2htqVOO_OCLP2RXs=j6Q0B3y7L5YL0sLU4bCQ@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] Direction finding based on USRP E310 board
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhlIHR3byBjaGFubmVscyBvbiBhbiBFMzEwIGFyZSBhbHJlYWR5IHRpbWUgc3luY2hyb25pemVk
IGFuZCBwaGFzZSBjb2hlcmVudC4gCgpZb3XigJlkIG9ubHkgaGF2ZSB0byBjYWxsaWJyYXRlIGFu
ZCByZW1vdmUgZXh0ZXJuYWwgcGhhc2UgZWZmZWN0cy4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+
IE9uIE5vdiAxNiwgMjAyMCwgYXQgNjoxNSBQTSwgSXZhbiBaYWhhcnRjaHVrIHZpYSBVU1JQLXVz
ZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4gSGVsbG8u
IEkgYW0gaW50ZXJlc3RlZCBpbiB0aGUgcG9zc2liaWxpdHkgb2YgaW1wbGVtZW50aW5nIGEgcHJv
dG90eXBlIGRpcmVjdGlvbiBmaW5kZXIgYmFzZWQgb24gdGhlIFVTUlAgRTMxMCBib2FyZC4gU2lu
Y2UgSSBoYXZlIGl0IGluIHN0b2NrLiBJbnRlcmVzdGVkIGluIGJhc2ljIHF1ZXN0aW9ucyBzdWNo
IGFzIGlzIGl0IHBvc3NpYmxlIHRvIHN5bmNocm9uaXplIHRoZSBwaGFzZSBvbiB0d28gY2hhbm5l
bHMgYW5kIGFyZSB0aGVyZSBhbnkgZXhhbXBsZXMgb2Ygc3VjaCBhdHRlbXB0cz8gUGVyaGFwcyBz
b21lb25lIGNhbiBnaXZlIHNvbWUgaW5zdHJ1Y3Rpb25zIG9uIHRoaXMgbWF0dGVyLCBzaW5jZSB0
aGlzIGlzIGFsbCBhdCB0aGUgbGV2ZWwgb2YgYW4gaWRlYS4gUFMgT3RoZXIgVVNSUHMgSSBoYXZl
IG5vIHdheSB0byB1c2UgYXQgdGhlIG1vbWVudC4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
