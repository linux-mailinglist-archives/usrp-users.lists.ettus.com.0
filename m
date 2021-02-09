Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F58315948
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 23:21:51 +0100 (CET)
Received: from [::1] (port=39155 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9bOG-0000m6-95; Tue, 09 Feb 2021 17:21:48 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:41122)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l9bOB-0000dO-Up
 for USRP-users@lists.ettus.com; Tue, 09 Feb 2021 17:21:43 -0500
Received: by mail-qt1-f175.google.com with SMTP id z32so201370qtd.8
 for <USRP-users@lists.ettus.com>; Tue, 09 Feb 2021 14:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=mZDJ5rSnFrx9qkvVERO/lwe8QzvuQS5+FlDzKQ0yZFI=;
 b=mzgxEkGQEHIciuVjVdeaW3Zpw9ILtzq3MViC9fByqts4IqJyTsV9lGQ71+5T6Zl36v
 hiMSu8d//JIsHeCFbNXoxKBw8dKfCHiWzMzJhzck94N1MrelOeVCea8kCPZ2cCTU8e2n
 jxyPXURvNtcIBoGJvhlIDMsoXDWJXDh/pRLGEAyYWf9rXnDe0Ybp5zRkDzAGZVhh2ni9
 77LbBAbCgoI3LidVZWQzuvDqAmn0JcASPkpqSUWWiIlB99jSzxgQ6bZFNOMT9UQVqerA
 BPRmjMM6EJ49ZvmfFYApq5i/Dhx29adQw8E272VrVXTLJJEnfmhgsoT76L/bCCjQBSyW
 LX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=mZDJ5rSnFrx9qkvVERO/lwe8QzvuQS5+FlDzKQ0yZFI=;
 b=Uo9dMZeiR+y9/xd8WAh3UjRxKNLWcml0+EqNz4i1kUMUUAMUfYSFUOtHZ62OqgzYH5
 Ml4jHOsmf59i3ptZrSBfSgw0o5AYkAxE/mfmbP34miDH/AEevw6qSRXThMZGs52HMHqF
 WJrI4Pz49GueENV+re40v2C7vbg9iqUoYEFEBNlw3EIn3/VaZs2FLO41yKhAmKWAF3Q0
 rjaL1pvpvcAa+9IaNxIREujGeXJJunPrj+VHev5uhgD4/+0VcGR8rgCdfWi/l3Fo7CF+
 DbVJ9iXfM0AsVxFZhdxCnVoFhNsCH1dMXhTM2oGSXczDlsa390w7117/ne8I8Lb2fMWb
 s1qw==
X-Gm-Message-State: AOAM531RhCot/KwQsISLYizi6TrVu8pTSkFSrskcyAOkR4Tj9wscdiwu
 Ygq0LED0slEYal9WT7uWEsI=
X-Google-Smtp-Source: ABdhPJxOkICEUPJHWAR6ctIklNxxF8nXB2/eUzE3dGZnAaPPMcz8EfTfUzHjcFXSsdWo5CyESlKX/g==
X-Received: by 2002:ac8:5d44:: with SMTP id g4mr202269qtx.93.1612909263428;
 Tue, 09 Feb 2021 14:21:03 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id c17sm122698qtn.71.2021.02.09.14.21.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 14:21:03 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 9 Feb 2021 17:21:02 -0500
Message-Id: <D64F3ED9-1AD4-41B1-8AFF-84171A216C35@gmail.com>
References: <CAO38sJ4HGZE3auk_j-tkREhG+h2-Me_5XwJnQB+Z2PBCL_Zx=Q@mail.gmail.com>
Cc: openair5g-user <openair5g-user@lists.eurecom.fr>,
 USRP-users@lists.ettus.com
In-Reply-To: <CAO38sJ4HGZE3auk_j-tkREhG+h2-Me_5XwJnQB+Z2PBCL_Zx=Q@mail.gmail.com>
To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] Usrp b210 without duplexer
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

VGhlIG1heGltdW0gcG93ZXIgYXQgYW55IHJlY2VpdmUgcG9ydCBzaG91bGQgbm90IGV4Y2VlZCAt
MTVkQm0uIAoKSWYgeW914oCZcmUgZG9pbmcgZnVsbCBkdXBsZXggaW50byBhIHNoYXJlZCBhbnRl
bm5hIHRoZW4geWVzIHlvdSBuZWVkIHRvIHVzZSBhIGR1cGxleG9yLiAKClRoaXMgaXNu4oCZdCBz
dHJpY3RseSBhIFVTUlAgaXNzdWXigJRpdOKAmXMgYSBnZW5lcmljIFJGIGVuZ2luZWVyaW5nIHBy
YWN0aWNlIHRoYXQgaXMgb2xkZXIgdGhhbiBtb3N0IG9mIHVzIGhlcmUuIAoKU2VudCBmcm9tIG15
IGlQaG9uZQoKPiBPbiBGZWIgOSwgMjAyMSwgYXQgNToxNyBQTSwgQXNodXRvc2ggU2luZ2ggdmlh
IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiDvu79I
aSBhbGwgLAo+IElmIEkgdXNlIG15IFVTUlAgYjIxMCB3aXRob3V0IGR1cGxleGVyIHRvIHRyYW5z
bWl0IGFuZCByZWNlaXZlICB0aGUgc2lnbmFscyBmcm9tIG90aGVyIFVTUlAgLCB3aWxsIGl0IG5v
dCBkYW1hZ2UgbXkgVVNSUCA/Cj4gCj4gVGhhbmtzIAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
