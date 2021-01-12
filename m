Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 282DF2F3BC2
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 22:14:34 +0100 (CET)
Received: from [::1] (port=42916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzQzm-0008V1-O5; Tue, 12 Jan 2021 16:14:30 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:37610)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kzQzj-0008PC-8s
 for USRP-users@lists.ettus.com; Tue, 12 Jan 2021 16:14:27 -0500
Received: by mail-qk1-f181.google.com with SMTP id h4so3267914qkk.4
 for <USRP-users@lists.ettus.com>; Tue, 12 Jan 2021 13:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=fkjpog5gTm9atTmYHAPRTRBiBZA0wbjZWLA8Gv/rtBo=;
 b=KwakeOm/OhCO2wHa2HGFOBYu1IsIMNfgwcvTZuNCZn64X+A/sk7x3Bnlp/d31e2B31
 dKX3lDLHeTPkcmsIFVIds5gpcJ+G6PntDN1JQRGRfseT6ER/Q0RQGzYGKPRPnr90PGjo
 hO9UURA/WYY3U32auZWtvmAUa1z9S18Re6oFCVwsUD5ys5dEFYEaobA9CA4AX0dEIJj4
 mnlY0I8lqpr7lAQ9WfD4Od68thsja0uIM47z0P/lOT2vqxyz9mON/qN+SdYOnT7ipsFy
 oe8F4IJ92TXFL8i65G6jytJBbocTwjGz27wHTpPtlmqoDxl2A23oZatgvSGElS470ER6
 KmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=fkjpog5gTm9atTmYHAPRTRBiBZA0wbjZWLA8Gv/rtBo=;
 b=mkwJ06LiYpIQURg+EAZ2lbZjQ2Rm4c3pYqbKH9rNZrLo5MD+vVGeDSMqKVmyavTC+w
 P3NcpDxgLXmFyH+b7WSoabVxPsM7h8hsK4MEHEw66bp+mYlj41U0XlZi6qzRHWxvNNfM
 p+sN8e7Z6FqNBCyqSHSGj/pcSQ7TYfv3tkntdvVxZNSZtKlO9tO5HEN1NIxR7uuTcal8
 rgn3iUDhx8AT+p5p0/Rz9LyyXOE56/kVAuAc4CwGzi7wJsRzejqkJfRryG4fKJdeO0d7
 +l61tADczu7unirvFXWLPeA7vpApNWel1FEm58IyxFIws7DaLvjT8Ma8ZYD1bi9L+ZV4
 mx8w==
X-Gm-Message-State: AOAM530NFujH53EJnuD102pDTa3+uyipzhuDgJANU0zXCVz8GwMz9DMR
 6VYXF79SbB/J5m48oe5WOgFYRgK583c=
X-Google-Smtp-Source: ABdhPJySNQBHL2sDmopbT2AWwMV5besJTsaEIG7cFwvBtL45lKO9ryrX7zdhHcoGvt3qYPa0cYhi5g==
X-Received: by 2002:a37:7641:: with SMTP id r62mr1464761qkc.227.1610486026657; 
 Tue, 12 Jan 2021 13:13:46 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id r190sm16484qka.54.2021.01.12.13.13.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Jan 2021 13:13:46 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 12 Jan 2021 16:13:45 -0500
Message-Id: <FFB1A05F-13A3-43D9-89E3-9FC9AF4FDDB3@gmail.com>
References: <CAD-eGGr24xvkBAMovWcMj=ususKufZ4sF7eRs1FA3qjRpAzCHw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAD-eGGr24xvkBAMovWcMj=ususKufZ4sF7eRs1FA3qjRpAzCHw@mail.gmail.com>
To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Spectrum analyzer not picking received signal from
 USRP-GNU Radio
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

WW91ciBkZXNjcmlwdGlvbiBpcyBpbnN1ZmZpY2llbnQgaW4gZGV0YWlsIGZvciBhbnlvbmUgdG8g
Z2l2ZSB5b3UgYW55IGFkdmljZSBhdCBhbGwuICAKClRoZSBVU1JQIGRvZXMgbm90IHRyYW5zbWl0
IGZyb20KSXTigJlzIFJYMiBpbnB1dCwgc28gSeKAmW0gbm90IHN1cmUgd2hhdCB5b3UgZXhwZWN0
IHRvIHNlZSBvbiB5b3VyIHNwZWN0cnVtIGFuYWx5emVyLiAKCllvdSBoYXZlbuKAmXQgc2FpZCBl
eGFjdGx5IGhvdyBhbmQgd2hhdCB5b3XigJlyZSB0cmFuc21pdHRpbmfigJR3aGF0IHRvb2xzIGFu
ZCBhcHBsaWNhdGlvbnMsIG5vciBob3cgdGhleeKAmXJlIGNvbmZpZ3VyZWQuIAoKU2VudCBmcm9t
IG15IGlQaG9uZQoKPiBPbiBKYW4gMTIsIDIwMjEsIGF0IDE6MjUgUE0sIEFLSU5ZRUxFIElUQU1B
S0lOREUgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToK
PiAKPiDvu78KPiBIZWxsbywKPiBJIGNvbGxlY3RlZCAgc3BlY3RydW0gYW5hbHl6ZXIgUkYgaW5w
dXQgdG8gUngyIG9mIHRoZSBVU1JQLCBJIHdhcyBhYmxlIHRvIG9idGFpbiB0aGUgVHggcG93ZXIg
YW5kIEJhbmR3aWR0aCBvZiBUeCBzaWduYWwuIEF0IHRoZSBSeCBlbmQsIEkgYWxzbyBjb25uZWN0
ZWQgdGhlIGFudGVubmEgdG8gdGhlIFJ4MS9UeDEsIGFuZCBSeDIgdG8gdGhlIFJGIGlucHV0IG9m
IHRoZSBzcGVjdHJ1bSBhbmFseXplciwgYnV0IFNwZWN0cnVtIGFuYWx5emVyIHdhcyBub3QgcGlj
a2luZyB0aGUgcmVjZWl2ZWQgc2lnbmFsLiBXaGF0IGNvdWxkIGJlIHRoZSBwcm9ibGVtPwo+IFRo
YW5rcy4KPiBBa2lueWVsZQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCg==
