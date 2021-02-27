Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE04326ECF
	for <lists+usrp-users@lfdr.de>; Sat, 27 Feb 2021 20:50:25 +0100 (CET)
Received: from [::1] (port=57070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lG5ba-0004K7-C5; Sat, 27 Feb 2021 14:50:22 -0500
Received: from mail-wm1-f50.google.com ([209.85.128.50]:33556)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lG5bW-0004Fg-1L
 for usrp-users@lists.ettus.com; Sat, 27 Feb 2021 14:50:18 -0500
Received: by mail-wm1-f50.google.com with SMTP id
 y22-20020a1c4b160000b029010b2094f5deso1171964wma.0
 for <usrp-users@lists.ettus.com>; Sat, 27 Feb 2021 11:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=XhGVUgemd3IUoSQDyMijAtgk/nZWimatQM2+q+nwkTs=;
 b=xTw4Uh9fA1A/oGchRgadlQtAJwpLJnf2yRmU1u5rHjruW7kVplW+LMWABQHw4boM+V
 pVWZ40tQgVl5/1nXlUYYn6G/tNQ3tqziLQ0UXvYqccyW5AejdXdFoL0SX+jk8SAU6W88
 pKnpQuxctrPCjfDaQrDEdVAsTN4HuSB+SmR01JMfDuAO1eoA4kshGDL+gY5R6TeC0CzO
 gR+77NIm1B+IzBRo9o4kC7RIA3cUOZdEoKAOIrr+m13xamOg4r8W3L8qgxnNpk1gJwbo
 DjGCt5/5Y6VTWlz7e2cN4cuBJzwVma8gSHS1l2cunWGEb/9tn9yf5iBQ5ea6FXyq2i15
 eHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XhGVUgemd3IUoSQDyMijAtgk/nZWimatQM2+q+nwkTs=;
 b=sC/ffODHKfg+W2hLAr79MA6VuB6KvoQcEVtMtJGyy48N7tBppOCtvsFf8w+QcSc5bo
 9MqpRtZFZNA6ytTlC80ohdL/ndhrxKa2SSFWW5aqvVMBiWM9YuN+31CVL4Ac/0bOe2Ok
 YRVi51EaKjsUgzGXO4JqcD8RQkApe2AIJTYWIVfVVxOk3MEuJ9AyAqjHcux6nZorXgdg
 fBgFXKdozUZp2yEzq5nyAm0U5q8l0t5/eTFGGoeT4Vt42SYkbw0M+051rp+ubksb2Q9u
 eqdYyHIhLghonmEeoF0bxi0kLAouSZNj19S14Dj3bBnl+sgz+uCo71gWMfENzoZXfsWf
 pbrA==
X-Gm-Message-State: AOAM531w5L76uMyZPpJpcnEaK2jG3l1NNA65EINe9kPtYG9JOAIMj0FX
 PX5Y0QRG3mZ3mUnuCYjOTynPyrTp2zB7O7kZKP4=
X-Google-Smtp-Source: ABdhPJzFKVOphBLNQI506uSQSQ6BkGdi+4Xm8s/51pLIia42iffr/Llz8r6KYwN9FzkE7Ub2rzSUVw==
X-Received: by 2002:a1c:4c0c:: with SMTP id z12mr8366342wmf.60.1614455376741; 
 Sat, 27 Feb 2021 11:49:36 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id i8sm8286664wrx.43.2021.02.27.11.49.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Feb 2021 11:49:36 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <CADDf8db1N1jjxtgfQWbtXdxcgbD1XaQ8T5HMB8JDo1=oxtf23A@mail.gmail.com>
Message-ID: <b38c389e-72ec-b685-51f6-af12b76b9283@ettus.com>
Date: Sat, 27 Feb 2021 20:49:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CADDf8db1N1jjxtgfQWbtXdxcgbD1XaQ8T5HMB8JDo1=oxtf23A@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] MIMO for X3x0 (AN-881 Table 4 may need some edit)
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

