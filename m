Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29337326F07
	for <lists+usrp-users@lfdr.de>; Sat, 27 Feb 2021 22:27:33 +0100 (CET)
Received: from [::1] (port=57646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lG77Z-00009x-0D; Sat, 27 Feb 2021 16:27:29 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:41888)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lG77V-00005n-1i
 for USRP-users@lists.ettus.com; Sat, 27 Feb 2021 16:27:25 -0500
Received: by mail-qt1-f173.google.com with SMTP id r24so9298780qtt.8
 for <USRP-users@lists.ettus.com>; Sat, 27 Feb 2021 13:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=MlcITcNeL+SXctLTbLs/9YIxepefClnGqUk1OBoiQ/0=;
 b=a3P86LmNalY7bML9LMqpRaKFD1FA2i+pD/XkvV3/zqpeB2Knc9pUcef+MmLQ5sUlD9
 0QgPUYqnLMvpO8pDNbxRCG9FPfIllDKOv/R1zWuHs+mLmNIgGbt13FgwurcBPcW+bsPV
 1kgckHrpeeeX/lbaxLmt7XEiDci0BYkzOhVRidJAMQC+YfsPSyfVFLMQ0payDRgqp+an
 4Ikz4YL1hseuLWrQliqtWNffU5SU4dbtOZRr/HWEsYUYgXQHqoGhGLlWooa/kEmWadh+
 9vVxGn6OYn9b+on5J1MsUHiFlwjTAJS4WCDW6p16Qc8D+9wv3Djwul5jGMpG/nvB0XLy
 KGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=MlcITcNeL+SXctLTbLs/9YIxepefClnGqUk1OBoiQ/0=;
 b=awquSLQTF37UMGngHjFPscFiQGeZqabkruwX5EMMMQuATzi4s4RUZFOVvkEmd/Ruhs
 J8iQKFmv+NdNlGQQmbW4CChUMKPhXFJCKoig0JWu/yEFMiDRhC84YGJ7CHa7rbsrHvde
 McUwSNk8lOfgwDWOfC653iFIRePSVhfG0R8ybA/aEv5RJVA8S6fjEb3th6CjHBURXjPz
 VBN/gOYoVji2kESXZESaW1BsiVc8h0DCytWs2AtQi8SQNdOvof5RwCe27mXJrpBS6Tq4
 leiUY7qTZ24kqfD8Q5/aw7zlRAgXzRW925OiykXqhh9/g/RbcWgvyPqSl4JokrPn4vFf
 gX7g==
X-Gm-Message-State: AOAM5338Pwf+zRyHA20upIjYOLFzmSkNhT1wZmpauHP6TPVk0d7JCoA9
 8EcGTTUmqhtnwFC3yX+9huMcPzMpsog=
X-Google-Smtp-Source: ABdhPJzj+C+8F/tMLW7MmW34oiMdZyKEH0cznvOhQYGo0BT8KgZgmnQdAxVSfJ9j/AyMFAAIewQk/A==
X-Received: by 2002:ac8:7690:: with SMTP id g16mr7538215qtr.239.1614461204207; 
 Sat, 27 Feb 2021 13:26:44 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id p35sm8411295qtb.23.2021.02.27.13.26.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Feb 2021 13:26:43 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Sat, 27 Feb 2021 16:26:43 -0500
Message-Id: <7787F3C9-C297-44E3-A4AB-754671B10876@gmail.com>
References: <b38c389e-72ec-b685-51f6-af12b76b9283@ettus.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <b38c389e-72ec-b685-51f6-af12b76b9283@ettus.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
X-Mailer: iPhone Mail (18D52)
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

