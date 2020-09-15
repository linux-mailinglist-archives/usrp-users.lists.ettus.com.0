Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0115F26A650
	for <lists+usrp-users@lfdr.de>; Tue, 15 Sep 2020 15:31:50 +0200 (CEST)
Received: from [::1] (port=38452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIB3j-0006OV-I2; Tue, 15 Sep 2020 09:31:47 -0400
Received: from mail-ed1-f43.google.com ([209.85.208.43]:42377)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kIB3f-0006CA-LF
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 09:31:43 -0400
Received: by mail-ed1-f43.google.com with SMTP id j2so3015122eds.9
 for <usrp-users@lists.ettus.com>; Tue, 15 Sep 2020 06:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=A59XcxKIq9bMHPcyWOlBOQAbBlg84DbiKfuXoqGliiw=;
 b=hAyLmOnsh1UqBfC8o35zKPCH+zCV3oQmvaE0o783Vn2qDl2dV37Pn/vtlPKuAIyZC/
 ok+E0yy07YR8QL7A6nkOTW8O1DtgmLPQA+uH6RYc1Dtn/n3eB9Yz0ORWwY7PlHbcrA2U
 /D3PMnOf4u/Fdipx97W4NIZmIWAuGvQTgb/c+lRWkvca0Mpry+YNWr/gICPIKBV/S3o0
 090M6aLLiQNzhdMwLq08M0iFLpk1Q2jCRbmcBvCUFnhimZdBTwcLC79mlFnxcgBCSoRC
 xK/G3ocIzDkMU84Mrn5X+rxpfoJooeavr5WT/c1XMSeW9A+RxLWIUmDt96aa+uX87nzW
 Scjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A59XcxKIq9bMHPcyWOlBOQAbBlg84DbiKfuXoqGliiw=;
 b=RQ8NYNcw6f7MZjY8Nge8HJktXkkQcYGLOs2hkdd8SCMAlXuiJIjopvNop+nRs3nFGG
 LCEEnejuf+8qhVGQ/MrEZ5e158CZ8zh2JoRo2b2TKeIv7t14n8TaKqEpXxQNGZ+ak3SO
 fd7mHepDIyfW2tzc+9sTHpTHX0PFus5cxF0X8y/vUAjoo6dijb1Tp0DJpUEp8uWekJ7H
 Prw2hUyIt4nKczkD8hUNxhzjju+svYc6VZpe9QVRNif6exs3VT5SsLuCDXyn8tvtSPOW
 Urjc+QeAgm/CIwdBbM58obVyV7dYwcWfy2j3b2Bi4rJ6j83dxIrj0+oeFcPRhiXJiWVK
 3zBw==
X-Gm-Message-State: AOAM530H/ILFnRQpoHl5QlQdtw+2iKXISYVsziJOfQU7fiYb2A8FHL97
 sxFKl5UbLpyT85LxqRQAVzMsXAP+q6cjsnen
X-Google-Smtp-Source: ABdhPJxxFIcU4GaNuQvWGBnPzGdMpNFSfrP6c37L1BMCjH+X2NcnzwT+Xb9+zyY2o+PfBUjIiMFIUA==
X-Received: by 2002:aa7:d059:: with SMTP id n25mr22331476edo.270.1600176662445; 
 Tue, 15 Sep 2020 06:31:02 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id s30sm12275259edc.8.2020.09.15.06.31.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Sep 2020 06:31:01 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAE_Rk55qmomHA2Akf2M0506SLj=jUB61Q-cK8zBsMqYOAaBEOQ@mail.gmail.com>
Message-ID: <6a4f82e6-1e0a-227f-9137-87182aa67c47@ettus.com>
Date: Tue, 15 Sep 2020 15:31:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAE_Rk55qmomHA2Akf2M0506SLj=jUB61Q-cK8zBsMqYOAaBEOQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] crossbar architecture
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

T24gOS8xNC8yMCAxMjo1NiBQTSwgRGFuaWVsIE96ZXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4g
SGkgZXZlcm9uZcKgLAo+IEltIHdvcmtpbmfCoG9uIHVzcnAgeDMxMCAuCj4gSSBoYXZlwqB0cmll
ZMKgdG8gaWZpbmQgd2hhdCBpcyB0aGUgYXJjaGl0ZWN0dXJlIG9mIHRoZSBheGkgY3Jvc3NiYXIg
YW5kIGkKPiBkaWRudCBmb3VuZCBhbnkgdGhpbmcgaW4gdGhlIGF1dG8gZ2VuZXJhdGVkwqB2aXZh
ZG8gcHJvamVjdCAuCj4gSXMgaXTCoCBTaGFyZWQgV3JpdGUgYW5kIFJlYWQgQWRkcmVzcyBBcmJp
dHJhdGlvbj8KPiBheGlfY3Jvc3NiYXJfc2hhcmVkLnBuZwo+IE9yIGlzIGl0IGZ1bGx5IHBhcmFs
bGVsPwoKVGhlcmUncyBubyBzdWNoIHRoaW5nIGFzIHJlYWQvd3JpdGUgYWRkcmVzcyBhcmJpdHJh
dGlvbiwgc2luY2UgaXQncyBhCnBhY2tldC1pbiwgcGFja2V0LW91dCBjcm9zc2Jhci4gTW9yZSBs
aWtlIGEgbmV0d29yayBzd2l0Y2guIEl0J3MgZnVsbHkKcGFyYWxsZWw6IE1hc3RlciAwIGNhbiB3
cml0ZSB0byBTbGF2ZSAwIGF0IGZ1bGwgYmFuZHdpZHRoIHdoaWxlIE1hc3RlciAxCndyaXRlcyB0
byBTbGF2ZSAxIGF0IGZ1bGwgYmFuZHdpZHRoLiBBbHRob3VnaCBtYXN0ZXIvc2xhdmUgaXMgYWxz
byBhIGJpdApjb25mdXNpbmcgcG90ZW50aWFsbHk7IGxldCdzIHNheSBjbGllbnQgMSBjYW4gdHJh
bnNtaXQgdG8gY2xpZW50IDIgYXQKZnVsbCBiYW5kd2lkdGgsIGFuZCBjbGllbnQgMyBjYW4gdHJh
bnNtaXQgdG8gY2xpZW50IDQgYXQgZnVsbCBiYW5kd2lkdGgKdGhlIHNhbWUgdGltZS4KCi0tTQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
