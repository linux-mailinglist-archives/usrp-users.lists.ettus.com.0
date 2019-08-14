Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C738D803
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 18:23:50 +0200 (CEST)
Received: from [::1] (port=51020 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxw3w-0003cE-E3; Wed, 14 Aug 2019 12:23:48 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:43345)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hxw3s-0003WG-TI
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 12:23:44 -0400
Received: by mail-qk1-f177.google.com with SMTP id m2so18721582qkd.10
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 09:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=lCzcULWA9w+pCP8VjGfZaynBZzOzeT8LfX4uEcn56rE=;
 b=Pywn98DqzdRHygXOAjIalMW4eZUerBaO6Lefz/QF0+VKU6XI3DyJaJG2i6uUCGD8Nq
 4MNp2THz6jsKluQ7JT9oC8ljfuNOx4udlauW9L0MEZv3guk/JSL4Ojm+4tmewULjLLPX
 mwE2wUfJ7vJYmlOUqbfDrhz2duu1lunL/MfhE9rzVs/E2OXEJSl6ikp63Cr/FBh7wj9X
 YZEHQOkn9n0FeLM+Fcwnx+p5cE6k2QTDeoHFbXib0EKNvGeVhXYzanggIxOKJ9oRS6yH
 DgGi5zPyKDx2kcIwmFV3WZei2zVmGMVdLQXvHwzZRH9X6v+sKOfRXBpT+HoiMYBVayCC
 gyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=lCzcULWA9w+pCP8VjGfZaynBZzOzeT8LfX4uEcn56rE=;
 b=iHC0t6vRRU4af6LCegjpXoUy9SrVE/qe4hoZgRjvXO4JWY7UHtZ+tHltKCn6RURVJ9
 +wy0MKGQxXRmNSpW8eM0khUpk4QgseL89CNqbsbSVITSvzLSWZChfZGqm1yr9OW758vW
 uweTlrbn4A33ShtFX811UB0A+vtGSOuG5O2HTz//C/i7RMBPCsTZnzbwlIBebSQkj35C
 VcwXSWhTV0Rdwqrzqd0SIrgruq+f40+ZNVzdjDQWu3f1RSm65Zf2FIQZ3sDPSboQGouM
 WUkv0EObYSjJ+bhiC9tij09xJuqokFNtjBPPoQ/BRG09s9Ev/FxVeRROs7OnUYJFUu9c
 Qd+g==
X-Gm-Message-State: APjAAAUSECrAr60Lnc9EXfs3Z0Pru+QWsq6vz8g4n2c4nXrY43w23ksx
 xE6YngulKCZcVrCLZbBBZAUEIV0X
X-Google-Smtp-Source: APXvYqwY7cUC1L8kBv9H6PwvWwoRJQR5S2xuFQS8p44GgtSGMkDL7Y4FsBAYWCFsMu3JvP3l2yH6tQ==
X-Received: by 2002:a37:c20a:: with SMTP id i10mr270698qkm.76.1565799784245;
 Wed, 14 Aug 2019 09:23:04 -0700 (PDT)
Received: from ?IPv6:2605:b100:511:2839:1073:ccd:795a:2d6c?
 ([2605:b100:511:2839:1073:ccd:795a:2d6c])
 by smtp.gmail.com with ESMTPSA id a67sm118524qkb.15.2019.08.14.09.23.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 09:23:03 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <CAGBdiiZjdEKO85ruYi=nh5Du0+b7JQCYqPWgVRPKzTm72r5FAg@mail.gmail.com>
Date: Wed, 14 Aug 2019 12:23:02 -0400
Message-Id: <23C91668-58BF-41B8-92BD-732A0C4F1798@gmail.com>
References: <CAGBdiiZjdEKO85ruYi=nh5Du0+b7JQCYqPWgVRPKzTm72r5FAg@mail.gmail.com>
To: Erivelton Castro <erivelton.thalesgroup@gmail.com>
Subject: Re: [USRP-users] Setting Attenuation Value N310
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

SeKAmW0gbm90IHRoYXQgZmFtaWxpYXIgd2l0aCB0aGUgTjMxMCBoYXJkd2FyZSBkZXNpZ24uIAoK
QnV0IHRoaXMgaXMgbm9ybWFsbHkgaGFuZGxlZCBieSB0aGUgc2V0X3J4X2dhaW4gb3Igc2V0X3R4
X2dhaW4gZnVuY3Rpb24gaW4gVUhELiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gQXVnIDE0
LCAyMDE5LCBhdCA5OjE5IEFNLCBFcml2ZWx0b24gQ2FzdHJvIHZpYSBVU1JQLXVzZXJzIDx1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4gSGVsbG8sCj4gCj4gVGhlIGRhdWdo
dGVyIGJvYXJkIGhhcyBhdHRlbnVhdGlvbiB2YXJpYWJsZSAoUEU0MzcwNCkgb24gTjMxMCB3aXRo
IDMxLjc1ZEIgUmFuZ2UgYW5kIDAuMjVkQiBSZXNvbHV0aW9uLiBJIHdvdWxkIGxpa2UgdG8gY2hh
bmdlIHRoaXMgdmFsdWUgdG8gaW5jcmVhc2UgaW5wdXQgc2lnbmFsIG9uIEFEOTM3MS4KPiAKPiBD
b3VsZCBoZWxwIG1lIGFueWJvZHk/Cj4gCj4gQmVzdCByZWdhcmRzCj4gCj4gRXJpdmVsdG9uCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
