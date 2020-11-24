Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 979402C2D4D
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 17:50:49 +0100 (CET)
Received: from [::1] (port=33386 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khbWh-0003AQ-G6; Tue, 24 Nov 2020 11:50:47 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:42643)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1khbWe-00032H-8i
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 11:50:44 -0500
Received: by mail-qk1-f171.google.com with SMTP id z188so9754844qke.9
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 08:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=vJ0m5N3zc4wu7vm+5LdzrBiXzPotJpGZTXbOCp+0ZgQ=;
 b=GHJ21UmzNfVhQG752/khUEv17BymiVRaBW/klZ+g/78wiVuLtPHygDD03xWXmZ8Yeh
 7+m/mAtESsJoZseIOAzI8etqVeBb0vD+NYvbi0HdNY0Pd7spUzMQ2/H+85EGJ8S+3/lA
 gSaM7sUAbd3MTMWgV722LIewrzcGGJ9O7fXfTcnfEcwjAXPaW7g7AYgfJ8yS+8GhxszB
 gYdF54nMIRLL9KjyksEmPToxwj3kFhWcoyiF2JfTKhKJBL/0NYU6yCWNMPTfCfnUvee8
 mDSvC84dy3F3TKiId53OsW/oPGIS2X7m2fMsrCJEe1POf27esoy2KCfKUY+UO1uAMMU1
 h4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=vJ0m5N3zc4wu7vm+5LdzrBiXzPotJpGZTXbOCp+0ZgQ=;
 b=nSpAqDw7uJf7yFcq94zhcNXvF3Wa1uOrUVYX73hHAe1w6aPdYH5fmtPWSTYfyBdLTm
 y+niZ9uFSZmhNnue6yWwly9B8lHosf2hKbJw/QIslRJrRudSIRYD4l72Zmwzn8figjhu
 JHCnlk7Ed17qiRwIAyzaE2GRLyyCsKNO+4D3kVFvPvTUwG8A/o2f39Fgx/DxRG70Wb4T
 h1p335THG2kmIXOG9p4QeUrHrtN8ySmP1eg4YE0wlJx2E/O69oPEgJMbCyqsK5vR8NG/
 HUB1hFGT/CvZrShqbeDVMWJhDXX2tWFRARhcC87Tf5iNqFh1BmvFiaqnt0+KMF9PKgGA
 dl/A==
X-Gm-Message-State: AOAM5326GXQ633NOk8ocQhtwhvrgBqYRgs3uLaYJBAc5RP6DUbZaOg53
 nBbg4QV1uiv+mjIfCFDF2yT5jayQk8s=
X-Google-Smtp-Source: ABdhPJx9wZv6DqvRewf8n4zj9YnmA5xvPREq87KIrVlTZTkwcZAQdXoiLarXhZYiXg7xKLnMVb/1ig==
X-Received: by 2002:a37:7b44:: with SMTP id w65mr5882547qkc.350.1606236603379; 
 Tue, 24 Nov 2020 08:50:03 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id 13sm9633232qkp.16.2020.11.24.08.50.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Nov 2020 08:50:02 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 24 Nov 2020 11:50:01 -0500
Message-Id: <7BD0A8F0-BF72-4828-A45D-D17044793BE4@gmail.com>
References: <CA+ce6i3cV306yPooJV_a3sv24u-71fC9HdtKf2yiFG9g-wxqRw@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CA+ce6i3cV306yPooJV_a3sv24u-71fC9HdtKf2yiFG9g-wxqRw@mail.gmail.com>
To: Luke Whittlesey <luke.whittlesey@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] Carrier frequency jumps on E310
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

VHJ5IGF0IGxvd2VyIGFuZCBoaWdoZXIgZnJlcXVlbmNpZXPigJRhcmUgdGhlIGp1bXBzIHRoZSBz
YW1lIG9yIHByb3BvcnRpb25hbCB0byBmcmVxdWVuY3k/CgpTZW50IGZyb20gbXkgaVBob25lCgo+
IE9uIE5vdiAyNCwgMjAyMCwgYXQgMTE6MjcgQU0sIEx1a2UgV2hpdHRsZXNleSB2aWEgVVNSUC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7v09uIHRoZSBF
MzEwIEknbSBzZWVpbmcgZGlzY3JldGUganVtcHMgaW4gdGhlIGNhcnJpZXIuIFRoZSBjYXJyaWVy
IHdpbGwKPiBpbnRlcm1pdHRlbnRseSBqdW1wIGFyb3VuZCBpbiBzdGVwcyBvZiBhYm91dCA1MEh6
LiBTb21ldGltZXMgaXQgd2lsbAo+IGp1bXAgYnkgYWJvdXQgMjAwSHouIEkndmUgYXR0YWNoZWQg
YSB3YXRlcmZhbGwgZGlzcGxheSwgYnV0IEkgZG9uJ3QKPiBrbm93IGlmIGF0dGFjaG1lbnRzIHdp
bGwgbWFrZSBpdCB0aHJvdWdoLgo+IAo+IE15IHNldHVwIGlzOgo+IEUzMTAgU0czCj4gVUhEMy4x
MSB1c2luZyB0aGUgQy1hcGkKPiBUaW1pbmcgUmVmZXJlbmNlIGlzICJpbnRlcm5hbCIKPiBDZW50
ZXIgRnJlcXVlbmN5IDFHSHoKPiBJL1Egc2lnbmFsIGlzIGEgc3RyZWFtIG9mIDEsMC4uLiBmb3Ig
YSBDVyBhdCB0aGUgY2Fycmllcgo+IAo+IEkgY2FuIHNlZSB0aGUgc2FtZSB0aGluZyB3aGVuIEkg
c2V0IHRoZSB0aW1lc291cmNlIHRvICJncHNkbyIsIGJ1dCBJCj4gd291bGRuJ3QgZXhwZWN0IGl0
IHdoZW4gSSBzZXQgaXQgdG8gImludGVybmFsIi4gTXkgZ3V0IHNheXMgdGhhdCB0aGlzCj4gaXMg
YmVpbmcgY2F1c2VkIGJ5IHNvbWUgdGltZXNvdXJjZSBjb3JyZWN0aW9uIGxvb3AuIElmIHRoaXMg
aXMgdGhlCj4gY2FzZSBpcyB0aGVyZSBhIHdheSB0byBkaXNhYmxlIHRoaXM/Cj4gCj4gVGhhbmsg
eW91Cj4gPGUzMTAtbG8tZnJlcXVlbmN5LXNoaWZ0czIucG5nPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
