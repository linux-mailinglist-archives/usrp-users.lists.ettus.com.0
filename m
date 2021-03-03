Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E6132B88E
	for <lists+usrp-users@lfdr.de>; Wed,  3 Mar 2021 15:18:52 +0100 (CET)
Received: from [::1] (port=53668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHSKv-0000cv-P4; Wed, 03 Mar 2021 09:18:49 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:41918)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lHSKr-0000ZU-Ne
 for usrp-users@lists.ettus.com; Wed, 03 Mar 2021 09:18:45 -0500
Received: by mail-qk1-f176.google.com with SMTP id q85so24039081qke.8
 for <usrp-users@lists.ettus.com>; Wed, 03 Mar 2021 06:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=8cwZvhmwKBZPMvcVh5++qiSg4Cxg17R6mFAjCqPD3ww=;
 b=XX/9Sxt3IahlZAIchN8RN69J3PqaGs5CcvTyc3rah+JVWpgl6hoaA+KfCNu3Vqc6v7
 hGNrEbgTGC67RKNFvMq0v9Iups8DV50mJ+62eeRq3nfYI7okrAzsMoWYb7RbAb3jN9xj
 cOnVteNP0oSCBN+f9JWjmQgnAgf/JJHKEStYa3x++fhELVW9uqMG4OuVAHJ3pXtRmyEz
 admseNglKDYVythcE+EyHVM/BqDLqgcC43/4fpMEMcvdUuEbw6ltkuW5eEuvwbAMguke
 rLdhEI6fJ+pCqoF3vkTR38EpgRIB0wQJP7eCkwP9OmbU27lgQo90/VM8I3Dwnlc96J8d
 2ktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=8cwZvhmwKBZPMvcVh5++qiSg4Cxg17R6mFAjCqPD3ww=;
 b=ln/CeTuw3bAvR+ZJSkdDgUOUnMaR4yHJYFpuKs8RDdWMIeaZWPb+3+9OTzYbkT0siC
 lKCHzRWzJJvuQcuk9FRC65G95WT05q5N54yyuGJtICd8GuL8syUpuvuUFMU2/IVjAeRC
 dP1moz9P4JODylRUUXhjn/bkI7ZqbeVo5iCKHrx886rZiK/7FWwKjwuHkt+rLQW5oM34
 mmCxD8rsYwcKsfst8sFc7ctcxMMt04cl7m0NwKONxOTi3weISVNUhTTCjTj6lW/i2Nxk
 +jru+y/V3o3LqQ9aSyREzow1nQ4u3Hyw0AiVb1k9VFLc2ED4KpXRmhEFIJ8h5W9/xIwu
 X6KQ==
X-Gm-Message-State: AOAM531OJ4vcXYplxivowmGyPLY1z1TZnWD5TfwGM0JgyuCx6A2p7vbZ
 TOFhyYTT3OTjaPp+d8s2T5VOrMCmoYU=
X-Google-Smtp-Source: ABdhPJwfAkTwM+O1p5AoY3Dcr5onfUrpXjx3I21CyfhrYQVP7zK+9ClNRsYcoUzg8NDy3n1YfBmKdw==
X-Received: by 2002:a05:620a:248e:: with SMTP id
 i14mr24796585qkn.245.1614781084814; 
 Wed, 03 Mar 2021 06:18:04 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id 77sm3504530qko.48.2021.03.03.06.18.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Mar 2021 06:18:04 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 3 Mar 2021 09:18:03 -0500
Message-Id: <CF62320E-D32B-42F1-8D8A-EB0B1592C67F@gmail.com>
References: <CACSyVY3cKqHzRRrP459Jd-S2=kGZ05HWmYYH8AnFmdhkbDEseA@mail.gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
In-Reply-To: <CACSyVY3cKqHzRRrP459Jd-S2=kGZ05HWmYYH8AnFmdhkbDEseA@mail.gmail.com>
To: Kelvin Lok <kelvin.lok266@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] B205mini continously transmitting a carrier tone
 even though UHD crashed
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhhdOKAmXMgbGlrZWx5IGp1c3QgdGhlIFRYIExvIGxlYWthZ2UuIAoKSeKAmW0gZ3Vlc3Npbmcg
aXQgYSBhIGxvdCB3ZWFrZXIgdGhhbiB3aGVuIHlvdeKAmXJlIGFjdHVhbGx5IHRyYW5zbWl0dGlu
Zz8KClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTWFyIDMsIDIwMjEsIGF0IDM6NDIgQU0sIEtl
bHZpbiBMb2sgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90
ZToKPiAKPiDvu78KPiBIaSBldmVyeW9uZSwgSSBhbSBmYWNpbmcgYW4gdW5leHBlY3RlZCBwcm9i
bGVtIHdoZXJlIG15IEIyMDVtaW5pIFVTUlAgaXMgY29udGludW91c2x5IHRyYW5zbWl0dGluZyBh
IHRvbmUgKHRoYXQgSSBzZXQgaW5pdGlhbGlzZWQgYXMgdGhlIHR4IGZyZXEpLCBldmVuIHdoZW4g
bXkgcGFyZW50IHByb2dyYW0gaGFzIGNyYXNoZWQuIE15IHBhcmVudCBwcm9ncmFtIGlzIGEgQysr
IHByb2dyYW0gdGhhdCBjYWxscyB1aGQsIGJ1dCB3aGVuIHRoZSBtYWluIHByb2dyYW0gY2F0Y2hl
cyBhbiBleGNlcHRpb24gYW5kIHRlcm1pbmF0ZXMsIHRoZSBCMjA1bWluaSBpcyBzdGlsbCB0cmFu
c21pdHRpbmcgYSB0b25lLiBJIG9ic2VydmVkIHRoaXMgYmVoYXZpb3VyIGJ5IG1vbml0b3Jpbmcg
dGhlIFRYIG91dHB1dCB3aXRoIGEgc3BlY3RydW0gYW5hbHlzZXIuCj4gCj4gRG9lcyBhbnlvbmUg
aGF2ZSBhbnkgaWRlYXMgd2hhdCBjb3VsZCBiZSB0aGUgcHJvYmxlbT8gRG8gSSBuZWVkIHRvIGNh
bGwgYSBVSEQgdXNycCBkZXN0cnVjdG9yPyBJIG5vdGljZWQgdGhhdCB0aGUgZXhhbXBsZSBVSEQg
cHJvZ3JhbXMgZG9uJ3QgbmVlZCB0byByZWxlYXNlIG9yIGRlbGV0ZSB0aGUgdWhkIG9iamVjdC4g
SGVuY2UgSSBhbSBzdHVtcGVkLgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
