Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A03B6036D0
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 01:53:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1477A3812B6
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 19:53:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666137212; bh=BjP95rNE/XaxiVSPONhDdKv29rRh8zv9gPgE6vcetbc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Bap0X79Jr5j9PCBKCRcitAcpOTcA/uuHfIt5Gikw5lSqlxkYcb5MwJ5LvaTzf6bFq
	 PbJAtI+lAzGoMGZ2pw8JKqggoI+hbWdEu95/luRb/t2Yf7FPHuC3ApPLKp7aqAMiGZ
	 diFcwX5G23j6i9k+XnRuhVqGP+Xcj2cCuKfQXVMg9uYIz89BWLMJegSQUhVImTfJZG
	 U382dBTkZ+4mMvjV2eieThm2T/uNgcy4P6TkLYNIK/99xzimzWYvye5gzG6Bp/ik10
	 5uNrZf8dFWrn4Y1DtBfX3s03ilaVM9RYMuWetayREXY1TT06TsRWfdnu7QIeUKLkRn
	 I04dIaAvGqX/g==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 11BBC380D98
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 19:51:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kGjVXLDu";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id i9so10393123qvu.1
        for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 16:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6B9riiTHRht/nfYk9KuDougnoKey36W5WN2dSmCoF1o=;
        b=kGjVXLDuDMaou1yEGePFLVHi+6rr270IQBQQo9gdr4pY1z9zvfOjvZYacosaiqwYXw
         RDJZfotG4Xo4CWiOWoYDY/bGMYAhGizZle/Z0Z2hD5PuSA7w65nBwL8E03iAc6U084e/
         iMRtlFAIJQZ/mojrCyco/DucmAVSJkY+45mvG8lJ+jRTQLT33hQaufIArWqf+EoZCp8O
         mSuhT9zCF1PMpjWGXb87rttYQV5QqHkCrcqA7OhI9Ku7IDfztmm/gRa71h4USklUGF0m
         6Q/bKYzU1ZzZJMWgsINafoya+6D6KMvzYssldhueLmiSliscfFPIQ9vGuCjoP4BkPOG0
         Ohig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6B9riiTHRht/nfYk9KuDougnoKey36W5WN2dSmCoF1o=;
        b=nZ7Vxpfmiftr6RfzCIO7LhY0Y9IsOzp6XWf7wqgRIMykFf6EPTwEkvo9RYY7E86C0Y
         DtXZ0NpO/1GQkwdZxNapWdJcEeXdmlp5nDzfz3U/0brLt22xEBdaoYiN8Q1xWKkDn0Yb
         0iiYLHZciQIffooikDRK+ZS3glZ7/YBC/QyFEmnmizinlxZZu4uG34y3eTykKb6oCrVV
         CdJ07fEw4vXAOZwG2TZaVEYEqQYiiPx3sR64aPai7MjWJ2qGdOwffiyldk/h9YCkBNrV
         n4NowXiQpXgMhAjkNivugfjxqU/Tn08yRU7wQ1yeiThZ+HKR/98ilqIixWnZCFJMcWRZ
         qC8Q==
X-Gm-Message-State: ACrzQf3T8D5Ku81oq3i0SOF3bWpawcODTpP5VOkPd6CCYO+esiOasrZi
	AT5v4yClI7Mu3VNlh929HWMIc9+M2Zo=
X-Google-Smtp-Source: AMsMyM6rSM15NEjqtluZxOAH1IVX/MLd57Xd5bsHtlnlHrfhkeQuwiBvvponicMtdBVL/S/eKFs9hA==
X-Received: by 2002:ad4:5aed:0:b0:4b1:8a39:914a with SMTP id c13-20020ad45aed000000b004b18a39914amr4456354qvh.104.1666137114355;
        Tue, 18 Oct 2022 16:51:54 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id t24-20020a37ea18000000b006c73c3d288esm3451535qkj.131.2022.10.18.16.51.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 16:51:53 -0700 (PDT)
Message-ID: <7e0821ca-636a-88f6-eb38-c58cc7d408d4@gmail.com>
Date: Tue, 18 Oct 2022 19:51:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
Message-ID-Hash: PLAKLZRMDRNZHM5WLTAPWVJOOEXND6HK
X-Message-ID-Hash: PLAKLZRMDRNZHM5WLTAPWVJOOEXND6HK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PLAKLZRMDRNZHM5WLTAPWVJOOEXND6HK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0xMC0xOCAxOTo0MSwgSm9uYXRoYW4gUHJhdHQgd3JvdGU6DQo+IEhpDQo+ICAgV2Ug
YXJlIHRyeWluZyB0byB0YWxrIHRvIGFuIHgzMTAuIEFjY2VzcyB0byB0aGUgZGV2aWNlIGlzIGxp
bWl0ZWQgdG8gdGhlIGV0aGVybmV0IGNvbm5lY3Rpb24uDQo+IFRoZSBtZXNzYWdlIHdlIGdldCBi
YWNrIHdoZW4gc3RhcnRpbmcgYSBnbnVyYWRpbyBmbG93IGdyYXBoIGlzDQo+IFtFUlJPUl0gW1JG
Tk9DOjpHUkFQSF0gRXJyb3IgZHVyaW5nIGluaXRpYWxpemF0aW9uIG9mIGJsb2NrIDAvUmFkaW8j
MCENCj4gW0VSUk9SXSBbUkZOT0M6OkdSQVBIXSBDYXVnaHQgZXhjZXB0aW9uIHdoaWxlIGluaXRp
YWxpemluZyBncmFwaDogUnVudGltZUVycm9yOiBzZWxmX2NhbF9hZGNfY2FwdHVyZV9kZWxheTog
U2VsZiBjYWxpYnJhdGlvbiBmYWlsZWQuIENvbnZlcmdlbmNlIGVycm9yLg0KPg0KPiBUaGUgWDMx
MCBoYXMgT05FIFR3aW5SeCBSRiBEYXVnaHRlcmJvYXJkIGF0dGFjaGVkLg0KPg0KPiBDYW4gc29t
ZW9uZSBwbGVhc2UgaW5kaWNhdGUgd2hhdCB0aGUgZXJyb3IgbWVhbnMgYW5kIHN1Z2dlc3QgYSB3
b3JrYXJvdW5kPyBQbGVhc2UgaWdub3JlIGFueSBwcmVmaXggdGhhdCB3ZSBoYXZlIGFkZGVkDQo+
DQo+IHRoYW5rcyAtIEpQDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NCldoYXQgdmVyc2lvbiBvZiBVSEQgYXJlIHlvdSB1c2luZz/C
oCBXaGF0IHZlcnNpb24gb2YgR251IFJhZGlvPw0KDQpJJ3ZlIGJlZW4gdXNpbmcgYW4gWDMxMCB3
aXRoIFVIRCA0LjEuMC41IGFuZCBHUiB2ZXJzaW9uIDMuMTAuMS4xIHdpdGggDQp0d28gVHdpblJY
IGluc3RhbGxlZCwgd2l0aG91dCBhbnkgaXNzdWVzLsKgIEknbSB1c2luZw0KIMKgIHRoZSBmaXJz
dCBTRlAgcG9ydCAoU0ZQMCkgYnV0IGF0IDEwR2JpdC7CoMKgIEkndmUgcHJldmlvdXNseSB1c2Vk
IGl0IGF0IA0KMUdCaXQgd2l0aG91dCBhbnkgaXNzdWVzLg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
