Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 850D81F1B08
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jun 2020 16:33:18 +0200 (CEST)
Received: from [::1] (port=56530 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiIpv-000605-9b; Mon, 08 Jun 2020 10:33:15 -0400
Received: from mail-ej1-f43.google.com ([209.85.218.43]:40726)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jiIpq-0005UB-Cv
 for usrp-users@lists.ettus.com; Mon, 08 Jun 2020 10:33:10 -0400
Received: by mail-ej1-f43.google.com with SMTP id q19so18562785eja.7
 for <usrp-users@lists.ettus.com>; Mon, 08 Jun 2020 07:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=FCQcVnEhvDqLCR0LFI8Y9lDaejoQtt0DmIYT97HDqJY=;
 b=hgb3BkMuZvPThDTw7dOLEjVXQ72xpxbE3Rf6M9Y9+FLTdWA7Y0eaJbd4/UB8xK7eQU
 LC/uZeLT8frjKF76IGKpmER025zD1OxbVRaSN4TRr6GW5AwAAM95O29HHJAYI6agoCii
 Ui2Vp5E0TlyV80KO9xnfzriMC/KM0TaLrYp06pZ8felhh2uk/i7H16gQaBaqpEvjI56i
 hxafp3xVys5hmiVNz1/R6T24mdrik6M7mjEjapyo3YqfuwoMFPypJ85NZbbWbBlyJKAJ
 k/62LqGrIVwo90l8GZUooAFAq1WkHi0o4V3rqj6UKyXcAxtQ4/40NOo5eIps3orgoW6G
 Ir/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FCQcVnEhvDqLCR0LFI8Y9lDaejoQtt0DmIYT97HDqJY=;
 b=IzeH0bIFgEcG1acBnnp0wOrfwQkrHGzrS8eDJU0b3EsgZfynWwASasMkyu3d1qu/BN
 nm7/Y8YJfvr2z3UGDNIjIi9zmgqQ+uVxvz+I0iG6OO84sl4vQAP+ifCOkmQnqXfIiH/i
 1DW6tWILomMQyLs38Z6+kgfE6nPpZuKk4THdxou0TewCpiygmQVqOwzGKR+yhfaeu4SN
 5SQDMgvR6SlXBtBKHrSGOK1cquK4Y4j9mjJdpyRl6sGalWlhl7IqoAuTKlMXBxMJROac
 OREiwHMb2sHiEspBXlUy6d95ar5RGI330BhM3xH6gMtuj3J2YKErRxtTO1VIsgecI6ZQ
 P6Lg==
X-Gm-Message-State: AOAM532S8+cF44u9Dft/ogl9ra9XpqkpPEItbpRq99kCm/Rto01mWKug
 jyOJcKrO9GLI7ApIPJK3Kn8XC7RZiM+0nw==
X-Google-Smtp-Source: ABdhPJyp3AzIdGqN+TSNjM6KOxCmwgv1Jl87EJF+GJhkcR4JOGlbFIL55RplLBF+Slp2P69LM63ajg==
X-Received: by 2002:a17:906:4ec1:: with SMTP id
 i1mr18385440ejv.152.1591626748809; 
 Mon, 08 Jun 2020 07:32:28 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id f4sm10746717ejk.17.2020.06.08.07.32.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 07:32:27 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <6a634b94-5bf2-7131-dc41-48c39cdfef58@tuwien.ac.at>
Message-ID: <f926585a-0afb-8f3b-61f9-e9096d8d0d18@ettus.com>
Date: Mon, 8 Jun 2020 16:32:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6a634b94-5bf2-7131-dc41-48c39cdfef58@tuwien.ac.at>
Content-Language: en-US
Subject: Re: [USRP-users] Python API error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

SGkgQ2hyaXN0aWFuLAoKbmV2ZXIgcnVuIFVIRCBhcyBzdXBlcnVzZXIsIHRoZXJlIHNob3VsZCBu
b3QgYmUgYSByZWFzb24gZm9yIHRoaXMgdGhhdAp5b3UgY2FuJ3Qgd29yayBhcm91bmQuCgpDaGFu
Z2luZyB0aGUgdXNlciBub3JtYWxseSBkb2Vzbid0IHByZXNlcnZlIGVudmlyb25tZW50LCBzbywg
YXMgdGhlCmVycm9yIG1lc3NhZ2Ugc3VnZ2VzdHMsIHlvdSdsbCBoYXZlIHRvIGV4cGxpY2l0bHkg
c2V0IFVIRF9SRk5PQ19ESVIuCgpCZXN0IHJlZ2FyZHMsCk1hcmN1cwoKT24gMDguMDYuMjAgMTU6
MzEsIENocmlzdGlhbiBTcGluZGVsYmVyZ2VyIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IEhpLAo+
IAo+IEkgaGF2ZSBhIGxpdHRsZSBwcm9ibGVtIHdpdGggdGhlIFB5dGhvbiBBUEkuIEkgaW5zdGFs
bGVkIHRoZSBVSEQgMy4xNQo+IGRyaXZlciBmcm9tIHNvdXJjZS4gV2hlbiBJIHdhbnQgdG8gdXRp
bGl6ZSB0aGUgdWhkLnVzcnAuTXVsdGlVU1JQKCkKPiBjb21tYW5kIGl0IG9ubHkgd29ya3MgaWYg
SSBsYXVuY2ggUHl0aG9uIGFzIG5vcm1hbCB1c2VyLiBJZiBJIG9wZW4gdGhlCj4gUHl0aG9uIGVu
dmlyb25tZW50IHdpdGggc3VkbyBpdCBkb2VzIG5vdCB3b3JrIGFueW1vcmUgYW5kIEkgcmVjZWl2
ZSB0aGUKPiBmb2xsb3dpbmcgZXJyb3I6Cj4gCj4gUHl0aG9uIDMuNi45IChkZWZhdWx0LCBBcHIg
MTggMjAyMCwgMDE6NTY6MDQpCj4gW0dDQyA4LjQuMF0gb24gbGludXgKPiBUeXBlICJoZWxwIiwg
ImNvcHlyaWdodCIsICJjcmVkaXRzIiBvciAibGljZW5zZSIgZm9yIG1vcmUgaW5mb3JtYXRpb24u
Cj4+Pj4gaW1wb3J0IHVoZAo+Pj4+IHVoZC51c3JwLk11bHRpVVNSUCgpCj4gW0lORk9dIFtVSERd
IGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsKPiBVSERfMy4xNS4w
LjAtNDQtZzVhOWY5ZWQ5Cj4gW0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVl
bmNlLi4uCj4gW0lORk9dIFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDE0NzIgYnl0ZXMuCj4g
W0lORk9dIFtYMzAwXSBSYWRpbyAxeCBjbG9jazogMjAwIE1Iego+IFtJTkZPXSBbR1BTXSBGb3Vu
ZCBhbiBpbnRlcm5hbCBHUFNETzogTENfWE8sIEZpcm13YXJlIFJldiAwLjkyOWIKPiBUcmFjZWJh
Y2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6Cj4gwqAgRmlsZSAiPHN0ZGluPiIsIGxpbmUgMSwg
aW4gPG1vZHVsZT4KPiDCoCBGaWxlICIvdXNyL2xpYi9weXRob24zL2Rpc3QtcGFja2FnZXMvdWhk
L3VzcnAucHkiLCBsaW5lIDIwLCBpbiBfX2luaXRfXwo+IMKgwqDCoCBzdXBlcihNdWx0aVVTUlAs
IHNlbGYpLl9faW5pdF9fKGFyZ3MpCj4gUnVudGltZUVycm9yOiBBc3NlcnRpb25FcnJvcjogRmFp
bGVkIHRvIGZpbmQgYSB2YWxpZCBYTUwgcGF0aCBmb3IgUkZOb0MKPiBibG9ja3MuCj4gVHJ5IHNl
dHRpbmcgdGhlIGVudmlyb21lbnQgdmFyaWFibGUgVUhEX1JGTk9DX0RJUiB0byB0aGUgY29ycmVj
dCBsb2NhdGlvbgo+IAo+IAo+IEkgaGF2ZSByZWFkIGluIGEgZm9ybWVyIHBvc3QgdGhhdCB0aGlz
IG1pZ2h0IGhhcHBlbiB3aGVuIHRoZSBkcml2ZXIgaXMKPiBpbnN0YWxsZWQgd2l0aCAibWFrZSBp
bnN0YWxsIiwgYnV0IEkgYWxyZWFkeSByZWluc3RhbGxlZCB3aXRoICJzdWRvIG1ha2UKPiBpbnN0
YWxsIiBhbmQgdGhlIHNhbWUgcHJvYmxlbSByZW1haW5zLgo+IERvZXMgYW55b25lIGtub3cgd2h5
IHRoaXMgaGFwcGVucz8KPiAKPiAKPiBUaGFuayB5b3UsCj4gCj4gQ2hyaXN0aWFuCj4gCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
