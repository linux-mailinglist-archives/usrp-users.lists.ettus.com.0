Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2489F3917DA
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 14:49:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1182A3840A3
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 08:49:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aWDz+z9x";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9EF56384035
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 08:48:39 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id c15so746184qte.6
        for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 05:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:date:subject:message-id
         :to;
        bh=/fS5v4KC87Tg0V0sWW1LpWlzwxWsjkaaRnFKoOFaXgc=;
        b=aWDz+z9x2wg4TsY6GXYfB0s2N2JMpBRqDlheYTR04XSVu2B2k1BD5/IqQWw4L1JemQ
         eqIrf9cRiNnj0tr7QHr8CUvQhV/155wOvVZqUlkjvtmnAWxqmY/7kS+drLpgnXepqbgn
         urHC46w+Bb5duGcmqzIjWv6udNIet/A9GSkdEqG/m/D02KXSFh+C/9Xb7iIp5BUbsAUq
         WbgaXdCeQJ0jvLkAH89gQuoQ5wG2l12HN7xkbOSQUYw7RTwPXwxCtbxIwDn4h2Mx/DrH
         mccLZhel6SZcFXzHqND67BtmfJgwQWL3Sh88omuPJ3WtVavwLLGX1o395bzM2UK8jjUC
         7pmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
         :subject:message-id:to;
        bh=/fS5v4KC87Tg0V0sWW1LpWlzwxWsjkaaRnFKoOFaXgc=;
        b=IaBqItZZCUCyrfm9ck1bHkJJ0c6GQlYQc44oa/SfXGQDL8KbSnNgLw2Jd4Hg3jynFj
         ofjHSjD+5+f64JGrnqhX1TMFNAB+mVg1WCFmzTUj/J/SqDVoAyxPnNc9HHjaG5kcGQcI
         nlx8sPN257tQ0q6vlDChdU/YHiWI9g28RO7RqTmxu8qg2PxjwmmZ4iNt5wXeobD4qDjU
         yHR2SdvdYF0BzN0m662H+DvkUhAQz+ntsshGAybuFKxr30VaNURz6MAW6oJ7rVZRbz7w
         bnKlHFjTlQK9E6axEb8PAvd8iPUoqxmipDK6EfPtf+yAOBxRDjU9DVvvyYTI0WggAAaz
         bSWA==
X-Gm-Message-State: AOAM530icGecoam6rwis+qumIYExVKLGffVHZhugQ0avA0argsMmQg71
	ZTfsBcEEoHbsMo/1GYtutCe6lU5yu+U=
X-Google-Smtp-Source: ABdhPJyoH+kEe94r0lmnmm6vxgqizWz6F0C4XJECS3bADGvb+0NstwCqA/vuT5/7Uhm3l7UxH43fhw==
X-Received: by 2002:ac8:5a94:: with SMTP id c20mr35631151qtc.353.1622033318905;
        Wed, 26 May 2021 05:48:38 -0700 (PDT)
Received: from ?IPv6:2600:380:9118:ae9b:c107:4128:69a4:9c48? ([2600:380:9118:ae9b:c107:4128:69a4:9c48])
        by smtp.gmail.com with ESMTPSA id l10sm1456863qtn.28.2021.05.26.05.48.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 05:48:38 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 26 May 2021 08:48:35 -0400
Message-Id: <7E340276-2030-46C7-BA8E-7498C7EA3890@gmail.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: M62DANL2QT2E6R4IO7OYYWSJPFIYFDOZ
X-Message-ID-Hash: M62DANL2QT2E6R4IO7OYYWSJPFIYFDOZ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Linking_two_X310=E2=80=99s_via_Aurora?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M62DANL2QT2E6R4IO7OYYWSJPFIYFDOZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgdGhlcmUgYW55IGRvY3VtZW50YXRpb24gb24gaG93IHRvIHJlLWNyZWF0ZSB0aGUgUkZOb0Mg
TG9vcGJhY2sgZGVtbyBmcm9tIEdSQ09OMjAxOSB3aGVyZSB0d28gWDMxMHMgd2VyZSBsaW5rZWQg
dG9nZXRoZXIgdXNpbmcgdGhlIEF1cm9yYSBpbnRlcmZhY2U/DQoNCkkgaGF2ZSBhbiBhcHBsaWNh
dGlvbiB3aGVyZSBJIHdvdWxkIGxpa2UgdG8gQ29ubmVjdCB0aGUgU0ZQKyAocG9ydCAxKSB0byBh
biBleHRlcm5hbCBGUEdBIGZvciBoaWdoIHJhdGUgZGF0YSAoMjAwIE1TUFMpIHVzaW5nIEF1cm9y
YSBhbmQgY29ubmVjdCBUaGUgb25lIDFHIEV0aGVybmV0IHRvIGEgaG9zdCBQQyB2aWEgRXRoZXJu
ZXQgZm9yIGEgbG93IHJhdGUgZGF0YSBzdHJlYW0gKDVNU1BTKSBhbmQgaXNzdWluZyBjb250cm9s
IG1lc3NhZ2VzLiANCkNhbiBzb21lb25lIHBsZWFzZSB0ZWxsIG1lIGlmIHRoaXMgaXMgcG9zc2li
bGUgYW5kIGlmIHNvLCB3aGF0IHRoZSBhcHByb3ByaWF0ZSBmbG93IHdvdWxkIGJlPw0KDQpNeSBm
aXJzdCAyIHBvc3RzIEnigJl2ZSBnb25lIHVuYW5zd2VyZWQuIEhvcGluZyB0byBoYXZlIGJldHRl
ciBsdWNrIHdpdGggdGhpcyBvbmUuIEkgdGhvdWdodCB0aGF0IGJ5IHRyeWluZyB0byBpbXBsZW1l
bnQgdGhpbmdzIEnigJl2ZSBzZWVuIGRlbW9uc3RyYXRlZCBieSBFdHR1cyBpdCB3b3VsZG7igJl0
IGJlIGRpZmZpY3VsdCB0byBnZXQgc3VwcG9ydCBhbmQgcmUtY3JlYXRpbmcgdGhvc2UgZGVtb25z
dHJhdGlvbnMuDQoNCg0KPGVuZCB0cmFuc21pc3Npb24+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
