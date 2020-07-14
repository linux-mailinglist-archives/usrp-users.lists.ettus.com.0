Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2583421F328
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 15:55:56 +0200 (CEST)
Received: from [::1] (port=50192 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvLPU-0004XJ-QY; Tue, 14 Jul 2020 09:55:52 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:45635)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jvLPR-0004GT-9O
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 09:55:49 -0400
Received: by mail-qk1-f171.google.com with SMTP id c139so15575836qkg.12
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 06:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Ner1nVE2XXPm/AAyUUewuW6qpvLVJqEjdnGawh6wC50=;
 b=EooKMk/UzVQkIGW6IvQLs1vfbip9SLE40QvkskMnd9c1XXYUGuLU/ZCJDTjDE6A1eC
 5+PJgYQYD8QDoLChR+N5BaXWqIs+rwEit6ty5w1EL/MxOMNPNaxeHBnf3ffXDDLtL2Fa
 SDhxhmOZ4wxMtB4rPAU7nMKUkp9zjfScvxpf06v3wxkFgCaUWNXmYtb3kh+HXiqDfCHt
 KqpdygsLe/LE65mPkCWNYpunzpol6OAgmpbbPp5ku1JIS19ogGrme7vhJvgC3pICAWFv
 rhktuHWjjoXanCoR7JHgXmFA21byuCwVElt49SaN2r78Zk6mAM9JuN0pF+g/4n98q1nO
 8q8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Ner1nVE2XXPm/AAyUUewuW6qpvLVJqEjdnGawh6wC50=;
 b=s0sfv5JFfJvfWRn2uk2SvHypsW6MX9Nv73f97U1B9D6Tr8dRbKCQKv7AtoQQymu+Hg
 yQCCTxxKR0/5WwB7MissQLDtNvUx7BvzIp5+ElvYkeRwjHyh0+McUGAypdYrxXB4XCo7
 YcK2x9pDDtbxOWMm/E6qM3MtqsnUJeEBiTU6aTXDzP52ti5kaEhmQqXAGk/0Pm3POn9E
 sq/fGhCeGJBTZjDAo8VOFAJrjNqj+yiOLITLfhpFEHzSk6uQB3/kygsOUvMIgq3PfbTk
 4AZ3HhJ5ZPCq4CfOcEdvpja9990dM7tU7qcTpBLvPTkUGd78Q1bmF/1O6+xiRwI37LAO
 vDRQ==
X-Gm-Message-State: AOAM531V2n+W2tIEUSn/Z/qQuAtzND+yZSk2HGO0YWyiW2fTxm5t4WID
 cDHrjeOA/DEqlcY1vGz0xJbpaJO5
X-Google-Smtp-Source: ABdhPJwNeofo808IhuATqBJ7ldPS/iycD775DoxbbnOOiC3A6OtokAWI1Haytudks17K9wGVz08JXQ==
X-Received: by 2002:a37:bcb:: with SMTP id 194mr4814790qkl.103.1594734908318; 
 Tue, 14 Jul 2020 06:55:08 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 z68sm22213444qke.113.2020.07.14.06.55.07
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:55:07 -0700 (PDT)
Message-ID: <5F0DB93B.8090100@gmail.com>
Date: Tue, 14 Jul 2020 09:55:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANzM3hxAfQDHM4xfJiWO9mdaRUbOP3c-+sksV85wgD=ZwzX6bw@mail.gmail.com>
 <071c37d5-a9d9-1332-de7e-14c64660f329@ettus.com>
In-Reply-To: <071c37d5-a9d9-1332-de7e-14c64660f329@ettus.com>
Subject: Re: [USRP-users] USRP X310
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

T24gMDcvMTQvMjAyMCAwNTo1MyBBTSwgTWFyY3VzIE3DvGxsZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6Cj4gSGkgQXJhc2gsCj4KPiBUaGUgaW5wdXQgcG93ZXIgaXMgbm90IGRlZmluZWQgYnkgdGhl
IG1vdGhlcmJvYXJkIChYMzEwKSB5b3UncmUgdXNpbmcsCj4gYnV0IGJ5IHRoZSBhbmFsb2cgZnJv
bnRlbmQgZGF1Z2h0ZXJib2FyZCAobGlrZSBUd2luUlgsIFVCWC0xNjAsIFNCWCzigKYpCj4geW91
J3ZlIHBsdWdnZWQgaW4gdG8gdGhlc2UuCj4KRm9yIGV4YW1wbGUsIHNlZSB0aGUgIkNhcmUgYW5k
IEhhbmRsaW5nIiBmb3IgdGhlIFNCWCBoZXJlOgoKaHR0cHM6Ly9rYi5ldHR1cy5jb20vU0JYX0dl
dHRpbmdfU3RhcnRlZF9HdWlkZXMjUHJvcGVyX0NhcmVfYW5kX0hhbmRsaW5nCgpBbmQgZm9yIHRo
ZSBUd2luUngKCmh0dHBzOi8va2IuZXR0dXMuY29tL1R3aW5SWF9HZXR0aW5nX1N0YXJ0ZWRfR3Vp
ZGVzI1Byb3Blcl9DYXJlX2FuZF9IYW5kbGluZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
