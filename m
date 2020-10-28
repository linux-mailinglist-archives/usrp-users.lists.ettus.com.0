Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF5029D65D
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 23:14:35 +0100 (CET)
Received: from [::1] (port=37994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXtiD-0006x8-N7; Wed, 28 Oct 2020 18:14:33 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:40356)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kXti9-0006ke-W5
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 18:14:30 -0400
Received: by mail-io1-f53.google.com with SMTP id r9so1170177ioo.7
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 15:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=+RNMhnPZ/F8PkC0wX5tcs3znwDZEaXvvPdOwm7iClB8=;
 b=ZKiILEkcamEv4r13cIcpJs9zVnoSz0f6hyut68HclxpGHxt+zNcFbEZqeUe0wS1dCn
 pPf9ITo0NIgeh18dP6b1yFm7K7sZQGERjl/A+os5gpZT8+zf2ukwugzYWRgMpiCtJJ7Y
 lX7AAhHGWS33Dlj4L/O9UhG//m6dtMTCbJRdOhTxqQW6/Pvu7svV9zHa3ZJFBHbrTDcC
 LF94BR59NsuQwItlQpI685YW0YVDh2254Nz5uaZOZQE52WUa4tTrYRqS5DS5Hwu3cPjc
 mB5RY88q4FCjso0Uf7Wyzu1eavUIufSFDzRMBlGIt/GfU1WvEn4fl5SCgj2dpiwC/jyB
 MVZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=+RNMhnPZ/F8PkC0wX5tcs3znwDZEaXvvPdOwm7iClB8=;
 b=Tj5LzStN1xMyZq1FriB7krYbpdI+MPx6vkxcOLaDWpmcA2X9zssk25Gc/XWeZunq3V
 webXImrfRyXzDjowGDs1GSGW0TmtIuDxoQ2peQAglB895WOibZuL8ulQZsz6RG8bE2qA
 giQq61VNanB7oH3mpBia5ZpKtmBLfREcjCVobJUl1DBi7+Oh3v4vYe4durMfGRwaczOV
 12X2IdsBGE8X5FpQfLyz5vbTGWJjOh3c3oy0NvQZaez+03WQ/zGHMLHbjRqrd+E6VGbs
 iilpjJDT6pC+cQclIiifZDBEZjL0RnZgrxckNLp9kDma9Ym5IwsqK7GNAszZWBWPVhk5
 EUow==
X-Gm-Message-State: AOAM532Pacm0WQFie44eRZzyBor4559Sro3S3kyir5TkzW+taONfnqdT
 eOjn4Uap+6pLsqFDTyVvwsA=
X-Google-Smtp-Source: ABdhPJwzy8Znxk8cz+vjfYkV34MhZEdGsoJx9j73UH4JafH8WDx5FJB+5Hemp+d4taOZYaqAg75q+Q==
X-Received: by 2002:a02:234f:: with SMTP id u76mr1111713jau.117.1603923229343; 
 Wed, 28 Oct 2020 15:13:49 -0700 (PDT)
Received: from [192.168.2.29]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id k8sm603225ilh.8.2020.10.28.15.13.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Oct 2020 15:13:48 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 28 Oct 2020 18:13:48 -0400
Message-Id: <1A856AD3-9A46-44E8-B9A3-D3BBEF8B447B@gmail.com>
References: <CAANLyuaUMQ9MZuXLMp5zAiT380Oxx0UzGbJiyfwKY-+iV+Y7uQ@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CAANLyuaUMQ9MZuXLMp5zAiT380Oxx0UzGbJiyfwKY-+iV+Y7uQ@mail.gmail.com>
To: Devin Kelly <dwwkelly@gmail.com>
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] Datatype dynamic range
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

VGhhdCBpcyBhIGNvcnJlY3QgYXNzZXNzbWVudC4gCgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4g
T24gT2N0IDI4LCAyMDIwLCBhdCA1OjUzIFBNLCBEZXZpbiBLZWxseSB2aWEgVVNSUC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7vwo+IEhlbGxvLAo+IAo+
IEknbSB1c2luZyByeF9zYW1wbGVzX3RvX2ZpbGUgb24gYSBCMjA1IG1pbmkgdG8gY2FwdHVyZSBz
b21lIGRhdGEsIHdoZW4gSSBzZXQgRnMgdG8gNDBlNiBvciA1MGU2IEkgbm90aWNlZCBJIGdldCBz
b21lIG92ZXJmbG93cy4gIEkgZ2V0IGZld2VyIG92ZXJmbG93cyB3aGVuIEkgc2V0IG15IHR5cGUg
dG8gc2hvcnQgKGFzIG9wcG9zZWQgdG8gZmxvYXQpLgo+IAo+IFNpbmNlIHRoZSBBREMgb24gdGhl
IEIyMDUgbWluaSBpcyAxMiBiaXRzLCBhIHNob3J0IGlzIDE2IGJpdHMgYW5kIGEgZmxvYXQgaXMg
MzIgYml0cyBJIHNob3VsZG4ndCBiZSBsb3NpbmcgYW55IGR5bmFtaWMgcmFuZ2Ugd2hlbiBJIGNo
b29zZSB0byBzdG9yZSBteSBzYW1wbGVzIGFzIHNob3J0cyAoY29tcGFyZWQgdG8gZmxvYXQpLiAg
SXMgdGhpcyBjb3JyZWN0Pwo+IAo+IEFyZSB0aGUgZmxvYXQgYW5kIGRvdWJsZSBkYXRhIHR5cGVz
IGp1c3Qgb2ZmZXJlZCBmb3IgY29udmVuaWVuY2U/IAo+IAo+IFRoYW5rcywKPiBEZXZpbgo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
