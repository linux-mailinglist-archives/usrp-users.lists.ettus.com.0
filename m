Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F382D6FC9
	for <lists+usrp-users@lfdr.de>; Fri, 11 Dec 2020 06:37:25 +0100 (CET)
Received: from [::1] (port=48158 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knb6p-0004Dy-Nz; Fri, 11 Dec 2020 00:36:51 -0500
Received: from mail-pl1-f170.google.com ([209.85.214.170]:37918)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wuting25@gmail.com>) id 1knb6m-00045X-II
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 00:36:48 -0500
Received: by mail-pl1-f170.google.com with SMTP id 4so4035527plk.5
 for <usrp-users@lists.ettus.com>; Thu, 10 Dec 2020 21:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=0E6h6feZm4EvjBTl0ZKzfceRVtlRq0OyK7VE4SQBRjg=;
 b=J15EoOr7oEI/RK6uQa/fn4+LkAk1c2NWnpG/K1hC74GyTJy5VVvmYxU2elouAtdP8v
 /cZJ0nmlr2njvwgQmHzVaeLdMqKDbfTAvUUOvsc/e/HtPcwvDVNCzNALTfRMq7NR6IYc
 Xj+3VMrFjSpu5voQknUOHXpe2xSUS7/auBbJ9UNyAZOnq74/20pEWgCtsQ+0rrXslkmJ
 MezZQ/6+ju6nAeFP9yD2/U8yBd25QZtRNmb6KXRpByPMXMfD4mG2ry1+rN6dQM7G+Pr8
 puc6Gjo/umGOZCkLJwQ7698sl6nc+XELSKSIFqZItdxR3SgtnIBwHCVn6bwqc5INB84x
 t1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=0E6h6feZm4EvjBTl0ZKzfceRVtlRq0OyK7VE4SQBRjg=;
 b=eCVmc6MUHiTPwYvrvR63HlYoi25mvi1FBPXgBtrl4ggUa7ZvmGOfa6NDrOIq6agVT9
 zGY2+NWhDm4CpWfINZ61chMgdnEPzLB7As7k0vPV5i39vji9KxyFM32phXSqnr+WhmPT
 sSvVYQ96AWzzuAuyxy2tqYyfPPuEH747h93CcuFjL81uiSlejiJPTxR9yqheqE5qVWMD
 4HYhx6DU03hXkJkeOeodWpuXAmWMYZQ6H6ZjXwrFIKtUeImOpTD/D41h27dIIsHU8Zkl
 jZnEpORvLYyDuvD9RXYa0qEbX/i5PePevPf2J4jLPHYoxwn1L9U/sHiBXaOPrXVHhF5q
 ESdw==
X-Gm-Message-State: AOAM530f9QgjBx8GKFsaoydY+507yg1t1tYPvFd8MYyYGmrUyc1mXmTv
 W3y/aikxt1YUanGS3Xew93cf2oB1f0Y=
X-Google-Smtp-Source: ABdhPJxodO1DoVLGa5aqEDIFhgtixaB80AI5RiwaIYhTxYENWQMN5END6MLiZnRYvp9ggiqKoOfkjA==
X-Received: by 2002:a17:90a:9f44:: with SMTP id
 q4mr11612446pjv.226.1607664965072; 
 Thu, 10 Dec 2020 21:36:05 -0800 (PST)
Received: from [10.226.82.239] (82.226.gunet.gifu-u.ac.jp. [133.66.226.82])
 by smtp.gmail.com with ESMTPSA id t12sm4856765pgu.75.2020.12.10.21.36.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Dec 2020 21:36:04 -0800 (PST)
To: usrp-users@lists.ettus.com
Message-ID: <e10f0586-4caf-d49e-56a0-a6787ff12aee@gmail.com>
Date: Fri, 11 Dec 2020 14:36:00 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] PPS drifting problem with recently purchased GPSDO
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
From: Ting Wu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ting Wu <wuting25@gmail.com>
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

