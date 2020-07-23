Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B87C922B0C5
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 15:50:53 +0200 (CEST)
Received: from [::1] (port=33548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jybca-000533-9M; Thu, 23 Jul 2020 09:50:52 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:34921)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jybcV-0004tr-Jk
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 09:50:47 -0400
Received: by mail-qt1-f172.google.com with SMTP id b25so4419818qto.2
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 06:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=r9AmK/rAAjos0SNcxubprFa9aLw0m9WPAmRgVB33gck=;
 b=VtwuJ0iN2EohN+pjlzgXsG5Iqw6bA26XzpgSisiQn5QcvWLu+UU3oInT3dYU9zShkP
 Ursm0vWepOqRkM30RMsm8o5e/wKc8tnJB/1/YTuHynZ5CytGRCluXH7c8+QFs7JNdEFd
 PT20XxOOyHoZeGjXrMgLFa6vGRIePhB4yLKa7s8gCAPOkioGgfXTV2JRow2DLdDJQyHV
 7vSg15o1A1RalWJhUheAnFJC4sX1bFCjgLPEDfpx70fdE/Tp/p7Dnsqsa3f1UAXoLXDX
 h76auk4jTX73uQwTDegt775ABlFb0IOq4MmLu1IMylH/z3HKMQs0zzLHrGwanKNSkiYX
 CCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=r9AmK/rAAjos0SNcxubprFa9aLw0m9WPAmRgVB33gck=;
 b=eosr5Hy0VC2TKBBp9IjVxIjhW6H47ODdAOiz0fm5YMQ1ytGqC79CB7FNU84mQoHURJ
 GhYt/g1rYFNwTt+VXO0bHt1sW89BE78LbiSjl7uH9ZJaBlrk11dUEjti4DHNDifWAG7K
 fXy8NmOyJ/3jf/Jh+WT3O5Krgbjcm80adVEeTx1I445tDz1ElCLoUNTFPGlGbul2lca3
 HJbLP7dPIagF7A/sMeo/X2kGwye+ubIfIu8VQ9plvK5vFTZh5DBN0epEzruYIMrfNC9C
 DxuiKH08plY+A42oO75NGUCX69CR4iQsc9B9qP432OwXhG2IjJ5TQqTakM8HBeHQu6r1
 PNfQ==
X-Gm-Message-State: AOAM532KOobbWlimZMKcrPRLkO68VoItU5B2F52bVP0+2iMiFQIkYK7i
 W6b6Ka2fv/vmnkSmHdl5yrkIuCmyN3s=
X-Google-Smtp-Source: ABdhPJwOFev67cb5XJ1yLN6VxTeCdaqL9ZW0Nj3nDlSjvb7jxHn04TbJudJlMS3kxinHfnwgvIfGIQ==
X-Received: by 2002:ac8:6f55:: with SMTP id n21mr4271329qtv.10.1595512206834; 
 Thu, 23 Jul 2020 06:50:06 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id h81sm2807072qke.76.2020.07.23.06.50.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jul 2020 06:50:06 -0700 (PDT)
Message-ID: <5F199588.8020406@gmail.com>
Date: Thu, 23 Jul 2020 09:50:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
 <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
 <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
 <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
 <6007c12a-d58e-83cb-6b8d-519c9da42a0b@ettus.com>
In-Reply-To: <6007c12a-d58e-83cb-6b8d-519c9da42a0b@ettus.com>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMDcvMjMvMjAyMCAwNjoxMyBBTSwgTWFyY3VzIE3DvGxsZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6Cj4gSSBhbHNvIGp1c3QgcmVhbGl6ZWQgdGhhdCB5b3UgY2FuIGJlIHJlYWFhYWxseSBzaWxs
eS4gSWYgeW91IGhhdmUgYQo+IHRyYW5zaXN0b3IgYW5kIHR3byByZXNpc3RvcnMgdG8gc3BhcmUs
IHVzZSB0aGUgR1BJTyBmcm9udCBwYW5lbAo+IGNvbm5lY3RvciB0byBnZW5lcmF0ZSBhIGZhdXgt
UFBTIHB1bHNlLCBidWZmZXIgaXQgdXNpbmcgdGhlIHRyYW5zaXN0b3IsCj4gYW5kIGZlZWQgaXQg
YmFjayB0byB0aGUgYmFja3BhbmVsIFBQUyBpbnB1dC4uLiBtaWdodCBzYXZlIHlvdSB0aGUgZXh0
cmEKPiBkZXZpY2UsIGJ1dCBvZiBjb3Vyc2UgdGhlIFJQaSBzb2x1dGlvbiBpcyBzdGlsbCBlbGVn
YW50LCBhcyBpdCBhbGxvd3MKPiBmb3Igbm90LXF1aXRlLWJ1dC1hdC1sZWFzdC1jbG9zZS1pc2gg
TlRQIHN5bmNocm9uaWNpdHkuCj4KPiBDaGVlcnMsCj4gTWFyY3VzCj4KWW91IGRvbid0IG5lZWQg
YW55IGV4dGVybmFsIGhhcmR3YXJlIGF0IGFsbC4KCkIyeHgsIFgzeHgsIE4zeHggYWxsIGhhdmUg
YSBzeW50aGV0aWMgaW50ZXJuYWwgMVBQUyBpZiB0aGVyZSBpcyBubyBvdGhlciAKc291cmNlLgoK
VGhlIGNvZGUgZ2VuZXJhdGVkIGJ5IEdSQyBmb3IgdGhlICJ1bmtub3duIFBQUyBjYXNlIiBuZWVk
cyB0byBiZSAKcG9zdC1mYWN0byBtb2RpZmllZCBzbyB0aGF0IGluc3RlYWQgb2Ygc2V0dGluZyBh
IDAsIGl0IHNldHMgaXQgdG8gc3lzdGVtCiAgIHRpbWUgKG9yIHdoYXRldmVyIHlvdSBkZXNpcmUp
LiAgVGhpcyBpcyBzaW1wbGUgdG8gZG8uICBJdCByZWFsbHkgCndvdWxkIGJlIG5pY2UgaWYgZ3It
dWhkIGhhZCBhbiBvcHRpb24gdG8gZG8gdGhpcyBpbnN0ZWFkIG9mIHNldHRpbmcgdG8gCjAsIGJ1
dAogICBpdCBkb2Vzbid0LgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20K
