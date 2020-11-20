Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D87D2BB3F1
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 19:45:32 +0100 (CET)
Received: from [::1] (port=49924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgBPU-0000Pc-WA; Fri, 20 Nov 2020 13:45:29 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:36500)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kgBPS-0000Jl-7w
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 13:45:26 -0500
Received: by mail-qt1-f178.google.com with SMTP id z24so5827948qto.3
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 10:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=E4dFQyxposVDscsMYqWeL4CIZD9yxqo8cxv7fXjMnjU=;
 b=ou71ukLo3lLHhbSQlmuzekAYXYp874q4VTm8sgIw/RSDgnJtPRt4Z3wlQ4yNBTESb4
 3MfIroO6t3WFGkIqAjJWuqd53++1Uox1+3nFjBxFdkTQfxtrXnrFvb8jukNp5UgfBSlp
 fx0nVzhJJnpfuH6oxgnrKHZ3kZrQqsKs3eB+lqin94VoDbbJmf1M9klFCPqTareWfQgt
 Vrkd2zILp5I9vNldsKr0DMuwCKEEMQTeBW1H5PWZ4uGolztDBKfqKKADpj/rqeROGqVd
 s+3fC5XT5A801+pA+CypmXh3xV3Fe2gMI2MUxMWrST6Te9hrSiOj1HPXUVJAU3O4k0hE
 EQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=E4dFQyxposVDscsMYqWeL4CIZD9yxqo8cxv7fXjMnjU=;
 b=DMYHPC1fqIQfA6WGy7jESWz7gt1E81Oiq2UiJHFvDSJvl28ELROlOymtJwInPAz5y0
 M9YpNemXCeEgUQ6q1URx6eVaCRd8udXwmjxwWk73zj0ork4T8iK7ljmIORkBoHmLm7yU
 mORgo5UGo7Kavtq5M3exKPpPCtvV5lcDw4K3Ayyd/5f8U1nTBlTK8PBbIyyUtmDcB/Gb
 fllFJUf5v+1PywGYryd+o69agy1ASY23YGDPbRHinOyyJGmxzxpqPK+OVPzjg2VfvCy5
 +ylbYpcCTY9idqfFKc/BFtDlp/GkND49tfL7wb9ph0M7izSqq7A/kf6zpeDttLCT1pIt
 BrwQ==
X-Gm-Message-State: AOAM531WCt+St9yUZm8Toh17KTdJ09TrB22TF0XxV0evsVKirY1k0cYL
 FpuxqCNvLAQJXZPO5R9GNhQ9dpveqUU=
X-Google-Smtp-Source: ABdhPJzw9juyraHNS4rptMB+WeDowGb2ywQM85zU6kTRAxywjvqxWvpJFvwNqflPPtykTja6vKVmYw==
X-Received: by 2002:ac8:459b:: with SMTP id l27mr16573970qtn.282.1605897885491; 
 Fri, 20 Nov 2020 10:44:45 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id l46sm2684963qta.44.2020.11.20.10.44.44
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Nov 2020 10:44:45 -0800 (PST)
Message-ID: <5FB80E9C.1090303@gmail.com>
Date: Fri, 20 Nov 2020 13:44:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACfkGzVeSYTphqtSXX=UU+Jk2qTJMUynTpphmxQRZN-ijH8OXw@mail.gmail.com>
In-Reply-To: <CACfkGzVeSYTphqtSXX=UU+Jk2qTJMUynTpphmxQRZN-ijH8OXw@mail.gmail.com>
Subject: Re: [USRP-users] B200 PPS signal question
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