SGkhCgpJIGhhdmUgYmVlbiB1c2luZyBVU1JQIE4yMDAgd2l0aCBHUFNETyBmb3Igc2V2ZXJhbCB5
ZWFycy7CoCBJIGhhdmUgbW9yZSAKdGhhbiB0ZW4gc2V0cyBvZiBOMjAwIHdpdGggR1BTRE8gcHVy
Y2hhc2VkIG1vcmUgdGhhbiB0d28geWVhcnMgYWdvIGFuZCAKdGhleSBoYXZlIGJlZW4gd29ya2lu
ZyB2ZXJ5IHdlbGwuCgpIb3dldmVyLCBJIHJlY2VudGx5IHB1cmNoYXNlZCB0aHJlZSBuZXcgc2V0
cyBvZiBOMjAwICh3aXRoIExGUlgpIGFuZCAKR1BTRE8gYW5kIGZvdW5kIHRoYXQgYWxsIG9mIHRo
ZW0gaGF2ZSBzZXJpb3VzIFBQUyBkcmlmdGluZyBwcm9ibGVtIHdoaWNoIApJIGhhdmUgcmFyZWx5
IHNlZW4gd2l0aCB0aGUgb2xkIHNldHMuCgpCZWNhdXNlIHRoZSBhY2N1cmF0ZSB0aW1pbmcgaXMg
ZXNzZW50aWFsIGZvciBvdXIgYXBwbGljYXRpb24sIHdpdGggZXZlcnkgCnNldCBvZiBOMjAwIGFu
ZCBHUFNETywgSSBhbHdheXMgZG8gYSBzaW1wbGUgdGVzdC4gSSByZWNvcmQgdGhlIFBQUyAKc2ln
bmFsIGZyb20gdGhlIEdQU0RPIHVzaW5nIHRoZSBMRlJYIGJvYXJkIHdpdGggYSBzYW1wbGluZyBy
YXRlIG9mIDEwTS4gCldpdGggdGhlIG9sZCBOMjAwcyBhbmQgR1BTRE9zLCBJIGNhbiBjb25maXJt
IHRoYXQgc2FtcGxlcyBiZXR3ZWVuIHR3byAKUFBTcyBhcmUgYWx3YXlzIGV4YWN0bHkgMTBNLiBI
b3dldmVyLCB3aXRoIHRoZSB0aHJlZSBuZXcgc2V0cywgSSBmb3VuZCAKdGhhdCBvbmNlIGV2ZXJ5
IHNldmVyYWwgbWludXRlcywgdGhlIHNhbXBsZXMgYmV0d2VlbiB0d28gUFBTcyBhcmUgbm90IApl
eGFjdGx5IDEwTSwgdHlwaWNhbGx5IHNldmVyYWwgcG9pbnRzIGZld2VyIG9yIG1vcmUgdGhhbiAx
ME0uIEkgYWxzbyAKdHJpZWQgdG8gcmVjb3JkIFBQUyBzaWduYWxzIGZyb20gdHdvIEdQU0RPcyB3
aXRoIHRoZSB0d28gY2hhbm5lbHMgb2YgdGhlIApzYW1lIExGUlggYm9hcmQuIFdpdGggdGhlIG9s
ZCBzZXRzLCB0d28gUFBTIHNpZ25hbHMgdXN1YWxseSBhZ3JlZSAKZXhhY3RseSB3aXRoIGVhY2gg
b3RoZXIsIGF0IG1vc3QgaGF2aW5nIG9uZSBwb2ludCBkaWZmZXJlbmNlLiBIb3dldmVyLCAKd2l0
aCB0aGUgbmV3IHNldHMsIHR3byBQUFMgc2lnbmFscyBzb21ldGltZXMgaGF2ZSBzZXZlcmFsIHBv
aW50cyAKZGlmZmVyZW5jZSwgYW5kIG9jY2FzaW9uYWxseSBtb3JlIHRoYW4gdGVuIHBvaW50cyBk
aWZmZXJlbmNlLgoKSSBhbHNvIHRyaWVkIHRvIGluc3RhbGwgdGhlIG5ldyBHUFNETyBvbiB0aGUg
b2xkIE4yMDAgd2l0aCBvbGQgTEZSWCBhbmQgCml0IGFsc28gaGFkIHRoZSBwcm9ibGVtLCBzbyBJ
IGNhbiBjb25maXJtIHRoZSBwcm9ibGVtIGlzIGR1ZSB0byB0aGUgbmV3IApHUFNETy4KCkkgYW0g
bm93IGhhdmluZyBib3RoIG9sZCBhbmQgbmV3IHNldHMgcGxhY2VkIGF0IHRoZSBzYW1lIGxvY2F0
aW9uLCB3aXRoIApHUFMgYW50ZW5uYXMgYWxzbyBhdCB0aGUgc2FtZSBsb2NhdGlvbi4gVGhleSBh
cmUgdXNpbmcgdGhlIHNhbWUgCnByb2dyYW1zLCBQQ3Mgd2l0aCB0aGUgc2FtZSBzcGVjcy4gVGhl
IG9sZCBvbmUgc2VlbXMgdG8gaGF2ZSBwZXJmZWN0IAp0aW1pbmcgd2hpbGUgdGhlIG5ldyBvbmUg
c2VlbXMgdG8gaGF2ZSBzZXJpb3VzIFBQUyBkcmlmdGluZyBwcm9ibGVtLiAKRG9lcyBhbnlvbmUg
aGF2ZSBhbnkgaWRlYSB3aGF0IGlzIHRoZSBwb3NzaWJsZSByZWFzb24gZm9yIHRoaXMgcHJvYmxl
bSAKYW5kIGhvdyBjYW4gSSBzb2x2ZSBpdD8gV2Ugd2VyZSBwbGFubmluZyB0byBwdXJjaGFzZSBt
b3JlIHNldHMgb2YgVVNSUHMsIApidXQgd2l0aCBzdWNoIHByb2JsZW0gaXQgd2lsbCBiZSB2ZXJ5
IGRpZmZpY3VsdCB0byB1c2UgVVNSUCBmb3Igb3VyIAphcHBsaWNhdGlvbi4KClRoYW5rcyBpbiBh
ZHZhbmNlIQoKVGluZyBXdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCg==
