Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F97C46B217
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 06:05:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CE1B384741
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 00:05:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AqMKAhwc";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id BB592384734
	for <usrp-users@lists.ettus.com>; Tue,  7 Dec 2021 00:04:31 -0500 (EST)
Received: by mail-qk1-f171.google.com with SMTP id 132so13544771qkj.11
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 21:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=sRvyc/pbYuFf8HUlWoBbNz6lkUKgjQPtv0UDVke76Rw=;
        b=AqMKAhwcdsM4jrEwm0AqOKk7XCdg1LpEu3c/Lcwhb0Ea81vnZe3psrt4SGjhl8hkeN
         AZr5OxeawkdAbuPtyWohnBR7ycjsW5tVaPhTjrWJj4CXZStM+z0zjpWu4ZlKsSn6nbmH
         ZeVhK9kPA+TPEnz8Kk2WU5ZOpfdCt91CBAagi/5RN4tPkIIcFQW3UNGxNX08GPEXEtHc
         r3aN79Wq+liUo0xTBAqSnbYAXrGBbchf7GA+Q/82YhSiH8AV+a+H0JSxfQonPaDItzb3
         61h8t3fDQs7ygSZ7eXn48x5ra1EWtGRTFVokGlH7EpSocZi4zIBplax9kd7f4t+Zno9j
         6vfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sRvyc/pbYuFf8HUlWoBbNz6lkUKgjQPtv0UDVke76Rw=;
        b=JLIdDeuECF0ZT1GJDMRCJmlc41NH5UpyCmCxZz5Kbss/6CU9QVUFLeJ56n8C5nHUNM
         R+kpFSykxKPp09VJ+tZJtYJH0PoKP4X1K/bhlV2wXi09nNBsELqolAHARJjgjStFq/V3
         Z9uAlxwQyLmrpUB79ygh4XseDmvWrY7TF3z1aYjnwguGHdR77mn9XEl8QjhfPGwhEdnR
         4Sfka6+Ma47PkQKEuKxhyeb51fvZqsPBC1bA74fzNGg3T77obPtArbITvZ3xjrLJfSbQ
         8wL8qytLuo2sohzOKfOPD5812eCj4cqaPr8JR6nBlWiBTwlrfUIcBR952xcpPkx7ycvp
         9eSA==
X-Gm-Message-State: AOAM531J4AehMF6LLRbzMt+H7sNonoiJJZ/B0U6V8duhZNSFP0hKzu0f
	SmMgbf7Lvi3tpZnFU5V3INut64gk2zI=
X-Google-Smtp-Source: ABdhPJwGsT3P/WwN3gWS+8iJVaiYJ6jRXG/Hpn2rNDXTAytc5AQI0Ir+CaTvQ2+RT0BiKRM8nmwI+Q==
X-Received: by 2002:a05:620a:e0e:: with SMTP id y14mr37001746qkm.760.1638853470867;
        Mon, 06 Dec 2021 21:04:30 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id k1sm3375301qkh.53.2021.12.06.21.04.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 21:04:30 -0800 (PST)
Message-ID: <a61198a7-b46c-1b42-ab85-6b4f8ecf7124@gmail.com>
Date: Tue, 7 Dec 2021 00:04:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <K8v41G78gIKh3zMZadGJ1xGBmSebKeSJLhRpyEUL0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <K8v41G78gIKh3zMZadGJ1xGBmSebKeSJLhRpyEUL0@lists.ettus.com>
Message-ID-Hash: MZM7TEQQ3WLXXHC2QZVIGV2KXOCPUWUO
X-Message-ID-Hash: MZM7TEQQ3WLXXHC2QZVIGV2KXOCPUWUO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MZM7TEQQ3WLXXHC2QZVIGV2KXOCPUWUO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0wNiAyMzo1NCwgY29uZGljaW9uam9obmV4ZWtpZWxAZ21haWwuY29tIHdyb3Rl
Og0KPg0KPiBNYXkgaSBrbm93IHdoYXQgaXMg4oCcZngz4oCdPw0KPg0KPg0KVGhlIEZYMyBjaGlw
IG9uIHRoZSBib2FyZCBwcm92aWRlcyB0aGUgVVNCMyBpbnRlcmZhY2UgYW5kIG90aGVyIA0KbWlj
cm9jb250cm9sbGVyIGZ1bmN0aW9ucyB0aGF0IGFyZW4ndCBwYXJ0IG9mIHRoZSBGUEdBLg0KDQpG
WDNzIGFyZSB1c2VkIGluIGEgbGFyZ2UgbnVtYmVyIG9mIFVTQi0zLjAtYmFzZWQgcHJvZHVjdHMu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