WW91J3JlIHJpZ2h0LiBUaGUgd2hvbGUgcG9pbnQgb2YgdGhlIFR3aW5SWCBib2FyZHMgaXMgdG8g
Z2l2ZSB5b3UgY29oZXJlbnQgY2hhbm5lbHMsIGFuZAp5b3UgY2FuIGJ1aWxkIGEgY29oZXJlbnQg
NC1jaGFubmVsICpyZWNlaXZlciouCgpIb3dldmVyLCBUd2luUlggY2FuJ3QgdHJhbnNtaXQsIHNv
IGZvciA0w5c0IE1JTU8sIHlvdSdsbCBuZWVkIHNvbWV0aGluZyBlbHNlLiBTaW5jZSB0aGVyZSdz
Cm5vIGR1YWwtdHJhbnNtaXQtY2hhbm5lbCBkYXVnaHRlcmJvYXJkcywgeW91J2xsIG5lZWQgdG8g
Y29vcmRpbmF0ZSB0aGUgcGhhc2VzIG9mIGZvdXIKZGlmZmVyZW50IFRYLWNhcGFibGUgZGF1Z2h0
ZXJib2FyZHMuIFRoZXJlZm9yZSwgeW91J2xsIG5lZWQgYSBjbG9jayBkaXN0cmlidXRvciBsaWtl
IHRoZQpvY3RvY2xvY2suCgpIYXZlbid0IHRyaWVkIGl0IGluIGEgd2hpbGUsIGJ1dCB0aGUgY2xr
IGFuZCBwcHMgb3V0IG9mIHRoZSBYM3gwIHNlcmllcyBzaG91bGQgc29sdmUgdGhhdAppc3N1ZSwg
aG93ZXZlcjogeW91IGNvdWxkIGxpbmsgdHdvIFVTUlAgWDN4MCB0aGF0IGFyZSBlcXVpcHBlZCB3
aXRoIGUuZy4gdHdvIFVCWC0xNjAgZWFjaAp0aHJvdWdoIHRoYXQgdG8gZ2V0IDQgY29oZXJlbnQg
VFggY2hhbm5lbHMsIGFuZCB1c2UgYSBzaW5nbGUgVVNSUCBYM3gwIHdpdGggdHdvIFR3aW5SWCBh
cwpyZWNlaXZlciB3aXRoIDQgY29oZXJlbnQgUlggY2hhbm5lbHMuCgpCZXN0IHJlZ2FyZHMsCk1h
cmN1cwoKCk9uIDI3LjAyLjIxIDE1OjUwLCBBbGkgRy4gRGV6ZnVsaSB2aWEgVVNSUC11c2VycyB3
cm90ZToKPiBIaSBhbGwsCj4gV2hlbiBVU1JQIFgzeDAgaXMgdXNlZCB3aXRoIFR3aW5SWCBkYXVn
aHRlcmJvYXJkcywgd2UgY2FuIGhhdmUgdXAgdG8gNCByeCBjaGFubmVscy4KPiAocmVmOkFOLTI0
NCwgRGlyZWN0aW9uIEZpbmRpbmcgd2l0aCB0aGUgVVNSUOKEoiBYLVNlcmllcyBhbmQgVHdpblJY
4oSiKQo+IEJ1dCBpbiBBTi04ODEgKFNlbGVjdGluZyBhIFVTUlAgRGV2aWNlKSBpbiBUYWJsZSA0
LCBpdCBzYXlzIHRoYXQgVVNSUCBYM3gwIG5lZWRzCj4gT2N0b0Nsb2NrIGZvciA0eDQgTUlNTyAh
ISEKPiBJIHdvbmRlciB3aGVuIFgzeDAgY2FuIHJlY2VpdmUgNCBjaGFubmVscyB3aXRoIFR3aW5S
WCwgd2h5IGl0IGNhbiBOT1QgYmUgdXNlZCBpbiA0eDQKPiBNSU1PIHcvbyBPY3RvQ2xvY2suCj4K
PiByZWdhcmRzLAo+IEFHRAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20K
