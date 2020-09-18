Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F6426FC91
	for <lists+usrp-users@lfdr.de>; Fri, 18 Sep 2020 14:33:39 +0200 (CEST)
Received: from [::1] (port=42906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJFa4-0005kJ-HU; Fri, 18 Sep 2020 08:33:36 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:35201)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kJFa0-0005bd-Kw
 for usrp-users@lists.ettus.com; Fri, 18 Sep 2020 08:33:32 -0400
Received: by mail-ed1-f42.google.com with SMTP id i1so5969158edv.2
 for <usrp-users@lists.ettus.com>; Fri, 18 Sep 2020 05:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=xbUQ0eQksaGJaywxtigpKWcij1Sn3SiWEvTLsW8uHyM=;
 b=sZ9KpuEYY9CYYeANPocf66t/8TZebWITgA8lyG82pKWRAnb3+UOwfuidEt3dyTX5rB
 gx+SpsvlsUM8D0aqN2bBaS19WjkP+IPqv8RyNmgXGgfG9BCCRm0/pNtJIQr55DzGDptk
 4aQ1PEed5NjWr+2kELOI4t2Yme2uDeKvJmYWGYHxd2iJdbXemgf9YpQSQvXsy5mR7L/m
 vwUowLJ8Z4IKLcKwoRCQRXq1TKfezRFysAqdjWw0chXsaJgxsRCf9YAGDPSiJSuHvJSr
 u5bKHcfWRl1bfHgfcMhYCroE5jnq1wdK7iZeOdNO05JrhnTf1zYTWsHQSb5jhpZmlta2
 esyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xbUQ0eQksaGJaywxtigpKWcij1Sn3SiWEvTLsW8uHyM=;
 b=CG6XZ8vb48B8bZ6jHVgpsn9tmkXXq/u4IESq4+JQNECEmoLSSg+/4+kNEazz8WShV2
 yZQx70GOgPKCMq4aYKNPWF2WkgA/Mka7IAPPXl5ofYETGHOg0erk2dWx1nFxpzfyCLZq
 G08mabmU82LvpFLlmEc9MSzDBOkjOe7xGX2WoArR/xUx7+q9PwnGbDyMlFO2p/NK2gFF
 9aRyAh1IZBFOy2FHslOYmT2VXp0WdW3ptCBSiNLPDmtX/lTd4DRiG8BMNJ4Nur3gP/oQ
 +N+LuhSbrY7VqjHx3v66xdYP0JxYsUKm92eddb4KPE9WqjeId/0OacmYry/cMVWYE0zr
 SU3g==
X-Gm-Message-State: AOAM531kxnE+bJX/hJtlWP96SCYrkPqwpLxa9d07mF6ViOoONhFHIlwi
 P0UyTRcN9pnOErN8KPOlGkd0v/+F8TJldyP6
X-Google-Smtp-Source: ABdhPJwnDpr7aCrjuK/eRL8OrLQiuGn4wl36f/L7yPLHXxEjsYpX2TyBSewSXQXxsS76866Sg/6OUw==
X-Received: by 2002:a05:6402:1110:: with SMTP id
 u16mr38213937edv.253.1600432371393; 
 Fri, 18 Sep 2020 05:32:51 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id a5sm2142597edl.6.2020.09.18.05.32.50
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Sep 2020 05:32:50 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F645170.7000801@gmail.com>
Message-ID: <ac9e3795-2cc7-a21f-f5da-17fdc4b36ae2@ettus.com>
Date: Fri, 18 Sep 2020 14:32:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <5F645170.7000801@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] 
 =?utf-8?b?5Zue5aSNOiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBm?=
 =?utf-8?q?or_N310?=
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

T24gOS8xOC8yMCA4OjE5IEFNLCBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6
Cj4gT24gMDkvMTcvMjAyMCAxMToxOSBQTSwgVGhvbWFzIGphbWVzIHdyb3RlOgo+PiBISSBNYXJj
dXMsCj4+IHRoYW5rcy4gYW5kIGlzIHRoZSBzb3VyY2UgY29kZSBvZiBzdG0zMsKgIGFuZCBjcGxk
wqAgYXZhaWFibGU/Cj4+Cj4gSSBkb24ndCBiZWxpZXZlIHRoYXQgYW55IG9mIHRoZSBDUExEIGNv
ZGUgaXMgYXZhaWxhYmxlLCBidXQgdGhlIFNUTTMyCj4gY29kZSBtaWdodCBiZS7CoCBJIGNhbiBh
c2sgUiZELgoKU1RNMzI6Cmh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VzcnAtZmly
bXdhcmUvdHJlZS9zdWxmdXIKCkNQTEQ6Cmh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNo
L3VoZC90cmVlL21hc3Rlci9mcGdhL3VzcnAzL3RvcC9uM3h4L2Rib2FyZHMvbWcvY3BsZAoKLS1N
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
