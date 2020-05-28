Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2251E6905
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 20:04:36 +0200 (CEST)
Received: from [::1] (port=47556 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeMtM-0003CF-CV; Thu, 28 May 2020 14:04:32 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:45271)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jeMtH-00037e-Uk
 for USRP-users@lists.ettus.com; Thu, 28 May 2020 14:04:27 -0400
Received: by mail-qk1-f180.google.com with SMTP id q8so3933670qkm.12
 for <USRP-users@lists.ettus.com>; Thu, 28 May 2020 11:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=oFWYTCAACpT6IGYq9G6HqmXJBwKGuY/6oQVyUNfYC3I=;
 b=Qf7BBzVQOy9FzQCcx90FUv9UmJbvVaFIAaNv03mnPZORqv3On6XuaGYBLqjp1pZ5WK
 At+FO/diKjXPSHf6WbcFng4yOdEnhp2EEbL1gqFt/w1NwkU7W3jjkBZHZqqLTtCm5Kyu
 nJ9UOLRXeftzOjVkcTCJxmSXwcBcCScnL7R7AvNEqK/Sp9+RaYLYcCvaV24GDsiLbuUE
 xlreyE7qVTYFH/hR54GM7MkrNd8dh7TC2gSLyKLlumFPSEPlC209BwPXvBL9Bq9eKv6X
 r/2W3ESjXsOZZuCWVBrhI+Cj7ybwvqwsBVMJxXm1BZ40igPCYE6rFUVxio/5IFrnCpe/
 LfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=oFWYTCAACpT6IGYq9G6HqmXJBwKGuY/6oQVyUNfYC3I=;
 b=WNPttk3N6+wfrq+5mybXD4mP8hpsXGgUB8mDjsHjaKlsnisCiuAyi/+mh9X1XV2iQ0
 wNxN7CfTmWDLTQ3sizcahVCepl/El176C6+u4BjNKBwQ0GIumcExmugxklMwvg5CKpoq
 +OXwm+a+0+yD1Y1vzJwADfTyV598S2sBxwJmzrDmSEM4Eg8c7InaN5RP96oqTIZ3IGvQ
 uMgeSNOC2sStZ+jnmSwti0BduCRPiFMGzbQmc8K78HitRUFIz72p4+C+GBXttsel2EZR
 L/YHakm5Ealt6+a/wPb8XbeDz1dH25jwk71TmhJgPOpErgXQFTi2xnyj99p90GyKJsrt
 vCmQ==
X-Gm-Message-State: AOAM530YBAJfLoNyw40leGajYLbw3omxfUFAmxiUPBNNqKQPt8hw2Qpg
 tDZzk5EO5ooGKm2wpvPQloc=
X-Google-Smtp-Source: ABdhPJwxQUgz2AOstJMLVU30OzvfvmtO7eYSY23Xu0/oBoyRXjFKSFh/fz6dYXeSyCTEkels1oTnyA==
X-Received: by 2002:a37:bd81:: with SMTP id n123mr3883129qkf.57.1590689027401; 
 Thu, 28 May 2020 11:03:47 -0700 (PDT)
Received: from ?IPv6:2605:b100:d3d:ed76:c84b:4134:6108:3f24?
 ([2605:b100:d3d:ed76:c84b:4134:6108:3f24])
 by smtp.gmail.com with ESMTPSA id a67sm5575322qkb.109.2020.05.28.11.03.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 11:03:47 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 28 May 2020 13:56:12 -0400
Message-Id: <A6D18848-7D69-461E-AB5A-02F5B5166ABE@gmail.com>
References: <CACjmV_n8FX-ktO2tzHObN9eaBq7pdQ67AW=46WWMgpHmwnkTvQ@mail.gmail.com>
In-Reply-To: <CACjmV_n8FX-ktO2tzHObN9eaBq7pdQ67AW=46WWMgpHmwnkTvQ@mail.gmail.com>
To: guowang qiu <qiu.guowang007@gmail.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] B210 LO signal leakage above 5GHz
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
Cc: USRP-users@lists.ettus.com
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

