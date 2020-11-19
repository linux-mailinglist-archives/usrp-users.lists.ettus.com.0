Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0572B9B84
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 20:32:51 +0100 (CET)
Received: from [::1] (port=40180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfpfm-0000iz-C0; Thu, 19 Nov 2020 14:32:50 -0500
Received: from mail-qv1-f44.google.com ([209.85.219.44]:37881)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kfpfj-0000cw-9R
 for USRP-users@lists.ettus.com; Thu, 19 Nov 2020 14:32:47 -0500
Received: by mail-qv1-f44.google.com with SMTP id v20so3471571qvx.4
 for <USRP-users@lists.ettus.com>; Thu, 19 Nov 2020 11:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=QApMDEUKF7B8bWxOQAat/PlNheRq3LXu1U/2wiN7u78=;
 b=sQvx0lRhQ9UBBVGalUdoD46SLI9BpXIg7ASR2efsF4ujLMxoWGTyerNH+aGopgVttQ
 30NZ+gQNtLqHkg0Yo8CXYXz3zhX4DTC+uCkOV9fPzTWGd8QIY0jiCioMHXQpG9nwoGcR
 g2O/AuTmcrM6VJZR/34wjch08xY+nm4O2O2ScxUhM8LC7QSSu5eCkWWmQKAcQuLwgdRU
 0vob6fidE+HjY1jihbrS6yDpJYbFO8tP6DOkWsBL71rANUf3tGUmqywO5cvULpCne5/c
 wauwgGQ6M9RdpCWOwxa/C0V0LkPSSqryRMpi06DM4mPpnuqYyj+yg8JYl4ZWM2dUUAXL
 NMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=QApMDEUKF7B8bWxOQAat/PlNheRq3LXu1U/2wiN7u78=;
 b=eG6IAPawXwoAo4gKaKSG4dizZWG9JjYentr6Z3rwOxTQCXH4cPZPGejfOK1dj2rDHF
 BzjzUkIirFugho1q6ECdphM3WKY7EHLR92fAF/0D14UjMcJZRrhFfTZaud35dahQf1sG
 WXhLmuD/I8Re+aXwB2RIg+5kNX+YT0RwvidZY4N7PrnLqDqhBXr3Jj5WYUBdccIF3xcQ
 cqrUojukxslyBTzSuNCW4FbQO39bQTC4ggjkNCcch1BjOJe+1nfArZnnIZaYDltnHVZV
 Q8eax7cceU4w3OZ55mJeQL1CPf+6TTO52nGzM42BFqfbtnr4WtYdJD+ss71XgEpENR3y
 Soug==
X-Gm-Message-State: AOAM532+eVCEnNsAfW/szEfzDJO2+Bx4OlCukzSwHJ+jtv85MrZD18ft
 5eeAwx//7QPHDyiiPxs1ydw=
X-Google-Smtp-Source: ABdhPJxy4/1GzUohUNwwWAsXFleBx3O8fI4mdH4OVyB0zs3pus5o0Xbq3uHqYf7ecvIiupZ0AHwjnw==
X-Received: by 2002:ad4:4cd0:: with SMTP id i16mr12921405qvz.13.1605814326646; 
 Thu, 19 Nov 2020 11:32:06 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id y5sm556880qth.53.2020.11.19.11.32.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Nov 2020 11:32:06 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 19 Nov 2020 14:32:05 -0500
Message-Id: <52524682-BA34-4392-9CCD-D7930C577AA8@gmail.com>
References: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
To: Christopher.Flood@colorado.edu
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] Ettus N310 LO IN RX Synchronization
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

