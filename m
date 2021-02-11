Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61813318CC3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 14:57:53 +0100 (CET)
Received: from [::1] (port=56318 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lACTf-0000qY-Jp; Thu, 11 Feb 2021 08:57:51 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:43628)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lACTb-0000dT-Fb
 for USRP-users@lists.ettus.com; Thu, 11 Feb 2021 08:57:47 -0500
Received: by mail-qk1-f175.google.com with SMTP id m144so5141374qke.10
 for <USRP-users@lists.ettus.com>; Thu, 11 Feb 2021 05:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=WapUgWwp3NC1C+sL2IJnWu8G33Uf0gbwzqQadKNOkmg=;
 b=N3GE13yMlOlVMFOtl4QYyNqLZ3gsZj0bSiAAUn47EdG5rkupocqdbNExmiVMZsq2TI
 DExzB0rGyZYz0LhY3boXC++ZpMr+70OaQeGyb1I4G3M9jEnTAEDmcdFQx/RPGHR1NygM
 FNazgVix5Chq8gT/WZEOfwAbhI7ClrFasor631hSxFogM1axMdmyLfNcvRzXyZyVMTIs
 AIMZ+SDd1KoOBpw/z+HTwFE1AJ23Sux9D07mqNWG1sVLH9W+aUJzuq7u2qNeMcmcziEp
 NZZdzgst7Z6Ho0qd5y+qLRWhX7EXuP5+A0sMxt+R3pmi/Ml4IXZmU4FKD1yPtguzPD9Q
 bYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=WapUgWwp3NC1C+sL2IJnWu8G33Uf0gbwzqQadKNOkmg=;
 b=FMTAuIT5F2UG0S6BK4hEQ1VTj2V3IwSwBCiYLZNpzQT+0opUa/5S2TwvgfQxCx7MdC
 3tJcF8p89fqBvcR88oJ4Bzvh/GeNxHSQUw45z4NJACQ1uwN4YivznwNQqfq642a/XpoX
 VJ827q2ZvRxWK541FYRQQNv3iGjVmLV98D/cszTIkLTpyqNA6m1mvhpI+0Wcjkvu4cUq
 LuLU1sI1m/PeitjG0BOa/UgZ3tDk7w62UDFLL507LbEh/tNShiAu0thffFtn1QC22FDn
 TO2wqnspWcJ5fFf3smLRnIg8H5rabDsrq+cpKaj5T9pbE3ArMrjvGN78jEPRIxRckkej
 KMcA==
X-Gm-Message-State: AOAM532Qswc39B42O0FyJPSCTUmtvLObTkM//FGNrkLYoO9FohRVXS/e
 EjA06DON4nR45D653rfXbQs=
X-Google-Smtp-Source: ABdhPJzTUlaK85Z5VEGQwmvHdOHh25+VBwiNNmj9PlBse+NSxurqJT+TybBQeyi+L7PyNoyNnBooSQ==
X-Received: by 2002:a05:620a:1466:: with SMTP id
 j6mr8683211qkl.164.1613051826753; 
 Thu, 11 Feb 2021 05:57:06 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id v12sm3899690qkg.63.2021.02.11.05.57.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 05:57:06 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Feb 2021 08:57:05 -0500
Message-Id: <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
To: Casey Wolsieffer <cwolsief@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] Python API install help - Ubuntu 20.04
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