SGF2ZSB5b3UgdHJpZWQgYWRqdXN0aW5nIHRoZSBtYWduaXR1ZGUgb2YgdGhlIG1vZHVsYXRpbmcg
YmFzZWJhbmQgc2lnbmFsPyBEb2VzIHRoYXQgbWFrZSBhIGRpZmZlcmVuY2UuIAoKTXkgZ3Vlc3Mg
aXMgdGhhdCB0aGUgbGVha2FnZSBwYXRoIGlzbuKAmXQgdGhyb3VnaCB0aGUgVkdBIGJ1dCByYXRo
ZXIgdGhyb3VnaCBzb21ldGhpbmcgZWxzZSBpbiB0aGUgcGFja2FnZS4gSW4gd2hpY2ggY2FzZSwg
bm8gYW1vdW50IG9mIHNvZnR3YXJlIG1vZHMgd2lsbCByZWR1Y2UgaXQuIAoKU2VudCBmcm9tIG15
IGlQaG9uZQoKPiBPbiBNYXkgMjgsIDIwMjAsIGF0IDE6NTAgUE0sIGd1b3dhbmcgcWl1IHZpYSBV
U1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4g
SGkgYWxsLAo+IAo+IFdlIHVzZSBVU1JQIGIyMTAgYXMgYSBzaWduYWwgZ2VuZXJhdG9yLCBhbmQg
YWRqdXN0IHRoZSB0eCBnYWluIHRvIG1ha2UgdGhlIHR4IHBvd2VyIGZyb20gLSA5MGRibSB0byAw
ZGJtLiBVU1JQIGIyMTAgd29ya3MgZmluZSBpbiAyLjRHSHogZnJlcXVlbmN5IGJhbmQsIGJ1dCBp
dCBoYXMgYSB2ZXJ5IHN0cm9uZyBMTyBzaWduYWwgbGVha2FnZSBhdCBmcmVxdWVuY2llcyBoaWdo
ZXIgdGhhbiA1R0h6LiAKPiBJbiBteSB0ZXN0LCB0aGUgZnJlcXVlbmN5IG9mICBiYXNlYmFuZCAo
Y29zIHNpZ25hbCBzb3VyY2UpIGlzIHNldCB0byAxTUh6LCBzbyBMTyBzaWduYWwgbGVha2FnZSBh
bmQgc2luZ2xlIHRvbmUgc2lnbmFsIGNhbiBiZSBlYXNpbHkgZGlzdGluZ3Vpc2hlZC4gV2hlbiB0
aGUgdHggZ2FpbiBpcyBzZXQgZnJvbSAwIHRvIDMwIGRiLCB0aGUgc3RyZW5ndGggb2YgdGhlIExP
IHNpZ25hbCBoYXJkbHkgY2hhbmdlcywgYW5kIGl0IGlzIGhpZ2hlciB0aGFuIHRoZSBzdHJlbmd0
aCBvZiB0aGUgc2luZ2xlIHRvbmUgc2lnbmFsLiBXaXRoIHRoZSBpbmNyZWFzZSBvZiB0eCBnYWlu
LCB0aGUgc3RyZW5ndGggb2Ygc2luZ2xlIHRvbmUgc2lnbmFsIHdpbGwgaW5jcmVhc2Ugb2J2aW91
c2x5LiBJdCBzZWVtcyB0aGF0IHRoZSBsb2NhbCBvc2NpbGxhdG9yIHNpZ25hbCBnZW5lcmF0ZWQg
YnkgdGhlIFBMTCBpbiBhZDkzNjEgYnlwYXNzZXMgdGhlIGludGVybmFsIGFkanVzdGFibGUgZ2Fp
biBwb3dlciBhbXBsaWZpZXIgYW5kIGxlYWtzIGRpcmVjdGx5IHRvIHRoZSBhbnRlbm5hIHBvcnQu
Cj4gSXMgaXQgcG9zc2libGUgdG8gcmVkdWNlIHRoZSBsb2NhbCBsZWFrYWdlIGJ5IG1vZGlmeWlu
ZyB0aGUgVUhEIHNvdXJjZSBjb2RlPwo+IAo+IEJlc3QgcmVnYXJkcywKPiBEYW1vbgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
