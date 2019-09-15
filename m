Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 072FBB3182
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 20:55:48 +0200 (CEST)
Received: from [::1] (port=51528 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9ZgU-0001ff-VI; Sun, 15 Sep 2019 14:55:42 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:39847)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i9ZgR-0001bh-QN
 for usrp-users@lists.ettus.com; Sun, 15 Sep 2019 14:55:39 -0400
Received: by mail-qt1-f182.google.com with SMTP id n7so40591285qtb.6
 for <usrp-users@lists.ettus.com>; Sun, 15 Sep 2019 11:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Dt7sXEfsZKIn0fBca4XrmuglC/IfDZehVPUm4lFQSpk=;
 b=MADUusDcNOUujtwz1yK5/kWBw/JhgomAakJHdnLK9Y18oPblTSwsaxkpVs7PFnouDZ
 PkHmkK2MEP7fGEjjULYzukFARt6PdlSpGKfbUh/ua0FeR8RPeXawwINxQkCx5WOkLwqi
 24rcEkKIym68QBw63BvQQW8GDrCuB7b+ahuE8Afp3eGoZAG6/5H1V3BKLuQ8EAzWscS4
 3mjZQcOLzXPx5KGe6O8ZKklvJ8Mk7d0xmc7vgx8CHSb8aejVUwIUq1S1y9o2A8t040ig
 xvV4oYfExTt4i7kDWcKnk8WX94/a8KBITfvVX96VQZr3qrseXBu+jUGQnkBdZ/Q8dMwB
 F34g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Dt7sXEfsZKIn0fBca4XrmuglC/IfDZehVPUm4lFQSpk=;
 b=fxy1nGQ+srLMWtPr/R9pxMWmW/VYYc7SGEAYDB3dHcbUsmjqZgGezKticAAktN0BNr
 UfUNPqD8LQnvOA7ahCmWRsbRIUQDdFvt+n3NNhtI5FvxaDf6hsS5AfiOB2QSPPM2sgQr
 psyZZ9NdPHDx/wXfRVN7m6ts8TkUwItKB/2+urVSL0kzcqQYhMFcH0rPoWLF8IhPVAbz
 OUyxzyjvEKBjbmEkuMJWNWf4Qr6u93H1gHmZTsjsq+xG4DnLuAuOzUn7Co8rYU5gvszI
 mfQJ+Gafg8Meo9AQwuxozoA0CWhYYHgB1jfcQgCvgd0orGmh8C4LQzdqQz4bxEbLr6QC
 yyWg==
X-Gm-Message-State: APjAAAUT4CEZYdevw7oMGlJmP+ZzJOylDBfT1Ey4Z/oeTE8seKI38l/b
 qaXV9c9SyFw1NR6arMbD+IYeGeTY
X-Google-Smtp-Source: APXvYqwOm67lpfoSwcGqdcB6zi7+ZTPx370PiiVKV4EiyI36DKuUExilKQDTRbJ2lQzDVL8MCCz6Dg==
X-Received: by 2002:ac8:30f3:: with SMTP id w48mr13210660qta.216.1568573699058; 
 Sun, 15 Sep 2019 11:54:59 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id h68sm16444892qkd.35.2019.09.15.11.54.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Sep 2019 11:54:58 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
Date: Sun, 15 Sep 2019 14:54:57 -0400
Message-Id: <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
References: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
To: =?utf-8?Q?"Skorstad,J=C3=B8rn"?= <Joern.Skorstad@nkom.no>
Subject: Re: [USRP-users] E310 filter settings and LO lock question
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
Cc: usrp-users@lists.ettus.com
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

TXkgcmVjb2xsZWN0aW9uIGlzIHRoYXQgdGhlIEFEOTM2MSBSRiBjaGlwIGRvZXNu4oCZdCBoYXZl
IGFuIGV4dGVybmFsIGxvY2sgaW5kaWNhdG9yLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24g
U2VwIDE1LCAyMDE5LCBhdCA5OjE3IEFNLCBTa29yc3RhZCxKw7hybiB2aWEgVVNSUC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IEhpIGFsbCwKPiAKPiAKPiAK
PiBJIGFtIGN1cnJlbnRseSB3b3JraW5nIG9uIGEgcHJvamVjdCB1c2luZyBhIFVTUlAgRTMxMCB0
byBvdXRwdXQgYW4gRkZUIHBsb3Qgb3ZlciBhIGdpdmVuIGZyZXF1ZW5jeSByYW5nZSAodXN1YWxs
eSBiaWdnZXIgdGhhbiB0aGUgcG9zc2libGUgc2FtcGxlIHJhdGUpLiBUaGUgcHJvZ3JhbSBpcyB3
cml0dGVuIGluIEMrKyB1c2luZyB0aGUgVUhEIGxpYnJhcnkuIEZyZXF1ZW5jeSByYW5nZSBpcyBh
Y2hpZXZlZCBieSBjaGFuZ2luZyB0aGUgTE8gZnJlcXVlbmN5IHJlZ3VsYXJseS4gVGhlIHByb2dy
YW0gc2VlbXMgdG8gd29yaywgaG93ZXZlciBJIGhhdmUgdHdvIHF1ZXN0aW9ucyBJIGNhbuKAmXQg
ZmluZCB0aGUgYW5zd2VyIHRvIGluIHRoZSBVSEQgbWFudWFsOgo+IAo+IAo+IAo+IFRoZSBFMzEw
IGhhcyBhbmFsb2cgZmlsdGVycyBvbiB0aGUgUlggYW5kIFRYIHBvcnRzLiBUaGUgZG9jdW1lbnRh
dGlvbiBpcyBhIGxpdHRsZSBzaG9ydCBvbiBob3cgdGhlc2UgZmlsdGVycyBhcmUgY29udHJvbGxl
ZC4gQXJlIHRoZXkgc2VsZWN0ZWQgYXV0b21hdGljYWxseSBiYXNlZCBvbiB0aGUgTE8gZnJlcXVl
bmN5LCBvciBkbyB0aGV5IG5lZWQgdG8gYmUgbWFudWFsbHkgc2VsZWN0ZWQ/IElmIHNvLCBob3c/
IEFuZCB3aGF0IHdvdWxkIGJlIHRoZSAoZXN0aW1hdGVkKSBjaGFuZ2VvdmVyIHRpbWUgYmV0d2Vl
biBmaWx0ZXJzPwo+IAo+IAo+IAo+IExPIGxvY2sg4oCTIEkgdHJpZWQgdG8gZGV0ZWN0IGlmIExP
IGlzIGxvY2tlZCBhZnRlciBhIHR1bmUgcmVxdWVzdCB1c2luZyB0aGUgVUhEIG1hbnVhbCBhcyBh
IHJlZmVyZW5jZS4gSWYgSSBpbmNsdWRlIHRoZSBmb2xsb3dpbmcgZGlyZWN0bHkgYWZ0ZXIgYSB0
dW5lIHJlcXVlc3Qgbm90aGluZyBpcyBwcmludGVkOgo+IAo+ICB3aGlsZSAoIXVzcnAtPmdldF9y
eF9zZW5zb3IoImxvX2xvY2tlZCIpLnRvX2Jvb2woKSkgc3RkOjpjb3V0IDw8ICJQTEwgdW5sb2Nr
ZWQhIiA8PCBzdGQ6OmVuZGw7Cj4gCj4gCj4gCj4gSXMgdGhlcmUgc29tZSBvdGhlciB3YXkgdG8g
ZGV0ZWN0IExPIGxvY2s/Cj4gCj4gCj4gCj4gUmVnYXJkcywKPiAKPiBKb3JuCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
