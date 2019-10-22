Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8CE0B67
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 20:25:49 +0200 (CEST)
Received: from [::1] (port=40982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMyqp-0003kJ-Su; Tue, 22 Oct 2019 14:25:47 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:37475)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iMyql-0003eO-SH
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 14:25:43 -0400
Received: by mail-qt1-f171.google.com with SMTP id g50so14073616qtb.4
 for <USRP-users@lists.ettus.com>; Tue, 22 Oct 2019 11:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=wX38zSGKD9pSmKH4Jr40eRvLRvamwnePPHSiWDR59JA=;
 b=ox0Vln5FBGu2WUoIlZkawthOwSaGTZKvuT5wSY+Na9ZbdByrlsm2U9M9HP5cCCpsQS
 Vp4hip6ox4+2VHQQw2iSsBHZ25WQwzXWz9GU3lkodNuNuc4aoyJ6Y8a4pPvrBaxp/ycA
 o+e8FvygPiSFrfa0eQa8DHTdD4Eo2bjK6slLGcQIBn/RkfUdkf3Sfn9ogT3CFSerYda5
 7fYBqnVR8cCE/cF4mZokq+ztOtdERJ3ba5ZTeVQsYOTy1CSxUvKEaEOl2TP/pzMhRLUn
 qY1EPiP8myU04bftT63dHnBmOchhsFRN0CiQRWZwQS0HkF6x6La5lBhf+2p5z2ev234K
 i0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=wX38zSGKD9pSmKH4Jr40eRvLRvamwnePPHSiWDR59JA=;
 b=IB3XxiBm+b9jvILSwlCrqImLn14WXVpv5L+Bb5kdz0sqQDM4m2p4Y8JdhePP5HMkhc
 oF7Us+4AoVeODunHeE6uyXPR6DsqguhKdM47nqwtY9/XALlPtixZyVfi/68NduHQ38gV
 7SdisPgrpx5b3297ZGjEQKblhttHORcJJWgTAV1FwIZZFzUbVC0bWo8NbIQvyvG7yI+X
 3/fqfEpBPwzqIsjarF6jthvYWzsGG+SCyYIIoKmFjr4cnn0uM4wTvplv6fmUrPwu+anc
 Fzvr0/r7qdyWn9lQN31tm4udJNrJ1lVftLmp1ehsPynPw+hDvoStxpFNDjKRqtqfhddf
 ZvWw==
X-Gm-Message-State: APjAAAUWcwP60yXpp5JhjRs2i9OyWaS07RSjy9tNXr6H8L4rNYltVM1i
 hXkOmSiCcs1rVRDGTpUutcQ=
X-Google-Smtp-Source: APXvYqywqwEB1cw5TI+LdsfyxvMo0BYmGgLQjRKw1WtgYdlEWeh2foLZ2TpY9ZLKUB8Bn5eMDqlskg==
X-Received: by 2002:ac8:70c4:: with SMTP id g4mr4904960qtp.136.1571768703352; 
 Tue, 22 Oct 2019 11:25:03 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.gmail.com with ESMTPSA id d16sm9602232qkl.7.2019.10.22.11.25.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 11:25:02 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 22 Oct 2019 14:25:02 -0400
Message-Id: <EA7ABB40-42B2-41C4-B0D4-F51ACF3DE936@gmail.com>
References: <CAMMoi3tOy8feTRfTKQ-ipAcQpoyAgf4VzCQjq6NcRNzB=-3yag@mail.gmail.com>
In-Reply-To: <CAMMoi3tOy8feTRfTKQ-ipAcQpoyAgf4VzCQjq6NcRNzB=-3yag@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Multi-USRP with X300's
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
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

Q291bGQgeW91IHNoYXJlIHlvdXIgZmxvdyBncmFwaCB3aXRoIHVzPwoKV2hhdCBkYXVnaHRlcmNh
cmRzIGRvIHlvdSBoYXZlIGluc3RhbGxlZD8KClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gT2N0
IDIyLCAyMDE5LCBhdCAyOjE2IFBNLCBSaWNoYXJkIEJlbGwgdmlhIFVTUlAtdXNlcnMgPHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiDvu78KPiBIZWxsbywKPiAKPiBJJ20g
YSBsaXR0bGUgY29uZnVzZWQgYWJvdXQgaG93IEkgc2hvdWxkIGRpc3Rpbmd1aXNoIGJldHdlZW4g
dHdvIGRpZmZlcmVudCBVU1JQcyBYMzAwJ3MgYW5kIHRoZSB0d28gZGlmZmVyZW50IG1vdGhlcmJv
YXJkcyBwZXIgVVNSUCBYMzAwIGluIHRoaXMgdHlwZSBvZiBzZXR1cC4gSSBhbSBmZWVkaW5nIGEg
MTAgTUh6IHJlZiBhbmQgUFBTIHJlZiB0byBib3RoIFVTUlBzLiBXaGF0IEkgaGF2ZSByaWdodCBu
b3cgaXMgYSBnciBmbG93Z3JhcGggd2l0aCBhIHNpbmdsZSBVU1JQIFNpbmsgYmxvY2sgdGhhdCBJ
IGhhdmUgY29uZmlndXJlZCB3aXRoIHRoZSBmb2xsb3dpbmcgZGV2aWNlIGFkZHJlc3MKPiAKPiAi
YWRkcjA9MTkyLjE2OC4xMC4yLGFkZHIxPTE5Mi4xNjguMTEuMiIKPiAKPiBhbmQgSSBoYXZlIHNl
bGVjdGVkCj4gCj4gTnVtIE1ib2FyZHMgPSAyCj4gTnVtIENoYW5uZWxzID0gMgo+IAo+IEJ1dCB0
aGlzIHNldHVwIG9ubHkgdXNlcyB0aGUgYWRkcjA9MTkyLjE2OC4xMC4yIFVTUlAgdG8gcmVjZWl2
ZSBvbiBib3RoIFJGQSBhbmQgUkZCIHBvcnRzLiBJIHdvdWxkIGxpa2UgdG8gY29uZmlndXJlIHJl
Y2VpdmluZyBvbiAxOTIuMTY4LjEwLjIgUkZBIFRYL1JYIGFuZCAxOTIuMTY4LjExLjIgUkZBIFRY
L1JYLgo+IAo+IEhvdyBkbyBJIGNvbmZpZ3VyZSB0aGlzIHByb3Blcmx5Pwo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
