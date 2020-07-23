Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9087D22B0F3
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 16:04:26 +0200 (CEST)
Received: from [::1] (port=33644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jybpf-0005hU-F2; Thu, 23 Jul 2020 10:04:23 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:37926)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jybpb-0005aI-5U
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 10:04:19 -0400
Received: by mail-wm1-f54.google.com with SMTP id f18so5307328wml.3
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 07:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/XBztKU+1mMephC5IhYJzo6Q2ePE9yADQPI6YmExcug=;
 b=hp74e72/xKDriYbAZNCguHV2tQjv7Am5PQizPqHSGgtnPKgav3R0VtjZcTZK/q4V4f
 GEpLosudr/mRFGCS6EGch68z6GaXDv2uW2BfefZu6TYFpp+Qld7LjFkRBEEdAIWsWM31
 mNE3u4wysPt2ZC7ni3VLgrX6Lw0v2xjzS7OUxGcOpUG256uGWzq8Z73jSoM+Sck2m5ZY
 Fdjjda5O/YEwyfbOX4MoI0UFt/zYR2DDBRV3MeRONpeapfFtq99ayV75+yjYPXoARVlW
 f1zI2Y87bZibDoEk9HqjkapPhyOeWeWCkiEe4KwbQ2l8K/Jp8G0x1phMg8tI8pD9DwGc
 iTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/XBztKU+1mMephC5IhYJzo6Q2ePE9yADQPI6YmExcug=;
 b=PmURyLi7emtsKrYHAeogZAUase5wBxO695s13NvYUhU8W4oYO4TLYVAtMN5YD7NtDK
 n91uPi5IPU4DSuD7TdR2wrT9lWWIvX4LH7LKSmfrhjaLEkCxiIGsDsNZwnTSlMC7Z9bK
 NmW2uNwW9G0kGD/sqYRXxXqb3KF2F4s8+T4xaUYnrYNvsU1rWjtCsKCnCYF7JRpxr82F
 k5xPlJZxoUH95vj7dRDTUnhAKrUdRGM7iYaVSv+sgeU3dQq6G1+3dHGopF3Yu6VrnuWy
 tcvrsnSlneSLT3JZa3yrau0ydQzs0sSkDC0Dcjj01Q6wAmvjo+jv+krmKdATvFiDVsy0
 lwBA==
X-Gm-Message-State: AOAM532xV1pjLNbvasR3h0UH90XksytQy42GqB7/BzVeldGSnSlVyPgH
 HgOt0d/T21E3FiUDtDpxA36RJyDXLwo33g==
X-Google-Smtp-Source: ABdhPJz94TahlKsZksnddIqCJlHQBhEq8KCsecS2CFJpYhR3ZUP+QzK8diBpJVvvJ0nZv8Wmh5A1qg==
X-Received: by 2002:a1c:6246:: with SMTP id w67mr4205877wmb.42.1595513017196; 
 Thu, 23 Jul 2020 07:03:37 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id k10sm3360239wrm.74.2020.07.23.07.03.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 07:03:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
 <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
 <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
 <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
 <6007c12a-d58e-83cb-6b8d-519c9da42a0b@ettus.com> <5F199588.8020406@gmail.com>
Message-ID: <4f8359c8-dcac-d413-a1c9-b10498b63d3a@ettus.com>
Date: Thu, 23 Jul 2020 16:03:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <5F199588.8020406@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] 10us+ sample delay between daughterboards
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

YWggcGVyZmVjdCEKClJlOiBwb3N0IG1vZGlmaWNhdGlvbnMKSWYgeW91IGxpa2UgR1JDIGNvZGUg
Z2VuZXJhdGlvbiwgeW91IHdpbGwgbG92ZSBQeXRob24gc25pcHBldHMsIHdoaWNoCmFsbG93IGZv
ciBjb2RlIGluc2VydGlvbiBpbiB0aGUgZ2VuZXJhdGVkIEdSQyBmaWxlIGZvciBleGFjdGx5IHRo
ZXNlCmtpbmRzIG9mIHRoaW5ncy4KCk9uIDIzLjA3LjIwIDE1OjUwLCBNYXJjdXMgRC4gTGVlY2gg
dmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gT24gMDcvMjMvMjAyMCAwNjoxMyBBTSwgTWFyY3VzIE3D
vGxsZXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+IEkgYWxzbyBqdXN0IHJlYWxpemVkIHRoYXQg
eW91IGNhbiBiZSByZWFhYWFsbHkgc2lsbHkuIElmIHlvdSBoYXZlIGEKPj4gdHJhbnNpc3RvciBh
bmQgdHdvIHJlc2lzdG9ycyB0byBzcGFyZSwgdXNlIHRoZSBHUElPIGZyb250IHBhbmVsCj4+IGNv
bm5lY3RvciB0byBnZW5lcmF0ZSBhIGZhdXgtUFBTIHB1bHNlLCBidWZmZXIgaXQgdXNpbmcgdGhl
IHRyYW5zaXN0b3IsCj4+IGFuZCBmZWVkIGl0IGJhY2sgdG8gdGhlIGJhY2twYW5lbCBQUFMgaW5w
dXQuLi4gbWlnaHQgc2F2ZSB5b3UgdGhlIGV4dHJhCj4+IGRldmljZSwgYnV0IG9mIGNvdXJzZSB0
aGUgUlBpIHNvbHV0aW9uIGlzIHN0aWxsIGVsZWdhbnQsIGFzIGl0IGFsbG93cwo+PiBmb3Igbm90
LXF1aXRlLWJ1dC1hdC1sZWFzdC1jbG9zZS1pc2ggTlRQIHN5bmNocm9uaWNpdHkuCj4+Cj4+IENo
ZWVycywKPj4gTWFyY3VzCj4+Cj4gWW91IGRvbid0IG5lZWQgYW55IGV4dGVybmFsIGhhcmR3YXJl
IGF0IGFsbC4KPiAKPiBCMnh4LCBYM3h4LCBOM3h4IGFsbCBoYXZlIGEgc3ludGhldGljIGludGVy
bmFsIDFQUFMgaWYgdGhlcmUgaXMgbm8gb3RoZXIKPiBzb3VyY2UuCj4gCj4gVGhlIGNvZGUgZ2Vu
ZXJhdGVkIGJ5IEdSQyBmb3IgdGhlICJ1bmtub3duIFBQUyBjYXNlIiBuZWVkcyB0byBiZQo+IHBv
c3QtZmFjdG8gbW9kaWZpZWQgc28gdGhhdCBpbnN0ZWFkIG9mIHNldHRpbmcgYSAwLCBpdCBzZXRz
IGl0IHRvIHN5c3RlbQo+IMKgIHRpbWUgKG9yIHdoYXRldmVyIHlvdSBkZXNpcmUpLsKgIFRoaXMg
aXMgc2ltcGxlIHRvIGRvLsKgIEl0IHJlYWxseSB3b3VsZAo+IGJlIG5pY2UgaWYgZ3ItdWhkIGhh
ZCBhbiBvcHRpb24gdG8gZG8gdGhpcyBpbnN0ZWFkIG9mIHNldHRpbmcgdG8gMCwgYnV0Cj4gwqAg
aXQgZG9lc24ndC4KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo=