T24gMTEvMjAvMjAyMCAwODozOCBBTSwg57+B5YGJ5ZC+IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+
IEhpLAo+Cj4gSSBoYXZlIGEgcXVlc3Rpb24gYWJvdXQgdGhlIFBQUyBpbnB1dHMgb24gYjIwMCBh
bmQgYjIwMG1pbmkgbW9kZWxzLgo+Cj4gSSB3YW50IHRvIHN5bmNocm9uaXplIHRpbWUgZm9yIHR3
byBiMjAwIHVuaXRzLiBJIGNvbm5lY3RlZCB0aGUgUFBTIHRvIAo+IGEgZXh0ZXJuYWwgR1BTIG1v
ZHVsZS4gVGhlIFJlZiBwb3J0IHdhcyBsZWZ0IG9wZW4oTm90IHVzZWQpLiBUaGVuIEkgCj4gc2V0
IHRoZSBzeXN0ZW0gdGltZSB3aXRoIHNldF90aW1lX25leHRfcHBzIGNvbW1hbmQuICBPbiBhbm90
aGVyIGIyMDAsIAo+IHRoZSBjb25maWd1cmF0aW9uIHdhcyB0aGUgc2FtZS4gVGhlIHByb2JsZW0g
aXMsIGFmdGVyIGJvdGggZGV2aWNlIHRpbWUgCj4gaGFzIGJlZW4gc2V0IHRvIFBQUyB3aXRoIHRo
ZSBzYW1lIHRpbWUgc3BlYy4gVGhlaXIgc3lzdGVtIHRpbWUgc3RhcnQgCj4gdG8gZHJpZnQgYXdh
eSBhZnRlciBhIHdoaWxlLiBJbiBvdGhlciB3b3JkcywgdGhlIFBQUyBzaWduYWwgc2VlbXMgbm90
IAo+IHJlZ3VsYXRpbmcgdGhlIHN5c3RlbSB0aW1lIG9uIGEgc2Vjb25kIGJhc2lzLgo+Cj4gQlRX
LCBJIGhhdmUgbWVhc3VyZWQgdGhlIFBQUyB0aW1pbmcgYmV0d2VlbiB0aGVzZSBncHMgZGV2aWNl
cyBhbmQgaXQgCj4gd2FzIG9ubHkgMTBucyBvZmYuCj4KPiBJJ3ZlIHJlYWQgc29tZXdoZXJlIGlu
IHRoZSB1c3JwIG1hbGluZyBsaXN0IHRoYXQgdGhlIGIyMDBtaW5pIHdpdGggCj4gb25seSBQUFMg
aW5wdXQgY2FuIGJlIHVzZWQgdG8gcmVndWxhdGUgaW50ZXJuYWwgUExMIGNsb2NrLiBEb2VzIHRo
aXMgCj4gbWVhbiBmb3IgZXZlcnkgUFBTIGVkZ2UgaXQgaXMgYWRqdXN0aW5nIHRoZSBpbnRlcm5h
bCBjbG9jayBhbmQgbWFrZSAKPiB0aGUgc3lzdGVtIHRpbWUgc3RhYmxlIGJldHdlZW4gdHdvIHVu
aXRzPyBDYW4gd2UgYWNoaWV2ZSB0aGUgc2FtZSAKPiByZWd1bGF0aW9uIGVmZmVjdCBvbiBiMjAw
Pwo+Cj4gSSBhbHJlYWR5IGtuZXcgdGhhdCB1c2luZyBhIEdQU0RPIHdpdGggYjIwMCBpcyB0aGUg
d2F5IHRvIGdvIGZvciB0aGUgCj4gYmVzdCBzeW5jaHJvbml6YXRpb24gcmVzdWx0LiBCdXQgSSBk
aWRuJ3QgZ28gdGhhdCB3YXkgYmVjYXVzZSAxLkdQU0RPIAo+IGNhbiBicmVhayBteSBidWRnZXQg
YW5kIDIuIEkgb25seSByZXF1aXJlIGhhcmR3YXJlIHRpbWUgc3luYyBvbiBldmVyeSAKPiBQUFMg
ZWRnZS4KPgo+IEknbSBncmF0ZWZ1bCBmb3IgYW55IHN1Z2dlc3Rpb25zLiBUaGFua3MuCj4KVGhl
IFBQUyBpbnB1dCBpcyBzaW1wbHkgdXNlZCBhcyBhIHRyaWdnZXIgZm9yIGRvaW5nIAoic2V0X3Rp
bWVfbmV4dF9wcHMoKSIuICBJdCBET0VTIE5PVCBwcm92aWRlIGFueSBvbi1nb2luZyBjbG9jayAK
c3luY2hyb25pemF0aW9uLS10aGF0IGlzCiAgIHdoYXQgdGhlIDEwTUh6IHJlZmVyZW5jZSBjbG9j
ayBpbnB1dCBpcyBmb3IuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQo=
