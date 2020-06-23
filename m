Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCB52056BE
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 18:04:52 +0200 (CEST)
Received: from [::1] (port=51802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnlPl-0006u3-Me; Tue, 23 Jun 2020 12:04:49 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:39240)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnlPh-0006ek-6B
 for USRP-users@lists.ettus.com; Tue, 23 Jun 2020 12:04:45 -0400
Received: by mail-qk1-f181.google.com with SMTP id l6so15636631qkc.6
 for <USRP-users@lists.ettus.com>; Tue, 23 Jun 2020 09:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=l3npBwq4BMr2Yfi/+YpNJhVLGpAefGJNt5cPaG9rk10=;
 b=WGC6DOi+k2eqLUb5eTdcOaf/o8n9Mrdi7LOmYMDo6uK88wQxwoXEIuRO3vtH9esn5V
 Xdn8jvyOuxTDnJKL5mzV28QYfii1qUNmyBSqhlHEiDG6yLvMHWevcj5TjShW3w19r/bw
 BLotjSDMb89zJN4W3hPqqzuMWDIFSosmG20x1uwKGgn3M+s8iaZKoPyscMFA0QOwpOGz
 DBqAYPaVUL46v7PuiHlHg/A3FhNB1mo0gzqa95jz4rvLoJP8ANXhA2IkAdhcs/rS7tog
 svHN+t6qLY8LsHBt5K9oRMSYS6/rIT5knYA5UhPkfSu3pb0Y3bgUfog0abdf3lpZZCL1
 Mbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=l3npBwq4BMr2Yfi/+YpNJhVLGpAefGJNt5cPaG9rk10=;
 b=KDX70NpljZNRQnfXGZAikTG7nqYnNADk8TL7bJBv654WCzlO5veE41pXsSal/Hz0PX
 nAVR9Nd9gjnHu4lA4QeXE3QqWNdN4IzyeEnr8ojW3UScZ467DqfYbVUXmBXruRn/Uz9b
 2zZPuRlsglzOofqpmzX8S532RT/j4mBS0DTUuNSsGI+5WIxY4peZm3cgleAoqandaLnV
 8eY6Yb7raIjKi2BFC7ICZgYQOGX+hOyvkkVlI1vYY9voP0t1Xu8thO0feb3T3uhR7bT1
 M3aVvb1E+/Z74ELTyRZHJyMSg0ZNC1GOBa7Ug58VpYhJetaYiTEbnpaebvvR6JB1htEl
 Ejhg==
X-Gm-Message-State: AOAM533pO26ZxMWEnZKSST9SfSWiJ0LV8RR+nRoRrggpQuqImd8JxzsZ
 lhFO4coxJlHi+pSy2+ObCoco7DJD71w=
X-Google-Smtp-Source: ABdhPJwRDCi21OjPnD00qP7Yxd1DnYOw+pCpi+r+3GaxFVKOKdVe0Z23MocFeyULszznFjZ8nK+Peg==
X-Received: by 2002:a37:6382:: with SMTP id x124mr14045167qkb.13.1592928244506; 
 Tue, 23 Jun 2020 09:04:04 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id a82sm988509qkb.29.2020.06.23.09.04.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jun 2020 09:04:04 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 23 Jun 2020 12:04:02 -0400
Message-Id: <0F07FBF3-3FB7-461A-A33A-F6C5A559D138@gmail.com>
References: <CAKo1dg8K+KaY8mJbr1Wxp=OKzhb3NE8yfubvewRF7=qcu6-_5w@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAKo1dg8K+KaY8mJbr1Wxp=OKzhb3NE8yfubvewRF7=qcu6-_5w@mail.gmail.com>
To: =?utf-8?Q?Andreas_Hagstr=C3=B6m?= <andreas.hagstrom@testteknik.se>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] Included headers in the installer:
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

WW91IGhhdmUgbm90IHNhaWQgd2hpY2ggaW5zdGFsbGVyIHlvdeKAmXZlIHVzZWQsIGZvciB3aGlj
aCBPUy4gU28gaXTigJlzIGhhcmQgdG8gY29tbWVudC4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+
IE9uIEp1biAyMywgMjAyMCwgYXQgMTE6MzMgQU0sIEFuZHJlYXMgSGFnc3Ryw7ZtIHZpYSBVU1JQ
LXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4gSGVs
bG8sIEkgZG93bmxvYWRlZCB0aGUgaW5zdGFsbGVyIGZvciB0aGUgVUhEIGxpYnJhcnkgYW5kIEkg
d2FudGVkIHRvIHVzZSB0aGUgYmluZGluZ3MgZm9yIHRoZSBweXRob24gQVBJLiBCdXQgd2hlbiBJ
IHRyaWVkIGltcG9ydGluZyB0aGUgcGFja2FnZSBhbmQgcnVuIHRoZSBzYW1wbGUgcHJvZ3JhbSB0
aGUgUHl0aG9uIGludGVycHJldGVyIGRvZXMgbm90IHNlZW0gdG8gZmluZCB0aGUgcGFja2FnZS4g
QWxsIGluZm9ybWF0aW9uIHJlbGF0ZWQgdG8gdGhlIHB5dGhvbiBiaW5kaW5ncyBzZWVtcyB0byBi
ZSByZWxhdGVkIHRvIGJ1aWxkaW5nIGZyb20gc291cmNlLiBTbyBteSBxdWVzdGlvbiBpczogaXMg
dGhlIHB5dGhvbiBiaW5kaW5ncyBlbmFibGVkIGluIHRoZSBpbnN0YWxsZXIgdmVyc2lvbj8gSWYg
bm90LCBpcyB0aGUgQy1iaW5kaW5ncyBpbmNsdWRlZD8KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
