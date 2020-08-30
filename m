Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D3E256F44
	for <lists+usrp-users@lfdr.de>; Sun, 30 Aug 2020 18:05:32 +0200 (CEST)
Received: from [::1] (port=47128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCPpj-0003rJ-Ss; Sun, 30 Aug 2020 12:05:31 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:33229)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kCPpg-0003ju-F3
 for usrp-users@lists.ettus.com; Sun, 30 Aug 2020 12:05:28 -0400
Received: by mail-qk1-f177.google.com with SMTP id p4so4154930qkf.0
 for <usrp-users@lists.ettus.com>; Sun, 30 Aug 2020 09:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=N7PfavHNLbulpcyIPQRirwmaGGuEI+GmXS5T5jPXaVg=;
 b=avdB06bBnuj3S2G7KyPwcsfUIdBXjTSvJt2eK/eGn1eaegd8rYFOrAi9kaiXWCI+iA
 6aspKn0bRq/1z8xfO96QU6HbV8NwGlLDldkm5LeqREU57ZoSd+m8zb9C31OC6lIEdSRc
 otuAzt3HBpTdwC4TYoMo974/MJE7GjHXcOCJIl8C3382fgr/FIm+nw/9/OLv+CDHnTs/
 L75IVxYAnlG98Mh2rVru+q8mKaKC3rZ5WEdcMELwgSK7oD6TVK9XLW1p12v+xT1faPr/
 RZjg/qURsu9hNmMtpoDUhMVCRplY2zPjgH5xNaFIAIv++uy8gi+w+r2Mf58+eKmoFlAF
 1oEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=N7PfavHNLbulpcyIPQRirwmaGGuEI+GmXS5T5jPXaVg=;
 b=dCo/THzzLFqvl3ore/bqfksg9SZBipSNg9JjTG6BsoaZMXir19fJ+Z4b+xs4ClWRdT
 WbyWlkYnsLTIeCmonurj7p2e38POTckMJjrvaKid2vkxo318C+CHxLlPkLwGMgcwkCMX
 1Tx08l2bHXpYs6mOI6U/Hu02xnNjge29irkVwVUxSHjI/yzawnzrIXS5OXRiD2DuwnRU
 nvVZUxi/rVW36VBe8IUdHltPkKddbvo9vGea1LAZYHYMjXfWPpuib8Y6U7cnuab8bkAF
 K+Xc4gn0Uf+ElzFmT+V9XQ1cqSK8z+3Q5BXLIzZxzPwjTt8Xn0Y3cAISOUuqt4amjDOu
 oWFA==
X-Gm-Message-State: AOAM531c8q4JA0yloIyg1h/so8mboZB6NbIh5ZV+ZUeEe+nT4RlvNFJY
 2vCudpuR8wRhlrTDdEuaPSgUoQ72bEQ=
X-Google-Smtp-Source: ABdhPJz3SVVcGMrwaY1HFLLTcdClq+fhzxLgAvmEReHTf91j1e7GcZyRNU0qyQbXJKChJG7aPvch1Q==
X-Received: by 2002:a37:a953:: with SMTP id s80mr1623526qke.152.1598803487667; 
 Sun, 30 Aug 2020 09:04:47 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g184sm6179564qkd.51.2020.08.30.09.04.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 30 Aug 2020 09:04:47 -0700 (PDT)
Message-ID: <5F4BCE1E.5000102@gmail.com>
Date: Sun, 30 Aug 2020 12:04:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <c81b36ff-236a-9820-04ae-015b7cc99f89@126.com>
In-Reply-To: <c81b36ff-236a-9820-04ae-015b7cc99f89@126.com>
Subject: Re: [USRP-users] how to build firmware locally
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

T24gMDgvMzAvMjAyMCAwMjo0MiBBTSwg5byg5b+g5bGxIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+
IFdoZW4gYnVpbGRpbmcgZmlsZXN5c3RlbSBmb3IgTjMxMCB1c2luZyB0aGUgZmxvd3dpbmcgY29t
bWFuZCBsaW5lCj4gYWNjb3JkaW5nIGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL2V0
dHVzLWRvY2tlci90cmVlL21hc3Rlci9vZS1idWlsZC4KPgo+ICAgICAgLi9tZXRhLWV0dHVzL2Nv
bnRyaWIvYnVpbGRfaW1nc19wYWNrYWdlLnNoIG4zeHggdjMuMTUuMC4wCj4KPiBJdCB3b3VsZCBk
b3dubG9hZCB0aGUgZmxvd3dpbmcgZmlybXdhcmUgaW1hZ2UgZmlsZXM6Cj4KPiAgICAgICAgICBu
M3h4X24zMDBfZnBnYV9kZWZhdWx0Cj4gICAgICAgICAgbjN4eF9uMzEwX2ZwZ2FfZGVmYXVsdAo+
ICAgICAgICAgIG4zeHhfbjMyMF9mcGdhX2RlZmF1bHQKPiAgICAgICAgICBuM3h4X24zMTBfY3Bs
ZF9kZWZhdWx0Cj4gICAgICAgICAgbjN4eF9uMzIwX2NwbGRfZGVmYXVsdAo+Cj4gU28sIG15IHF1
ZXN0aW9uIGlzIDoKPgo+ICAgICAgMS4gTWF5IEkgYnVpbHQgdGhlbSBsb2NhbGx5Cj4gICAgICAy
LiBJZiBJIGNhbiwgd2hlcmUgYXJlIHRoZSBzb3VyY2UgY29kcyBhbmQgLi4uCj4gICAgICAzLiBI
b3cgdG8gYnVpbGQgdGhlbQo+ClRoaXMgbWF5IGJlIG9mIHNvbWUgaGVscDoKCmh0dHBzOi8vZmls
ZXMuZXR0dXMuY29tL21hbnVhbC9tZF91c3JwM19idWlsZF9pbnN0cnVjdGlvbnMuaHRtbAoKWW91
J2xsIG5lZWQgdGhlIGFwcHJvcHJpYXRlIFZpdmFkbyB0b29sY2hhaW4uCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
