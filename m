Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED387DCE7F
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 20:43:03 +0200 (CEST)
Received: from [::1] (port=48022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLXDG-0000TT-5P; Fri, 18 Oct 2019 14:42:58 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:44157)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iLXDB-0000L5-7t
 for USRP-users@lists.ettus.com; Fri, 18 Oct 2019 14:42:53 -0400
Received: by mail-qt1-f172.google.com with SMTP id u40so10476788qth.11
 for <USRP-users@lists.ettus.com>; Fri, 18 Oct 2019 11:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=8G7lmzNveftbBpYVIfJJIi1s3n2zGlIX6uA2aXPUVnE=;
 b=flAfk6jro4ei+KkXVywNTObckc2MMnG0Z0t1Yx+YSkBn3AdpWwRK2kn+P24rYyuCao
 SF2nCUAlVHQFzMWRqejtJTVfZKXLyTXWFaBUJtKVZBOi9JgL0GfRY0KGi7MPne3pwLSc
 6RtNpfLlwqrcFtJl/dGwWFB/UtwntpDi7M3e98afA4X3D5dil6vAGOa6su2xDWJXx6gY
 yuo8S2HrA1XikwvlSQ3dDH3BPB6sOzqaa+RyqZuY36b8PxvDrsf5xQeUNAfrpVGtdtr2
 AvvDWkRe3CDqdFIFzmo4+WblIK4ZWyGgJIPesdt2dpcLE21aFWg7YuLh0/FNPnYhUil9
 oB1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=8G7lmzNveftbBpYVIfJJIi1s3n2zGlIX6uA2aXPUVnE=;
 b=lZQcDwlnpCVRcIsFPe1gmF2NpzxyRyVkZgjEr06WTyEsDCUhrQl7XvsZXLE3CTXVLg
 ropHpOJhKnhHc0J8BN24DMeHuj+ttJg3H4SUiuZK5rGITiyaQrvlpZ++RkI0MBhMRdqn
 sc8DKo6osrmVJGT5VcAbsxVwCFUE8ejE/iN7IBmhXOsvH/0rXyAU7Z2jvaG2JDBq0X+g
 2tQFYG8YlI22e5lcJG8tOOLHNEBIcO+ndrrJzQN9fI8dEiEjOgZSrvxBurecOwJng6Iy
 q+8AwG4hw9UJvjSt9VN60LjvlEyXBBOaVqD8lqkNSx4BDPdtD1xKrmypGQeOlmltHzR1
 vqPA==
X-Gm-Message-State: APjAAAWnoIMASnJvpHzz8qmDFA8hvo1xXMgdNOGiMHbHlg9aiwrX+Uvj
 Qd0AYTJJflOZSPWT8HsQMtV59kyW
X-Google-Smtp-Source: APXvYqw582K85yf1u7GaA2V2QGRVs/zjKdxEMIcDzSuI0nH/CZNkcegg6tBOrBcpg4XiPjhlNwNN+A==
X-Received: by 2002:a0c:e801:: with SMTP id y1mr11047608qvn.76.1571424132506; 
 Fri, 18 Oct 2019 11:42:12 -0700 (PDT)
Received: from ?IPv6:2605:b100:d04:ff9d:51ea:57a4:286b:8b1?
 ([2605:b100:d04:ff9d:51ea:57a4:286b:8b1])
 by smtp.gmail.com with ESMTPSA id v186sm847618qkb.42.2019.10.18.11.42.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Oct 2019 11:42:11 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 18 Oct 2019 14:42:10 -0400
Message-Id: <9607AB49-8CF9-4AC9-AE90-33D4E2CA7008@gmail.com>
References: <0317ead0-5a23-2edc-7b80-3164cfe1dbc7@ant.uni-bremen.de>
In-Reply-To: <0317ead0-5a23-2edc-7b80-3164cfe1dbc7@ant.uni-bremen.de>
To: Johannes Demel <demel@ant.uni-bremen.de>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] N310 sensitivity
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

