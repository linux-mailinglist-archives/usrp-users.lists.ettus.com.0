Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1037A2CC856
	for <lists+usrp-users@lfdr.de>; Wed,  2 Dec 2020 21:54:00 +0100 (CET)
Received: from [::1] (port=47360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kkZ8N-0004JY-Od; Wed, 02 Dec 2020 15:53:55 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:42695)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kkZ8J-0004Do-91
 for USRP-users@lists.ettus.com; Wed, 02 Dec 2020 15:53:51 -0500
Received: by mail-qk1-f176.google.com with SMTP id z188so65847qke.9
 for <USRP-users@lists.ettus.com>; Wed, 02 Dec 2020 12:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=pLHTfqYm1GZqna5EBe0FklX3Y7EDabmg+O1h4ogqAik=;
 b=qCEw+cEBKp8sPyeMU8U8ralmyEcmX+rDGhiUhaCcoUuHmaIC+T6KqwSTME/rr4izFA
 2vfkEJ27ZCnOnryuPyNK9Ip3T5/bfnN9rkoEI3YAgw+WoXtrlGxQckANjpEgjUCE9QOA
 dUj8h1E5apZpw8gcxv1czvw/moYz/GSCb25rQIEgQtX3RBY6rqnZ49JBqNSjfcYYkmyo
 kMRPkvFV+HNfaGoLXmCydt22Rb/j0oXu0rQIWrqyESyInhzxTlsqRft3QEMrhWBwg3+N
 O9EaboDZFdqFcpA+KaCUqZmU9Sq2vjnQCaqInCEpfOAqJV+F4kyV2Ouz8/8Pv/3hacNU
 wRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=pLHTfqYm1GZqna5EBe0FklX3Y7EDabmg+O1h4ogqAik=;
 b=V7sFRAeGgmOHVnsHPckK+aBYHEfXsKWZbYbFD6+1numDBy+ZJq0MQ10kF1hB6cMNzz
 y3P6iadoZCSdfgWyxCXa+8N9BUOIBsZKIq1WXjk3Fu6DjqJS/PBV/tZfNZPKnzwJL3jy
 vMSwGj0F5vADvyokTp/hcUMeZiEJMPIxZmABOAi1Fu6By4ywLvHOq+3gEIxIo6jZVgoM
 0lVzrdapmY0E1VrIYpJgraqu8QnqT5cV9YPr0lwVv7x0jyKYWkcOFpCcyJ51OLPA1d4v
 cNxYgd8fCFNGY15rcxlVPYxU6o46uQqawtdZlBHI6Wot6E3/hRi3hrU+JNu/DRhpui1W
 zmXw==
X-Gm-Message-State: AOAM532R1q9jJkqWHMRilru4uQ/PrZBilurGXpEygY8vwZ10jBnaFvOa
 qLb7PuXlvfFKrb3VNToCSHGv40nnEP8=
X-Google-Smtp-Source: ABdhPJydthIXvDlqsWf4+41d74SviHvOz9W7TClF66jQOkjzwLLeL3UP65/bBrEYN/PcgA9tZuKxkg==
X-Received: by 2002:ae9:edcb:: with SMTP id c194mr4519682qkg.46.1606942390359; 
 Wed, 02 Dec 2020 12:53:10 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id b3sm2776928qte.85.2020.12.02.12.53.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 12:53:09 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 2 Dec 2020 15:53:09 -0500
Message-Id: <65F19A76-03A4-40A7-AC2F-F47293EBC3EF@gmail.com>
References: <CAHRiTbmiFK9H9vF98TRJDbwXtzyk4f-rdUP3K+zNinAcq0k4mw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAHRiTbmiFK9H9vF98TRJDbwXtzyk4f-rdUP3K+zNinAcq0k4mw@mail.gmail.com>
To: Carlo Venier <venier.carlo@gmail.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Questions regarding tx_waveforms
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

VHJ5IHJlZHVjaW5nIHRoZSBiYXNlYmFuZCBzaWduYWwgbWFnbml0dWRlIGFuZCBSRiBnYWlu4oCU
ZG9lcyB0aGF0IHJlZHVjZSB0aGUgdW53YW50ZWQgaGFybW9uaWMgY29udGVudD8KCldoYXQgb2Zm
c2V0IHZhbHVlIGFyZSB5b3UgdXNpbmc/IEkgdHlwaWNhbGx5IHVzZSBhIHZhbHVlIHRoYXQgaXMg
YSBiaXQgbW9yZSB0aGFuIGhhbGYgbXkgYXBwbGljYXRpb24gYmFuZHdpZHRoLgoKU29tZSBBbW91
bnQgb2YgdW53YW50ZWQgbWl4aW5nIGFuZCBkaXN0b3J0aW9uIHByb2R1Y3RzIGFyZSAqaW5ldml0
YWJsZSogd2l0aCBhbnkgZ2VuZXJhbCBwdXJwb3NlIHRyYW5zbWl0IGNoYWluLCBhbmQgdGhlIHVz
dWFsIHN0cmF0ZWd5IGluIHB1cnBvc2UtYnVpbHQgcmFkaW9zIGlzIHRoZSB1c2Ugb2Ygb3V0cHV0
IGZpbHRlcnMuIAoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBEZWMgMiwgMjAyMCwgYXQgMTo0
OCBQTSwgQ2FybG8gVmVuaWVyIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4gSGksCj4gCj4gSSBoYXZlIGEgZmV3IHF1ZXN0aW9ucyBy
ZWdhcmRpbmcgdHhfd2F2ZWZvcm1zIHNjcmlwdC4gCj4gSSdtIHVzaW5nIGFuIFVTUlAgQjIwMG1p
bmkuCj4gCj4gSG93IGNhbiBJIGRlbGV0ZSAob3IgcmVkdWNlKSB0aGUgREMgY29tcG9uZW50IHdo
ZW4gdXNpbmcgdHhfd2F2ZWZvcm0/Cj4gCj4gV2hlbiBJIHNldCAtLWZyZXE9ZjAsIHNwZWNpZnlp
bmcgLS1sb19vZmZzZXQ9KGRmMCksIGhvdyBkbyBJIHJlbW92ZSAob3IgcmVkdWNlKSB0aGUgbWly
cm9yZWQgcmVwbGljYSBhdCAoZjArMipmMCkgdGhhdCBpcyBnZW5lcmF0ZWQ/IERvIHlvdSBoYXZl
IGFueSBhZHZpY2UgdG8gc3VnZ2VzdD8gCj4gCj4gVGhhbmsgeW91IGluIGFkdmFuY2UsIAo+IAo+
IENhcmxvCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20K
