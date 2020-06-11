Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CDE1F60B5
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 06:05:58 +0200 (CEST)
Received: from [::1] (port=57502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjETT-0008DT-2v; Thu, 11 Jun 2020 00:05:55 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:43653)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjETP-00081G-Bf
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 00:05:51 -0400
Received: by mail-qt1-f178.google.com with SMTP id j32so3621448qte.10
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 21:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=qIKWTT27Yu1EM0amoJo413ODDvex3kI+e+GWWYhGvKA=;
 b=hFLpuBSkAepaVxf4q+Een6drKdvVvLYk7jwgue9EHWl01zF5v/2AvBmY4SZh332/+C
 L61cP2OA6ALiOmdy5Q1FrMrZiFmJSRf6MJHz73Z4f0w+kdCOfZ0UVrtOlkIYRO+d8pmf
 2L0+8H7tix79n3uAoJnxqCU2jMP1kjVu84SXQC/e80fqTyfRU4DlSggyn24x4dPnpeN1
 MqrGikmfgYF+ndv4aEwYOEvQsEfSnjYWmVsJfYBghUyMmhBtaV1wogYla4GF5/lEQr0A
 Qis8sYi7aqHQyq8JtlB/sNbKsqYYpbDlUS9g1f2Dv70JNfUOC761njT7nIpO5yHBHGU9
 sHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=qIKWTT27Yu1EM0amoJo413ODDvex3kI+e+GWWYhGvKA=;
 b=NdDvj0BAe6i7W/vHcETCqSZT4ifeHEbR76iCAhO6J3D1uGVFRML0mhnp6iE1xtM9tT
 epUk1llDJRGzm5K/okcEgTlXVqnq2WwsWUncK2fWlmA0o+EoTboKbf2cmglvLqFojZpu
 /bT2terzaH6825TuQS3GTJ2NMVs5tVfBXReGWE9r8bfQYeHZLAbtV1ckqWkCF/Y3euUs
 5y3zz82B40SATqLw7UIa0WwJVE2w2ClmssRnNRGPTiXdjqDxd6TYXJMeP7aSb5/cr0i4
 Ars0iuFUhYSS7dznK7GIhW17HI1uJX2tgrr18LWbX5TRSIgC0pERYGFANxLNezq4RhK3
 5tJA==
X-Gm-Message-State: AOAM533Co64JxfkbAX0sdoJqco/MXU+FgCzCsZPSGRAwHq0MHdACCsFj
 gDlH7rrE6/mDJ4GmDOo/hgE=
X-Google-Smtp-Source: ABdhPJzrg0oQIe7kNv6uN8ws7EEuJj4R/MpLZhv2VFB5Ewn/bWufmygokqoe5PT30iN6duzIJI8rdw==
X-Received: by 2002:ac8:3984:: with SMTP id v4mr6828814qte.267.1591848310810; 
 Wed, 10 Jun 2020 21:05:10 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id 70sm1355074qkk.10.2020.06.10.21.05.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 21:05:10 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Jun 2020 00:05:09 -0400
Message-Id: <B2FBDAFE-E103-4882-98BA-98E344330B04@gmail.com>
References: <CAFZDN5LrJOY8z-5+4GcxNximyLwEQDHB4GF9jTKOQ_aD4X=aZQ@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <CAFZDN5LrJOY8z-5+4GcxNximyLwEQDHB4GF9jTKOQ_aD4X=aZQ@mail.gmail.com>
To: Hai Nguyen <hai.n.nguyen204@gmail.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] Phase calibration of multiple B210s
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

Tm8uIEl0IGlzIHRoZSBuYXR1cmUgb2YgUExMIHN5bnRoZXNpemVycyB0aGF0IHRoZXkgd29u4oCZ
dCBsYW5kIGF0IHRoZSBzYW1lIHBoYXNlIG9mZnNldCBldmVyeSB0aW1lIHRoZXnigJlyZSB0dW5l
ZC4gCgpJbiBhZGRpdGlvbiB0aGUgRERDIGNvbXBvbmVudHMgaW4gdGhlIEZQR0EgYXJlbuKAmXQg
bmVjZXNzYXJpbHkgZ29pbmcgdG8gYmUgYXQgdGhlIHNhbWUgcGhhc2Ugb2Zmc2V0IGV2ZXJ5IHRp
bWUuCgpZb3XigJlsbCBuZWVkIHRvIGhhdmUgYSBwaGFzZSBjYWxpYnJhdGlvbiBvbiBldmVyeSBy
dW4uIAoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBKdW4gMTEsIDIwMjAsIGF0IDEyOjAxIEFN
LCBIYWkgTmd1eWVuIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4g
d3JvdGU6Cj4gCj4g77u/Cj4gSGVsbG8sCj4gCj4gSSdtIHRyeWluZyB0byBkbyBwaGFzZSBjYWxp
YnJhdGlvbiBmb3IgdHdvIEIyMTBzIGZvciBhIERvQSBhcHBsaWNhdGlvbi4gSSB1c2UgYSBrbm93
biB0b25lIHdpdGggc3BsaXR0ZXIgYW5kIGVxdWFsLWxlbmd0aCBjYWJsZXMuIFRoZSBwcm9ibGVt
IEknbSBoYXZpbmcgaXMsIHRoZSBwaGFzZSBkaWZmZXJlbmNlIGJldHdlZW4gdHdvIGNvcnJlc3Bv
bmRpbmcgY2hhbm5lbHMgb2YgdGhlIFVTUlAgKGZvciBleGFtcGxlLCBSWDIgb2YgcmFkaW8gQSkg
c2VlbXMgdG8gY2hhbmdlIG5vdCBqdXN0IGJldHdlZW4gdGhlIHJlc2V0cyBvZiB0aGUgVVNSUHMs
IGJ1dCBhbHNvIGJldHdlZW4gdGhlIHJ1bnMgb2YgdGhlIFVIRCBwcm9ncmFtLgo+IAo+IElzIHRo
aXMgcG9zc2libGUgdG8gcGhhc2UtY2FsaWJyYXRlIHRoZSB0d28gQjIxMHM/Cj4gCj4gVGhhbmsg
eW91IGFuZCBiZXN0IHJlZ2FyZHMsCj4gSGFpCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
