Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA0463150A
	for <lists+usrp-users@lfdr.de>; Sun, 20 Nov 2022 16:51:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D669B380D8C
	for <lists+usrp-users@lfdr.de>; Sun, 20 Nov 2022 10:51:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668959466; bh=qBEdL6ndyai9jIzKZoCOCCKRVtSMzkZ0XlQ2tG949lI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ha7FTnNO2WltTUnxRAE8QhPCoohrt2Iu3PIaS4iEWFIJ6VRekaPxr/0eMfYbkB+Bd
	 39hgxPDtD77TGd6+wVQl6OvaqUbc0EroaKUHmYY+VVpU/dRcwj6Y9EOi4rm/f5Ys4T
	 McYOgsFZk5nzRztLZqkXR6lybDaRqVgsn3CwlhlQo5NTeXLK8cjUYd4rTwEmhEgzOs
	 aV/UoKzCTpMc6b6NTruQbm/CSYIzyf3cBiJ3i1UFZkfDmD2HOSl4LkVpfAUZ8tC0Nu
	 dRzo2tPygvhYYq13Z4jHJuYxtJ6KYY4XR60mckBsfILFVJoes1mbCbYW/KfcqZygzU
	 es2GH1PyTeJAA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id A1B573841A5
	for <usrp-users@lists.ettus.com>; Sun, 20 Nov 2022 10:50:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FFBpPDYg";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id w4so6051457qts.0
        for <usrp-users@lists.ettus.com>; Sun, 20 Nov 2022 07:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4SJijPbveoaSrbUbkOksrIWup2tl49eYq+3ALEW8Oo=;
        b=FFBpPDYgMshShOq8dS/TpKsbV/hqFH/Iq6qIBmpL0XunrwiFMHY3pHIMwrLeRyuqIM
         wSYYV9b0yr3r9k39UjI+raihNimP6ccmj+EdvLlAZV1qz+K34951OyIZY+B0xvJ6kJbw
         fK9je9h6PyOoFS+NWrneIoLdbHW9+XF2/m9HAOqEhXd9l+HrM/ZoMshUnS7axw5QCqn/
         BqCCoLbm1ECu4C+k7tyA+yzfz1zc6PSvGtAew9gn9GFMjShjmD+X6Np3QvnTSDJKzMPm
         Qyt44Dp+sH6YMBstjKeyLHeTTey1uVefH+5AN0OZFQOBtHuQzIWEBMjfRY91xAhcHIbj
         Qq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f4SJijPbveoaSrbUbkOksrIWup2tl49eYq+3ALEW8Oo=;
        b=7u7eNRR3Xo9b2p2Xj0AfKNcAUU3AFHj4RaypxHiJLnislLDVRsvjyjfP2uTyXphSLS
         bHbwODIrfwcoj6Qn15P/FIjCbNvZ3xQ4LP77y/ck5s6QZbfYUgmsK/ld41NOidqxfVrz
         Vo4groHcBHAsd/UHio0BFyK+CT+Fje7kuA/vBW2mfmgXPdvaPKEK9vHa/ckKybOeFigL
         vkAjYfb0aCrTceDkSykCNtV8LXhyuHFcqtI/H4ti8XzAaGironOvuGVZjcJUWdpfyCQu
         wMQx/zryMCmSTwJ4HTS5NA0gYOfIGi1TuJLcUp7fpclRZw8OGhIJSgBO2VE9JngBCLIk
         vLJQ==
X-Gm-Message-State: ANoB5plTUj+CEWPNnhF0buU+27N6r2EE1YrRdn5zeFUEGV6EC+CthDY+
	5S36l79x2a058LNx2cS5IVmbiv9Bz1Q=
X-Google-Smtp-Source: AA0mqf6EGZRxNci7Xmts/s4sfLswuM7Q2F8bc2cl/UdIfLBX7SfCj38RAnzrt2k5xTRKnMPd6C8hMg==
X-Received: by 2002:ac8:4e2a:0:b0:399:d933:cd62 with SMTP id d10-20020ac84e2a000000b00399d933cd62mr14502976qtw.169.1668959413832;
        Sun, 20 Nov 2022 07:50:13 -0800 (PST)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id b28-20020a05620a127c00b006f9c2be0b4bsm6296565qkl.135.2022.11.20.07.50.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Nov 2022 07:50:13 -0800 (PST)
Message-ID: <cf07bcd5-e88d-9a92-c829-40ea2bff6cf0@gmail.com>
Date: Sun, 20 Nov 2022 10:50:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6Q1xV2xZqtcJcLDlSOtOOjWt3x19BJbLqQ73Qoh5w@lists.ettus.com>
Message-ID-Hash: PTBZOHF7ABXZS5U3ZOCJKPS3NFW3GX6X
X-Message-ID-Hash: PTBZOHF7ABXZS5U3ZOCJKPS3NFW3GX6X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Jackson Labs LC_XO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PTBZOHF7ABXZS5U3ZOCJKPS3NFW3GX6X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMTEvMjAyMiAwNjoyMiwgc2lkZHN1YnJhQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gV291
bGQgdGhlIG1vZGlmaWVkIGZpcm13YXJlIHByZXNlbnQgYW55IHNlcmlvdXMgZGlmZmVyZW5jZXMg
dGhhdCANCj4gcHJldmVudCBpdCBmcm9tIGJlaW5nIHVzZWQgd2l0aCBVU1JQcy9VSEQ/DQo+DQo+
DQpJIGNhbid0IGdpdmUgeW91IGEgcGVyZmVjdGx5IHJlbGlhYmxlIGFuc3dlci7CoCBJJ3ZlIG5l
dmVyIHVzZWQgYW55dGhpbmcgDQpvdGhlciB0aGFuIHRoZSBFdHR1cy1zdXBwbGllZCBMQ19YTy4N
Cg0KT25lIG9mIHRoZSBtb2RzIEknbSBhd2FyZSBvZiBpcyB0aGF0IHRoZSBKYWNrc29uIExhYnMg
R1BTRE9zIGdlbmVyYWxseSANCmRvbid0IHN0YXJ0IHByb2R1Y2luZyB0aGVpciAxME1IeiBhbmQg
MVBQUyBzaWduYWxzDQogwqAgdW50aWwgdGhleSBoYXZlIEdQUyBsb2NrLCBhbmQgdGhlIG1vZGlm
aWVkIG9uZXMgcHJvZHVjZSB0aGVtIGZyb20gDQpzdGFydC11cC4NCg0KT3RoZXIgZGlmZmVyZW5j
ZXMgbWF5IGJlIHRoaW5ncyBsaWtlIHdoZXRoZXIgdGhleSBwcm9kdWNlIE5NRUEgb3IgDQpwcm9w
cmlldGFyeSBvdXRwdXQgc3RyaW5ncyBieSBkZWZhdWx0LCBldGMuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
