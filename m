Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E231DE7A
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 18:40:30 +0100 (CET)
Received: from [::1] (port=35698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCQoJ-0001em-Fz; Wed, 17 Feb 2021 12:40:23 -0500
Received: from mail-wr1-f46.google.com ([209.85.221.46]:35781)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lCQoG-0001Xl-5e
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 12:40:20 -0500
Received: by mail-wr1-f46.google.com with SMTP id l12so18305037wry.2
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 09:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=KoTCuA1C9Gs2Z2wljAa0J3dv31h8HLep8RbEY3dxWEw=;
 b=tohHLAkvLgwTGhQ55tzITkwDw3CeleB+tqaeQEYc/SSX6dYV1Q9q920FBppbX0iifK
 LNQcA7oqasnfJnOEX9kfbiEVdbiJxtDgCgcYd6Jj+IEvLNAmY7K4JGiBYTmeJDNVhs2h
 H/ZLNINHb1d0MYbW6U1QrqwXTQpaMog8F1LXfMVdrDp8eaEcRY3N1Wv61K04Y5lOF2ap
 hlz2Sc2Ctjz8wvRXShEfy7y+GlfVtKfmGnBS307IFeYtQ8gR4JYI+I39WVhw5L7TzA84
 J1s/iEmAP0n7ABhsdiBDFsg/pRXUjmxCXy1d/vtdO6REH9qdLtLBWUcAo3kAdHmen9Tt
 pKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=KoTCuA1C9Gs2Z2wljAa0J3dv31h8HLep8RbEY3dxWEw=;
 b=LCjGRw4tWbuL939b4Vf51UvWdNU/9ol21JD2TmF3jRKs3hJr3xsyLcstQ52DBFqer1
 9DRalhr+GHyr8IgY8XQiD19dJk622kk6vMZbTQe94PxYocBajfsScG7VCFUk58wHJyke
 f9q8Y74X8bUtP35e9skQPpjuGUtPjJLTCN71Bl5iAuxTtkzu+z8HJGMTDLMBj0Nns5ct
 MywyQ2ROEJ1V8GHYnvGjk+vPHK1HVAGmH7iodhSNkmg81KskfDyQOqN6z9N4Vx8l78A5
 SJkKACU8AacgLreTwuwPCfXvl1iXFw8gl0vsVFze8jgfPUBEwochYPkRpF6Zg5L0Y0+7
 LgRg==
X-Gm-Message-State: AOAM531iyWAKb4A4sPwwGWg5rmmYqBL6cQ/ylZ2lalIjkT0t1zqnOpIM
 zp4/4gikGDQAVIHGMW7Of2QGRTxiUS60/erTcOc=
X-Google-Smtp-Source: ABdhPJyO16tym+Cvbm7KnGT5IErpovJX0hjNuu72HB982m0mTfMWX6bl9/lP6QiNzlbb5lp+pfQrDA==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr313836wrw.96.1613583578714;
 Wed, 17 Feb 2021 09:39:38 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id x11sm4642711wrv.83.2021.02.17.09.39.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Feb 2021 09:39:38 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <20210217110602.esxs2qcwdtyzegtn@barbe>
Message-ID: <648438d4-77c5-4177-f498-9356c435988f@ettus.com>
Date: Wed, 17 Feb 2021 18:39:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210217110602.esxs2qcwdtyzegtn@barbe>
Content-Language: en-US
Subject: Re: [USRP-users] User register on X300 UHD 3.9
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

SGkgQ8OpZHJpYywKCm5vdCB0aGF0IGhhcmQ6IHlvdSBuZWVkIGFuIGluc3RhbmNlIG9mIHNldHRp
bmdzX3JlZ2lzdGVyLCB3aGljaCB5b3UgY29ubmVjdCB0byB0aGUKYXBwcm9wcmlhdGUgc2V0dGlu
Z3MgYnVzLgoKSXQncyBwcm9iYWJseSBlYXNpZXN0IGlmIHlvdSBsb29rIHRocm91Z2ggdGhlIEZQ
R0EgY29kZSBtYXRjaGluZyB5b3VyIHZlcnNpb24gb2YgVUhECihjaGVjayBvdXQgdGhlIFVIRCBz
b3VyY2UgcmVwb3NpdG9yeSwgYGdpdCBjaGVja291dGAgdGhlIHRhZyB0aGF0IGNvcnJlc3BvbmRz
IHRvIHRoZSBVSEQKcmVsZWFzZSB5b3UncmUgdXNpbmcsIGFuZCBgZ2l0IHN1Ym1vZHVsZSB1cGRh
dGUgLS1pbml0YCB0byBnZXQgdGhlIGZwZ2Etc3JjIHN1Ym1vZHVsZSBhdAp0aGUgY29ycmVjdCBz
dGF0ZSEpLiBMb29rIGZvciBleGlzdGluZyBpbnN0YW5jZXMgb2Ygc2V0dGluZ3NfcmVnaXN0ZXJz
LCBmb3IgZXhhbXBsZSBpbiB0aGUKcmFkaW8gY29yZXMuIEFkZCB5b3VycyB0aGVyZSwgcGlja2lu
ZyBhbiB1bm9jY3VwaWVkIGFkZHJlc3MsIGFuZCBjb25uZWN0IGl0IGFwcHJvcHJpYXRlbHkuCgpU
aGF0J3MgaXQgb24gdGhlIEZQR0Egc2lkZS4gRm9sbG93IHRoZSBVSEQgbWFudWFsIC8gS25vd2xl
ZGdlIGJhc2UgdG8gYnVpbGQgYW5kIGZsYXNoIHlvdXIKRlBHQSBpbWFnZSAoYmFzaWNhbGx5LCBy
dW4gYG1ha2VgIHdpdGggdGhlIHJpZ2h0IGRldmljZSBuYW1lKS4KClRoZW4sIHlvdSdsbCBoYXZl
IHRvIGFkZCBhIHNldHRlciAvIGdldHRlciBpbiBDKysgVUhELiBUaGF0IGJvaWxzIGRvd24gdG8g
YWRkaW5nIGEgY29lcmNlcgphbmQgZ2V0dGVyIHRvIHRoZSBwcm9wZXJ0eV90cmVlLiBDb3B5IGV4
aXN0aW5nIGNvZGUgYW5kIG1vZGlmeSB0aGUgcmVhZC93cml0ZSBhZGRyZXNzCmFwcHJvcHJpYXRl
bHkgdG8gYWRkcmVzcyB5b3VyIHNldHRpbmdzX3JlZ2lzdGVyIQoKR2VuZXJhbGx5LCB3aGF0IHlv
dSB3YW50IHRvIGRvIHNvdW5kcyAuLi4gbWVkaXVtLXNlbnNpYmxlLiBXaGF0J3MgdGhlIHB1cnBv
c2Ugb2YgYWxsIHRoaXM/CklmIGl0J3MganVzdCB0byByZWFkL3dyaXRlIEdQSU8sIHRoZXJlJ3Mg
YW4gQVBJIGZvciB0aGF0IDopCgpCZXN0IHJlZ2FyZHMsCk1hcmN1cwoKRElTQ0xBSU1FUjogQW55
IGF0dGFjaGVkIENvZGUgaXMgcHJvdmlkZWQgQXMgSXMuIEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQg
b3IgdmFsaWRhdGVkIGFzIGEgcHJvZHVjdCwgZm9yIHVzZSBpbiBhIGRlcGxveWVkIGFwcGxpY2F0
aW9uIG9yIHN5c3RlbSwgb3IgZm9yIHVzZSBpbiBoYXphcmRvdXMgZW52aXJvbm1lbnRzLiBZb3Ug
YXNzdW1lIGFsbCByaXNrcyBmb3IgdXNlIG9mIHRoZSBDb2RlLiBVc2Ugb2YgdGhlIENvZGUgaXMg
c3ViamVjdCB0byB0ZXJtcyBvZiB0aGUgbGljZW5zZXMgdG8gdGhlIFVIRCBvciBSRk5vQyBjb2Rl
IHdpdGggd2hpY2ggdGhlIENvZGUgaXMgdXNlZC4gU3RhbmRhcmQgbGljZW5zZXMgdG8gVUhEIGFu
ZCBSRk5vQyBjYW4gYmUgZm91bmQgYXQgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3Nkci1zb2Z0d2Fy
ZS9saWNlbnNlcy8uCgpOSSB3aWxsIG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMg
dW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9yIHNlcnZpY2VzIChp
KSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRoZSBwcm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9m
IGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSB3
aXRoIGEgZm9vdG5vdGUgMSBkZXNpZ25hdGlvbiBpbiB0aGUgbGljZW5zZSByZXF1aXJlbWVudCBj
b2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0byBQYXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5p
c3RyYXRpb24gUmVndWxhdGlvbnMgYW5kIChpaSkgc3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFy
dHkgdG8gdGhlIHRyYW5zYWN0aW9uLiAgSWYgb3VyIHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0
LCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3Jp
emF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNlIERlcGFydG1lbnQg
YmVmb3JlIHRoZSB0cmFuc2FjdGlvbiBtYXkgcHJvY2VlZCBmdXJ0aGVyLgoKT24gMTcuMDIuMjEg
MTI6MDYsIEPDqWRyaWMgSGFubm90aWVyIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IERlYXIgYWxs
LAo+Cj4gT24gVVNSUDIsIHRoZXJlIHdhcyBhIGNvbmNlcHQgb2YgdXNlciByZWdpc3RlcnMsCj4g
aS5lLiBtZW1vcnkgYWxsb2NhdGVkIGluIEZQR0EgZm9yIHRoZSB1c2VyLCB1c2luZyB1c2VyX3Nl
dHRpbmdzLAo+IHRoYXQgdGhlIHVzZXIgY2FuIHNldCBpbiBDKyssIHVzaW5nIHRoZSBVSEQgQysr
IEFQSSBzZXRfdXNlcl9yZWdpc3Rlci4KPgo+IEkgYW0gdHJ5aW5nIHRvIHJlcHJvZHVjZSBzdWNo
IGJlaGF2aW91ciBvbiBYMzAwIHVzaW5nIFVIRCAzLjkgTFRTIChpLmUgcHJlLVJGTk9DKS4KPiBJ
IGFtIHNvbGVseSBpbnRlcmVzdGVkIGluIHNldHRpbmcgcmVnaXN0ZXJzIGluIGN1c3RvbSBGUEdB
IGxvZ2ljCj4gZHluYW1pY2FsbHkgdXNpbmcgQysrLgo+Cj4gRG9lcyBhbnlvbmUga25vdyBob3cg
dG8gZG8gaXQ/Cj4KPiBCZXN0IHJlZ2FyZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
