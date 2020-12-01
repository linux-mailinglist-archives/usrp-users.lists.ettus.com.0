Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E0A2C9E7F
	for <lists+usrp-users@lfdr.de>; Tue,  1 Dec 2020 11:02:46 +0100 (CET)
Received: from [::1] (port=57320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kk2Ub-0006zI-IO; Tue, 01 Dec 2020 05:02:41 -0500
Received: from mail-wr1-f41.google.com ([209.85.221.41]:35010)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1kk2UX-0005fg-S2
 for usrp-users@lists.ettus.com; Tue, 01 Dec 2020 05:02:37 -0500
Received: by mail-wr1-f41.google.com with SMTP id r3so1717485wrt.2
 for <usrp-users@lists.ettus.com>; Tue, 01 Dec 2020 02:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=E3tWy1dCjP1sQCYOt5p7f+691ERb3xLvWjEUXD6mZmA=;
 b=oujpvaglpUuAChoUh4QW0pfc2v/9Aun2+g5o2Foe/6PWnHrocZ+/PK/yW7HLTV4nAe
 aAjJIJvvEo2uIji+ZqUomd6SldX73k/x1cZME8gikwFKJ+rbN90jPGm8rbLO/gFusnMV
 lOAfCRiNCCfKNEyuPP9OYBxNoTL/AkT6GxZS9iBdhAUn1LshUuSYGTsd0qs/hV4EhXma
 1vjhDa6AiZmbIo7cOhLsSnG0a9BApRyBGygSZob/gcRcGluqsqk1gORMeAxBKH6OuygZ
 aZMC1yTGL/7gh9u0VK9bT2uI8leyyg4MeKgPnugdFObtzqfpt/RcDVngu8yNd8m49QI7
 05+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=E3tWy1dCjP1sQCYOt5p7f+691ERb3xLvWjEUXD6mZmA=;
 b=iUJE+LxuzOUNthettO3GBNjNnWmBxFDCe/jviQjiGNkr4ldBbHJf7BwB0ozgNpzxqg
 4oGzBTIDDnT71YVUkqmW5arcom7IRtaVJSIrgTkbZTHK6v36HXisU4oYh+xUox5g6kXR
 Xv3muEV43ayZdpvl/zME0zgm6dinqZEvf2xj4fC9hGqwVqc/y3Dd63WoRdOFtHhMG7jo
 iGYtJ/g6EZq4V6UHWwQ6KZfJ6VFxipotyBfbxL/yDnVMwNZ5Erj9iGUVKk2iiN+BsRBn
 CayjkwFmbYHExVUs65eZyyoEpfxU3fVnLNxsSkDAX9sEI0nSrvwSdUZYezawpsDMl7CD
 iqNw==
X-Gm-Message-State: AOAM531AT+ngwscwwxUUhyyy30FVE8be2STpIwKw1QItof2S98CF9Ulq
 l2KD8k1/6NlEaAaw9jHGCEdVIxwaCZVjZlJD
X-Google-Smtp-Source: ABdhPJx0X6DXRU9zUXtuimcbX6isaGI2cK6AtPPILf4hb33u7LD47Gb79x1UcHdIW9vNnCZHSpRz5w==
X-Received: by 2002:adf:9d49:: with SMTP id o9mr2842017wre.413.1606816916114; 
 Tue, 01 Dec 2020 02:01:56 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id a1sm2154744wrv.61.2020.12.01.02.01.55
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Dec 2020 02:01:55 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <CABfZwcdtAKu7rtAu=6yLB4WJY1Amt2svXjF7zygULdLEhKZmCA@mail.gmail.com>
Message-ID: <aba9b85d-e604-1fb0-b305-c3f5e7ec840b@ettus.com>
Date: Tue, 1 Dec 2020 11:01:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CABfZwcdtAKu7rtAu=6yLB4WJY1Amt2svXjF7zygULdLEhKZmCA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Can I detect a wiretype of USB device?
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

SWYgeW91IGhhdmUgYWNjZXNzIHRvIHRoZSBVSEQgQVBJLCB0aGUgcHJvcGVydHkgdHJlZSBlbnRy
eSBpcwovbWJvYXJkcy8wL2xpbmtfbWF4X3JhdGUuCgpTbywgc29tZXRoaW5nIGxpa2UKCmF1dG8g
dmFsdWUgPQpteV91c3JwX29iamVjdC0+Z2V0X3RyZWUoKS0+YWNjZXNzPGRvdWJsZT4oIi9tYm9h
cmRzLzAvbGlua19tYXhfcmF0ZSIpCgp3aWxsIGdpdmUgeW91IHRoZSBtYXhpbXVtIHJhdGUgeW91
IGNhbiB0cmFuc3BvcnQgdGhyb3VnaCB5b3VyIFVTQiBsaW5rLgpNYXliZSB0aGF0J3MgYWN0dWFs
bHkgd2hhdCB5b3UncmUgbG9va2luZyBmb3IsIGJ1dCBvdGhlcndpc2UgaXQgc3VmZmljZXMKdG8g
ZmlndXJlIG91dCB3aGV0aGVyIHlvdSdyZSBvbiBIaWdoIFNwZWVkIG9yIFVTQjMgU3VwZXJTcGVl
ZC4KCk5vdGUgdGhpczogVGhlIFByb3BlcnR5IFRyZWUgaXMgKipOT1QqKiBVSEQgQVBJISBUaGVy
ZSdzIE5vIEd1YXJhbnRlZSBBdApBbGwgVGhpcyBXb24ndCBDaGFuZ2UuCgpCZXN0IHJlZ2FyZHMs
Ck1hcmN1cwoKT24gMDEuMTIuMjAgMDI6NTUsIE1pa2lvIEZ1a3VzaGltYSB2aWEgVVNSUC11c2Vy
cyB3cm90ZToKPiBIaSzCoAo+Cj4gSSB1c2UgYSBCMjAwIGFuZCBCMjAwbWluaS4KPiBPZnRlbiB0
aGV5IGFyZSBjb25uZWN0ZWQgdW5kZXIgVVNCIDIuMCBwb3J0cywgaXQgd2lsbCBjYXVzZSBzb21l
IHByb2JsZW1zLgo+IENhbiBJIGRldGVjdCBhIHdpcmUgdHlwZSBvZiBVU0IgZGV2aWNlIGJ5IFVI
RCBBUEk/Cj4KPiBNaWtpbwo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20K
