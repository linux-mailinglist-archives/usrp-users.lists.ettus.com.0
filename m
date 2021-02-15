Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A296B31C109
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 18:52:39 +0100 (CET)
Received: from [::1] (port=41494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBi32-0006Mu-BW; Mon, 15 Feb 2021 12:52:36 -0500
Received: from mail-wr1-f41.google.com ([209.85.221.41]:33621)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lBi2x-0006Eg-V4
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 12:52:32 -0500
Received: by mail-wr1-f41.google.com with SMTP id 7so10034103wrz.0
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 09:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=00HqQhK/EVq9irtQ8SH8aNFJOSt04WwVMgvTqp3WoSk=;
 b=g9qfabJ19BOegVnSuvDh1cuS8cOWxxY4e1MO2f5/CDp6/ctaZ6YX9qFdttI0Yo721m
 hYpQZMt2Cz/BmtREZ+gNAAzcq4napxq6byvP5evLNCi5Qb0J89A6ZOrSsGyXEZ+DD5qd
 gW+cF++obAQPUKft+TafUnyhGhfziCrLZcM94Sb5W+twEQlvm7eiICSodJ9m1Hok/7yW
 sPc2+n6BATC3MyoVQCGqvmuzr4Q3hysd+aH9StqZdQ4UvzLiQS8uXIpw2eRbffKFbEgb
 wSXuQRDu3GuqZ8oIUf9XcIOMpHsze/G+6bePXQGUrW52hQGBvHrwhty0ZAdfuewjFzel
 p6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=00HqQhK/EVq9irtQ8SH8aNFJOSt04WwVMgvTqp3WoSk=;
 b=S+QsQsX7TbWMmFCxozR2u4Hytgbxddsr4sbrjoO/pCuudRbQXcjOHoK5KYGGWnuhA7
 Zhd5dEDx5TcAgUqKnp4ujSXHyW2o4sT81qZ8L7usHxBzxFO2e9ZgzLsKHySYGlB3J1SE
 zVXDMC1Sd539QRlSbkqDhRtitYQU760y29anutLm+6n87ImNq6gphQpQhIuHD9D6qEQ6
 /1vqzQDuj6WMuAnEhtLf4RaNqZvyANOjgXwBBdeIRKo7kSMt+RAF0RMpPpm+S1KXuy0n
 aPX469DWEho4mfafDV0SL0et3tUEQmvSL4rKhfI6IPC0Kh8QAIZiau4o9q3kTipA9Mh7
 6QSw==
X-Gm-Message-State: AOAM531kZ773YOLjk/dM+Nj66/L9geqgDMoKpboWYUqBvxo8lEE+JcTu
 uLeVW36dwqsTs+YAbJeGLzPuP8DX3eYJVnCv0yM=
X-Google-Smtp-Source: ABdhPJz0J14Y3y3T0PB/KJwnF9SxHilEe6mmU0rsxJ0Wv03R5tVNjnV0OrWPIOjATNN8zcyVUHwbXQ==
X-Received: by 2002:adf:efcc:: with SMTP id i12mr17009576wrp.65.1613411510533; 
 Mon, 15 Feb 2021 09:51:50 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id s5sm32990wmh.45.2021.02.15.09.51.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Feb 2021 09:51:50 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <14566F56-D30D-43E0-B467-6E3541A1AB2F@hhi.fraunhofer.de>
Message-ID: <a0a3859c-badf-cf0c-cdff-2ecb68805327@ettus.com>
Date: Mon, 15 Feb 2021 18:51:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <14566F56-D30D-43E0-B467-6E3541A1AB2F@hhi.fraunhofer.de>
Content-Language: en-US
Subject: Re: [USRP-users] Get and set CBX-120 ads62p48 gain
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

RGVhciBNci4gQXNrYXIsCgp5b3UgY2FuIGdldCB0aGUgZGV0YWlsZWQgbmFtZXMgb2YgdGhlIGF2
YWlsYWJsZSBnYWluIGVsZW1lbnRzIG9mIGV2ZXJ5IGRldmljZSBieSBjYWxsaW5nCgphdXRvIGdh
aW5fbmFtZXMgPSBteV9tdWx0aV91c3JwLT5nZXRfcnhfZ2Fpbl9uYW1lcygpOwoKYW5kIHRoZW4g
ZG8gc29tZXRoaW5nIGZ1biBsaWtlOgoKZm9yKGNvbnN0IGF1dG8mIGdhaW5fbmFtZSA6IGdhaW5f
bmFtZXMpIHsKwqDCoMKgIGF1dG8gZ2FpbiA9IG15X211bHRpX3VzcnAtPmdldF9yeF9nYWluKGdh
aW5fbmFtZSk7CsKgwqDCoCBzdGQ6OmNvdXQgPDwgZ2Fpbl9uYW1lIDw8ICI6ICIgPDwgZ2FpbiA8
PCAiIGRCKGFyYml0cmFyeSlcbiI7Cn0KClNldHRpbmcgdGhlIGdhaW5zIHdvcmtzIGp1c3QgdGhl
IHNhbWUsIG15X211bHRpX3VzcnAtPnNldF9yeF9nYWluKGdhaW5fZWxlbWVudF9uYW1lLCB2YWx1
ZSkuCgpIb3dldmVyLCA5OS41JSBvZiB0aW1lc8K5IHlvdSAqZG9uJ3QqIHdhbnQgdG8gc2V0IHRo
ZSBnYWluIHRvIGFueSBlbGVtZW50IGluIGlzb2xhdGlvbjsgVUhECndhcyBjb2RlZCB0byBjaG9v
c2UgdGhlIG1vc3Qgc2Vuc2libGUgY29tYmluYXRpb24gb2YgZ2FpbnMgZGlzdHJpYnV0ZWQgYWNy
b3NzIHRoZSBzZXR0YWJsZQpnYWluIGVsZW1lbnRzLgoKVGhlcmUncyBhIHJlbGF0aXZlbHkgbmV3
IEFQSSBmb3IgKkdhaW4gUHJvZmlsZXMqOiBXaXRoIGEgY2FsbCB0bwpteV9tdWx0aV91c3JwLT5n
ZXRfcnhfZ2Fpbl9wcm9maWxlX25hbWVzKCkgeW91IGdldCBhIGxpc3Qgb2YgYXZhaWxhYmxlIGdh
aW4gcHJvZmlsZXMgKEkKbXVzdCBhZG1pdCBJIGRvbid0IGtub3cgd2hpY2ggb25lcyBhcmUgc3Vw
cG9ydGVkIG9uIENCWC0xMjA7IHlvdSBtaWdodCBvbmx5IGdldCBhbiBlbXB0eQpsaXN0IG1lYW5p
bmcgdGhlcmUncyBidXQgb25lIGRlZmF1bHQgcHJvZmlsZSk7IHlvdSBjYW4gc2V0IHRoZW0gd2l0
aCB0aGUgZXBvbnltb3VzIHNldHRlcgptZXRob2QuCgpNYXkgSSBhc2sgd2hhdCB0aGUgaW50ZW50
aW9uIGJlaGluZCB3YW50aW5nIHRvIHNldCB0aGF0IGluZGl2aWR1YWwgZ2FpbiBpbnN0ZWFkIG9m
IHNpbXBseQpzZXR0aW5nIHRoZSBvdmVyYWxsIFJYIGdhaW4gaXM/IE1heWJlIHdlIGNhbiBhZHZp
c2UgdG8geW91ciBhZHZhbnRhZ2UgYmFzZWQgb24gdGhhdC4KCkJlc3QgcmVnYXJkcywKTWFyY3Vz
IE3DvGxsZXIKCsK5IE5vdGUgdGhhdCA4Ny41NiUgb2Ygc3VjaCBudW1iZXJzIGFyZSB0b3RhbGx5
IG1hZGUgdXAKCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3ZpZGVkIEFzIElz
LiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhCnByb2R1Y3QsIGZvciB1
c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1c2UgaW4gaGF6
YXJkb3VzCmVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVzZSBvZiB0aGUg
Q29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3QgdG8KdGVybXMgb2YgdGhlIGxpY2Vuc2Vz
IHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlzIHVzZWQuIFN0
YW5kYXJkCmxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0IGh0dHBzOi8v
d3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLgoKTkkgd2lsbCBvbmx5IHBlcmZv
cm0gc2VydmljZXMgYmFzZWQgb24gaXRzIHVuZGVyc3RhbmRpbmcgYW5kIGNvbmRpdGlvbiB0aGF0
IHRoZSBnb29kcyBvciBzZXJ2aWNlcyAoaSkgYXJlIG5vdCBmb3IgdGhlIHVzZSBpbiB0aGUgcHJv
ZHVjdGlvbiBvciBkZXZlbG9wbWVudCBvZiBhbnkgaXRlbSBwcm9kdWNlZCwgcHVyY2hhc2VkLCBv
ciBvcmRlcmVkIGJ5IGFueSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4g
dGhlIGxpY2Vuc2UgcmVxdWlyZW1lbnQgY29sdW1uIG9mIFN1cHBsZW1lbnQgTm8uIDQgdG8gUGFy
dCA3NDQsIFUuUy4gRXhwb3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zIGFuZCAoaWkpIHN1
Y2ggYSBjb21wYW55IGlzIG5vdCBhIHBhcnR5IHRvIHRoZSB0cmFuc2FjdGlvbi4gIElmIG91ciB1
bmRlcnN0YW5kaW5nIGlzIGluY29ycmVjdCwgcGxlYXNlIG5vdGlmeSB1cyBpbW1lZGlhdGVseSBi
ZWNhdXNlIGEgc3BlY2lmaWMgYXV0aG9yaXphdGlvbiBtYXkgYmUgcmVxdWlyZWQgZnJvbSB0aGUg
VS5TLiBDb21tZXJjZSBEZXBhcnRtZW50IGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2Nl
ZWQgZnVydGhlci4KCk9uIDE1LjAyLjIxIDE3OjQ4LCBBc2thciwgUmFtZXogdmlhIFVTUlAtdXNl
cnMgd3JvdGU6Cj4KPiBEZWFyIFNpciBvciBNYWRhbSwKPgo+IMKgCj4KPiBXZSBhcmUgdXNpbmcg
dGhlIMKgWDMxMCB3aXRoIENCWC0xMjAgZGF1Z2h0ZXIgY2FyZHMuIEhvdyBjYW4gd2UgZ2V0IGFu
ZCBzZXQgdGhlIGRpZ2l0YWwKPiBSWCBnYWluIChhZHM2MnA0OCBnYWluKSBmcm9tIEMrKyBhcHBs
aWNhdGlvbj8KPgo+IMKgCj4KPiDCoAo+Cj4gQmVzdCByZWdhcmRzIC8gTWl0IGZyZXVuZGxpY2hl
biBHcsO8w59lbgo+Cj4gLS0KPiBBc2thciwgUmFtZXosIE0uU2MuCj4gUmVzZWFyY2ggQXNzb2Np
YXRlwqAvIFByb2plY3QgTWFuYWdlciAvIERlbGVnYXRlCj4KPiBXaXJlbGVzcyBDb21tdW5pY2F0
aW9ucyBhbmQgTmV0d29ya3MKPiBGcmF1bmhvZmVyIEluc3RpdHV0ZSBmb3IgVGVsZWNvbW11bmlj
YXRpb25zLCBIZWlucmljaCBIZXJ0eiBJbnN0aXR1dGUsIEhISQo+IEVpbnN0ZWludWZlciAzNywg
MTA1ODcgQmVybGluLCBHZXJtYW55Cj4gKzQ5ICgwKTMwIDMxMDAyLTYyOAo+IHJhbWV6LmFza2Fy
QGhoaS5mcmF1bmhvZmVyLmRlIDxtYWlsdG86cmFtZXouYXNrYXJAaGhpLmZyYXVuaG9mZXIuZGU+
Cj4gd3d3LmhoaS5mcmF1bmhvZmVyLmRlIDxodHRwOi8vd3d3LmhoaS5mcmF1bmhvZmVyLmRlLz4K
Pgo+IMKgCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
