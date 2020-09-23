Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC0D2759F4
	for <lists+usrp-users@lfdr.de>; Wed, 23 Sep 2020 16:28:30 +0200 (CEST)
Received: from [::1] (port=38120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kL5kw-0002MH-9c; Wed, 23 Sep 2020 10:28:26 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:37289)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kL5ks-0001zi-It
 for usrp-users@lists.ettus.com; Wed, 23 Sep 2020 10:28:22 -0400
Received: by mail-oi1-f174.google.com with SMTP id a3so68605oib.4
 for <usrp-users@lists.ettus.com>; Wed, 23 Sep 2020 07:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FPkiW/WXudmCp7b01mLSruyu/d6hqJ2yaw3ldKFPN28=;
 b=ds5KjkX9W4z0KwaYzeNe32CtJ/IeRoZ37buShJV83BEIAA79/9hJXgakbMLzJb1Vwa
 /uraHdn6XLmAXuihrw8ZKg5cklnsZz46Lp4JQvho0BO3N0Iif4bn+6dXt7SvbcrM0UGo
 oy5CL2xW3xybrui0eoDdSGN/QvWrr+LSbvX1ErZZM9CaHHCzNj4zIy4j5aVR6u8UQT8T
 XA1XPofpOBclQukqBddndHbpVat2VyW6AnpKM44pEKvUbsid64QgLVEiVCgtNvQzryn8
 aVzfC+in02PyVBPJgadJ4Xz5d7jBYjWWtuZfDd3bbEsvbFTr6VpPCQIikzAKVHATfIoD
 GChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FPkiW/WXudmCp7b01mLSruyu/d6hqJ2yaw3ldKFPN28=;
 b=ba0nDzvIsJ4FHnxiVDCk4QexAh7CyBkJ+7qZS3mpYWzXkEFD31mUrCWpySVOvtvxaA
 VIJNF+UmaDZecW5QeFNTfNGiqm3m2shkOdmbmiTW3iYD0zDMlhVZpIY1JJwsussnjeFw
 UHbaef1uysGxMB9ylG8kXqftKK/fkOlJobPp9LdlEDnfMFLjdAcIGCy6nN0PHL+Nwa7/
 dqs+0NboB8Ws5hlwJg4oyLWCWs9IsgYptlJvGXytA1WnKyxSVkJYkJo1aoj+WwO9OUWR
 HFZUkNcHp/n0mQ6ObyBwXQtyvIvyxj5pxlcIs2N+OHiW3FrwKkDTyNvx+3QSPjOJ2VMD
 tUeg==
X-Gm-Message-State: AOAM533mpA/h/8FGQAEZaE2KiBHVNiX8N+OU7TwhL4JllDnLK6UxXh4I
 7tvDLkxErAGiRVCvuM8KcGYylRoq88xiphyXNe0+4Q==
X-Google-Smtp-Source: ABdhPJzQBJ5npmhUMfq3j/qfXwc2KdjzEnKTVRX5toZK5RTBv0/lBoHFAmIwue2x9Rh96dPkuSEV1UNCXDxYVuP09Ng=
X-Received: by 2002:a05:6808:8e5:: with SMTP id
 d5mr5920140oic.33.1600871261574; 
 Wed, 23 Sep 2020 07:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwrT9RfsWhU+70sBsC-dFCAxnB7FT=yNX885z4j3UbhRoHMSA@mail.gmail.com>
 <1e2c2623-d3e7-dbc8-7d1b-89c7c3af7ecb@ettus.com>
In-Reply-To: <1e2c2623-d3e7-dbc8-7d1b-89c7c3af7ecb@ettus.com>
Date: Wed, 23 Sep 2020 10:27:30 -0400
Message-ID: <CAB__hTRnkSQLv58d2p=VKjQqqxx8Za8v-t-JHncK6RQCQYjaNA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC output format and channel output queries
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
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

T24gV2VkLCBTZXAgMjMsIDIwMjAgYXQgNDoyMSBBTSBNYXJ0aW4gQnJhdW4gdmlhIFVTUlAtdXNl
cnMKPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiA+IEZpbmFsbHkgaXMgdGhl
cmUgYW55IGRvY3VtZW50YXRpb24gb24gaG93IHRvIHJlYWQgdGhlIOKAnHJlYWRiYWNr4oCdCj4g
PiByZWdpc3RlcnMgb24gdGhlIGhvc3Qgc2lkZSAoR05VUmFkaW8pID8KPgo+IFdlIGhhdmVuJ3Qg
YWN0dWFsbHkgZXhwb3NlZCB0aGF0IGludG8gR05VIFJhZGlvIChhbHRob3VnaCB3ZSBjb3VsZC4u
LiB3ZQo+IHNob3VsZCBwdXQgdGhhdCBvbnRvIHRoZSBiYWNrbG9nKS4gWW91IGNhbiBtYXAgeW91
ciByZWdpc3RlciBpbnRvIGEKPiBwcm9wZXJ0eSAoc2VlIG91ciBibG9ja3MgYXMgZXhhbXBsZXMp
LCBhbmQgdGhlbiB1c2UgZ2V0X3Byb3BlcnR5KCkgb24KPiB0aGUgR05VIFJhZGlvIGJsb2NrLgoK
UmVnYXJkaW5nIG1hcHBpbmcgYSByZWdpc3RlciBpbnRvIGEgcHJvcGVydHksIGl0J3Mgbm90IGNs
ZWFyIHRvIG1lIGlmCnRoaXMgaXMgcG9zc2libGUgd2l0aCBhIHJlYWQtb25seSByZWdpc3RlciB0
aGF0IGlzIG1vbml0b3Jpbmcgc29tZQpzdGF0dXMgaW4gdGhlIEZQR0Egbm9jIGJsb2NrLiAgVGhl
cmUgZG9lcyBub3QgYXBwZWFyIHRvIGJlIGEgImdldCIKY2FsbGJhY2sgZnVuY3Rpb24gZm9yIGEg
cHJvcGVydHkgc3VjaCB0aGF0IEkgY291bGQgdGhlbiBjYWxsICJwZWVrMzIiCm9uIG15IHJlZ2lz
dGVyIHRvIGdldCB0aGUgY3VycmVudCB2YWx1ZS4gIEkgZGlkbid0IGZpbmQgYW55IGV4YW1wbGUg
b2YKbWFwcGluZyBhIHJlYWQtb25seSByZWdpc3Rlci4gIEFueSBhZHZpY2U/ClJvYgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
