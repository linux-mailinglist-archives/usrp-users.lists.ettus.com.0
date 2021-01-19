Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FFB2FBE45
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 18:57:00 +0100 (CET)
Received: from [::1] (port=58004 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1vFR-0006RD-MJ; Tue, 19 Jan 2021 12:56:57 -0500
Received: from mail-wm1-f49.google.com ([209.85.128.49]:39148)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dasypuss@gmail.com>) id 1l1vFO-0006KS-4w
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 12:56:54 -0500
Received: by mail-wm1-f49.google.com with SMTP id u14so550266wmq.4
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 09:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=p/hxa4Aea166U27/YFfdQyuLDHcqmnnS67/siUpLu9k=;
 b=kO46hw40Qg39RLAihd9KNFZIQdDw+xQXlXHBzJiphYtMgSvuqw1N8wuknnHzE4/4r1
 cvr41XBDHqG7zeXJgfbwJx7voRQUmrDtOwKSRiu51PEWG/QY1aaj446EneoaHpZkD8zt
 fIHmNyzScrM4bNlqTnRAiOw9glIWbUG2ngQ5J8NiuUV4U/u7emcbKizD0OJlCcgHerCw
 No4gxt9mrR8UZ71rgdYv5TBFS9gl0UMF7AYW3wOw17WvM/xg7qQlfoRAMG0eDUsmugKb
 wMHOCkd1I24X1vh0WGJ52jzGZYLJ9W2Qa4dyLWtptZCa6tuwG6wQh06uyid96o4mYVIz
 JBWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=p/hxa4Aea166U27/YFfdQyuLDHcqmnnS67/siUpLu9k=;
 b=GKJBOSMXIwGPgRY1Lgg01LjvVxA2DEbVbUaIQGPDGRH+Dj8ivevQCWR+j/pc6Rce5q
 GRzoKGcAl2UehS4w3yEP6nBNTuwOMMuet8p4oNTMt9ZFNgQMqJo7KL9aeboMt94+l+f5
 0Zh+nHZe7JAlh2ssiR3uXYhhbMqKwzvZhmr5gM/hEVsdlOmbm4APjzfN5rXW+Zzcohrt
 BLn8HX0v1CJM2YUy7DsdDkMyG0+psscRf0b8Jf6Yy9p6M7T4I0XMjEECaNsh9c3JGNJ3
 x4jrP1GQaQm9sxuhXCCfgxKS7xVXAdDcNV7r6o0sq+E6a/ad5+VHkqq20WcrMGNMhIaQ
 eG4g==
X-Gm-Message-State: AOAM531aS928lijsvVzkZtS9mD/WlBDFCBxWZiQIi3T049OXt/WIEpkU
 esW6WJ72ZOABXIGFD7G9CztQBl2quQc=
X-Google-Smtp-Source: ABdhPJwypWkyz6PYBmoeTBTn4onRVzEaOKulPqNZs4gEiLZTy7rvegAW6tE56ujwManD+jeNnjK4Og==
X-Received: by 2002:a1c:cc19:: with SMTP id h25mr742790wmb.124.1611078972750; 
 Tue, 19 Jan 2021 09:56:12 -0800 (PST)
Received: from ?IPv6:2a00:23c6:7095:7e01:1c2d:50b5:28f1:1244?
 ([2a00:23c6:7095:7e01:1c2d:50b5:28f1:1244])
 by smtp.gmail.com with ESMTPSA id l7sm5600730wmg.41.2021.01.19.09.56.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jan 2021 09:56:12 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <1610364119.853144.18409.16938@mail.rambler.ru>
 <B27181C0-978A-4DD4-8BA8-576392F71024@gmail.com>
Message-ID: <5b8dba4e-6084-e870-4cfc-e8d8d5044bb9@gmail.com>
Date: Tue, 19 Jan 2021 17:56:11 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <B27181C0-978A-4DD4-8BA8-576392F71024@gmail.com>
Content-Language: en-GB
Subject: Re: [USRP-users] tune speed ussue
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
From: David Evans via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Evans <dasypuss@gmail.com>
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

