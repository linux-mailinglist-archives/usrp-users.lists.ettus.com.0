Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB9F2A7716
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 06:38:04 +0100 (CET)
Received: from [::1] (port=40424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaXyC-00049T-TW; Thu, 05 Nov 2020 00:38:00 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:42358)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kaXy8-00044E-U3
 for USRP-users@lists.ettus.com; Thu, 05 Nov 2020 00:37:56 -0500
Received: by mail-io1-f50.google.com with SMTP id k21so574166ioa.9
 for <USRP-users@lists.ettus.com>; Wed, 04 Nov 2020 21:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=GRKJwa4I0/fYNXLazSN+VaVssksxtrZ1QF5OcZD6ANY=;
 b=rNyacu7Er+0q/W3A5/ObI/11jCsYam4SMY2tmWqqvk/Z8Pb0oCmy0ygGKrxxFWpm0N
 tYiedtJx2KZ+w3IcMlYzvGfeFQ1fw1sIqJwgnRx2pDyEWEQYbZCOt2OlQH1IxZEIChP7
 Jsbp7heMCGbZEIYScvesLWNDnTL97Mpzjq3gvrBMuXHUHL/vrSLQtc00oCQGP0uBN9t3
 7jXAXOp1NCFqt+eNdGKiFd37E4hSF56sUIrsAGxcTpn8sluHl1Aah8GDq/BTn5Joji/d
 YWN6HwbX8+8h59Tnj/sdGtMl8ow38XgZt15LCMFu1f8opPfcQjxnd14vtcYCPco7Eb/x
 /eVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=GRKJwa4I0/fYNXLazSN+VaVssksxtrZ1QF5OcZD6ANY=;
 b=qc4GVrq+3E4SfN5b0GvpQ7r1he62cD2U/05FyyZjma0/lKq4XCMrJL55YotjbUwa4z
 BknaAQHN1JmxnUkVIHSkpWHRHQyVOAMXj0WhHDLjFKu7QjOix8V8iU6E4iv2pagbt5oB
 6VDbulmveiqA4Un/q6a1YX0wDTU0I1ZH+3q1HEQ2EY/PVay15o9PtwfvZ32TEdHXHADo
 V9ua8Jc1PyHjhcenbLWqlnqODLkDYevmb0XW8tiu4YkOv1O2YOHsg6AlOs9BmZmY3iOg
 EzbwDxdDVASQwlhr5nkbGLgjpq5hBiiCeUtqVyCaoot0ZmKJmkvvIAjKOjYcH4AyyyZ4
 ADZQ==
X-Gm-Message-State: AOAM531jftZXUlI7fj2Gs9rgcCJfbnXsVYRet/uR1m6PAl4X2S4ippRL
 rZKhfjUoRA9yf9rZVMhDpBg=
X-Google-Smtp-Source: ABdhPJz03ARqrbPFY6082iqWi8RkaNmuW3KR5/qcMF7XtsdXy6LvccMOUpph77rWs6RuuE6zggkrbA==
X-Received: by 2002:a5e:930d:: with SMTP id k13mr635273iom.33.1604554636149;
 Wed, 04 Nov 2020 21:37:16 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id e8sm395856ios.10.2020.11.04.21.37.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 21:37:15 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 5 Nov 2020 00:37:14 -0500
Message-Id: <79CA51AB-6E28-428B-B5DD-B9D7FFF38CB8@gmail.com>
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
To: Ben Magistro <koncept1@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] meta-ettus-v4.0.0.0 segfault
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

RG8gb3RoZXIgYXBwcyB0aGF0IHVzZSBGRlRzIGV4aGliaXQgc2VnZmF1bHRzLiAKClNlbnQgZnJv
bSBteSBpUGhvbmUKCj4gT24gTm92IDQsIDIwMjAsIGF0IDExOjI1IFBNLCBCZW4gTWFnaXN0cm8g
dmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiDv
u78KPiBJcyBhbnlvbmUgZWxzZSB1c2luZyBtZXRhLWV0dHVzLXY0LjAuMC4wIHlldD8gIGlmIHNv
LCBoYXZlIHlvdSBoYWQgYW55IGlzc3VlcyB3aXRoIGxpYmZmdHc/Cj4gCj4gVXNpbmcgdGhlIGlt
YWdlIG9uIGFuIEUzMTAsIGFkZGluZyBhIHNpbmdsZSBPT1QgbW9kdWxlIChnci1haXMpIGFuZCB0
cnlpbmcgdG8gcnVuIGFuIGFwcCBkaXN0cmlidXRlZCB3aXRoIGl0LCB0aGUgYXBwIHNlZ2ZhdWx0
cy4gIFRvIGZ1cnRoZXIgdHJvdWJsZXNob290LCBJIGFkZGVkIGdkYiBhbmQgaXQgY29tZXMgYmFj
ayB3aXRoIHRoZSBmb2xsb3dpbmcuICBJIGhhdmUgYSBzZXBhcmF0ZSBkZXZlbG9wbWVudCBob3N0
IHRoYXQgaGFzIGdudXJhZGlvIDMuOCBzZXR1cCB1c2luZyBweWJvbWJzIGFuZCBkbyBub3QgZXhw
ZXJpZW5jZSB0aGlzIGlzc3VlIHRoZXJlLgo+IAo+IFRocmVhZCAxICJweXRob24zIiByZWNlaXZl
ZCBzaWduYWwgU0lHU0VHViwgU2VnbWVudGF0aW9uIGZhdWx0Lgo+IDB4YjY5NDc4MzYgaW4gPz8g
KCkgZnJvbSAvdXNyL2xpYi9saWJmZnR3M2Yuc28uMwo+IAo+IFRvIGNvbXBpbGUsIEkndmUgbmVl
ZGVkIHRvIG92ZXJyaWRlIFBZVEhPTl9FWEVDVVRBQkxFIGFzIGl0IHBvaW50cyB0byBhIG5vbi1l
eGlzdGVudCBwYXRoIGluIC9ob21lL29lLWJ1aWxkZXIuLi4uIGluIC91c3IvbGliL2NtYWtlL2du
dXJhZGlvL0dudXJhZGlvQ29uZmlnLmNtYWtlLiAgVG8gcnVuIEkgYWxzbyBuZWVkZWQgdG8gZGVm
aW5lIExEX0VYUE9SVF9QQVRIIHBvaW50aW5nIHRvIC91c3IvbG9jYWwvbGliLy4KPiAKPiBUaGFu
a3MgaW4gYWR2YW5jZS4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQo=
