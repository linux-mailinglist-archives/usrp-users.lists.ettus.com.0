Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEBD302749
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 16:56:39 +0100 (CET)
Received: from [::1] (port=33024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l44EG-0002Pj-8w; Mon, 25 Jan 2021 10:56:36 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:40231)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l44EC-0002LP-Ev
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 10:56:32 -0500
Received: by mail-qk1-f181.google.com with SMTP id u20so4279843qku.7
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 07:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=lpcmBWkwf1MQmN43L4I2N1YrqeOZfL4zzfVKz4pnBPY=;
 b=VwzRf0rGPaZVeovKLVPpnyHUrmyigxi8Owbc/KTQRCRgMVyb8XN1R5gUIh6ZiX7HIu
 dicSml0h8gt/XS5EtmSO/J89dGQhXRV76UoTFmolKkRYXTHLEqItVRNNX+m/Q7OByjb+
 tAGGnk7YkFQKwGUUYO4t6UfDxvIRBIoSvnqOsQoVNxHCoPYbdtEDW3k4RexFp8Q5T8hV
 6m59o4FZc+bBJATieT1GI+gYWgKZ4WCV+ltngEJTYGtKPz+qgzZTTPsJYQ+O2UHue8Ma
 lAqLdOU2b+KPAQ+8Eijx3GkpXfPXQSEx9n9i4jV9cbysXso6bk76Y1RqQ/oyqw45ZXMJ
 S1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=lpcmBWkwf1MQmN43L4I2N1YrqeOZfL4zzfVKz4pnBPY=;
 b=B62UqQAW83gSnQ3QMYEv7z97zX06dlOepzt7CoaulDWPlgcCvhwiND+6FUMeZ9AJTk
 A6MV4vJHA7ihdvI357WxjdBgw5E+FQOmjyGv9oNyEPpek0OjebZzF8WpRHSovmqNTUD6
 D+cRhBt8mZNNRTCJV9bh0CA0vA0z92YfvftZ+sEnAXl0h/DyMZHc+BMBytnLKoVAgpwo
 JkAIL44fbMs7R8QWxcxib0aNjtNO2CPLk/fignF/9P0MdlHw62LO9rtq7OqyWUmRJ0Wy
 sesM3NB8qX1SzussMagrGMmvAB0/ixxw52oeBXEouS4QHrmUdurMOMmCF9GG30Prfxlu
 v6Gg==
X-Gm-Message-State: AOAM530J+HOZdDNndkkgCRBPTesNM0ajz+MtQcKMYGm6fLn2LAz8MmuQ
 ILtPyE45vnj4QjDXeHZxqBp+JFiP/tY=
X-Google-Smtp-Source: ABdhPJxKlt3a8yaCknI24eZovVa9vyoOpHIMbw6tA70UsdBcCPsgaSTwogCIBlO2pCvCN3JZCxL/Ng==
X-Received: by 2002:ae9:f50a:: with SMTP id o10mr1421139qkg.160.1611590151580; 
 Mon, 25 Jan 2021 07:55:51 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id m190sm12126024qkb.42.2021.01.25.07.55.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Jan 2021 07:55:51 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 25 Jan 2021 10:55:50 -0500
Message-Id: <5AAF761B-03A0-444A-BC30-B751A4AF91CB@gmail.com>
References: <3389b036-080d-630d-6c83-42fa92db64f5@126.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <3389b036-080d-630d-6c83-42fa92db64f5@126.com>
To: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
X-Mailer: iPhone Mail (18C66)
Subject: Re: [USRP-users] x3xx schematics incomplete
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

SSBiZWxpZXZlIHRob3NlIHBhZ2VzIGNvdmVyIHRoZSBwcm9wcmlldGFyeSBQQ0lFIGNoaXAgbWFk
ZSBieSBOSSBhbmQgYXJlIG9taXR0ZWQgZGVsaWJlcmF0ZWx5LiAKClNlbnQgZnJvbSBteSBpUGhv
bmUKCj4gT24gSmFuIDI1LCAyMDIxLCBhdCAxOjI5IEFNLCDlvKDlv6DlsbEgdmlhIFVTUlAtdXNl
cnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiDvu794M3h4LnBkZiBz
aG91bGQgaGF2ZSAyOCBzaGVldHMsIGJ1dCBvbmx5IDIzIGlzIHRoZXJlLgo+IAo+IHNoZWV0IDEz
LCAxNCAxNSwgMTYsIDE3IG1pc3NpbmcKPiAKPiBXaGVyZSBjYW4gSSBmaW5kIHRoZW0/Cj4gT3Ig
bm90IHByb3ZpZGUgdGhlc2Ugc2hlZXQ/IAo+IAo+IC0tIAo+IEJlc3QgUmVnYXJkcywKPiB6enMK
PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
