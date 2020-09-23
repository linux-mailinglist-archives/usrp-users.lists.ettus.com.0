Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2892A275323
	for <lists+usrp-users@lfdr.de>; Wed, 23 Sep 2020 10:21:44 +0200 (CEST)
Received: from [::1] (port=35606 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kL01z-0005Nr-Jb; Wed, 23 Sep 2020 04:21:39 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:32981)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kL01v-0005KA-Js
 for usrp-users@lists.ettus.com; Wed, 23 Sep 2020 04:21:35 -0400
Received: by mail-ed1-f41.google.com with SMTP id g4so18970588edk.0
 for <usrp-users@lists.ettus.com>; Wed, 23 Sep 2020 01:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/2ZZ4jqIZbVzmkwND4GFh4pWh/0JPvnAS+u4OqjsYlA=;
 b=0s8h3scbDJU9TcxXDTzjNGLpZscnFK/SSID2Zpd2iY8PD5ySigl506eN+kduR7aPhz
 iYO4ydLhx+7FwDAgQPuDAsbtFqaYeQJl5+5GH4dulYPnizEaI171qpaRQcOY2E/IZ3Ls
 1z9pJByTnjeAJX6NHvc84WYQo+8pLdPntecXDGJ96EFZWnCF1OqDec5cJyb31VIfJN7y
 89N/0zJ2WDcJ9J+OSA1Ro3thi4M3mvol6AmmLeHDcHXTTcmqw7LCOEBRpwATRchTlHhF
 olHO/S5vF4DvTeAnXgWStfPToiXh3znsIO8PFm/XvFbaazcXJcPdhWyvrz+zBrSThyig
 xXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/2ZZ4jqIZbVzmkwND4GFh4pWh/0JPvnAS+u4OqjsYlA=;
 b=iSl4pof1CKxJKq05//1Ud1jCSYEaXbefwQOWk/Gx8YE3vubhSfh+EymbG9RtXk6XjI
 ipcDUnAFhg5at8iud1u5Qhchp2K3wzg9VBI9yqIwJpKHhSqQXdeIp1C3cyO0r6nFfmYe
 Ht6t5/EVdfF3KnkTR8Sd0vEE/FWeK1ZsDVQUl1F0qnJBn0Kur+5dE/jWz6mD3Nc4RhEy
 jr/8uzC9FBsQ4vhmo5rGJ9cJyvDy2Cl6kcj5OTsd60YO4CeQExdIFwsS72NhuuMIvUGg
 rvbjFAU/ywSTHpk/v6eYhI55pwQ1hTN5Pizb40CRq2FAyuWCfPU4+xb9FSuzRMx7l2QN
 F/Vg==
X-Gm-Message-State: AOAM531DXP3kF5GNG3Iwvx6gbsgVptloI0Xgr0Rit728MjyXXTBRxhNe
 WD974oxbyEYnL+X1QE7dfyAXswZ4VMs+RSuz
X-Google-Smtp-Source: ABdhPJyYRaUN/wfJCWRI06m7hZk44ewBUy5s5I1UxUWTTkHz6sb1bAcaSGBsV+xUwUcAVid0ecmNXw==
X-Received: by 2002:aa7:c3c8:: with SMTP id l8mr8690953edr.368.1600849254098; 
 Wed, 23 Sep 2020 01:20:54 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id jr9sm13528012ejb.87.2020.09.23.01.20.53
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Sep 2020 01:20:53 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAKwrT9RfsWhU+70sBsC-dFCAxnB7FT=yNX885z4j3UbhRoHMSA@mail.gmail.com>
Message-ID: <1e2c2623-d3e7-dbc8-7d1b-89c7c3af7ecb@ettus.com>
Date: Wed, 23 Sep 2020 10:20:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwrT9RfsWhU+70sBsC-dFCAxnB7FT=yNX885z4j3UbhRoHMSA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] RFNoC output format and channel output queries
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

