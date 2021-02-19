Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ED131FD3E
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 17:39:59 +0100 (CET)
Received: from [::1] (port=55338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD8ov-00089h-Dp; Fri, 19 Feb 2021 11:39:57 -0500
Received: from mail-qv1-f54.google.com ([209.85.219.54]:38380)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lD8or-00080q-JP
 for USRP-users@lists.ettus.com; Fri, 19 Feb 2021 11:39:53 -0500
Received: by mail-qv1-f54.google.com with SMTP id p12so2860630qvv.5
 for <USRP-users@lists.ettus.com>; Fri, 19 Feb 2021 08:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=fFEeM53qfcAkVFBH5C1aOTtzZBVPNLndpHQce+htWu0=;
 b=SGFQfpcER4N+ukST/IxMhuQdjWDBbTDBKuiTliqDgv+0A2wKS0rA/yEudx0Swkbg30
 QhrjwKjBg76ngv9Tlyv2cXnfVrqK+x4bN2EV4jh0BXm06nbftYwzppYy0NDHrEBO24Z8
 C9z2eXv0V0mls0xJhUxJ5nzowRML6nOlKM4Qh00q5a8LfeLqBLhqA6oEH2yBphJZrHVm
 UrkVNz85IE/pTTIBs2bKKlRFh/tr4tdhR0ANxyq/EwWL1XsjCzvk32ub00qJo3XYWkoF
 s45r9FrtzKlgE6URIL1RSfEeLkCNdNkScGiU1Ao8LLUrbIloSlvU3nXxP5aAQu7tqm4b
 ayng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=fFEeM53qfcAkVFBH5C1aOTtzZBVPNLndpHQce+htWu0=;
 b=hPHWAWuklrvFI2kCjr5VI6q8QtQU3ofxK6/P1J/gOiisXIrXiJAXY+8oc0LvAypcdS
 JR77sPbLRfY7xpTkNutYnMcFBDF1gm5bvtyrU6pElPUi6AiCmDQ3vBsQ+9Jh7ax8JT/H
 VmnVTq78JcmFEic3k/u1BqPYW/YZbCn+myFQM++fe24gj3aRLtQAXRbzw2iGIiKwE+Cr
 3Q4auta0syXnLdhCzx/by4MUPrllbZ0vTAHzioqjzTc6ISi1fv93mfrfTkfkKmVJ+PUF
 iWOfFSyU0grDNzCjYcOq/36S5owzmnbUwZmdrwZEn4kaf6sYmDTiNMV07o2K4DTwTWir
 DGeQ==
X-Gm-Message-State: AOAM530ZBjaPpV3m0ID5+/1AvLevmMBTIgxxm6NvZa05/JEmzelVwf8R
 qtdAE/UuVe+htbxyRQFass4=
X-Google-Smtp-Source: ABdhPJz6Sbe2IOjyXTB1g3ATUpBZx1CW4Dhln0DU2R5JDhLb6ssSgMiNc4l7aKWYBDkmd3pfBRmz9Q==
X-Received: by 2002:ad4:55c5:: with SMTP id bt5mr9658155qvb.58.1613752752983; 
 Fri, 19 Feb 2021 08:39:12 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id w145sm6603715qkb.52.2021.02.19.08.39.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Feb 2021 08:39:12 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 19 Feb 2021 11:39:12 -0500
Message-Id: <5ED8C2FD-260E-40C5-B6DE-47CC2D2ED671@gmail.com>
References: <f953f930207d2f490b062ec1f2b16ea00a3694fe@webmail>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <f953f930207d2f490b062ec1f2b16ea00a3694fe@webmail>
To: dtrask1@tampabay.rr.com
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] microSD Size Limit
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

SeKAmXZlIHVzZWQgMzJHIHdpdGhvdXQgYW55IGlzc3Vlcy4gCgpTZW50IGZyb20gbXkgaVBob25l
Cgo+IE9uIEZlYiAxOSwgMjAyMSwgYXQgMTE6MjcgQU0sIERlbm5pcyBUcmFzayB2aWEgVVNSUC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7v1doYXQgaXMg
dGhlIGxhcmdlc3QgbWljcm9TRCBjYXJkIHN1cHBvcnRlZCBieSB0aGUgRTMxMD8gSSB3YW50IHRv
IGdldCBsYXJnZXIgY2FyZHMgZm9yIGRldmVsb3BtZW50IHB1cnBvc2VzLCBidXQgZG9uJ3Qgd2Fu
dCB0byBidXkgYSBzaXplIHRoYXQgaXNuJ3Qgc3VwcG9ydGVkLgo+IAo+IFRoYW5rcywKPiBEZW5u
aXMKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
