Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FF331D169
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 21:16:11 +0100 (CET)
Received: from [::1] (port=55018 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lC6lT-00037Z-Gv; Tue, 16 Feb 2021 15:16:07 -0500
Received: from mail-wr1-f46.google.com ([209.85.221.46]:38046)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lC6lP-00033L-Qc
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 15:16:03 -0500
Received: by mail-wr1-f46.google.com with SMTP id b3so14852469wrj.5
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 12:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=h2B2mmVM0BlAVmoIuNXH2YD+8RWThZ1yBlgRPQpPF8A=;
 b=pJ2InbubkRafM7nILkTzpCYUi0Tx5ZU4GdF/XQyzqyV9zfAugME2qxhzAgaGshSP/C
 UtwTv3UfWCWNeUletqqiiT0B7e0ZsmMH0iJrCGCpg/E28IQsGRgP+uvtDOEBQY70oOms
 ys2xNnzJDStXNv0BoYueStehs2ivbggH0dwlxH39NHo1LD/9waSUvQVWorH4/dxs9y/u
 u4ekWCIN2lk3cuuiQKLCHCCUGf0ZASwDZChx+Ynam9AhhChSRXkHkXZOenWUqm3oiRzw
 21uR29HtdhFfek3Yx0v3zWBgNcOiY/pYYGXFjxfO+jg3o5dzjKpdC5CgkkjWEykZjlSz
 1KpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=h2B2mmVM0BlAVmoIuNXH2YD+8RWThZ1yBlgRPQpPF8A=;
 b=eT4GBblGOMJlyhe1pnmYEkUoHRiyA6e2+pkFDCuVq8rl6Gyhfzm5HJwEr15jFxxBJJ
 fMNQ+4hpEVh0MLTHqMTV2CH2tHdY3VbOvB1NKGrqdbMOcw8FA7gGXXGblGT/3SyWp9Pr
 oU50zojZ0rrbKrZlYqBq5ZU7dro0Jr6gnvOe/YddB74j//7KzYb3yF0XWh/JDV2vWrrr
 SMsHvQbQMMs6u1K26lQQwg01slncZOmEiyvGqBa0AddBL1nMOOKcuN64gL9rKr9RIebh
 vJ1N8umxt7V3kLXW3uwkONarDcDqj13mZYeU9ewpml+xtCufWHuA3zaVTjtWLJOmuBs1
 vMKQ==
X-Gm-Message-State: AOAM533Q5MFIeRtpeuSvSgeb2/+Uecj4u0hywNtFhNmLx80C00ficj4V
 9VkvIIs149KOS3dodeYbIEsFkQ2yCv7LIUaLugM=
X-Google-Smtp-Source: ABdhPJwi+gKdAHwjQQfpXnV4xsy5+iNHyt5tQ78r+aoHH5zxeJRSSsYuDb6WJZ9alLaUA1Pkt8XQFQ==
X-Received: by 2002:adf:e40e:: with SMTP id g14mr24859731wrm.426.1613506522631; 
 Tue, 16 Feb 2021 12:15:22 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id m23sm1269805wmc.31.2021.02.16.12.15.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Feb 2021 12:15:22 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <CACDReSwOo22jYHsz3fu38yqH+GP1MJjnRt1cUFsFPheyd3c=Hw@mail.gmail.com>
Message-ID: <cd08ceef-9281-2523-cf1b-cb890b6cfb34@ettus.com>
Date: Tue, 16 Feb 2021 21:15:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CACDReSwOo22jYHsz3fu38yqH+GP1MJjnRt1cUFsFPheyd3c=Hw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Getting sensor data using device3 usrp on E310
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

RGVhciBPZmVyLAoKWW91J3JlIHJpZ2h0LCB0aGUgZ2V0X21ib2FyZF9zZW5zb3IgaXMgYSBwcm9w
ZXJ0eSBvZiB0aGUgbXVsdGlfdXNycCBjbGFzcyBhbmQgbG9naWNhbGx5CmRvZXNuJ3QgIm1hcCIg
dG8gdGhlIGRldmljZTMgY2xhc3MuCgpJIGRvbid0IGhhdmUgYW4gdWx0aW1hdGVseSBnb29kIHNv
bHV0aW9uLCBoZXJlLCB0byBiZSBob25lc3QuIEFzIGEgdWdseSB5ZXQgZnVuY3Rpb25hbAp3b3Jr
YXJvdW5kOgoKwqDCoMKgIGF1dG8gc2Vuc29yX3ZhbHVlcyA9IG15X2RldmljZTNfc3B0ci0+Z2V0
X3RyZWUoKS0+YWNjZXNzPHVoZDo6c2Vuc29yX3ZhbHVlX3Q+KHBhdGgpLmdldCgpOwoKd2hlcmUg
InBhdGgiIGlzIHRoZSBwYXRoIHRvIHlvdXIgc2Vuc29yIHZhbHVlLiBUbyBmaW5kIHRoYXQsIHRy
eSBgdWhkX3VzcnBfcHJvYmUgLS10cmVlIHwKZ3JlcCBzZW5zb3JzYC4KCkJlc3QgcmVnYXJkcywK
Ck1hcmN1cwoKRElTQ0xBSU1FUjogQW55IGF0dGFjaGVkIENvZGUgaXMgcHJvdmlkZWQgQXMgSXMu
IEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQgb3IgdmFsaWRhdGVkIGFzIGEgcHJvZHVjdCwgZm9yIHVz
ZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0aW9uIG9yIHN5c3RlbSwgb3IgZm9yIHVzZSBpbiBoYXph
cmRvdXMgZW52aXJvbm1lbnRzLiBZb3UgYXNzdW1lIGFsbCByaXNrcyBmb3IgdXNlIG9mIHRoZSBD
b2RlLiBVc2Ugb2YgdGhlIENvZGUgaXMgc3ViamVjdCB0byB0ZXJtcyBvZiB0aGUgbGljZW5zZXMg
dG8gdGhlIFVIRCBvciBSRk5vQyBjb2RlIHdpdGggd2hpY2ggdGhlIENvZGUgaXMgdXNlZC4gU3Rh
bmRhcmQgbGljZW5zZXMgdG8gVUhEIGFuZCBSRk5vQyBjYW4gYmUgZm91bmQgYXQgaHR0cHM6Ly93
d3cuZXR0dXMuY29tL3Nkci1zb2Z0d2FyZS9saWNlbnNlcy8uCgpOSSB3aWxsIG9ubHkgcGVyZm9y
bSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9uIHRoYXQg
dGhlIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRoZSBwcm9k
dWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQsIG9y
IG9yZGVyZWQgYnkgYW55IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNpZ25hdGlvbiBpbiB0
aGUgbGljZW5zZSByZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0byBQYXJ0
IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMgYW5kIChpaSkgc3Vj
aCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9uLiAgSWYgb3VyIHVu
ZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5IGJl
Y2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBV
LlMuIENvbW1lcmNlIERlcGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlvbiBtYXkgcHJvY2Vl
ZCBmdXJ0aGVyLgoKT24gMTYuMDIuMjEgMDg6MzMsIE9mZXIgU2FmZXJtYW4gdmlhIFVTUlAtdXNl
cnMgd3JvdGU6Cj4gSGVsbG8sCj4KPiBJIHdvdWxkIGxpa2UgdG8gYWNjZXNzIHNlbnNvciBkYXRh
IGxpa2UgImdwc190aW1lIiwgInJlZl9sb2NrZWQiLCJncHNfbG9ja2VkIiB1c2luZyBhCj4gVVNS
UCBkZXZpY2UgZGVmaW5lZCBhcyAidWhkOjpkZXZpY2UzOjpzcHRyIHVzcnAiIG9uIGEgRTMxMCB1
bml0Lgo+IEFsbCB0aGUgZXhhbXBsZXMgYXJlIGZvciBVU1JQIGRldmljZXMgZGVmaW5lZCBhcyAi
dWhkOjp1c3JwOjptdWx0aV91c3JwOjpzcHRyIHVzcnAiLgo+Cj4gSSBzZWFyY2hlZCB0aGUgZG9j
dW1lbnRhdGlvbiBhbmQgdHJpZWQgYWxsIHBvc3NpYmxlIGNvbWJpbmF0aW9ucyBhbHNvIHVzaW5n
IHRoZQo+ICJ1aGQ6OnJmbm9jOjpyYWRpb19jdHJsOjpzcHRyIiBvYmplY3Qgd2l0aG91dCBhbnkg
c3VjY2Vzcy4KPiBJIGNhbiBzZWUgdGhlIG1ldGhvZCBleGlzdHMgZm9yIG11bHRpX3VzcnAgYW5k
IG1iX2NvbnRyb2xsZXIgb2JqZWN0cy4gSSBrbm93IHRoYXQgdGhlCj4gbWJfY29udHJvbGxlciBp
cyBzb21ld2hlcmUgYWNjZXNzaWJsZSBlaXRoZXIgdGhyb3VnaCByYWRpb19jdHJsIG9iamVjdCBv
ciB0aGUgZGV2aWNlMwo+IG9iamVjdCBidXQgSSBkb24ndCBrbm93IGhvdyB0byBnZXQgdG8gaXQu
Cj4KPiBSZWdhcmRzLAo+IE9mZXIgU2FmZXJtYW4KPgo+IC0tIAo+IFRoaXMgbWVzc2FnZSBoYXMg
YmVlbiBzY2FubmVkIGZvciB2aXJ1c2VzIGFuZAo+IGRhbmdlcm91cyBjb250ZW50IGJ5ICpNYWls
U2Nhbm5lciogPGh0dHA6Ly93d3cubWFpbHNjYW5uZXIuaW5mby8+LCBhbmQgaXMKPiBiZWxpZXZl
ZCB0byBiZSBjbGVhbi4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCg==