QXJlIHlvdSBpbnB1dHRpbmcgYW4gTE8gc2lnbmFsIGF0IHR3aWNlIHRoZSBkZXNpcmVkIGZyZXF1
ZW5jeSBhbmQgYXQgKzNkQm0/CgpIYXZlIHlvdSB0cmllZCBhZGRpbmcgaW5pdF9jYWxzPUJBU0lD
IHRvIHlvdXIgZGV2aWNlIGFnZXM/CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE5vdiAxOSwg
MjAyMCwgYXQgMjoyNiBQTSwgQ2hyaXN0b3BoZXIgRmxvb2QgdmlhIFVTUlAtdXNlcnMgPHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiDvu78KPiBIaSBhbGwsCj4gCj4gSSd2
ZSBzZWVuIHNvbWUgZGlzY3Vzc2lvbiBhYm91dCB0aGlzIG9uIHRoZSBlbWFpbCBsaXN0cywgYnV0
IEknbSBzdGlsbCBoYXZpbmcgYSBiaXQgb2YgdHJvdWJsZS4gSSdtIHRyeWluZyB0byB1c2UgdGhl
IExPIElOIFJYIHBvcnRzIG9uIHRoZSBmcm9udCBvZiB0aGUgTjMxMCB0byBzeW5jaHJvbml6ZSB0
aGUgb3NjaWxsYXRvcnMgb24gdGhlIHR3byBkYXVnaHRlcmJvYXJkcy4gSSB3YXMgdGhpbmtpbmcg
SSBjb3VsZCBnZW5lcmF0ZSBhIHNpZ25hbCBvbiBvbmUgb2YgdGhlIFRYL1JYIHBvcnRzIG9mIHRo
ZSBTRFIgYW5kIGZlZWQgdGhhdCBpbnRvIHRoZSBMTyBJTiBSWCBwb3J0cyBhdCB0aGUgYXBwcm9w
cmlhdGUgZnJlcXVlbmN5IGFuZCBwb3dlci4gSG93ZXZlciwgd2hlbiBJIHRlc3QgdGhpcyBzZXR1
cCBpbiBHTlUgUmFkaW8gQ29tcGFuaW9uIEkgZG9uJ3QgZ2V0IGFueSBtZWFuaW5nZnVsIGRhdGEs
IHNvIEkgbXVzdCBiZSBkb2luZyBzb21ldGhpbmcgd3JvbmcuIAo+IAo+IFRoZSBpbnB1dCBzaWdu
YWwgdGhhdCBJIHdhbnQgdG8gc2FtcGxlIGlzIGEgMTBNSHogc2lnbmFsIHRoYXQgaXMgZ29pbmcg
aW50byBhbiBSWDIgcG9ydCBvbiB0aGUgZnJvbnQgZW5kIG9mIHRoZSBTRFIuIFdoZW4gSSBzZXQg
dGhlIGRldmljZSBhcmd1bWVudCAicnhfbG9fc291cmNlPWludGVybmFsIiBhbmQgcnVuIGl0LCB0
aGUgZGF0YSBJIGdldCBsb29rcyBleGFjdGx5IGhvdyBJIHdvdWxkIGV4cGVjdC4gV2hlbiBJIGNo
YW5nZSB0aGUgZGV2aWNlIGFyZ3VtZW50IHRvICJyeF9sb19zb3VyY2U9ZXh0ZXJuYWwiIGFuZCBy
dW4gaXQsIEkgZG9uJ3QgZ2V0IGFueXRoaW5nIHRoYXQgbWFrZXMgc2Vuc2UuIAo+IAo+IEFtIEkg
dXNpbmcgdGhlIExPIElOIFJYIHBvcnRzIGNvcnJlY3RseT8gVGhlIGRvY3VtZW50YXRpb24gZG9l
c24ndCBzYXkgbXVjaCBiZXNpZGVzIHBvd2VyIGFuZCBmcmVxdWVuY3kgcmFuZ2VzLiAKPiAKPiBB
bnkgaGVscCBvciBhZHZpY2Ugd291bGQgYmUgbXVjaCBhcHByZWNpYXRlZC4KPiAKPiAtQ2hyaXMK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
