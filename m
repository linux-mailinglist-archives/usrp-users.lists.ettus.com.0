Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2D7302D83
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 22:25:46 +0100 (CET)
Received: from [::1] (port=35406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l49Mk-0002A9-LF; Mon, 25 Jan 2021 16:25:42 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:39021)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l49Mg-00025y-HN
 for USRP-users@lists.ettus.com; Mon, 25 Jan 2021 16:25:38 -0500
Received: by mail-qk1-f179.google.com with SMTP id k193so14008605qke.6
 for <USRP-users@lists.ettus.com>; Mon, 25 Jan 2021 13:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=IdUzz5xjFn2wC8WYmmBMKar3tVkpNwox7OBLi267naM=;
 b=tOknUcaHty2D+IVwbXk3Wwk+FtjkI93bNq1HvxWPAezVJwAJKLGsr2mgABF/GeFolQ
 3UtAPretL0p7qcqbPEljqRz9AVT81r25umoBTT8ZKejy9gZd5Kl1YLs2GpmJp8Oh/UCB
 BgtV+0S0vyJQIuzyHyCmv/5q/1CK9b4i7ypTqFAvKKqD5pG2sJvwxsv4uP6y0b7m4J2z
 KQ6zxeE4FQG+bedL37ocwUJgckR7adC9cbxEYzZ+SWlhahEFfl3t2v7NGXm/YMi+UJvJ
 ylArc0062Jfpb6sD3X/4yGaNlWk2GyB1zaNUcxBE1Kzs380BrY/Xdy11SeRbWzmdi33p
 qM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=IdUzz5xjFn2wC8WYmmBMKar3tVkpNwox7OBLi267naM=;
 b=OirKDNeE2SrHhgg3xQ4CpR63EccBas2dZhVuYXkMHwG+N/8Sq5+vSUjR8XoOlrSc2i
 4wYpDQns2Zx0pdDT2DiZ6LAYQGNJb/PV3TycOaPow6SpdsGKU2GgCrxnTQO1mwS1dC8k
 O00V3A6YxIyLulbzDkApzSeNeHjYDTwKlUMN9Lf+B1CRScQzbGzbNLkjRu1aCFNFb8Sj
 AanhY8pbUcgaiXXyUsiTkKO23c/qLu6c/DP+yJyHP9nBFbm8dV5EuQ2T0qJLOAKCgZLn
 tY/cfcfMvKmnZFzlcla9kuYbfYjfFVOnJtxAEaTdjYIeQrqu0ZlI/O+7l/fJfZSpRl5G
 dHwA==
X-Gm-Message-State: AOAM531NrcoK4YhUfW8jUmkwUeX9TQ7DWrlCpj5plkt+V2yKB13nmMoQ
 +c1AFizkCcFyorLrQ5ZG8C/RXNPKAdY=
X-Google-Smtp-Source: ABdhPJxNS0B8o+LuEL+U3e/YSug8XB/XVeRx2uiabQ8SLSu9XPUPQowv6RmOqSdrBkhsNLU01PTo2g==
X-Received: by 2002:a37:78c4:: with SMTP id t187mr2764925qkc.139.1611609897896; 
 Mon, 25 Jan 2021 13:24:57 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id t14sm2886065qkt.50.2021.01.25.13.24.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Jan 2021 13:24:57 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 25 Jan 2021 16:24:56 -0500
Message-Id: <994B28AD-FC51-430B-A920-1435B6D8085E@gmail.com>
References: <600f1f4f.1c69fb81.6ffb3.d431@mx.google.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <600f1f4f.1c69fb81.6ffb3.d431@mx.google.com>
To: dario <dario@iptronix.com>
X-Mailer: iPhone Mail (18C66)
Subject: Re: [USRP-users] uhd4.0 and blocks with multiple ports
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

VGhpcyBpcyBjbGVhcmx5IGEgcXVlc3Rpb24gZm9yIHRoZSBkaXNjdXNzLWdudXJhZGlvIG1haWxp
bmcgbGlzdC4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEphbiAyNSwgMjAyMSwgYXQgMjo0
MyBQTSwgZGFyaW8gdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3
cm90ZToKPiAKPiDvu78KPiBIaSwKPiBJIGNyZWF0ZWQgYSBibG9jayB3aXRoIHR3byBvdXRwdXQg
cG9ydHMgYW5kIG9uZSBpbnB1dCBwb3J0IGhvd2V2ZXIgd2hlbiBpIHRyeSB0byBjb25uZWN0IGl0
IHZpYSBzdHJlYW0gZW5kcG9pbnRzIGdudXJhZGlvIGNvbXBhbmlvbiBjbGFpbXMgaXQgZG9lc24n
dCBrbm93IGhvdyB0byBoYW5kbGUgdGhpcy4gSSB0aGVuIGFkZGVkIGEgc2V4b25kIGlub3V0IGFz
IGkgcmVjYWxsIHRoYXQgb24gdWhkIDMuMTUgaXQgaXMgbmVjZXNzYXJ5IHRvIGhhdmUgYXMgbWFu
eSBpbnB1dHMgYXMgb3V0cHV0cyBidXQgaXQgZ2F2ZSBiYWNrIHRoZSBzYW1lIGVycm9yIG5vdyBz
YXlpbmcgaXQgZG9lc24ndCBrbm93IGhvdyB0byBjb25uZWN0IGJsb2NrcyB3aXRoIHR3byBpbnB1
dHMgYW5kIHR3byBvdXRwdXRzLgo+IEknbSBhIGJpdCBjb25mdXNlIGJlY2F1c2UgaXQgc2VlbXMg
cmFkaW8gZm9yIGV4YW1wbGUgaGFzIHR3byBvdXRwdXRzIGhvd2V2ZXIgaXQgaXMgc3RhdGljYWxs
eSBjb25uZWN0ZWQuIElzIGl0IGF0IGFsbCBwb3NzaWJsZSB0byBoYXZlIGEgZHluYW1pYyBjb25u
ZWN0aW9uIG9mIGEgYmxvY2sgd2l0aCBtdWx0aXBsZSBvdXRwdXRzPyBXaGF0IGlzIHRoZSBwb3Nz
aWJsZSByZWFzb24gd2h5IG5vZGUgbWFuYWdlciByZXBvcnRzIGl0IGRvZXNuJ3Qgc3VwcG9ydCB0
aGlzIGNvbm5lY3Rpb24/Cj4gCj4gVGhhbmtzLAo+IAo+IERhcmlvCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
