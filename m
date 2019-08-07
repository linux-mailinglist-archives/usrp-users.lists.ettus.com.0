Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A5283E2D
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 02:14:54 +0200 (CEST)
Received: from [::1] (port=56332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hv9bN-0001Cf-Lz; Tue, 06 Aug 2019 20:14:49 -0400
Received: from mail-wm1-f43.google.com ([209.85.128.43]:37646)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hv9bJ-000174-IE
 for usrp-users@lists.ettus.com; Tue, 06 Aug 2019 20:14:45 -0400
Received: by mail-wm1-f43.google.com with SMTP id f17so78126245wme.2
 for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2019 17:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=2Vj1ieVotDRSiunkURx7x7r+Vn2u2K8kvvsQsqg8hls=;
 b=Hk50gL6Tjm1uU4E5/skKmSDkAYjl7F+2eyjRocRm3O4Nw93yhAKF15QS8ATIFCgqh3
 8hcAFar8dWwDkorqF1lHGeqzEi7b5bNARaztvyYQ4q/3kI+mRE6I0IWyIHC7NxRWi9gk
 bz/CVM6pf8QeDdRBZMVgxP+Ct62olRo0aqexBEbkJVI1aL1YRS69zsAld25mBDKdkJEy
 J9X7ZhWMwI7OBg00bF/cPohimkTC7UK+JIxWQI+sbFpKi53Ia2++AHV5+9no1lf6zaln
 MsWDqjqYLNbosypQnAv7a7bK7do6+fDgGiWMN26fCUI3vZsa8vHv/nOOIFlS88yzmobI
 GzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=2Vj1ieVotDRSiunkURx7x7r+Vn2u2K8kvvsQsqg8hls=;
 b=dFLx0Dx2oejBKEY7nfmvhOcX4C9AydYvQN2Ww2/1M7TzRv2QUZDea9cVtZi4owCZ+a
 SMi5e21iJEGbgstXd0q0+EhFdq8I+VieLZ7LL1sbfeZo2PKHXIlrcABeTwI/pMHpiVeO
 s11UMyMZGzo41VHwQV9cvf9immcAYH14YdY/J2hFWkjNZKO3IB+u6A5hF9Oc88qcIU9z
 /g1mHMEIDrIWybtPqSsPTWPDgqn/oBDvjO105Az34eR+G9VZjlBd2cKOMMAYd6dGZaUz
 tNyNCYuVsXmxuNZ3DZWVYJG67yRol+3Xzyt0oLIKrcALAPY1QsuiK+/sfxT5qkZC0QsE
 01BQ==
X-Gm-Message-State: APjAAAWPKNtyhmUwfIHfkDgqqOdl8k2Fbc3pluLXolaj+hkyVucueP4o
 G8S/Jk4dDo0v7vzSnTOQ3ds68MbJ
X-Google-Smtp-Source: APXvYqyMBuMzutxic5+e48tZ2z9x+8Psxm/xhOHv2gygF9amXpUvvEsaR4WjeJY+PEGVKcDC25bE7A==
X-Received: by 2002:a1c:6641:: with SMTP id a62mr6447327wmc.175.1565136844457; 
 Tue, 06 Aug 2019 17:14:04 -0700 (PDT)
Received: from workhorse.lan
 (HSI-KBW-46-223-151-10.hsi.kabel-badenwuerttemberg.de. [46.223.151.10])
 by smtp.googlemail.com with ESMTPSA id o7sm73730291wmc.36.2019.08.06.17.14.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Aug 2019 17:14:02 -0700 (PDT)
Message-ID: <ff9849d4e1ed3d8a1bc21e61901acb0c07887f55.camel@ettus.com>
To: Edwin Mauricio Barbosa Salinas <edwin.barbosa@usantotomas.edu.co>, 
 usrp-users@lists.ettus.com
Date: Wed, 07 Aug 2019 02:14:01 +0200
In-Reply-To: <CAC5Qad5jUm=+GvOS1_CjTYH3Arr=19vFYKcYX924sdo9WeYfPg@mail.gmail.com>
References: <CAC5Qad6y-8YJ68q70rFZaH7Og-BvCs3yVJNTs6AFg093q84++A@mail.gmail.com>
 <CAC5Qad5jUm=+GvOS1_CjTYH3Arr=19vFYKcYX924sdo9WeYfPg@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Fwd: Configurating X300 "uhd_find_devices" No uhd
 devices found
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

RGVhciBFZHdpbiwKCnRoaXMgdXN1YWxseSBmYWlscyBiZWNhdXNlIHRoZSBVU1JQcyByZXBseSB3
aXRoIGEgIndoZXJlIGFyZSBVU1JQcwpicm9hZGNhc3QiIGZyb20gdWhkX2ZpbmRfZGV2aWNlcyB3
aXRoIGEgImhlcmUgSSBhbSBicm9hZGNhc3QiLCBhbmQKb2Z0ZW4sIHRoZXNlIGdldCBjYXVnaHQg
aW4gdGhlIGZpcmV3YWxsIG9yIGRvbid0IGdldCByb3V0ZWQgdGhyb3VnaAplLmcuIE5BVC4KClNp
bmNlIHlvdSdyZSB1c2luZyBhIFZNOiB0aGUgWDMwMCBjYW4gcHVzaCB0aHJvdWdoIGEgV0hPTEUg
bG90IG9mIGRhdGEKcGVyIHNlY29uZC4KIFlvdSdkIHR5cGljYWxseSByZWFsbHkgd2FudCB0byBh
dm9pZCB0aGF0IHRoZSBob3N0IHRvdWNoZXMgbmV0d29yawpkYXRhIGdvaW5nIHRvIGFuZCBjb21p
bmcgZnJvbSB0aGUgVk0gZm9yIGNvbXB1dGF0aW9uYWwgcmVhc29ucy4KVGhlIG1vc3QgcGVyZm9y
bWFudCB3YXkgdG8gZG8gdGhhdCBpcyB0byBqdXN0IGJpbmQgeW91ciBuZXR3b3JrIGNhcmQKY29t
cGxldGVseSB0byB0aGUgVk07IGFzIHNvb24gYXMgeW91IGFjaGlldmUgdGhhdCwgdGhlIGhvc3Qg
Y2FuJ3QKZmlsdGVyIG91dCBhbnkgcmVwbGllcyBhbnltb3JlLiBZb3UnbGwgYWxzbyBuZWVkIHRv
IG1ha2Ugc3VyZSB0aGUgVk0ncwpmaXJld2FsbCBkb2Vzbid0IGVpdGhlci4KCkJlc3QgcmVnYXJk
cywKTWFyY3VzCgpPbiBUdWUsIDIwMTktMDgtMDYgYXQgMTc6NDAgLTA1MDAsIEVkd2luIE1hdXJp
Y2lvIEJhcmJvc2EgU2FsaW5hcyB2aWEKVVNSUC11c2VycyB3cm90ZToKPiAKPiAKPiAtLS0tLS0t
LS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLQo+IERlOiBFZHdpbiBNYXVyaWNpbyBCYXJi
b3NhIFNhbGluYXMgPGVkd2luLmJhcmJvc2FAdXNhbnRvdG9tYXMuZWR1LmNvPgo+IERhdGU6IG1h
ci4sIDYgYWdvLiAyMDE5IGEgbGFzIDE3OjM3Cj4gU3ViamVjdDogQ29uZmlndXJhdGluZyBYMzAw
ICJ1aGRfZmluZF9kZXZpY2VzIiBObyB1aGQgZGV2aWNlcyBmb3VuZAo+IFRvOiA8ZGlzY3Vzcy1n
bnVyYWRpb0BnbnUub3JnPgo+IAo+IAo+IHJlZ2FyZHMsCj4gSSBhbSBjdXJyZW50bHkgd29ya2lu
ZyB3aXRoIGEgVVNSUCBYMzAwLCBmb2xsb3dpbmcgaXRzIFVIRCBhbmQKPiBHTlVSQURJTyBpbnN0
YWxsYXRpb24gZ3VpZGVzLCBJIGFtIG1ha2luZyB0aGUgY29uZmlndXJhdGlvbnMgZnJvbQo+IFVi
dW50dSAxNC4wNCB3aXRoIGEgVk0gVmlydHVhbEJveCB2aXJ0dWFsIG1hY2hpbmUsIHdoZW4gSSBl
eGVjdXRlIHRoZQo+IGNvbW1hbmQgInVoZF9maW5kX2RldmljZXMiIGl0IHRocm93cyBtZSBhIG1l
c3NhZ2Ugc2F5aW5nICJObyBVSEQgZmluZAo+IGRldmljZXMiIGJ1dCB3aGVuIEkgZXhlY3V0ZSB0
aGUgY29tbWFuZCAidWhkX2ZpbmRfZGV2aWNlcyAtLWFyZ3MgPSIKPiBhZGRyID0gMTkyLjE2OC4x
MC4yICIiIGl0IGV4ZWN1dGVzIGl0IHN1Y2Nlc3NmdWxseSwgSSB3YW50IHRvIGtub3cKPiBob3cg
dG8gZG8gc28gdGhhdCB3aGVuIGV4ZWN1dGluZyB0aGUgY29tbWFuZCAidWhkX2ZpbmRfZGV2aWNl
cyIgaXQgaXMKPiBleGVjdXRlZCBzdWNjZXNzZnVsbHkuCj4gCj4gCj4gcm9vdEBlZHdpbi1WaXJ0
dWFsQm94Oi9ob21lL2Vkd2luIyB1aGRfZmluZF9kZXZpY2VzIAo+IGxpbnV4OyBHTlUgQysrIHZl
cnNpb24gNC44LjQ7IEJvb3N0XzEwNTQwMDsgVUhEXzAwMy4wMDkuMDA1LTAtCj4gZzMyOTUxYWYy
Cj4gCj4gTm8gVUhEIERldmljZXMgRm91bmQKPiAKPiByb290QGVkd2luLVZpcnR1YWxCb3g6L2hv
bWUvZWR3aW4jIHVoZF9maW5kX2RldmljZXMgLS0KPiBhcmdzPSJhZGRyPTE5Mi4xNjguMTAuMiIK
PiBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDQuOC40OyBCb29zdF8xMDU0MDA7IFVIRF8wMDMuMDA5
LjAwNS0wLQo+IGczMjk1MWFmMgo+IAo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gLS0gVUhEIERldmljZSAwCj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBEZXZpY2UgQWRkcmVzczoKPiAgICAg
dHlwZTogeDMwMAo+ICAgICBhZGRyOiAxOTIuMTY4LjEwLjIKPiAgICAgZnBnYTogSEdTCj4gICAg
IG5hbWU6IAo+ICAgICBzZXJpYWw6IDMxMjRFRDUKPiAgICAgcHJvZHVjdDogWDMwMAo+IAo+IAo+
IC0tIAo+IEVkd2luIE1hdXJpY2lvIEJhcmJvc2Egc2FsaW5hcwo+IENvZC4gMjE3MjgwMAo+IElO
R0VOSUVSw41BIERFIFRFTEVDT01VTklDQUNJT05FUwo+IAo+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