VHdvIFgzMTAgcGx1cyA0IFVCWCBkZWxpdmVycyA0eDQgTUlNTyB3aXRoIGFuIGV4dGVybmFsIDFQ
UFMgYW5kIDEwTWh6IGNsb2Nr4oCUb2N0b2Nsb2NrIG9yIHNvbWV0aGluZyBlbHNlLiAgCgpUaGUg
WDMxMCBkb2VzIGhhdmUgYSByZWYgY2xvY2sgb3V0cHV0LCBidXQgSSB0aGluayBpdCBpcyBub3Qg
cmVjb21tZW5kZWQgZm9yIHVzZSBpbiBjb2hlcmVudCBhcHBsaWNhdGlvbnMganVzdCBiZWNhdXNl
IG9mIHVua25vd24gY2xvY2sgc2tldy4gCgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gRmVi
IDI3LCAyMDIxLCBhdCAyOjUwIFBNLCBNYXJjdXMgTcO8bGxlciB2aWEgVVNSUC11c2VycyA8dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7v1lvdSdyZSByaWdodC4gVGhl
IHdob2xlIHBvaW50IG9mIHRoZSBUd2luUlggYm9hcmRzIGlzIHRvIGdpdmUgeW91IGNvaGVyZW50
IGNoYW5uZWxzLCBhbmQKPiB5b3UgY2FuIGJ1aWxkIGEgY29oZXJlbnQgNC1jaGFubmVsICpyZWNl
aXZlciouCj4gCj4gSG93ZXZlciwgVHdpblJYIGNhbid0IHRyYW5zbWl0LCBzbyBmb3IgNMOXNCBN
SU1PLCB5b3UnbGwgbmVlZCBzb21ldGhpbmcgZWxzZS4gU2luY2UgdGhlcmUncwo+IG5vIGR1YWwt
dHJhbnNtaXQtY2hhbm5lbCBkYXVnaHRlcmJvYXJkcywgeW91J2xsIG5lZWQgdG8gY29vcmRpbmF0
ZSB0aGUgcGhhc2VzIG9mIGZvdXIKPiBkaWZmZXJlbnQgVFgtY2FwYWJsZSBkYXVnaHRlcmJvYXJk
cy4gVGhlcmVmb3JlLCB5b3UnbGwgbmVlZCBhIGNsb2NrIGRpc3RyaWJ1dG9yIGxpa2UgdGhlCj4g
b2N0b2Nsb2NrLgo+IAo+IEhhdmVuJ3QgdHJpZWQgaXQgaW4gYSB3aGlsZSwgYnV0IHRoZSBjbGsg
YW5kIHBwcyBvdXQgb2YgdGhlIFgzeDAgc2VyaWVzIHNob3VsZCBzb2x2ZSB0aGF0Cj4gaXNzdWUs
IGhvd2V2ZXI6IHlvdSBjb3VsZCBsaW5rIHR3byBVU1JQIFgzeDAgdGhhdCBhcmUgZXF1aXBwZWQg
d2l0aCBlLmcuIHR3byBVQlgtMTYwIGVhY2gKPiB0aHJvdWdoIHRoYXQgdG8gZ2V0IDQgY29oZXJl
bnQgVFggY2hhbm5lbHMsIGFuZCB1c2UgYSBzaW5nbGUgVVNSUCBYM3gwIHdpdGggdHdvIFR3aW5S
WCBhcwo+IHJlY2VpdmVyIHdpdGggNCBjb2hlcmVudCBSWCBjaGFubmVscy4KPiAKPiBCZXN0IHJl
Z2FyZHMsCj4gTWFyY3VzCj4gCj4gCj4+IE9uIDI3LjAyLjIxIDE1OjUwLCBBbGkgRy4gRGV6ZnVs
aSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4gSGkgYWxsLAo+PiBXaGVuIFVTUlAgWDN4MCBpcyB1
c2VkIHdpdGggVHdpblJYIGRhdWdodGVyYm9hcmRzLCB3ZSBjYW4gaGF2ZSB1cCB0byA0IHJ4IGNo
YW5uZWxzLgo+PiAocmVmOkFOLTI0NCwgRGlyZWN0aW9uIEZpbmRpbmcgd2l0aCB0aGUgVVNSUOKE
oiBYLVNlcmllcyBhbmQgVHdpblJY4oSiKQo+PiBCdXQgaW4gQU4tODgxIChTZWxlY3RpbmcgYSBV
U1JQIERldmljZSkgaW4gVGFibGUgNCwgaXQgc2F5cyB0aGF0IFVTUlAgWDN4MCBuZWVkcwo+PiBP
Y3RvQ2xvY2sgZm9yIDR4NCBNSU1PICEhIQo+PiBJIHdvbmRlciB3aGVuIFgzeDAgY2FuIHJlY2Vp
dmUgNCBjaGFubmVscyB3aXRoIFR3aW5SWCwgd2h5IGl0IGNhbiBOT1QgYmUgdXNlZCBpbiA0eDQK
Pj4gTUlNTyB3L28gT2N0b0Nsb2NrLgo+PiAKPj4gcmVnYXJkcywKPj4gQUdECj4+IAo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo=
