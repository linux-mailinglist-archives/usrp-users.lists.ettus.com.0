Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 885E91518B8
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2020 11:21:42 +0100 (CET)
Received: from [::1] (port=53484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyvKr-0003yt-Ub; Tue, 04 Feb 2020 05:21:37 -0500
Received: from mail-wr1-f47.google.com ([209.85.221.47]:34912)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1iyvKn-0003sv-WD
 for usrp-users@lists.ettus.com; Tue, 04 Feb 2020 05:21:34 -0500
Received: by mail-wr1-f47.google.com with SMTP id w12so11328823wrt.2
 for <usrp-users@lists.ettus.com>; Tue, 04 Feb 2020 02:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=iE7y5G+CXJnCgtHRylrt4bXuFmqV8EIeR8IRaLmXcz8=;
 b=HPuJooz3iLt46sSoket79xu/rkDpShcipwbVq+g9mhAECD8Oq2AXXtIzdtKVTCbMNu
 a2nk4TMhOUEgd0YL4hw8GOpEIgwPpO5Q4FUzsMrdwspgY2XhN9NRG4Azp76J0ync59F3
 8v5+7tI004fhQ6Wk/wglqd7oLV4w5Q7r3bqfXz0G6iQEmiXnKje0mSlp7TYA9kVZ8aLp
 S0Atelfl0YV1ZhI/oBEAUL+RNK0xIKaVvl6GAQQ+XVDubQG3tnRf2geFks7ejYT8/Tic
 Kro5mRXusdUYGuyIEfqUF5lujd8z+Gad3aKhxOweIHLpv6yNZuGFVnJb2yKG1RJvCf8s
 kkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=iE7y5G+CXJnCgtHRylrt4bXuFmqV8EIeR8IRaLmXcz8=;
 b=YIoLRLXsRQ/oGJb9eD7UC7jK/LPUhST6g4yX+hpbadyHSqkPXeFCNRPNOGER7t7Gb7
 iBQZMGvpsRIkK0V+DLPwI+RkOLZY9t9IQlh5uYXkhOUnAVoouEc4AHUoY8iUHvWDVnkr
 W0I2KoBpG2HlUCUqG01sU1t/xp1h0Kx1Nly37eEkXxqv18l/lrpNfArFM2iRTbO58aYJ
 t1d1sqAfFa51n/CixwQzaDhzqFsC7KYe2QUqqgxxL9DwHhj01crlR9JuLnVNNasQw5UF
 WVO1pNRl+Uw1JMtj0sBKs0hYIdRtRYa2pIRAZHRj/EC/7mAYnANBC71R9CMivpp40btH
 ejqg==
X-Gm-Message-State: APjAAAVNe6D9d4Mh1wJtApMoQDM3bo4PkJmX6J3QbtYEwCS4OjmB8vvr
 xXjmATeSrDvKVtQ6+ZscBSHW+r39
X-Google-Smtp-Source: APXvYqzKwHBpCCK2ixiYeyHbag7+jQHU/SUjQkGlLDWFKw4olnoFDi8doJW8tufeR/PCReqiTezVZw==
X-Received: by 2002:a5d:540f:: with SMTP id g15mr20516219wrv.86.1580811652987; 
 Tue, 04 Feb 2020 02:20:52 -0800 (PST)
Received: from racer.hostalia.de (static.239.3.12.49.clients.your-server.de.
 [49.12.3.239])
 by smtp.gmail.com with ESMTPSA id v17sm29005386wrt.91.2020.02.04.02.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 02:20:52 -0800 (PST)
Message-ID: <f6e720011a181b21ee3d95ca843ec5cb497c1f6f.camel@ettus.com>
To: Olivier Ravard <olivier.ravard@novagrid.com>, "Marcus D. Leech"
 <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Date: Tue, 04 Feb 2020 11:20:49 +0100
In-Reply-To: <1a37b784-232a-1f7a-a1cd-6031ccc0f992@novagrid.com>
References: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
 <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
 <7802e95a-d7eb-2c88-62e3-aae06d541b24@novagrid.com>
 <5E384E46.9070604@gmail.com>
 <1a37b784-232a-1f7a-a1cd-6031ccc0f992@novagrid.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] X300 connecting 10Gb/s using baseT
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
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

