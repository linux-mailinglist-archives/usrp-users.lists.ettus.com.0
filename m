Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8334991CFA5
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jun 2024 01:18:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66C43380D98
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2024 19:18:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719703112; bh=jPCYQHHhuMeTXHf43n3CMeP2I2NPjXTP6zmnc05aEjw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KtRSistvW8frN2O938zCVYt4aaIV/050o7mWS0ijBaDFkkSAOBuCaL7YiQE/aFzW8
	 Vvs7NcBulu8nifJ0ia/zL+cFFez1LZxx5i/oio47MIJVriYUEjdceefQ4cbSkMJJyH
	 pAYM24zKxdltQE8EdOeUYuk/zttXip8aN6CqsO3+snsuuRhwdN7/gDRPN0Bml9dXmM
	 x4jXLFJ5y0tQV3AGkq1EuHe0pD9ibV9f4JaT62/twPcRTqBSiOddGFBA4w8ahPlyur
	 oKOM95qt69cTk4U1ZcSeOk/Z1JIzQJUjEzNM5E8V3qVdGLqrO7MPCl2+SVpCupcvtT
	 C9vskwIVR6TvQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C619385060
	for <usrp-users@lists.ettus.com>; Sat, 29 Jun 2024 19:17:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cqmb3J0+";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-44636bd6e22so13829321cf.2
        for <usrp-users@lists.ettus.com>; Sat, 29 Jun 2024 16:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719703064; x=1720307864; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVeV6YJMS2kkuWzgdeBfXBxwD9kSBuJbZJea4I+1/Ik=;
        b=Cqmb3J0+fEU63E4ve0+s/A6NWLjwvjWGMmtcCMQv+9nftByQ8+KGyYXK3BKDRGZpJ1
         IQU3T3FOMWNaNsRZ8hDKGSpoYu00Wr7EK/gJs4KRlz8cV12cHpduacX3Nr5HLde65osp
         I1unsD0WMbr1KKbw9yK+PYw2cUM9+sTdgT5S4LeScuHUBkVOtgZ6RIOZJfbPugRKHvpZ
         AGfbkB/J4cN8sKYa+rWS0I0fH9soB1+BWfpl8S4ZKPELOZWyAfIdC4x3Qp8hdmD+hJFF
         eREORK2Dj/SDCYUsiSla12Wxs9QyclrWqWnncScziuuXKKq7IQaqI4mjSr7wqCX5iowa
         6wGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719703064; x=1720307864;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVeV6YJMS2kkuWzgdeBfXBxwD9kSBuJbZJea4I+1/Ik=;
        b=qfeiMrn7+1z/ig4R+WsgZlAZ+UilTYDmS/xIMnmHfG17BTPIn3mWeoERQyMkDM5gAm
         PCuuA/A77baea0p+7moYj3EjPVFgNvYf5ZhyG/wg20g1Z0TxVA+l/78g8rnjEa4pgiGG
         yttWqLiaoK1r+hKa8q7ohKZDftSKRtRKuFO86nEF0QgE1Nxs+oDRJp5kLDycIFQCEbPn
         jfmEQOPHOB8LOWuhNXHtqurjomao1+Kr9d6y9jjDbYqt/2YHqbaUUeIBLBr1785H6rEf
         EJbvnTccK+w2Ea8/Yc6khDrrSyO/NVQ34/M+x9uOSnsDf2prwmkymZpSUj1efr6iaIAc
         aJtA==
X-Gm-Message-State: AOJu0YzNYASbVaAex010R5QUO2Y0pCv2EU0GpZBYGPTT5v/pIcTDttdQ
	D9KiWsOVaEYHoNyktLbfh1mczafLzACLNqPhrDgrlhtWm78DiRmfLfK3SQ==
X-Google-Smtp-Source: AGHT+IEHkKZLo68AJ44uit1/fRVPsRe3C5aScFyRDcelbdmmAdSpBsT7cv0/NK5XK5JL6n8OgEn0sw==
X-Received: by 2002:ac8:7f13:0:b0:440:25d4:805e with SMTP id d75a77b69052e-44662e6516emr29164871cf.65.1719703063722;
        Sat, 29 Jun 2024 16:17:43 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-446513dba45sm18832671cf.6.2024.06.29.16.17.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jun 2024 16:17:43 -0700 (PDT)
Message-ID: <132c0932-c4e9-4b62-ba90-214606234af9@gmail.com>
Date: Sat, 29 Jun 2024 19:17:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zoh98YZeklyVVE00XzMpXaBtZcgFW5abpgt3kEVTd0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <zoh98YZeklyVVE00XzMpXaBtZcgFW5abpgt3kEVTd0@lists.ettus.com>
Message-ID-Hash: YTTBIGZHCXBJAKEKFGNEDOP4HX5KBJSH
X-Message-ID-Hash: YTTBIGZHCXBJAKEKFGNEDOP4HX5KBJSH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot find N210 FPGA images in Ubuntu uhd installation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTTBIGZHCXBJAKEKFGNEDOP4HX5KBJSH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDYvMjAyNCAxODowNSwgaG9vc2FjMTlAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+DQo+
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20NCkl0IGxvb2tzIGxpa2UgdW5kZXIgVWJ1bnR1IDI0LjA0LCBzb21lIG9mIFVIRCdzIGZp
bGVzIGhhdmUgbW92ZWQgdG8gDQovdXNyL2xpYmV4ZWMvdWhkL3V0aWxzLg0KDQpBbHNvLCB5b3Ug
bmVlZCB0byBzZXQgeW91cg0KDQpVSERfSU1BR0VTX0RJUg0KDQpFbnZpcm9ubWVudCB2YXJpYWJs
ZSB0byBwb2ludCBhdCB3aGVyZSB5b3Ugd2FudCB5b3VyIGltYWdlIGZpbGVzIA0Ka2VwdC0tdGhp
cyBpcyB1c2VkIGJ5IGJvdGggInVoZF9pbWFnZXNfZG93bmxvYWRlciIgYW5kDQogwqAgInVoZF9p
bWFnZXNfbG9hZGVyIiB0byBmaW5kIHdoZXJlIHRoZSBpbWFnZXMgYXJlLg0KDQpJZiB5b3UgZG9u
J3Qga25vdyB3aGVyZSB0byBzZXQgeW91ciBlbnZpcm9ubWVudCB2YXJpYWJsZXMsIG5vciB3aGF0
IGFuIA0KZW52aXJvbm1lbnQgdmFyaWFibGUgaXMsIHRoZW4gSSBzdWdnZXN0IGRvaW5nDQogwqAg
YSBsaXR0bGUgYml0IG9mICJsaXZpbmcgb24gTGludXggYXMgYSBkZXZlbG9wZXIgb3IgdGVjaG5p
Y2FsIHVzZXIiIA0KYmFja2dyb3VuZCBlZHVjYXRpb24sIHNpbmNlIHRoaXMgYWJzb2x1dGVseSBp
c24ndA0KIMKgIHRoZSBmb3J1bSB0byBsZWFybiBiYXNpYyAibGl2aW5nIG9uIExpbnV4IiBzdHVm
Zi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