T24gOS8yMi8yMCA4OjAwIEFNLCBKYXlhbnQgQ2hoaWxsYXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6
Cj4gSGkgZXZlcnlvbmUsCj4gSeKAmW0gZGV2ZWxvcGluZyBhIFJGTm9DIGJsb2NrIHRvIHBlcmZv
cm0gY29ycmVsYXRpb24gb3BlcmF0aW9uIHdoaWNoCj4gb3V0cHV0cyBhIHZhbHVlIGJldHdlZW4g
MCBhbmQgMTAwNy4gSeKAmW0gbm90IGFibGUgdG8gZmlndXJlIG91dCBob3cgdG8KPiBnZXQgaW50
ZWdlciBvdXRwdXQgZnJvbSB0aGUgYmxvY2sgYXQgR05VUmFkaW8gc2lkZS4gSeKAmXZlIHRyaWVk
IGRlZmluaW5nCj4gdGhlIG91dHB1dCBhcyDigJxzYzE24oCdIGluIHRoZSBibG9jayBkZWZpbml0
aW9uIGFuZCBjYXJyaWVkIG91dCBzb21lIGJpdAo+IG1hbmlwdWxhdGlvbnMgYnV0IGhhdmUgb25s
eSBhY2hpZXZlZCBwYXJ0aWFsIHN1Y2Nlc3MuCgpZb3UgY2FuIGFsc28gdXNlICdzMTYnLCB3aGlj
aCBpcyBhIDE2LWJpdCBzaWduZWQgaW50ZWdlci4gTWFrZSBzdXJlIHRoYXQKR05VIFJhZGlvIGFs
c28gdW5kZXJzdGFuZHMgdGhpcywgYW5kIGlzIHVzaW5nIGludGVnZXJzIChhbmQgbm90IGZsb2F0
cykuCgo+IE15IG90aGVyIHF1ZXN0aW9uIGlzIHJlZ2FyZGluZyB0aW1lb3V0IGVycm9yLiBJIGJl
bGlldmUgdGhpcyBpcyBtb3JlIG9mCj4gYSB3YXJuaW5nIHRoYW4gYW4gZXJyb3IsIGlmIEnigJlt
IHJpZ2h0IGNhbiB3ZSBzdXBwcmVzcyB0aGlzIHdhcm5pbmcuCj4gQWxzbywgY2FuIHRoaXMgd2Fy
bmluZy9lcnJvciBjYXVzZSB0aGUgY2hhbm5lbCB0byBmcmVlemUgb3IgbG9jaz/CoAoKWW91IHNo
b3VsZCBuZXZlciBpZ25vcmUgdGltZW91dHMuIEl0IGRvZXNuJ3QgaGF2ZSB0byBsb2NrIHVwIHlv
dXIgYmxvY2sKKGRlcGVuZHMgb24geW91ciBibG9jayksIGJ1dCBpdCBjb3VsZCwgYW5kIGl0IHNo
b3VsZG4ndCByZWFsbHkgaGFwcGVuLgoKPiBGaW5hbGx5IGlzIHRoZXJlIGFueSBkb2N1bWVudGF0
aW9uIG9uIGhvdyB0byByZWFkIHRoZSDigJxyZWFkYmFja+KAnQo+IHJlZ2lzdGVycyBvbiB0aGUg
aG9zdCBzaWRlIChHTlVSYWRpbykgPwoKV2UgaGF2ZW4ndCBhY3R1YWxseSBleHBvc2VkIHRoYXQg
aW50byBHTlUgUmFkaW8gKGFsdGhvdWdoIHdlIGNvdWxkLi4uIHdlCnNob3VsZCBwdXQgdGhhdCBv
bnRvIHRoZSBiYWNrbG9nKS4gWW91IGNhbiBtYXAgeW91ciByZWdpc3RlciBpbnRvIGEKcHJvcGVy
dHkgKHNlZSBvdXIgYmxvY2tzIGFzIGV4YW1wbGVzKSwgYW5kIHRoZW4gdXNlIGdldF9wcm9wZXJ0
eSgpIG9uCnRoZSBHTlUgUmFkaW8gYmxvY2suCgotLU0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