SGkgYWxsLApJIGFtIG5vdCBhbiBleHBlcnQgb24gdGhpcywgYnV0IHJlY2VudGx5IHNwZWFraW5n
IHRvIHNvbWVvbmUgYSBsaXR0bGUgCm1vcmUgaW4gdGhlIGtub3cgdGhhbiBJLi4uCk1hcmN1cyBp
cyByaWdodCwgYWxzbyBpdCBpcyBhcHBhcmVudGx5IHBvc3NpYmxlIHRvIHByZS1jYWxpYnJhdGUg
aW4gCmFkdmFuY2UgYW5kIHNhdmUgdGhlIGNhbGlicmF0aW9uIHNldHRpbmdzIHRvIHJlZ2lzdGVy
cyBvbiB0aGUgQUQ5MzYxLCAKdGh1cyBtYWtpbmcgdGhlIHR1bmUgdGltZSBjb25zdGFudC4KSnVz
dCBhIHRob3VnaHQsCkNoZWVycywKRGF2ZQoKCk9uIDExLzAxLzIwMjEgMTM6MzIsIE1hcmN1cyBE
IExlZWNoIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IFRoaXMgaXMgcHJvYmFibHkganVzdCBhIHF1
aXJrIG9mIHRoZSB3YXkgdGhlIGNhbGlicmF0aW9ucyBjYWNoZSB3b3JrcyBpbiB0aGUgQUQ5MzYx
IGNoaXAuCj4KPiBUaGUgY2hpcCBpc27igJl0IHJlYWxseSBkZXNpZ25lZCBmb3IgZmFzdCBmcmVx
dWVuY3kgaG9wcGluZywgYW5kIHdoZW4geW91IHJldHVuZSwgaW50ZXJuYWwgcmVjYWxpYnJhdGlv
bnMgbmVlZCB0byBoYXBwZW4gb24gdGhlIGNoaXAsIGV4Y2VwdCBmb3Igc21hbGwgZnJlcXVlbmN5
IGNoYW5nZXMuCj4KPgo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPgo+PiBPbiBKYW4gMTEsIDIwMjEs
IGF0IDY6MjIgQU0sINCQ0L3QtNGA0LXQuSDQkCB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pgo+PiDvu78KPj4gSGVsbG8KPj4KPj4gSSB0ZXN0aW5n
IGIyMDBtaW5pIGluIHJlY2VpdmVyIG1vZGUgYW5kIGZvdW5kIHN0cmFuZ2UgcmVzdWx0IHdpdGgg
dHVuZSB0aW1lIC4KPj4gV2hlbiBJIHN0YXJ0IGZyb20gMTAwTUh6IGFuZCB0dW5lIHdpdGggc3Rl
cCAyME1IeiBhdCBmcmVxIDIwMCAtPiAyMjAgYW5kIDEyMCAtPiAxMDAgZ2V0IGFsbW9zdCAxMDAg
dGltZXMgc2xvd2x5IHRpbWUgdGhlbiBvdGhlcnMuCj4+IFdoZW4gSSBzdGFydCBmb3JtIDEwMU1I
eiB0aW1lIGluY3JlYXNlIG9ubHkgZmlyc3QgcGFzcyBhbmQgdGhlbiBhbGwgT0suCj4+Cj4+IFNv
dXJjZSBjb2RlIGFuZCB0ZXJtaW5hbCBzY3JlZW5zaG90cyBpbiBhdHRhY2htZW50cy4KPj4KPj4g
VGhhbmsgeW91Cj4+Cj4+IDxtYWluLmM+Cj4+IDxTY3JlZW5zaG90IGZyb20gMjAyMS0wMS0xMSAx
My0wMy0wOS5wbmc+Cj4+IDxTY3JlZW5zaG90IGZyb20gMjAyMS0wMS0xMSAxMy0wMy01MC5wbmc+
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+
IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQo=
