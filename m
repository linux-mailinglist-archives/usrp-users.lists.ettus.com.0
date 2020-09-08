Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1EC26136B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 17:21:15 +0200 (CEST)
Received: from [::1] (port=50620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFfQo-0006Ev-Qu; Tue, 08 Sep 2020 11:21:14 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:36617)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kFfQj-00067G-Ts
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 11:21:10 -0400
Received: by mail-ed1-f41.google.com with SMTP id w1so16425816edr.3
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 08:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RYmSO3MCAIoeEQCjQsas4RbwHxdYyi7xR1piV2TCcXI=;
 b=rvuPxEqs/9TTRgYrRfp9r2UzsNnZ3ReMdzdixZucYvPzHvRtpm5khqR7vUhAxJycrw
 rvqpyWaCfSRVKih/2qsIX4qJNV9mzYKYAMUj+gnJsufbmJ1T/pX73ZdjSWpGkfytuaYi
 X46+mA39bfVFVTy66l+bioNe5eHUtiPGoQCCiKWGYEn1Cfh0Vtm5RGXjlyGICeaslDoL
 5wX6fhtHmlps8R46W1r+3r1hUa4jlLmtmhIKBIGFTaeHu+l2bxzupYH2B6Z7U4SzCPeW
 cG221REJQd9wIufdxzx31e3ml7VcxdnX2v6ttiZr1IwDY/XY9lrLFVId2Zpne2gcXbvn
 WXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RYmSO3MCAIoeEQCjQsas4RbwHxdYyi7xR1piV2TCcXI=;
 b=XiU/9fUB0FaKE1yfHSOZ6ubNvpq8lvC/2LVgBINjOMv0lE/XW9UrXLomVZRB49TrHq
 mtV8YyhRGsJc9qbDP/Z+z2LmyxlRdDmsvBZgWkqYB9Cz0kYkCpnQ0XJIePpZZSI1wZMj
 Yjrwnyz10pk5824PdDD+VT2PjI8qQn4C6HvOjFn9HMbZ41rU2CT7aU4RK5W7dhqB10xw
 F7B/z3LuNg1n2lO0AMvByp8zsq9o2sNfGC/5LPxUsfFTo4CfOZotJXD0uuHG0uctl9NT
 mzMXhFFMqS057DNV8sg6SKFEiYUVhq3vMQTM8EMPY9naOmgDv9xtfHQ/rqBK/H39RRjl
 hYyA==
X-Gm-Message-State: AOAM531OgMp0IEVe+b53DgwemTG6uy+EgkoA5SUukKMJtV1gSynYKfbB
 F5sTL2CQGNwfZ770NYwC/vNaX/qZH9QMDYdmdmM=
X-Google-Smtp-Source: ABdhPJx5ubVOiZtgrh1QIGiLQ7FLzJFvggxG8GtVUkL2DdaC4p0lDxt3ScehjHRzexwE6JxH05OHiA==
X-Received: by 2002:aa7:cb8f:: with SMTP id r15mr28383728edt.356.1599578428646; 
 Tue, 08 Sep 2020 08:20:28 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id dm22sm18200960edb.49.2020.09.08.08.20.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 08:20:27 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAB__hTTxYJoOW1Sk64CGui+1iH7P+i_frNjrF8RbyO4TunUeOA@mail.gmail.com>
 <CAFche=jzoK9A_d9GH8-n-0V9B4T553LU9V0scO_oH_29BcYc4g@mail.gmail.com>
 <CAB__hTQMTJSxHusMh5Ck_yKQQ70OseUE=bGND6cCrQpVxdyEDg@mail.gmail.com>
 <CAFche=g5FvqUAy+b4H2i950hJ3r2pqJ0TW+0DMx9t=XS+P0cUg@mail.gmail.com>
 <CAB__hTSympre24Kx=j4gxXvW0BbmvA8x=jjUUwHx1e-P0WveBg@mail.gmail.com>
