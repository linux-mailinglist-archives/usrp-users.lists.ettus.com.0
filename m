Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C714E2395
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 10:47:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 091B5384DCF
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 05:47:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="cC1DtfrC";
	dkim-atps=neutral
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B08B384575
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 05:46:26 -0400 (EDT)
Received: by mail-wr1-f45.google.com with SMTP id h23so19236244wrb.8
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 02:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=LfWS8wzQwTNr0I8dL2kL33aovPi8uKE7nnKNRB4SrKc=;
        b=cC1DtfrCHn44fGa6k/bK/7jZo1YZBG/eKrbAq+uYuwrJEs3/SAEy2jB5yPfzbGOb+X
         Ek89PhDxnyO6PokQI2+5dMNNlZHzbI5PjA0MgOaRcMrFaV4+E+JXtlrD9/oWspUKDYLV
         eZ4WOUml3ZurRWg0rONxCJy+WCRiobHpF/nZ/Byi/RO+t6m0AZr/RImmEKRe7mtddMgp
         MeY+Fv5L56/PO95q3/Ldw9ds7jXddzpC3pD048SKZQ+d5XkNYe7mwwaoiemth+8Hni3U
         +RTBCS8PlciR4zSAwLQt6LkC1skMkqN/Dud/YDFgggQIPQaNhRMsPRi373wb5TXSay4P
         RUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LfWS8wzQwTNr0I8dL2kL33aovPi8uKE7nnKNRB4SrKc=;
        b=BNu1KsRBtHkh4Ca5cfyGXTOVPK7O4ztMOldRBTepO1FaFj46mbbwj4mazMA55uv9VM
         vNq37XZRojrLvhEoC49U0MpvFb1GyF4nse9JwNJQUQPMLayqA0ailrcvUfygZae3go2E
         FwFgUsmtbEibKXYtRoJleCRKNz35bv0ml++uszXAGUm3aXxapdSHvcmyEzlASDZFx4Zz
         LNj512Q7G/9ItMjmA61TQagiLWYaOYfEuAkGB+suRvlf9AriGSeB2XG8LvBwvwmOvMyM
         Mqewo97BLOBour55P8bqeFuTKpJoxkHZSpJ9KAEUHnAIXoPk3gIS8dkPccp8SkMGfnt7
         XRrg==
X-Gm-Message-State: AOAM5325r5ArRoudUAtuBNslrJNNr0A95dLJZcjhTa08gNCZ3rwsJInn
	WHskysNmR/4HjizDZWSxyaBO8xUSvIzo0jYj
X-Google-Smtp-Source: ABdhPJzTvdrfiWxQ82yO50JVzK7MBoJ97NoEF8T671/pYjJbcurkocpwLfbt7WHla/VeyBo3qcry4w==
X-Received: by 2002:a5d:4a0f:0:b0:1ed:d377:288a with SMTP id m15-20020a5d4a0f000000b001edd377288amr17124951wrq.3.1647855984776;
        Mon, 21 Mar 2022 02:46:24 -0700 (PDT)
Received: from [192.168.178.39] ([87.123.247.135])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0037bb8df81a2sm20253159wmp.13.2022.03.21.02.46.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 02:46:24 -0700 (PDT)
Message-ID: <8d8335b8-bf02-af1e-3493-b0f4063409c4@ettus.com>
Date: Mon, 21 Mar 2022 10:46:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
Message-ID-Hash: QYDXEAMTNTGSOKF3FVUTZBD2DENOPENM
X-Message-ID-Hash: QYDXEAMTNTGSOKF3FVUTZBD2DENOPENM
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Default CHDR_W is 64 for a RFNOC blocks, How can increased samples buffer in RFNOC block to 4096...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYDXEAMTNTGSOKF3FVUTZBD2DENOPENM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkhDQoNCj4gSW4gR251cmFkaW8gd2hlbiB3ZSB3YW50IHRvIHdvcmsgd2l0aCBzYW1wbGVzIGJ1
ZmZlciBzYW1wbGVzIGlzIDQwOTYgLi4uDQoNCk5vLCBpdCdzIG5vdCEgR05VIFJhZGlvIGhhcyBh
IHZhcmlhYmxlIHdvcmtsb2FkIGxlbmd0aCBhcHByb2FjaCwgc28geW91ICoqbXVzdCBub3QqKiAN
CmFzc3VtZSBhbnkgZml4ZWQgbGVuZ3RoIGJ1ZmZlci4gRXNwZWNpYWxseSBub3QgNDA5Ni4NCg0K
PiBidXQgZm9yIFJGTk9DIHdlIGZhY2VkwqAzMiBzYW1wbGVzLi4uLi4uLi4NCj4gSG93IGNhbiBp
bmNyZWFzZWQgc2FtcGxlc8KgYnVmZmVyIGluIFJGTk9DIGJsb2NrIHRvIDQwOTYuLi4/DQoNCllv
dSBkb24ndCENCg0KQmVzdCByZWdhcmRzLA0KDQpNYXJjdXMNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
