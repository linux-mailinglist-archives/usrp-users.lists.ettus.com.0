Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F344F1E1748
	for <lists+usrp-users@lfdr.de>; Mon, 25 May 2020 23:45:14 +0200 (CEST)
Received: from [::1] (port=35174 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdKuG-00053X-KQ; Mon, 25 May 2020 17:45:12 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:38182)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jdKuC-0004zW-8Q
 for USRP-users@lists.ettus.com; Mon, 25 May 2020 17:45:08 -0400
Received: by mail-qt1-f174.google.com with SMTP id i68so14708223qtb.5
 for <USRP-users@lists.ettus.com>; Mon, 25 May 2020 14:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=RHboXSB8bAiTQyXrVDCceLuP8+Vf/+x4WseWctL37Ek=;
 b=U1KU34R3mT49HWnv91ginTnT5caer2VVAHlmabP4t8f8Yna5+MGpzgC0S82VftZiBr
 amCocnxqFASEoAAu7AmH4F94gKk2nU/dHC9ua6mcQA3f4AnH7F2IJpdwHZIxz5zqARjW
 pVwz33A/7kI6uRYBJsGeJU5OXeXKabOfeoILMA41Gu2KJY5n5TBzJUcWwwaizMnDR/+R
 GTZzZ2XCC8EGbi+fOG2Cl5UoDKyOibxY/mfjWtnzLdq70Ch1/AWXQpzsO3P67W1M9TKk
 QE+xbK2PRL64OhUDaVeo4FHVmCuvEDADAx1Tj97g8KoB4v3aIbqBeITk34nJJXB4z+VR
 J1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=RHboXSB8bAiTQyXrVDCceLuP8+Vf/+x4WseWctL37Ek=;
 b=aSNEiE0+7I7TlpibRQID4w+OpiKJK4LLrdMIuynOJ8prZIr8u8ND8aBj0z68E9jHXA
 JeHLguzYL8Ld+742jKgH48DTjqT3mxaYbGI+3gVvaO8pxsDrq1lAYqVYWiEWCZZZF2Md
 Qgq5ddab0x/13cBED7JtWj/30DlctrJK6uR1mU0NXsU4C1ekOZupyOJ6rzkEJJHH90+D
 FcHzM3ZniUMhKCcln8Ol0zV6+TmWI8IqSFypShQJ6udNpOjXLXYFnNAecYaguAzIRv/i
 0HslI0uiAVWd3nn3x5f0fY9i+6nnvq33YovOcanUffQfpLn7s7LXRwKjpoyZxHYpG/Vd
 ikzg==
X-Gm-Message-State: AOAM531gutQQ3Orww/YAMQLLwK/fJZ/S8JuqVj+1hk/ZSV13k85FoeDQ
 raMujm3bvW8yM4NiszhnG3gsCH/DgRQ=
X-Google-Smtp-Source: ABdhPJz62SwfJhMdvxRiWsvUoL3LVoXB4KLCndqVcUTITj3hpwq0/LawXYBgUQPR1KkHiaKf0VsMGA==
X-Received: by 2002:aed:37e7:: with SMTP id j94mr29594570qtb.57.1590443067650; 
 Mon, 25 May 2020 14:44:27 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.gmail.com with ESMTPSA id 137sm2142779qkf.44.2020.05.25.14.44.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 14:44:27 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 25 May 2020 17:44:26 -0400
Message-Id: <AECCDB64-FB01-4A7A-BAEC-46FF6F635269@gmail.com>
References: <e52a564e-7e00-832f-b70a-ced7f3427a49@softwareradiosystems.com>
In-Reply-To: <e52a564e-7e00-832f-b70a-ced7f3427a49@softwareradiosystems.com>
To: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] B210 initialization error - device left unusable
 after some time
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