Message-ID: <33a527f9-552e-3c37-c659-02995d484a8e@ettus.com>
Date: Tue, 8 Sep 2020 17:20:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTSympre24Kx=j4gxXvW0BbmvA8x=jjUUwHx1e-P0WveBg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Using Replay block in UHD-4.0
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

T24gOS84LzIwIDM6NTEgUE0sIFJvYiBLb3NzbGVyIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IE9u
ZSBtb3JlIHF1ZXN0aW9uLsKgIEkganVzdCBsb29rZWQgYXQgdGhlIGxhdGVzdCBjb21taXRzIHdo
aWNoIGluY2x1ZGUKPiB0aGUgUmVwbGF5IGJsb2NrIGluIHRoZSBkZWZhdWx0IGltYWdlcy7CoCBJ
IG5vdGljZSB0aGF0IGZvciBlYWNoIGRldmljZQo+IG9ubHkgb25lIG11bHRpLXBvcnQgUmVwbGF5
IGJsb2NrIGlzIGFkZGVkIHJhdGhlciB0aGFuIG11bHRpcGxlIG9uZS1wb3J0Cj4gUmVwbGF5IGJs
b2NrcyAoZS5nLiwgZm9yIE4zMTAsIG9uZSA0LXBvcnQgUmVwbGF5IGlzIGFkZGVkIHJhdGhlciB0
aGFuCj4gZm91ciAxLXBvcnQgb3IgdHdvIDItcG9ydCBSZXBsYXkgYmxvY2tzKS7CoCBJcyB0aGVy
ZSBzdGlsbCBhIHBlcmZvcm1hbmNlCj4gaXNzdWUgcmVsYXRlZCB0byB0aGlzIGNob2ljZT8gSW4g
dGhlIHBhc3QgKFVIRCAzLngpLCB0aGUgbWF4IHN0cmVhbWluZwo+IHRvL2Zyb20gYSBibG9jayB3
YXMgbGltaXRlZCBzdWNoIHRoYXQgaXQgbWF0dGVyZWQgaG93IHlvdSBhbGxvY2F0ZWQKPiB0aGVz
ZSBwb3J0cy7CoCBJIHRoaW5rIHRoYXQgaXMgd2h5IHRoZSBEVUMgYW5kIEREQyBhcmUgcG9wdWxh
dGVkIGFzIHR3bwo+IDItcG9ydCBibG9ja3Mgc28gdGhhdCB0aGV5IGNhbiBoYW5kbGUgdGhlIHN0
cmVhbWluZyByYXRlcyAod2hpY2ggdGhleQo+IGNvdWxkbid0IGhhbmRsZSBpZiB0aGV5IHdlcmUg
c2luZ2xlIDQtcG9ydCBibG9ja3MpLgoKV2l0aCBVSEQgNC4wLCBhIHNpbmdsZSBmb3VyLXBvcnQg
RFVDL0REQyBtaWdodCBldmVuIHdvcmssIGJ1dCB3ZSBwcmVmZXIKdG8gbWF0Y2ggdGhlIEREQy9E
VUMgYmxvY2tzIHRvIHRoZSByYWRpb3MuIFRoZSBibG9jayBjb250cm9sbGVycyBhbHNvCmhhdmUg
YSBzaGFyZWQgc3RhdGUsIHdoaWNoIHdvdWxkIGJlIGEgYml0IG9kZCBpZiB0aGUgY2hhbm5lbHMg
YXJlbid0CnJlbGF0ZWQuCgpTbyB0aGUgc2hvcnQgYW5zd2VyIGlzLCB0aGVyZSdzIG5vIHBlcmZv
cm1hbmNlIG9udXMgZm9yIGhhdmluZyBhIHNpbmdsZQpyZXBsYXkgYmxvY2suIEl0J3MgbW9yZSBh
IG1hdHRlciBvZiBob3cgYXJlIHRoZSBGUEdBIHJlc291cmNlcyBhbGxvY2F0ZWQKYW5kIGxvY2F0
ZWQuCgotLU0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
