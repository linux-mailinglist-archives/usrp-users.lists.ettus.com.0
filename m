Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D423542DE
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 16:35:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FA2E383D7D
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 10:34:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="ZHnEuvlU";
	dkim-atps=neutral
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 49514383D08
	for <usrp-users@lists.ettus.com>; Mon,  5 Apr 2021 10:34:07 -0400 (EDT)
Received: by mail-wr1-f49.google.com with SMTP id x16so11082433wrn.4
        for <usrp-users@lists.ettus.com>; Mon, 05 Apr 2021 07:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=F9eyaC7+JdmOv4T+KuREtrhgp1E3VHfpdoDH7N5bXG4=;
        b=ZHnEuvlUjfXi50P0gu19xBaC+xfQJjoNxtoYlowLwtJrK5Zgr8MRxSUqnmMFFH70Nz
         84V0tzmEZ1ozD0HNbnPSD191owAKOTRrITNLI7Eemu6MS+tLbblE0hH5+oHWX160SIBz
         PuVU5LVXOveEPQEIdxTREoF3sU3+oMCwgRfevYaoFv+XgVd41wj7cKUghFgGPIuVqg3M
         uFgDu3/GwvLaSwJb5H4YPKe02qanvpehNjjGgPNvJdHkyN8v8VU8pQYevZh5uAOPDvSt
         3kW1Qp7wSribFZjjYPs5wz02Z+uCQ0bda6K1Bm2ZRN01pmyZX9aBGdOLECV5bPkxESrQ
         0yGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=F9eyaC7+JdmOv4T+KuREtrhgp1E3VHfpdoDH7N5bXG4=;
        b=nLN6nDOlGS0ckIC2gTTnPwxQwseRiFvTSmy/xs975rzyHpg9bW0CO+xm5QVkNpKc4a
         cc9M6m1ziP3wcJrhxD/89Pz9fHW5oS+p0EZQCVAN9LwiYA7MHq+gGXBRQgX/9pGECPqk
         /ZuoW+prUNs6c7yqdwm0oSVEWLyc4UcHlBj0Q8gImgNHRkut8zte7XVoyrgb7oZU2XLf
         Fkj7B5Qx0NNt7UOjlC68Y2dZtXoTPDA2XVR+rL/ZUmUXhEXNvODjOvi1TG0aPGZDzCUr
         uaWzh3m5EJQphLYgqS/SEwWOIhtdNfVlPAyXY7PrCBVuh9WVw7YJGC0GN2QWa1HMnSwH
         abwQ==
X-Gm-Message-State: AOAM532rakaO0abP6ykJiqVqZrNwTH6ZSTyOelly9ZCBxX/Sbb4ki8JN
	Xdv2egrk6MC6wmfE1JIBWc//8ysMS5y/3pn6
X-Google-Smtp-Source: ABdhPJx5wkph3U2khOi2fyonMTkQy2krhg20IzZzcSlD/w1qlM/Hw7YkKEboEvyqa+m7dg5k6jjL2Q==
X-Received: by 2002:adf:f44b:: with SMTP id f11mr30150455wrp.345.1617633246176;
        Mon, 05 Apr 2021 07:34:06 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-213.hsi.kabel-badenwuerttemberg.de. [46.223.162.213])
        by smtp.gmail.com with ESMTPSA id n4sm23097278wmq.40.2021.04.05.07.34.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 07:34:05 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAP=wbzOLDq+=WTJiU2esTyoGvH6Qc+qswRd5vkUB9OJUVYFebQ@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <3d7fb110-5d9d-87a9-a298-e2eb4f2f47e0@ettus.com>
Date: Mon, 5 Apr 2021 16:34:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAP=wbzOLDq+=WTJiU2esTyoGvH6Qc+qswRd5vkUB9OJUVYFebQ@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 3CMKRBD765GKXUHYML5FXOJ2MLSHVZ4L
X-Message-ID-Hash: 3CMKRBD765GKXUHYML5FXOJ2MLSHVZ4L
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3CMKRBD765GKXUHYML5FXOJ2MLSHVZ4L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTXVoYW1tZWQsDQoNCnlvdSBjYW4gdXNlIGl0IHdpdGgganVzdCBvbmUuDQoNCkJlc3QgcmVn
YXJkcywNCg0KTWFyY3VzDQoNCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3Zp
ZGVkIEFzIElzLiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhIHByb2R1
Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1
c2UgaW4gaGF6YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVz
ZSBvZiB0aGUgQ29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3QgdG8gdGVybXMgb2YgdGhl
IGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlz
IHVzZWQuIFN0YW5kYXJkIGxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0
IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLg0KDQpOSSB3aWxs
IG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29u
ZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNl
IGluIHRoZSBwcm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBw
dXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNp
Z25hdGlvbiBpbiB0aGUgbGljZW5zZSByZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBO
by4gNCB0byBQYXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMg
YW5kIChpaSkgc3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9u
LiAgSWYgb3VyIHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGlt
bWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJl
ZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNlIERlcGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlv
biBtYXkgcHJvY2VlZCBmdXJ0aGVyLg0KDQpPbiAwNS4wNC4yMSAxNjoyOCwgTXVoYW1tZWQgTXVz
dGFxaW0gd3JvdGU6DQo+IEhpLMKgDQo+DQo+IFF1aWNrIFF1ZXN0aW9uLMKgDQo+DQo+IENhbiBJ
IHJ1biBVU1JQIFgzMTAgd2l0aCBhIHNpbmdsZSBVQlggMTYwIE1IeiBkYXVnaHRlYm9hcmQsIG9y
IGRvIEkgaGF2ZSB0byBoYXZlIDINCj4gZGF1Z2h0ZXJib2FyZHMgaW4gb3JkZXIgdG8gcnVuIFgz
MTAuDQo+DQo+DQo+IFJlZ2FyZHMswqANCj4gTXVoYW1tZWQgTXVzdGFxaW0NCj4NCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