TWlnaHQgc2VlbSBzaWxseQpCdXQgaGF2ZSB5b3UgdHJpZWQgYSBkaWZmZXJlbnQgVVNCIGNhYmxl
IQoKRG9lcyBpdCBleGhpYml0IHRoaXMgYmVoYXZpb3IgaW4gYSBkaWZmZXJlbnQgaG9zdD8KCklz
IGl0IGp1c3QgdGhpcyBvbmUgZGV2aWNlPwoKCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE1h
eSAyNSwgMjAyMCwgYXQgNDo1NSBQTSwgQW5kcmUgUHVzY2htYW5uIHZpYSBVU1JQLXVzZXJzIDx1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/SGV5IGd1eXMsCj4gCj4g
SSBhbSBmYWNpbmcgYSB3ZWlyZCBpc3N1ZSB3aXRoIG9uZSBvZiB0aGUgQjIxMCB3ZSB1c2UgaW4g
b3VyIENJIHNldHVwLgo+IEl0IHVzZWQgYWxsIGRheSBsb25nIHdpdGggc2hvcnRlciBhbmQgbG9u
Z2VyIHJ1bnMsIHdpdGggZGlmZmVyZW50Cj4gYmFuZHdpZHRoIGNvbmZpZ3VyYXRpb25zLCBudW1i
ZXIgb2YgY2hhbm5lbHMsIHN0cmVhbSBwYXJhbWV0ZXJzLCBldGMuCj4gCj4gVGhhdCB3b3JrcyBm
aW5lIGluIHByaW5jaXBsZSBidXQgYWZ0ZXIgYSB3aGlsZSB0aGUgZGV2aWNlIHNpbXBseQo+IHdv
dWxkbid0IHdvcmsgYW55IGxvbmdlci4gVGhlIGFwcCBpcyB1bmFibGUgdG8gaW5pdCB0aGUgZGV2
aWNlLgo+IAo+ICQgdWhkX3VzcnBfcHJvYmUKPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysg
dmVyc2lvbiA3LjUuMDsgQm9vc3RfMTA2NTAxOwo+IFVIRF8zLjE1LjAuSEVBRC0wLWdhZWEwZTJk
ZQo+IFtJTkZPXSBbQjIwMF0gTG9hZGluZyBmaXJtd2FyZSBpbWFnZToKPiAvdXNyL3NoYXJlL3Vo
ZC9pbWFnZXMvdXNycF9iMjAwX2Z3LmhleC4uLgo+IFtFUlJPUl0gW1VIRF0gRGV2aWNlIGRpc2Nv
dmVyeSBlcnJvcjogRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjogQ291bGQKPiBub3QgbG9hZCBm
aXJtd2FyZToKPiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBpaGV4X3JlYWRlcjo6cmVhZCgp
OiByZWNvcmQgaGFuZGVyIHJldHVybmVkCj4gZmFpbHVyZSBjb2RlCj4gRXJyb3I6IExvb2t1cEVy
cm9yOiBLZXlFcnJvcjogTm8gZGV2aWNlcyBmb3VuZCBmb3IgLS0tLS0+Cj4gRW1wdHkgRGV2aWNl
IEFkZHJlc3MKPiAKPiBUcnlpbmcgdG8gcmVzZXQgZ2l2ZXMgdGhlIHNhbWUgZXJyb3I6Cj4gCj4g
JCAvdXNyL2xpYi91aGQvdXRpbHMvYjJ4eF9meDNfdXRpbHMgLUQKPiBEZXZpY2Ugb3BlbmVkIChW
SUQ9MHgyNTAwLFBJRD0weDAwMjApCj4gQjJ4eCBkZXRlY3RlZC4uLiBDb250cm9sIG9mIEIyeHgg
Z3JhbnRlZC4uLgo+IAo+IExvYWRpbmcgZmlybXdhcmUKPiBbSU5GT10gW1VIRF0gbGludXg7IEdO
VSBDKysgdmVyc2lvbiA3LjUuMDsgQm9vc3RfMTA2NTAxOwo+IFVIRF8zLjE1LjAuSEVBRC0wLWdh
ZWEwZTJkZQo+IFtJTkZPXSBbQjIwMF0gTG9hZGluZyBmaXJtd2FyZSBpbWFnZToKPiAvdXNyL3No
YXJlL3VoZC9pbWFnZXMvdXNycF9iMjAwX2Z3LmhleC4uLgo+IEV4Y2VwdGlvbiB3aGlsZSBsb2Fk
aW5nIGZpcm13YXJlOiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBDb3VsZCBub3QKPiBsb2Fk
IGZpcm13YXJlOgo+IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IGloZXhfcmVhZGVyOjpyZWFk
KCk6IHJlY29yZCBoYW5kZXIgcmV0dXJuZWQKPiBmYWlsdXJlIGNvZGUKPiAKPiAKPiBBZnRlciB0
aGF0IGhhcHBlbmVkIHRoZSBvbmx5IHdheSB0byByZWNvdmVyIHRoZSBkZXZpY2UgaXMgdW5wbHVn
IHRoZQo+IFVTUlAuIEEgc2ltcGxlIHJlYm9vdCBkb2Vzbid0IGhlbHAuIERtZXNnIGRvZXNuJ3Qg
c2hvdyBhbnkgaXNzdWVzLgo+IAo+IFVIRCBpcyAzLjE1IGNvbXBpbGVkIGZyb20gc291cmNlIG9u
IGEgdmFuaWxsYSBVYnVudHUgMTguMDQgTFRFIChzaWRlCj4gbm90ZTogdGhlcmUgYXJlIG5vIHBy
ZS1idWlsdCBwYWNrYWdlcyBmb3IgMy4xNSBpbiB0aGUgMTguMDQgUFBBKS4gU3lzdGVtCj4gaXMg
YSBJbnRlbCBOVUMgU2t1bGwgQ2FueW9uLiBDYWJsZXMgYXJlIHN0b2NrIG9uZXMuIExldCBtZSBr
bm93IGlmIHlvdQo+IG5lZWQgYW55IGZ1cnRoZXIgaW5mb3JtYXRpb24gb24gdGhlIHNldHVwLgo+
IAo+IEFueSBwb2ludGVycyBvbiB3aGF0IG1pZ2h0IGJlIHdyb25nIGhlcmUgYXJlIGhpZ2hseSBh
cHByZWNpYXRlZC4KPiAKPiBDaGVlcnMKPiBBbmRyZQo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
