Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4CB24A86A
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 23:25:21 +0200 (CEST)
Received: from [::1] (port=34324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8VaB-0003Eq-Ca; Wed, 19 Aug 2020 17:25:19 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:46383)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8Va7-00035q-9v
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 17:25:15 -0400
Received: by mail-qk1-f173.google.com with SMTP id d14so22993493qke.13
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 14:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=uzPZrMJx3nzCrVmWFZlGgBETa24FiBcGej4wtd1CF10=;
 b=TQLBDAzr1ZuPKTI9k8bCATXQOfekcyrcpVLBPUjzqM2218V8TaiX42uPnL9OKdVjBK
 bLeyRWF4J8/1yTpzfIeGQgv5oagfdLlb99/CUl/upfCxQ6g7nQn/HJGl5wykE8PR/67o
 ufcgIbyHUSQrHt92lerK+As2f6pYDCzqRBZQXci8yY0+Nm8L+yICSYlCuOT7xxOkdIHC
 dHfSYVWA3kVzLes2t544wbd7qzqyiKG+qk84mOj19y1vfWwuWDzHjwylnknYg65LGKSP
 GSDAF3nUtIdnJEvTaEZtRaMuIBopXMdnE9R4WWQDKMv9gpLLSRSBgng31c2fw2V4tt0D
 w79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=uzPZrMJx3nzCrVmWFZlGgBETa24FiBcGej4wtd1CF10=;
 b=hKuHQy2msDPrdPtBzITrzVb61mFOJqF+E0xQ+lOpG4Srszoe0UK5jfdCbWlv+cKwhu
 K4Uc9yXaZqoM1Fsr7cjN3L7x8tHRF14KXoGTV8xS2YoUnR+R4eO5ZGMo07AJuGxeQ/kS
 lpCrfXI5b93sjWZD28bd92ITsDgb1jpSzKN93FvbuJa7GkAPBE80dLXNmtJUVKauBQ+b
 PwIqyNFeMzcYIB6re8uUzphQg7047ukb0YFMGt8NOf1OEN3wv1ZMPENs/0fwiGQI2d5J
 Q7I6QUgA8aoaPUsCFHhkT6JpmiHHlTaZ1YmKgThzvOsb2PL2rp4wn7vnAQ8iGiAMqepP
 LS7Q==
X-Gm-Message-State: AOAM533pFNaBYVnUfJ8CStHHCCNdfYKaHl3lZrnv/LloFHWAwX3gEWof
 9DpyVqo16572BaubMTAp14vbKjtRT0duDESO
X-Google-Smtp-Source: ABdhPJyVJHiBol/YGRqb3EyKb1H1dWxR+pP+AaQZ6KWbI75ePwgGk4S1Q/kJ+kJQMcywcELmLbtEOA==
X-Received: by 2002:a05:620a:20d1:: with SMTP id
 f17mr21691012qka.428.1597872274784; 
 Wed, 19 Aug 2020 14:24:34 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id o47sm359095qtk.19.2020.08.19.14.24.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Aug 2020 14:24:34 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 19 Aug 2020 17:24:33 -0400
Message-Id: <A6BA5BE9-A672-4C5A-9759-FB800B28F264@gmail.com>
References: <1597871801.345803208@f507.i.mail.ru>
Cc: Usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <1597871801.345803208@f507.i.mail.ru>
To: Vladimir <www2008_2@mail.ru>
X-Mailer: iPhone Mail (17G68)
Subject: Re: [USRP-users] B200mini vs B205mini - is there any performance
 difference?
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

VGhlIEZQR0Egb24gdGhlIEIyMDUgaXMgbGFyZ2VyIGFuZCBhbHNvIGhhcyB0aGUgZXh0ZW5kZWQg
aW5kdXN0cmlhbCB0ZW1wZXJhdHVyZSByYW5nZS4gQnV0IGFwYXJ0IGZyb20gdGhhdCB0aGV5IGFy
ZSBpZGVudGljYWwuIAoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBBdWcgMTksIDIwMjAsIGF0
IDU6MTcgUE0sIFZsYWRpbWlyIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4gSGVsbG8hCj4gIAo+IElzIHRoZXJlIGFueSBwZXJmb3Jt
YW5jZSBkaWZmZXJlbmNlIGJldHdlZW4gc3ViamVjdHMgaWYgd2XigJlyZSBnb2luZyB0byB1c2Ug
c3RvY2sgZnBnYSBmaXJtd2FyZT8gSSBzZWUgdGhhdCBCMjA1bWluaSBoYXMgdHdpY2UgbGFyZ2Vy
IGZwZ2EsIGJ1dCBkb2VzIGl0IHJlYWxseSBpbmZsdWVuY2UgcGVyZm9tYW5jZS9jYXBhYmlsaXRp
ZXMgYW5kIGhvdz8gQXJlIHRoZXJlIGFueSBvdGhlciBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZW0/
IElzIEIyMDBtaW5pIGluIHNvbWUgd2F5IGxpbWl0ZWQgaW4gY29tcGFyaXNvbiB0byBCMjA1bWlu
aSwgaWYgd2XigJlyZSBub3QgZ29pbmcgdG8gZm9yZ2Ugb3VyIG93biBmcGdhIGZ3IGZvciBpdD8g
V2UgYXJlIHNwZWFraW5nIGFib3V0IHNvbWUgcmVndWxhciBzdHJlYW0tYmFzZWQgc2RyIGFwcGxp
Y2F0aW9ucyBsaWtlIGV4cGVyaW1lbnRhbCBnc20tdW10cy1sdGUgc2V0dXBzIHdpdGggc2FtcGxp
bmcgcmF0ZXMgdXAgdG8gfjE1LTIwIE1TcHMuIEN1cnJlbnRseSB3ZSBoYXZlIGRvbmUgc29tZSBl
eHBlcmltZW50cyB3aXRoIEIyMDVtaW5pLCBhbmQgbmVlZCBtb3JlIGJvYXJkcywgc28gd2UgbmVl
ZCB0byB1bmRlcnN0YW5kIGlmIEIyMDBtaW5pIHdvdWxkIHN1ZmZpY2UuCj4gIAo+IFRoYW5rIHlv
dSwKPiBWbGFkaW1pciBQYXZsZW5rbwo+ICAKPiAgCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
