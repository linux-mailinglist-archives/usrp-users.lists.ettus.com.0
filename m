Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD414E6625
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 16:38:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 789E4385067
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 11:38:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648136294; bh=HJcKeBZkWoUdwSICpXLRrZM5G70BwaXr9NqXmceGnW4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rrM8Ng2BQPggk6q2Vdq8FN1rOdJQxTYNGnG6vhLGVDya/1rONJs7XX5mo1t6ITwcn
	 6HoyHsBE5VLcUPOhdEFwMKfbQXWZlIkkFfPnSkPZhDluQALm7BxweSi7+0dNHYjmp1
	 jwGA2LpzrSkeqMwGU6MlLmbZ/6ywg5m7JyDJoRsrPh55+LNd/kEOPYVZ0eglwoauMg
	 Qj6JLGoLcm7LUClG0IWiydQtfkFXVfzx3GeC3gniNEbgUQpqWBLOpP5rkd2GQ7Mc6k
	 9PfHZtmymS+HSplsAnQqNHED1P5Xx/OJsmCdMNzY4//yehyi9pyoWI+GpLkLXXnQX/
	 y3tsJgf7UDlWA==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2CBAE384820
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 11:37:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CTaDsLdh";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id g8so3805646qke.2
        for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 08:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=ABrkuJuxPVvpF8FC96MhArdcSquKQs+PiS8fDlT5qxY=;
        b=CTaDsLdhnbekb+hVWZn6cX/llQxDL1hN3Nb+4rjno6913xijVWjqpDmkTlunN4kKgk
         GlJEihXhQO1loQR960qYO/H8gmjGLtDJSJWG3KlmTNJVK1vgx4/AWwPjrG0r0MmIhf8Y
         9YTM5SClz5/ygZLYJYAz8Tldtiey3SHtVdK5tXKV27+mVa2PLQWgFy8dH0/tFd55S+tN
         0IsRyFxiCDyG4Dl8vcqIgNokfqfAslSUPOw2KgpjdIjUiAosdtNe3+OJxIG62ndxiXkr
         HzCkDWPgqbv+F8MlBvTh6fG6kkyeD2yXwHyQlIExnO7Z1z524Z5RA7iFsb5+3r01mhkw
         K/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ABrkuJuxPVvpF8FC96MhArdcSquKQs+PiS8fDlT5qxY=;
        b=bsISxLGmyeFIfFoeQnhAjwAfqrCxs6Od15b/uwVdAQ/Bwt6GQR+amA7ScBK6Sbfb7L
         Jqf0tdZVV+waOPno0LK5mrljHdP/nhL8wjLbX3ibwIL5Y0qwcQ+lRdwXsTin6ctthTXA
         LYX9XNaPSQtYerGGMro2Fl/MP8ptGvV99oV1oA1X/+xgwKfKZ2tM1I1Yl3Blz9mWvTMH
         TASePKXal5LISt1Az1GgdjYLCVWNKsDZPlal63LyEqz7ZHpAUJX5NCGluWnBU3z5yV43
         MoCx5s+0k7SlPFtISrhZw2dlxIDFp/oJvLEt1TbmD1TNue0IuAJyRKC7Qyfh+YKemCNB
         5Gsw==
X-Gm-Message-State: AOAM531U8+TG1esMEuXhn1AZqdIsosQrW7nSKgF+FJ2pc8MRDWqdJGMO
	Cn+jn0xyE/e/Hu1KytUZ5N5K5ir1THg=
X-Google-Smtp-Source: ABdhPJzppq6QxCuBdYV+iqOo+E58h9zR3TaOXjGvrSwI4UXyjzYAvQtmRItGjHNOvQ1x38sV2QM8BA==
X-Received: by 2002:a05:620a:2413:b0:67e:d7be:348e with SMTP id d19-20020a05620a241300b0067ed7be348emr3769351qkn.252.1648136233350;
        Thu, 24 Mar 2022 08:37:13 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c20-20020a05622a059400b002e1d59e68f3sm2671939qtb.48.2022.03.24.08.37.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Mar 2022 08:37:13 -0700 (PDT)
Message-ID: <44e6613f-625b-47b5-1347-de2b7ea2ff5b@gmail.com>
Date: Thu, 24 Mar 2022 11:37:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY@lists.ettus.com>
Message-ID-Hash: JQYCZ2NPI3Y52MTFAURYNCBYG3TSFZ37
X-Message-ID-Hash: JQYCZ2NPI3Y52MTFAURYNCBYG3TSFZ37
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2 rx antennas + USRP B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JQYCZ2NPI3Y52MTFAURYNCBYG3TSFZ37/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yNCAxMTozMiwgSnVtYW5hIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0KPiAx
LUkgaW5zdGFsbGVkIHJhZGlvY29uZGEgKyBVU0IgZHJpdmVyDQo+DQo+IDItdG8gY2FwdHVyZSBM
b1JhIHRyYWNlIHVzaW5nIFVTUlAgQjIxMCwgSSB0eXBlIOKAnHJ4X3NhbXBsZXNfdG9fZmlsZSAN
Cj4gLS1mcmVxIDkxNS4wZTYgLS1yYXRlIDFlNiAtLWdhaW4gMjDCoC0tZHVyYXRpb24gMTDCoCAt
LWZpbGUgbG9yYV9yeOKAnA0KPg0KPiAzLU5vdyBpIHdhbnQgdG8gY2FwdHVyZSBMb3JhIHRyYWNl
IHVzaW5nIDIgYW50ZW5uYXMgdGhhdCBsb2NhdGVkIGluIA0KPiBwb3J0IFRYL1JYIGFuZCBSWDIN
Cj4NCj4gSG93IGNhbiBpIGRvIHRoYXQ/DQo+DQo+DQpUd28gcG9pbnRzOg0KDQooMSnCoCBGb3Ig
YSBnaXZlbiAic2lkZSIgdGhlIHJlY2VpdmVyIGNoYWluIGlzIGNvbm5lY3RlZCBFSVRIRVIgdG8g
dGhlIA0KVFgvUlggcG9ydCBPUiB0aGUgUlgyIHBvcnQuwqAgSWYgeW91IHdhbnQgbXVsdGlwbGUg
UlggYW50ZW5uYXMsIHlvdSdkIHVzZQ0KIMKgIHRoZSBSWDIgcG9ydHMgb24gZWl0aGVyICJzaWRl
L2NoYW5uZWwiIG9mIHRoZSBCMjEwLg0KDQoNCg0KKDIpIFRoZSByeF9zYW1wbGVzX3RvX2ZpbGUg
ZXhhbXBsZSBvbmx5IGRlYWxzIHdpdGggYSBzaW5nbGUgY2hhbm5lbC0teW91IA0KbWlnaHQgd2Fu
dCB0byBtb2RpZnkgdGhlIHJ4X211bHRpX3NhbXBsZXMgZXhhbXBsZSwgb3IgY29uc3RydWN0IGEg
cXVpY2sNCiDCoCBHbnUgUmFkaW8gZmxvdy1ncmFwaCB0byBkbyB3aGF0IHlvdSB3YW50Lg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
