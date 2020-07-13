Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A85321CCCD
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 03:29:30 +0200 (CEST)
Received: from [::1] (port=60240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1junHa-0000qo-6P; Sun, 12 Jul 2020 21:29:26 -0400
Received: from mail-qv1-f42.google.com ([209.85.219.42]:34899)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1junHW-0000lv-HJ
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 21:29:22 -0400
Received: by mail-qv1-f42.google.com with SMTP id ed14so5140870qvb.2
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 18:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ui8apH54a4hACKRfrMQCqRqmqkz3E4TK6WVeAn93v5k=;
 b=R6ifOVhARaCrpi7Ift1Da1l51hNM8yV/bGz7svV3xCJ7KGhef0SC7hzle41rF33zz4
 QntHsWkhmOJLSTT+ROdpvqdIGwi+pN7zpe+OQuWpHgcBE/ILaDG5DGU7mm0+RctndWoF
 tYIeVJ4VHzRiSBTit75r8/G0qnnos/bFbTrOTsNMKVOD8IvVu49dXfzT1aEUrwlsRlcS
 GWD4McWaVkplTKMxtGPqK+tjBbZUCXyYXG+7Y8pRLd2o3SIIKLM/6oYw+3aErODrn1fP
 /Hhzt/saA4OvFshahpuS4FrDFUGl/h9EXWtr2hOIFq+MM9EJCeIslBabt05R0K9cqPyo
 zukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ui8apH54a4hACKRfrMQCqRqmqkz3E4TK6WVeAn93v5k=;
 b=i2OGg6Y6Aehz2BqBBi1zvB3QimjRg0SFepncuLw3pThUvy293nmFUaDYG8NJeSwks8
 i+kAmAkFsuuNtQyjgDkbX1O4QdA9JIWDTuc2Ivd7crThxHfDpqyL0AUk7ncgkxx5FI3O
 AjRPWpdT6HcuT9iD1Vtw1XQ7h6Vp7wELQkj/pPi+7tu98bQBZzvDyBgPNI4vuq0Vs2Yi
 v0dUFwI0+aWwf4pLX6hZv6gCu4PpFea6jwmxv8H8YNNS+AX7vocAYjuDSuiK4hLrkbR9
 od42U7tCoqbv7qPm3Gjudb/YDhUv48I7RmfsvInHbzWgaldWK7mxI13vxhbjierFb+fv
 cOtA==
X-Gm-Message-State: AOAM532LyR04cCrfejZZ3Y4LVQdpmgV+mymM+mBrlpa5c+zz0rA+G34p
 dJrpC9dVY3HtsrWD62jGIIdyci1Fj4Y=
X-Google-Smtp-Source: ABdhPJxBJjOYef68KbF11QYMLWPAuIqGwDd31X2pBXjMrjMm3q6Y8J0rvBNiLa0vwJ2wNbMXjcutZw==
X-Received: by 2002:a0c:fcc9:: with SMTP id i9mr57051239qvq.152.1594603721255; 
 Sun, 12 Jul 2020 18:28:41 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id k2sm17565784qkf.127.2020.07.12.18.28.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 18:28:40 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jul 2020 21:28:40 -0400
Message-Id: <4AEB401F-B450-4FD1-BD70-7F3A2AEEBE72@gmail.com>
References: <459FB5B3-6256-4878-8AD1-9F836DE1E48C@gmail.com>
Cc: usrp-users@lists.ettus.com
In-Reply-To: <459FB5B3-6256-4878-8AD1-9F836DE1E48C@gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] B210 GNU HF Spectrum Analyzer
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
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

TWFyY3VzCkFsbCBJIGhhdmUgaXMgdGhlIEIyMTAuIFRoYXTigJlzIGl0LiAKTGFycnksIEs0TEVE
IAoKPiBPbiBKdWwgMTIsIDIwMjAsIGF0IDg6MDYgUE0sIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4g77u/VGhlIEIyMTAgaXMgc2VsZiBjb250YWlu
ZWQgYW5kIHR1bmVzIGRvd24gdG8gNTBNaHogYXQgdGhlIGxvd2VzdC4gVGhlIExGUlggaXMgZm9y
IG90aGVyIHR5cGVzIG9mIFVTUlBzLiBTbyBmaXJzdCB0aGluZ3MgZmlyc3QsIHdoYXQgdHlwZSBv
ZiBVU1JQIGRvIHlvdSBoYXZlPwo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gSnVs
IDEyLCAyMDIwLCBhdCA3OjQzIFBNLCBMYXJyeSBEb2RkIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4+IAo+PiDvu79JIG5lZWQgdG8gc2V0IHVwIGEg
R05VIEhGIHNwZWN0cnVtIGFuYWx5emVyIHdpdGggYSB3YXRlcmZhbGwgdXNpbmcgbXkgQjIxMCwg
TE5BLCBhbmQgTEZSWCBkYXVnaHRlciBib2FyZC4gVGhlIHRhcmdldCB3b3VsZCBiZSBhIDE1IHRv
IDMwIE1IeiAob3Igd2lkZXIpIGluc3RhbnRhbmVvdXMgc3BlY3RydW0gZm9yIFJhZGlvIEFzdHJv
bm9teSB3b3JrLiBSYXRoZXIgdGhhbiByZS1jcmVhdGluZyBzb21ldGhpbmcgdGhhdCBhbHJlYWR5
IGV4aXN0cyB3aGVyZSBjb3VsZCBJIGdldCBhIHNpbWlsYXIgR05VIGZsb3dncmFwaD8gU2luY2Ug
SSBhbSBicmFuZCBuZXcgdG8gVVNSUCBhbnkgYWR2aWNlIGlzIHZlcnkgd2VsY29tZS4gCj4+IFRo
YW5rcywKPj4gTGFycnksIEs0TEVEIAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
