Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC07622AA40
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 10:00:22 +0200 (CEST)
Received: from [::1] (port=59342 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyW9M-0005jA-A3; Thu, 23 Jul 2020 04:00:20 -0400
Received: from mail-wr1-f51.google.com ([209.85.221.51]:33541)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jyW9I-0005c4-KQ
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 04:00:16 -0400
Received: by mail-wr1-f51.google.com with SMTP id f18so4234707wrs.0
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 00:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+cERRVpsA6XYiictczGeh/5hE//vWCyCfZI9cqPXPtw=;
 b=JNGkE/qqp9OjCvxBHA5/+h7CYff/jOuYFGxJDor/qiBaalpi98WJT0WEt/42q9ESW1
 Bf+Vfj7A0d7Zb2JsvnrI/ltOjyWulM4oX5C9NHPI7OUuHFmfUPzDKe/5YUDeJ3diTfBf
 qrS3wjlcqjeBgTkc0kPhdPemL+oAdp9Zadl5/FKyFVy06krJ/Jt61GdStrqVESwcVsF6
 EPztnwWPlmkF6VoqR9DFYCDgWzdjG53uowv1gjmdvSVCSQKjfZJOXgQ+L0/Ga4h+zVZB
 bho5VahHafah9IO4BWIXx8VGXOR1AzySwrsCAiK1x6eEPP9EkjduUExrj7uGCwW88Vd3
 5OvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+cERRVpsA6XYiictczGeh/5hE//vWCyCfZI9cqPXPtw=;
 b=MgItQgDuQk/h59hTd9EvVXoQtaswC2v47Vvoq2yYXGM83Hd4XsnwuBFa4RhJNzn/LN
 GdUcJUvOJrWGQLAkPbK2DJTDLMfWa5Vzp10iYl74vPeOmq7KrrMD9bGloqYAMFQh3srW
 Jka/cBuxMFy+wmgNiKEsi/aOOT0sV0p0S+Bk1ZckENRmEF5Hh0wMteguPRrTgpwHPtbl
 7I0TCUdcYVH3YeKgLEVdJvRiM7I1iw93tf18BQao3sv/9oFsISECoUTOTkWmUS+vEF2S
 wL79wJ3gHU5MLZw9eJAyRMUT5PkHh1ZuDYKZpnEZqlku6dcE5NMmsvxy8oGNBNWYYaTS
 jPJg==
X-Gm-Message-State: AOAM531QBzBa2prj9fcRRk/nRofFcpxFTAaia5GR3yUMpQ/FLi8pM/J2
 yKlqp+xs4tTRjL+z0FJdYbzUFYASItTyRg==
X-Google-Smtp-Source: ABdhPJwxcJHz0+X89jreO4v/4kXkpYOpzQdgDrcErIwLVkIDbOPq8i6eQ/IQy01jrK1gial/Ny8M8A==
X-Received: by 2002:adf:e684:: with SMTP id r4mr2921003wrm.68.1595491175074;
 Thu, 23 Jul 2020 00:59:35 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id g70sm2655954wmg.24.2020.07.23.00.59.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 00:59:34 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
 <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
Message-ID: <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
Date: Thu, 23 Jul 2020 09:59:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
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

SGkgSm9oYW5uZXMsCgpsZXQgbWUgaW5jcmVhcyBNYXJjdXNuZXNzIG9mIHRoaXMgYnkgfjNkQi4K
Ck9uIDIzLjA3LjIwIDA5OjI5LCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2VycyB3cm90ZToK
PiBJIGRvbid0IGhhdmUgYSBQUFMgc2lnbmFsIHJlYWRpbHkgYXZhaWxhYmxlLiBXb3VsZCBhIDEw
TUh6IHJlZmVyZW5jZQo+IHN1ZmZpY2UgYXMgd2VsbD8KCk5vcGUsIHRoYXQgZG9lc24ndCBzZXQg
YSB0aW1lIHJlZ2lzdGVyLiBZb3UgZG9uJ3QgYWN0dWFsbHkgbmVlZCBhIHB1bHNlCnBlciBzZWNv
bmQg4oCTIHlvdSBuZWVkIGEgc2luZ2xlIHB1bHNlLgoKSXQncyBhIHRyaWNrIEkgdXN1YWxseSB0
ZWxsIHRvIGltcHJlc3MgcGh5c2ljaXN0cyBkb2luZyBtZWFzdXJlbWVudHM6CgoxLiBjYWxsIHNl
dF90aW1lX25leHRfcHBzCjIuIGNvbm5lY3QgMsOXIDEuNSBWIGJhdHRlcmllcyAob3Igc2ltaWxh
cikgdG8gZ2V0IGEgdm9sdGFnZSBiZXR3ZWVuCnNvbWV0aGluZyBsaWtlIDIuNSBWIGFuZCA1Vi4K
My4gICAgICAgICAgICAgfAogICAgICAgICAgICAgLS0tLS0KICAgLS0tLS0tLS0tLW8gICBvLS0t
LS0tLS0tLSstLS0tLS0tLS0tLS0tLS0+IFNNQSBpbm5lcgogIHwgICArICAgICAgICAgICAgICAg
ICAgICAgfAotLS0tLS0gICAgICAgICBwdXNoLSAgICAgICB8IHwgcHVsbC0KIC0tLWJhdCAgICAg
ICAgYnV0dG9uICAgICAgfFJ8IGRvd24KICB8ICAgICAgICAgICAgICAgICAgICAgICAgIHwKICAg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0+IFNNQSBvdXRlcgoKVGhl
IHB1c2hidXR0b24gY2FuIGVmZmVjdGl2ZWx5IGJlIGFueXRoaW5nIHRoYXQgaGFzIGEgbmljZSBx
dWljawpjb250YWN0aW5nIG1lY2hhbmlzbSB0byB5aWVsZCBhIG5pY2UgZWRnZSwgd2l0aG91dCBy
aW5naW5nIGRhbmdlcm91c2x5CmhpZ2guCgoKPiBEbyBJIGdldCByaWQgb2YgdGhpcyBpc3N1ZSBp
ZiBJIHVzZSBhIEdQU0RPPyBXZSBoYXZlIHRoZSBoYXJkd2FyZQo+IChhbnRlbm5hcyArIG1vZHVs
ZXMpIGF2YWlsYWJsZSBidXQgbm8gR1BTIHNpZ25hbCBpbiBvdXIgbGFiLgoKSG1tbW0gSSdkIGhh
dmUgdG8gdGhpbmsgaGFyZCBoZXJlOiB0aGUgR1BTRE8gZG9lcyBvZmZlciAxMCBNSHogZnJvbSBp
dHMKaW50ZXJuYWwgb3NjaWxsYXRvciB3aGVuIGl0J3Mgbm90IGxvY2tlZCwgYnV0IEkgdGhpbmsg
dGhlIFBQUyBpcyByZWFsbHkKb25seSBwcmVzZW50IHdpdGggR1BTIHRpbWUKCj4gQmVzaWRlcywg
SSB3YXMgcmVhbGx5IGhvcGluZyB0aGF0IG9uZSBVU1JQIHdvdWxkIHN5bmMgaXRzZWxmLgoKU291
bmRzIGZhaXI7IHRoZXJlJ3MgYW4gaW50ZXJuYWwgUFBTIHB1bHNlLCBJJ3ZlIG5ldmVyIHRyaWVk
IGl0LiBIYXZlCnlvdSB0cmllZCBzZXR0aW5nIHRoZSBwcHMgc291cmNlIHRvICJpbnRlcm5hbCIg
YW5kIHRoZW4gc2V0dGluZyBvbiBQUFM/CgpDaGVlcnMsCk1hcmN1cyB0aGUgeW91bmdlcgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
