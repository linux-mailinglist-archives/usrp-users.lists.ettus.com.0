Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2F1DE0AD
	for <lists+usrp-users@lfdr.de>; Sun, 20 Oct 2019 23:22:34 +0200 (CEST)
Received: from [::1] (port=53792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMIen-00008z-Ag; Sun, 20 Oct 2019 17:22:33 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:37464)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iMIei-0008QX-K1
 for USRP-users@lists.ettus.com; Sun, 20 Oct 2019 17:22:28 -0400
Received: by mail-qt1-f171.google.com with SMTP id g50so3543334qtb.4
 for <USRP-users@lists.ettus.com>; Sun, 20 Oct 2019 14:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=BCqQtiTdiLdUGPloFe3fXelDpFrDRWZR0zuvhMbC9VA=;
 b=XiQCQk3xpnTdCmAlrUZ1IyN86rVkRAXvrz0LLAuQzIqpIJrxhuoBN94QYl2D6a76jx
 LcBUryXbYIzRNqB9JcnmtSQFocjWf8Lm7lrKgqU+teJITHjLz11QDcBkJRAGtSxEgXcn
 QP+s+c+XYF0iWcLR5OWw/sGQQnekorQZk8K1L2AjIyzFw961FLy3lGvPcyS0woMyiwlx
 m9bD6EOoVAdIjjiM+YYB0SnLFPWUEctO4mhs1GKUl09oK/46jCqPk5YoODwMB7td6B2i
 wGzr6irL+yTadx1TzA7T88pKnlct4DCxOXjzx0rqIkwMEVqjvRSxOE3e0gckqTKguzRo
 7AFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=BCqQtiTdiLdUGPloFe3fXelDpFrDRWZR0zuvhMbC9VA=;
 b=J+unwIggASPdPSTbjC9SFFE7tSvUsZrk1Uzuq5HLUq0QWfhWsenhcQhHJv5QN4GCrv
 rtKV34ii+1l3V+RFHOICTFgFL5Ob4QqZ1Bh1y41r6V4+8ZOzpBIEC1fHB0juk+j8gYYs
 YUFa4m5m5mT+cJoExfseQOB6OpDsuFXEzApU0Y913FJxTewjmYPQK1WKOzWJQTME+HfY
 qCtXE+fjHKyOl1zfvkbQnLndo5CsrCEPL0odzzA3K9u2GQb8JRu2Ncn2jvMLP4zgCFNT
 3Hd+/hWlrGn3wIBPXGjy4TrDjpeJ0ZD6dg0hdoNG3Bney0ndgT7ns5d/8GqTG/Ndfbgj
 P4RA==
X-Gm-Message-State: APjAAAWShcnb/bvIyNIO4omyE20HDELKSqvmvKR2Yg7bwX2vR/y0v8K8
 qjftXfvh+g4yx7PZNwqohnH4Q4BSisM=
X-Google-Smtp-Source: APXvYqyPRq38pBIVA3RDtVmd21Jf1iP6nVAEqAfz+niJbdI1yfujVkmnmaIDt6+33ps+KOOVcJWNcA==
X-Received: by 2002:ad4:438b:: with SMTP id s11mr2492467qvr.190.1571606507954; 
 Sun, 20 Oct 2019 14:21:47 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id i13sm4437547qkk.18.2019.10.20.14.21.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 14:21:47 -0700 (PDT)
Message-ID: <5DACCFE8.6020102@gmail.com>
Date: Sun, 20 Oct 2019 17:21:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: =?UTF-8?B?UGFibG8gTWFydMOtbmV6IGRlIExlaXZhIETDrWF6?=
 <pablo.mdiaz@alumnos.upm.es>
References: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
 <75DDE278-D19C-4F01-91B6-84FFF9D97CE9@gmail.com>
 <e3f65254-948f-054c-5702-c453e4700b4f@alumnos.upm.es>
In-Reply-To: <e3f65254-948f-054c-5702-c453e4700b4f@alumnos.upm.es>
Subject: Re: [USRP-users] Setting tune freq error
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMTAvMjAvMjAxOSAwNDozNCBQTSwgUGFibG8gTWFydMOtbmV6IGRlIExlaXZhIETDrWF6IHdy
b3RlOgo+IFdlIHRoaW5rIHdlIGFyZSB1c2luZyBib3RoIGNhcmRzLiBUaGlzIGlzIG15IHVoZF91
c3JwX3Byb2JlOgo+Cj4KSWYgeW91IGNoYW5nZSB5b3VyIGNvZGUgdG8gaW5zZXJ0IGEgc21hbGwg
c2xlZXAgKGxldCdzIHNheSAwLjAxc2VjKSAKd2hpbGUgdHVuaW5nIGFsbCBjaGFubmVscywgZG9l
cyB0aGUgaXNzdWUKICAgZ28gYXdheT8KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