WW91ciBpbnN0YWxsIHByZWZpeCBpcyAvdXNlL2xvY2FsCgpEaWQgeW91IHN1ZG8gbWFrZSBpbnN0
YWxsPwoKCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiAxMSwgMjAyMSwgYXQgODozMCBB
TSwgQ2FzZXkgV29sc2llZmZlciB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20+IHdyb3RlOgo+IAo+IO+7vwo+IEhlbGxvLCBJIGhhdmUgdHJpZWQgc2V2ZXJhbCB0aW1l
cyB0byBpbnN0YWxsIFB5dGhvbjMgdWhkIG9uIG15IHN5c3RlbSBidXQgd2hlbiBJIGF0dGVtcHQg
Pj4+aW1wb3J0IHVoZCBpbiBweXRob24zIGVudmlyb25tZW50IEkgYWx3YXlzIHJlY2VpdmUgTW9k
dWxlTm90Rm91bmRFcnJvcjogbm8gbW9kdWxlIG5hbWVkICd1aGQnCj4gCj4gQXMgZmFyIGFzIEkg
Y2FuIHNlZSB0aGVyZSBhcmUgbm8gaGFuZyB1cHMgb24gaW5zdGFsbCBhbmQgYWZ0ZXIgJG1ha2Us
IEkgcnVuICRtYWtlIHRlc3QgYW5kIGdldCAwIG91dCBvZiA4MiBmYWlscy4gQmVsb3cgaXMgbXkg
ZW5hYmxlZCBjb21wb25lbnRzIGFmdGVyIEkgcnVuCj4gCj4gJGNtYWtlIC4uLwo+IAo+IEkndmUg
YWxzbyBwdXQgYSB1aGQuY29uZiBmaWxlIGluIG15IGxkLnNvLmNvbmYgZmlsZSBhbmQgcmFuICRz
dWRvIGxkY29uZmlnLiBBbHRob3VnaCBJJ20gbm90IGNlcnRhaW4gSSdtIHB1dHRpbmcgaW4gY29y
cmVjdCBwYXRoLCByaWdodCBub3cgaXQncyBbbXlfZGlyZWN0b3J5XS91aGQvaG9zdC9idWlsZC9s
aWIvCj4gCj4gSSdtIG9uIFVidW50dSAyMC4wNCwgYW55IGhlbHAgaXMgZ3JlYXRseSBhcHByZWNp
YXRlZCEKPiAKPiAtLSAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMgCj4gLS0gIyBVSEQgZW5hYmxlZCBjb21wb25lbnRzICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIAo+IC0tICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyAKPiAtLSAgICogTGliVUhEIAo+IC0tICAgKiBMaWJVSEQgLSBD
IEFQSSAKPiAtLSAgICogTGliVUhEIC0gUHl0aG9uIEFQSSAKPiAtLSAgICogRXhhbXBsZXMgCj4g
LS0gICAqIFV0aWxzIAo+IC0tICAgKiBUZXN0cyAKPiAtLSAgICogVVNCIAo+IC0tICAgKiBCMTAw
IAo+IC0tICAgKiBCMjAwIAo+IC0tICAgKiBVU1JQMSAKPiAtLSAgICogVVNSUDIgCj4gLS0gICAq
IFgzMDAgCj4gLS0gICAqIE1QTUQgCj4gLS0gICAqIFNJTSAKPiAtLSAgICogTjMwMCAKPiAtLSAg
ICogTjMyMCAKPiAtLSAgICogRTMyMCAKPiAtLSAgICogRTMwMCAKPiAtLSAgICogT2N0b0Nsb2Nr
IAo+IC0tICAgKiBNYW51YWwgCj4gLS0gICAqIEFQSS9Eb3h5Z2VuIAo+IC0tICAgKiBNYW4gUGFn
ZXMgCj4gLS0gIAo+IC0tICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyAKPiAtLSAjIFVIRCBkaXNhYmxlZCBjb21wb25lbnRzICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgCj4gLS0gIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIAo+IC0tICAgKiBEUERLIAo+IC0tICAKPiAtLSAqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiogCj4gLS0gKiBZ
b3UgYXJlIGJ1aWxkaW5nIHRoZSBVSEQgZGV2ZWxvcG1lbnQgbWFzdGVyIGJyYW5jaC4gCj4gLS0g
KiBGb3IgcHJvZHVjdGlvbiBjb2RlLCB3ZSByZWNvbW1lbmQgb3VyIHN0YWJsZSwgCj4gLS0gKiBy
ZWxlYXNlcyBvciB1c2luZyB0aGUgcmVsZWFzZSBicmFuY2ggKG1haW50KS4gCj4gLS0gKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqIAo+IC0tIEJ1
aWxkaW5nIHZlcnNpb246IDQuMC4wLjAtOTMtZzNiOWNlZDhmIAo+IC0tIFVzaW5nIGluc3RhbGwg
cHJlZml4OiAvdXNyL2xvY2FsIAo+IC0tIENvbmZpZ3VyaW5nIGRvbmUgCj4gLS0gR2VuZXJhdGlu
ZyBkb25lIAo+IC0tIEJ1aWxkIGZpbGVzIGhhdmUgYmVlbiB3cml0dGVuIHRvOiAvaG9tZS9jYXNl
eS9Qcm9qZWN0cy9VSEQvdWhkL2hvc3QvYnVpbGQKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4g
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