V2hhdCBhbnRlbm5hIGFyZSB5b3Ugc3BlY2lmeWluZyBhbmQgd2hpY2ggcG9ydCBhcmUgeW91IHJ1
cmFsbHkgcGx1Z2dlZCBpbiB0by4gCgpBcmUgeW91IHVzaW5nIG9mZnNldCB0dW5pbmc/ICBUaGF0
IG1heSBiZSBuZWNlc3NhcnkgZm9yIE5hcnJvdyBzaWduYWxzIG5lYXIgdGhlIHR1bmVkIGZyZXF1
ZW5jeSwgZHVlIHRvIERDIG9mZnNldCByZW1vdmFsLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4g
T24gT2N0IDE4LCAyMDE5LCBhdCA3OjA2IEFNLCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2Vy
cyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7v0hpIGFsbCwKPiAK
PiBJIGZpZ3VyZWQgb3V0IGhvdyB0byB1c2Ugb3VyIG5ldyBOMzEwcy4KPiAKPiBJIHJhbiBpbnRv
IHRoZSBuZXh0IGlzc3VlLiBMZXQgbWUgZGVzY3JpYmUgdGhpcyBvbmUgYnJpZWZseS4KPiAKPiBX
aXRoIG91ciBYMzEwcyBJIHNldCBUWGdhaW49MjAgYW5kIFJYX2dhaW49MTAuIEJvdGggZGV2aWNl
cyBhcmUgMS0ybSAKPiBhcGFydC4gSSBvYnNlcnZlIGEgcmVhbGx5IG5pY2UgUlggY29uc3RlbGxh
dGlvbiB3aXRoIGdyLWdmZG0gYW5kIAo+IFhGRE1TeW5jIHdpdGggYnVyc3RzIGV2ZXJ5IDFtcyAo
YnVyc3QgbGVuZ3RoIH41MHVzKS4gV2l0aCBvdXIgTjMxMHMgSSAKPiBzZXQgUlhnYWluPTYwLCBU
WGdhaW49NzAgYW5kIHN0aWxsLCB0aGUgY29uc3RlbGxhdGlvbiBpcyB2ZXJ5IG5vaXN5Lgo+IE15
IGFzc3VtcHRpb24gaXMgdGhhdCBzb21lIHBhcnQgb2YgdGhlIFJYIGNoYWluIGlzIG5vdCBjb25m
aWd1cmVkIAo+IGNvcnJlY3RseS4gQnV0IEkgZG9uJ3Qga25vdyB3aGF0IHRoZSBwcm9ibGVtIGlz
IGluIHBhcnRpY3VsYXIuCj4gQWxzbywgSSB1c2VkIGFuIFgzMTAgYXMgdHJhbnNtaXR0ZXIgYW5k
IGFuIE4zMTAgYXMgcmVjZWl2ZXIuIEJ1dCB0aGUgCj4gcmVzdWx0IGlzIHRoZSBzYW1lLCB0aGUg
UlggY29uc3RlbGxhdGlvbiBpcyByZWFsbHkgbm9pc3kuCj4gCj4gQW5vdGhlciBvYnNlcnZhdGlv
biBpcywgdGhhdCBteSBSWCBzYW1wbGUgc3RyZWFtIGluIGEgR1IgdGltZSBzaW5rIGRvZXMgCj4g
c2hvdyBxdWFudGl6YXRpb24gYXJ0aWZhY3RzLiBpLmUuIEkgY2FuIHNlZSBkaXNjcmV0ZSBzdGVw
cyB3aGljaCBJIAo+IGFzc3VtZSBhcmUgZHVlIHRvIGxvdyBSWCBzZW5zaXRpdml0eS4gVGhlIFJY
IHZhbHVlIGFtcGxpdHVkZSBpcyBhcm91bmQgCj4gMC4wMDA1IGZvciB0aGUgc2FtcGxlcyB0aGF0
IEkgZ2V0IG9mIGEgVVNSUCBzb3VyY2UuIEkgYXNzdW1lIHRoaXMgc2hvdWxkIAo+IGJlIGEgaGln
aGVyIHZhbHVlLiBXaXRoIHRoZSBYMzEwcyBpdCB3YXMgbW9yZSBsaWtlIDAuMS4KPiAKPiBEbyBJ
IG5lZWQgdG8gdGFrZSBzcGVjaWFsIGNhcmUgd2hlbiBJIG9ubHkgdXNlIDEgYW50ZW5uYSBwb3J0
Pwo+IElzIHRoZXJlIGFub3RoZXIgQUdDIHNldHRpbmcgdGhhdCBJIG5lZWQgdG8gY29uZmlndXJl
IGZvciBOMzEwcz8KPiAKPiBKb2hhbm5lcwo+IAo+IFNvZnR3YXJlCj4gVUhEOiAzLjE0LjEuMQo+
IEdSOiAzLjgKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQo=
