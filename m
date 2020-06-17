Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8250E1FD654
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2020 22:46:11 +0200 (CEST)
Received: from [::1] (port=37118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jlewi-0003bb-A9; Wed, 17 Jun 2020 16:46:08 -0400
Received: from mail-ej1-f53.google.com ([209.85.218.53]:38115)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jlewe-0003X6-4M
 for usrp-users@lists.ettus.com; Wed, 17 Jun 2020 16:46:04 -0400
Received: by mail-ej1-f53.google.com with SMTP id w16so4045372ejj.5
 for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2020 13:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=QibNWRAWezzYk0i9Ata6tr5x2V3udVAS7Ep9fZV9wO8=;
 b=nf3x/RWe3aIPRqALjAJBK3qCYrKqaXKsvggGn+Qr5f6SWGmdpRbIwGhuV9sRLQPjss
 v4Jv3vZwf6m6EZ4rHBByvVwrAY3GQZ3tXWVJkGAC8JIoECr4bSvu5/ESIMvHZyYwJ58z
 sQqZ0fETnaNL/3HznKmY9e8JbmP2FlncWFwDu56ZQpZ7WNOKuW8SJ6YcCed/2fmahl/d
 w0VTK74ygWodoOFFmzhrrR1G4b+zaOssx/eNIaHk74BcY3mwA3VYk8TzF1JU/+AjEP5s
 CpwXxUGS3XpFsEEsGSHhUsGYH3431xnPGAGCnhPO0Gc9xiGY90MZOYQmDdK+4ceqM+DF
 2r/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QibNWRAWezzYk0i9Ata6tr5x2V3udVAS7Ep9fZV9wO8=;
 b=TDN8h6jt6be+Z3+/8vUSTmOOZAplKEV2YiA/8z6FrCUUvrLtGZavSTuZmn2RKdBe1v
 Gn3ja6b+OBb/889pUApRqAIYwWqcpIb55wlzvOanduyrDuF6Zs8e5Nz/qmQ4XWnuSeix
 wDScDX+kp8plebiyQWWEXFELKVbvBrhgDQZ1E9gd0U0MhrCrAaSNfmXzSrgkFAiRaSZh
 PARcYIHF2OqoG3MABSJSu3I6Gq3pz2FdLZZqoS1FEeHMaQ4mbvwoX/Ob/aP4ZlqImxQ5
 1XPINwMoe7RqzoYnywKjDae4JMxVXjQBUq3vFxwfmr37msIlAg4MQahiDYKOce50CZZd
 kqGg==
X-Gm-Message-State: AOAM532CwxnixVrWA1nPrZIZOgWIjr0nf+Il6tDmxqdcpNOvgSHmxrRm
 J3X2VqAQ4HavUN/VvBDTmTyU89fn
X-Google-Smtp-Source: ABdhPJwVknTwrBWim6Nk5BEZdgN7oSN6UwjGGYrmEOwV1yOMuybsRiEBxSrgHTbl/feeDGZIM2W45Q==
X-Received: by 2002:a17:907:4030:: with SMTP id
 nr24mr888906ejb.247.1592426723077; 
 Wed, 17 Jun 2020 13:45:23 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id d35sm463832edc.40.2020.06.17.13.45.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 13:45:22 -0700 (PDT)
To: usrp-users@lists.ettus.com, tian.li@tcl.com
References: <B7FF765BD755A047B8932CE984AFDC4627E2199A@CNSZEXMB01>
Message-ID: <242ac0a4-df90-3b42-f0a2-d8278dc35e5a@ettus.com>
Date: Wed, 17 Jun 2020 22:45:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <B7FF765BD755A047B8932CE984AFDC4627E2199A@CNSZEXMB01>
Content-Language: en-US
Subject: Re: [USRP-users] Help: Submissions to USRP-user mailing list
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

TmFiYmxlIGlzICoqbm90KiogYWZmaWxpYXRlZCB3aXRoIEV0dHVzLiBUaGV5IGp1c3QgY29weSB0
aGUgbWFpbGluZyBsaXN0DQppbnRvIHRoZWlyIG93biBhcmNoaXZlcyB3aXRob3V0IGFza2luZyB1
cywgYW5kIG1ha2UgaXQgbG9vayBsaWtlIGEgZm9ydW0uDQoNCkl0J3Mgbm90Lg0KDQpJdCdzIG91
ciBtYWlsaW5nIGxpc3QsIHNvIHBsZWFzZSBkaXRjaCBOYWJibGUuDQoNClNpbmNlIHlvdXIgZW1h
aWwgcmVhY2hlZCB0aGlzIG1haWxpbmcgbGlzdCwgeW91J3JlIHN1Y2Nlc3NmdWxseQ0Kc3Vic2Ny
aWJlZCEgQ29uZ3JhdHVsYXRpb25zISBBbmQgd2VsY29tZSBoZXJlIDopDQoNCkJlc3QgcmVnYXJk
cywNCk1hcmN1cw0KDQoNCk9uIDE1LjA2LjIwIDAzOjI5LCBUaWFuLCBMSShSJkQgVEVDSCZJTk5P
IDVHIExBQiAoQ04pLVNaLVRDVCkgdmlhDQpVU1JQLXVzZXJzIHdyb3RlOg0KPiBEZWFyLA0KPiAN
Cj4gQSBmZXcgZGF5cyBhZ28sIEkgc2VudCBhIG1lc3NhZ2UgdG8gYSBVU1JQIHJlbGF0ZWQgZm9y
dW0oaS5lLiBodHRwOi8vZXR0dXMuODA5OTcueDYubmFiYmxlLmNvbS8pIGJ5IG15IEUtbWFpbC4g
Tm93LCBJIHdhbnQgdG8gcmVwbHkgdGhlIG1lc3NhZ2UgZnJvbSBvdGhlcnMsIGhvd2V2ZXIsIHdo
ZXRoZXIgSSB0cnkgdG8gcmVwbHkgYnkgRS1tYWlsIG9yIHJlcGx5IGluIHRoZSBmb3J1bSBkaXJl
Y3RseSwgSSBmYWlsIHRvIHJlcGx5LiBNYXkgYmUgSSBoYXZlIHRvIHN1YnNjcmliZSB0byB0aGUg
bWFpbGluZyBsaXN0OiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+PyBJZiB5ZXMsIHBsZWFzZSBhY2NlcHQgbXkgcmVxdWVzdC4gSSB3
aWxsIHZlcnkgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY2FuIGhlbHAgbWUuDQo+IA0KPiAtLQ0KPiBC
ZXN0IFJlZ2FyZHMsDQo+IFRpYW4gTGkNCj4gDQo+IFRoaXMgZS1tYWlsIChpbmNsdWRpbmcgYW55
IGF0dGFjaG1lbnRzKSBpcyBjb25maWRlbnRpYWwgdG8gdGhlIGludGVuZGVkIGFkZHJlc3NlZSwg
bWF5IGJlIHN1YmplY3QgdG8gY29weXJpZ2h0LCBhbmQgbWF5IGFsc28gYmUgcHJpdmlsZWdlZC4g
SWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIGFkZHJlc3NlZSwgcGxlYXNlIGRvIG5vdCByZWFk
LCBwcmludCwgcmUtdHJhbnNtaXQsIGNvcHksIHN0b3JlLCBhbHRlciBvciBvdGhlcndpc2UgZGlz
Y2xvc2UgaXQgb3IgYW55IG9mIGl0cyBhdHRhY2htZW50cyB0byBhbnlvbmU7IG5vciBzaG91bGQg
eW91IGFjdCBpbiByZWxpYW5jZSBvbiBpdCBvciBhbnkgb2YgaXRzIGF0dGFjaG1lbnRzLiBJbnN0
ZWFkLCBwbGVhc2Ugbm90aWZ5IHRoZSBlcnJvciB0byB0aGUgc2VuZGVyIGJ5IGUtbWFpbCBhbmQg
aW1tZWRpYXRlbHkgcGVybWFuZW50bHkgZGVsZXRlIHRoaXMgZW1haWwgYW5kIGFueSBvZiBpdHMg
YXR0YWNobWVudHMgZnJvbSB5b3VyIHN5c3RlbS4g5pys55S15a2Q6YKu5Lu277yI5YyF5ous5Lu7
5L2V6ZmE5Lu277yJ5piv5o+Q5L6b57uZ5oyH5a6a5pS25Lu25Lq655qE5L+d5a+G5L+h5oGv77yM
5Y+v6IO95Zug5Y+X55+l6K+G5Lqn5p2D5L+d5oqk5LiU5bGe5LiT5pyJ5L+h5oGv6ICM5LiN5b6X
5oqr6Zyy44CC5aaC5p6c5oKo5LiN5piv5oyH5a6a5pS25Lu25Lq677yM6K+35LiN6KaB6ZiF6K+7
44CB5omT5Y2w44CB5YaN5qyh5Lyg6L6T44CB5aSN5Yi244CB5a2Y5YKo44CB5L+u5pS55oiW6ICF
5Lul5Y+m5aSW5pa55byP5o+t6Zyy5pys6YKu5Lu25oiW5YW25Lu75L2V6ZmE5Lu25YaF5a6557uZ
5Lu75L2V5Lq677yb5oKo5Lmf5LiN5bqU6K+l5L+h6LWW5pys6YKu5Lu25oiW5YW25Lu75L2V6ZmE
5Lu255qE5YaF5a656KGM5LqL44CC55u45Y+N77yM6K+36YCa6L+H55S15a2Q6YKu5Lu26YCa55+l
5Y+R5Lu25Lq66L+Z5LiA6ZSZ6K+v5bm25LiU56uL5Y2z5rC45LmF5Zyw5LuO5oKo55qE57O757uf
5Lit5Yig6Zmk5pys55S15a2Q6YKu5Lu25Y+K5YW25Lu75L2V6ZmE5Lu244CCIEUtbWFpbHMgc2Vu
dCB0byBhbmQgZnJvbSBUQ0wgbWF5IGJlIG1vbml0b3JlZCBhbmQgcmVhZCBmb3IgbGVnaXRpbWF0
ZSBidXNpbmVzcyBwdXJwb3Nlcywgbm90YWJseSB0byBlbnN1cmUgY29tcGxpYW5jZSB3aXRoIHRo
ZSBsYXcgYW5kIHRoZSByZWd1bGF0b3J5IG9ibGlnYXRpb25zLiBFbWFpbHMgY2Fubm90IGJlIGd1
YXJhbnRlZWQgdG8gYmUgc2VjdXJlIG9yIGVycm9yLWZyZWUsIGFuZCB5b3Ugc2hvdWxkIHByb3Rl
Y3QgeW91ciBzeXN0ZW1zLiBUQ0wgZG9lcyBub3QgYWNjZXB0IGFueSBsaWFiaWxpdHkgYXJpc2lu
ZyBmcm9tIGludGVyY2VwdGlvbiwgZXJyb3IsIGxvc3Mgb3IgZGVzdHJ1Y3Rpb24gb2YgdGhpcyBl
LW1haWwsIG9yIGlmIGl0IGFycml2ZXMgbGF0ZSBvciBpbmNvbXBsZXRlIG9yIHdpdGggdmlydXNl
cy4g5Ye65LqO5ZCI5rOV55qE5ZWG5rOV55uu55qE77yM5bCk5YW25Li65LqG56Gu5L+d6YG15a6I
55u45YWz5rOV5b6L5rOV6KeE55qE6KeE5a6a77yM5Y+R6Iez5oiW5Y+R6IeqVENM55qE55S15a2Q
6YKu5Lu25Y+v6IO96KKr55uR5o6n5ZKM6ZiF6K+744CCIOebuOWFs+eUteWtkOmCruS7tuS4jeiD
veS/neivgeWFtuWuieWFqOaAp+aIluayoeaciemUmeivr++8jOaJgOS7peaCqOW6lOivpeS/neaK
pOaCqOeahOezu+e7n+WuieWFqOOAglRDTOS4jeaJv+aLheeUseS6jumCruS7tuiiq+aLpuaIquOA
geWHuumUmeOAgemBl+WkseaIluavgeWdj+OAgeaIluiAhemCruS7tuWIsOi+vuW7tuivr+OAgeS4
jeWujOaVtOaIluiAheaQuuW4pueXheavkuiAjOS6p+eUn+eahOS7u+S9lei0o+S7u+OAgg0KPiAN
Cj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0DQo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQo=