QWgsIG15IGJhZCwgSSB3YXMgYXNzdW1pbmcgeW91IGhhZCBhIDEwR0Jhc2UtVCBTRlArIG1vZHVs
ZS4gU29ycnkgZm9yCnRoZSBjb25mdXNpb24uCk9uIFR1ZSwgMjAyMC0wMi0wNCBhdCAwOToyNiAr
MDEwMCwgT2xpdmllciBSYXZhcmQgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gTGUgMDMvMDIvMjAy
MCDDoCAxNzo0NSwgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIGEgw6ljcml0IDoKPiA+
IE9uIDAyLzAzLzIwMjAgMDY6MzYgQU0sIE9saXZpZXIgUmF2YXJkIHZpYSBVU1JQLXVzZXJzIHdy
b3RlOgo+ID4gPiBUaGUgZ3JlZW4gbGVkIGF0IHRoZSBiYWNrIG9mIHRoZSBkZXZpY2UgKHBvcnQg
MSkgaXMgb24gYW5kIHRoZQo+ID4gPiBzZWNvbmQgb24gKG9yYW5nZSkgYmxpbmsKPiA+ID4gc29t
ZSB0aW1lcy4KPiA+ID4gVGhlICJsaW5rIiBsZWQgYXQgdGhlIGZyb250IG9mIHRoZSBkZXZpY2Ug
bm90IGJsaW5rLgo+ID4gPiAKPiA+ID4gVGhlIHJlc3VsdCBvZiBldGh0b29sIG9uIHRoZSBsaW51
eCBtYWNoaW5lIGZvciB0aGlzIGludGVyZmFjZSBpcwo+ID4gPiB0aGUgZm9sbG93aW5nOgo+ID4g
PiAKPiA+ID4gCj4gPiA+ICAgICAgICAgIFN1cHBvcnRlZCBwb3J0czogWyBUUCBdCj4gPiA+ICAg
ICAgICAgIFN1cHBvcnRlZCBsaW5rIG1vZGVzOiAgIDEwMDBiYXNlVC9GdWxsCj4gPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEwMDAwYmFzZVQvRnVsbAo+ID4gPiAgICAgICAg
ICBTdXBwb3J0ZWQgcGF1c2UgZnJhbWUgdXNlOiBTeW1tZXRyaWMgUmVjZWl2ZS1vbmx5Cj4gPiA+
ICAgICAgICAgIFN1cHBvcnRzIGF1dG8tbmVnb3RpYXRpb246IFllcwo+ID4gPiAgICAgICAgICBT
dXBwb3J0ZWQgRkVDIG1vZGVzOiBOb3QgcmVwb3J0ZWQKPiA+ID4gICAgICAgICAgQWR2ZXJ0aXNl
ZCBsaW5rIG1vZGVzOiAgMTAwMGJhc2VUL0Z1bGwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgMTAwMDBiYXNlVC9GdWxsCj4gPiA+ICAgICAgICAgIEFkdmVydGlzZWQgcGF1
c2UgZnJhbWUgdXNlOiBTeW1tZXRyaWMKPiA+ID4gICAgICAgICAgQWR2ZXJ0aXNlZCBhdXRvLW5l
Z290aWF0aW9uOiBZZXMKPiA+ID4gICAgICAgICAgQWR2ZXJ0aXNlZCBGRUMgbW9kZXM6IE5vdCBy
ZXBvcnRlZAo+ID4gPiAgICAgICAgICBTcGVlZDogMTAwME1iL3MKPiA+ID4gICAgICAgICAgRHVw
bGV4OiBGdWxsCj4gPiA+ICAgICAgICAgIFBvcnQ6IFR3aXN0ZWQgUGFpcgo+ID4gPiAgICAgICAg
ICBQSFlBRDogMTIKPiA+ID4gICAgICAgICAgVHJhbnNjZWl2ZXI6IGludGVybmFsCj4gPiA+ICAg
ICAgICAgIEF1dG8tbmVnb3RpYXRpb246IG9uCj4gPiA+ICAgICAgICAgIE1ESS1YOiBVbmtub3du
Cj4gPiA+ICAgICAgICAgIFN1cHBvcnRzIFdha2Utb246IGcKPiA+ID4gICAgICAgICAgV2FrZS1v
bjogZwo+ID4gPiAgICAgICAgICBDdXJyZW50IG1lc3NhZ2UgbGV2ZWw6IDB4MDAwMDAwMDAgKDAp
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBMaW5rIGRldGVj
dGVkOiB5ZXMKPiA+ID4gCj4gPiA+IEl0IHNlZW1zIHRoYXQgb25seSAxMDAwIE1iL3MgaXMgbmVn
b2NpYXRlZC4KPiA+ID4gCj4gPiA+IE9saXZpZXIgUmF2YXJkCj4gPiA+IE5vdmFHcmlkIFMuQS5T
Lgo+ID4gPiAKPiA+IFdoYXQgdHlwZSBvZiBTRlAtdG8tUko0NSBtb2R1bGUgZG8geW91IGhhdmU/
ICBBcmUgeW91IHN1cmUgdGhhdCBpdAo+ID4gaXMgZGVzaWduZWQgZm9yCj4gPiAxMEdCYXNlVD8g
IFdoYXQgdHlwZSBvZiBjYWJsZSBhcmUgeW91IHVzaW5nPwo+IEkgYW0gdXNpbmcgdGhlIFNGUC10
by1SSjQ1IG1vZHVsZSBwcm92aWRlZCBieSBldHR1cy4gSXQgc2VlbXMgdGhhdCBpdAo+IGlzIHNw
ZWNpZmllZCBvbmx5Cj4gZm9yIDFHQi9zLiBJIHdpbGwgdGVzdCB3aXRoCj4gYmV0dGVyIGFkYXB0
YXRvcnMuCj4gPiAKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gPiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+ID4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
