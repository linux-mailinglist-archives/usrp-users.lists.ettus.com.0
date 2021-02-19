Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC9831FCFD
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 17:18:27 +0100 (CET)
Received: from [::1] (port=55204 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD8U5-00078I-2y; Fri, 19 Feb 2021 11:18:25 -0500
Received: from mail-wr1-f49.google.com ([209.85.221.49]:37968)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lD8U0-00072L-PQ
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 11:18:20 -0500
Received: by mail-wr1-f49.google.com with SMTP id b3so9301844wrj.5
 for <usrp-users@lists.ettus.com>; Fri, 19 Feb 2021 08:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=lLeXpO0eRaI+8HrlxoBmlo69i01Y0vCRy1GBJXZvn00=;
 b=xhjebghlq61GJm8EnTy586wFP6NcXTWbsv/xh0laz2MbV8BkC+qmZWaLJhXOBetBhR
 PlivFTSpsmmUqWQQRghd6AfzrKtXaONv2TsT1BWyRxbUmf1lB+FKU/78PpZw+SSiPoos
 rmgRCs01Rc4G3zu08CibEwyLfWl8zaJXK0N7cmdag77EuyvVIjdQSrynGiW06d90ZRvt
 RyoeS0Y6vC67CpaOFbsDeOgpLVPmTGNybV3ChpU9/zAIyZ7FE/XN5lA6fCFmA0VjaJt8
 YnfwKWCfk4F0G9KJfZ+qt9hYGwIpTQFo3K32FJZ/XxQdtso+FCRwTAJHyaUHvgybg9IV
 ysUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=lLeXpO0eRaI+8HrlxoBmlo69i01Y0vCRy1GBJXZvn00=;
 b=Uzp7z9ZCzFjkTffNqTxDExCll3Z2QLhLuKBkOVRTJIkjeTX3rvAxD5VUdG5WrTAPbn
 gN7v/mwlWsr9iMBZmnptA2I5ksb56tkM1vyWoHwDDVbfOpu5bgA39bT48ldW6JBp8mWm
 OmqY3aDHQKK2GM9vktiKEgcPh8/UOeypmS6ymbLnhqWFRg/o6jeyOj6SxDLTndSlDjOX
 +Ovf71Uh9Cs96TauVa6pspq6UWNrknPBOXqeN/AzgFhb9i6UGGgeUjfi5tCGEDLeF1qS
 ldU2HOFEDXy9msKV9+CzZH3f74k1XkzWl3jYbO7iPo+Fb/udj+KyO58z1K9baHu+Z5EK
 mhhw==
X-Gm-Message-State: AOAM531wysUadHtkR9eiCRjvxsC4zTZ6zoH6k5x0p46yFdh73o+3Cupe
 VSk3OlPD3vp5NRskBzgUHkybwbZjxHfZCiUZxLw=
X-Google-Smtp-Source: ABdhPJx8tD9FbXANvaot84dzlO3PpC3f6oqL2s16W96PalsuXcFsfxrYVBGqI7Su6B681PTXuyN9lg==
X-Received: by 2002:a5d:6a0b:: with SMTP id m11mr9876916wru.414.1613751459606; 
 Fri, 19 Feb 2021 08:17:39 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id z2sm12065291wml.30.2021.02.19.08.17.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Feb 2021 08:17:39 -0800 (PST)
To: dtrask1@tampabay.rr.com
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <d56665a4704b3e2f4ca209f3c1b3d4ba630b5e4d@webmail>
Message-ID: <2915861c-5830-241b-6684-05330fc39c61@ettus.com>
Date: Fri, 19 Feb 2021 17:17:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <d56665a4704b3e2f4ca209f3c1b3d4ba630b5e4d@webmail>
Content-Language: en-US
Subject: Re: [USRP-users] gr-ettus Cross-Compile "Target
 'gnuradio::runtime_swig' not found."
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

R2xhZCB5b3Ugc29sdmVkIGl0ISBTdGlsbCwgc2hvdWxkIHdvcmsgd2l0aCBQeXRob24zIOKAkyBH
TlUgUmFkaW8gMy44IChhbmQgbGF0ZXIpIGlzIFB5dGhvbgozIGNvbXBhdGlibGUgKHdpdGggMy44
IGJlaW5nIHRoZSBvbmx5IHJlbGVhc2UgbGluZSBvZiBHTlUgUmFkaW8gdG8gc3VwcG9ydCBib3Ro
IFB5MiBhbmQgUHkzKS4KCkhvd2V2ZXIsIHlvdSdyZSByaWdodCwgeW91ciBDTWFrZSBkZXRlY3Rz
IGFuZCBjaG9vc2VzIFB5dGhvbiAyLjcgKGl0IGNhbiB1c2UgZWl0aGVyKSwgYW5kCmlmIHlvdSB0
aGVuIHRyeSB0byBsaW5rIGFnYWluc3QgUHl0aG9uIDMueCwgaXQgd291bGQgaW5kZWVkIGZhaWwu
CgpCZXN0IHJlZ2FyZHMsCgpNYXJjdXMKCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlz
IHByb3ZpZGVkIEFzIElzLiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBh
IHByb2R1Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9y
IGZvciB1c2UgaW4gaGF6YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3Mg
Zm9yIHVzZSBvZiB0aGUgQ29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3QgdG8gdGVybXMg
b2YgdGhlIGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBD
b2RlIGlzIHVzZWQuIFN0YW5kYXJkIGxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZv
dW5kIGF0IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLgoKTkkg
d2lsbCBvbmx5IHBlcmZvcm0gc2VydmljZXMgYmFzZWQgb24gaXRzIHVuZGVyc3RhbmRpbmcgYW5k
IGNvbmRpdGlvbiB0aGF0IHRoZSBnb29kcyBvciBzZXJ2aWNlcyAoaSkgYXJlIG5vdCBmb3IgdGhl
IHVzZSBpbiB0aGUgcHJvZHVjdGlvbiBvciBkZXZlbG9wbWVudCBvZiBhbnkgaXRlbSBwcm9kdWNl
ZCwgcHVyY2hhc2VkLCBvciBvcmRlcmVkIGJ5IGFueSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEg
ZGVzaWduYXRpb24gaW4gdGhlIGxpY2Vuc2UgcmVxdWlyZW1lbnQgY29sdW1uIG9mIFN1cHBsZW1l
bnQgTm8uIDQgdG8gUGFydCA3NDQsIFUuUy4gRXhwb3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRp
b25zIGFuZCAoaWkpIHN1Y2ggYSBjb21wYW55IGlzIG5vdCBhIHBhcnR5IHRvIHRoZSB0cmFuc2Fj
dGlvbi4gIElmIG91ciB1bmRlcnN0YW5kaW5nIGlzIGluY29ycmVjdCwgcGxlYXNlIG5vdGlmeSB1
cyBpbW1lZGlhdGVseSBiZWNhdXNlIGEgc3BlY2lmaWMgYXV0aG9yaXphdGlvbiBtYXkgYmUgcmVx
dWlyZWQgZnJvbSB0aGUgVS5TLiBDb21tZXJjZSBEZXBhcnRtZW50IGJlZm9yZSB0aGUgdHJhbnNh
Y3Rpb24gbWF5IHByb2NlZWQgZnVydGhlci4KCk9uIDE5LjAyLjIxIDE3OjA1LCBkdHJhc2sxQHRh
bXBhYmF5LnJyLmNvbSB3cm90ZToKPgo+IE1hcmN1cwo+Cj4gSSByZXNvbHZlZCB0aGUgaXNzdWUu
IEFwcGFyZW50bHksIEkgbmVlZGVkIHRvIGNyb3NzLWNvbXBpbGUgR251UmFkaW8gd2l0aCBweXRo
b24yCj4gaW5zdGVhZCBvZiBweXRob24zLgo+Cj4gRGVubmlzCj4KPiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Cj4gRnJvbTogZHRyYXNrMUB0YW1wYWJheS5yci5j
b20KPiBUbzogIk1hcmN1cyBNw7xsbGVyIgo+IENjOiAidXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iCj4gU2VudDogRnJpZGF5IEZlYnJ1YXJ5IDE5IDIwMjEgOToyNjoyNUFNCj4gU3ViamVjdDog
UmU6IFtVU1JQLXVzZXJzXSBnci1ldHR1cyBDcm9zcy1Db21waWxlICJUYXJnZXQgJ2dudXJhZGlv
OjpydW50aW1lX3N3aWcnIG5vdAo+IGZvdW5kLiIKPgo+IEhpIE1hcmN1cy4gSGVyZSBpcyB0aGUg
aW5mby4gSSB0aGluayB0aGlzIGlzIHRoZSBjb3JyZWN0IHZlcnNpb24sIGJ1dCBsZXQgbWUga25v
dyB3aGF0Cj4geW91IHRoaW5rLgo+Cj4gbGFidXNlckBFdHR1c0RldmVsNDp+L3Jmbm9jL3NyYy9n
ci1ldHR1cy9idWlsZC1hcm0kIHdoaWNoIGNtYWtlCj4gL2hvbWUvbGFidXNlci9yZm5vYy9vZS9z
eXNyb290cy94ODZfNjQtb2VzZGstbGludXgvdXNyL2Jpbi9jbWFrZQo+IGxhYnVzZXJARXR0dXNE
ZXZlbDQ6fi9yZm5vYy9zcmMvZ3ItZXR0dXMvYnVpbGQtYXJtJCBjbWFrZSAtLXZlcnNpb24KPiBj
bWFrZSB2ZXJzaW9uIDMuMTUuMwo+Cj4gQ01ha2Ugc3VpdGUgbWFpbnRhaW5lZCBhbmQgc3VwcG9y
dGVkIGJ5IEtpdHdhcmUgKGtpdHdhcmUuY29tL2NtYWtlKS4KPgo+Cj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPgo+IEZyb206ICJNYXJjdXMgTcO8bGxlciB2aWEg
VVNSUC11c2VycyIKPiBUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBDYzoKPiBTZW50
OiBGcmlkYXkgRmVicnVhcnkgMTkgMjAyMSA5OjEyOjE4QU0KPiBTdWJqZWN0OiBSZTogW1VTUlAt
dXNlcnNdIGdyLWV0dHVzIENyb3NzLUNvbXBpbGUgIlRhcmdldCAnZ251cmFkaW86OnJ1bnRpbWVf
c3dpZycgbm90Cj4gZm91bmQuIgo+Cj4gSGkgRGVubmlzLAo+Cj4gdGhhdCdzIHByb2JhYmx5IG5v
dCB0aGUgY2FzZSBoZXJlIGJ1dCBJJ3ZlIHNlZW4gc2ltaWxhciB3aXRoIGluc3RhbGxhdGlvbnMg
d2hlcmUgb2xkZXIKPiBDTWFrZSB3aXRoIG5ld2VyIENNYWtlIGxpYnJhcmllcyB3ZXJlIHByZXNl
bnQgKG9yIHZpY2UgdmVyc2EpLiBXaGF0IGRvZXMgYGNtYWtlCj4gLS12ZXJzaW9uYCBzYXk/Cj4g
RG9uJ3QgaGF2ZSBhbiBFMzEwIFNESyBhdCBoYW5kIHRvIGNoZWNrIG15c2VsZiwgYnV0IHdoZW4g
eW91IHJ1biBgd2hpY2ggY21ha2VgLCBpcyB0aGF0Cj4gdGhlIGNtYWtlIHlvdSB3YW50IHRvIHJ1
biwgb3IgaXMgdGhlcmUgYSBkaWZmZXJlbnQgb25lIHRoYXQncyBpbgo+IC9ob21lL2xhYnVzZXIv
cmZub2Mvb2Uvc3lzcm9vdHMveDg2XzY0LW9lc2RrLWxpbnV4L3Vzci9iaW4gPwo+Cj4gQmVzdCBy
ZWdhcmRzLAo+IE1hcmN1cwo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+IDxodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20lM0Nicj5odHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiA8aHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPgo+
IC8+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
