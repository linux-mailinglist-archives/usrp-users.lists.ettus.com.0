Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C71439610AE
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 17:11:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6916738587A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 11:11:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724771503; bh=hjAdkDnZs0OBhLyGF4m2WiNrcSQALAKFeZ7HYY5IgqM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PCYF9d+M2bJJWdB56zIXtfumLlcv5Udqra3a9wBikbJszIgDUaKcgfAtbRicmYXO8
	 rmiOpAo1eru9zOJMKi0xBFUOlwrOYnio+0XcU5XjDeIPVbocrkH5uIZeeLu12Q4zWK
	 sQ2RmvULVnYF5xqDFLQRBiT4zUh8+YChK2FJMLT0DcrhxovTByvIqmwKxCIYaAyHb+
	 +sl1TXAO7SPtEceGjMHEwG/25jEl3phB4o2NWwblfR8GDqaKFsyefIOhsJaUq+rg+F
	 6ifbrY8QRDkg7uhcYy4zDfEq0dcNOJWhYNJRIyK7yG7qBqeK49y5OVV17k2F/NT1hL
	 +jA94/l1jjgRQ==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id B9798385551
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 11:10:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B12qYK6r";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6bf7b48d2feso30144556d6.0
        for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 08:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724771459; x=1725376259; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qLGEM7xsU7RqNCAouwXIBDq43fJg5RLFUMFEIk49XLw=;
        b=B12qYK6rYAKtdy/4Koy3++z2YgwteqnGL9bRfaeUKWtHVXW/vN7tsl8NceSD0FNGiO
         hG3jxTFpQTgGKFFLthITUoFnKDmsYZWLlpa1H909UFjLi4Xc6NWqfB2mqGRk+c35N3dh
         aJ3E4dqXM7BlW4akSTeQGzyw2WXDTBa3ezn2/+7jpa9LyqFaORr/oFEY7ZgXUUphCd2j
         4UiCAdvcMNbd5lj9hlW2DhJEODMlSvBZTeyPdMQPXje7L5IGqrG4QcGN/FW5VY2F3LeC
         Mhu7AeQwtgVZYB+wg06HgCagMV7zHEEpz2u9NYb3crbfwZ5/Z61TC+10WxEeki4cfkQt
         idXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724771459; x=1725376259;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qLGEM7xsU7RqNCAouwXIBDq43fJg5RLFUMFEIk49XLw=;
        b=ddGEwD9cSJUMLmb79dnE0K24UgaSompSZ1LFdJLkUwRmWbOu00SBlnrH8wmteUBD5D
         6944j3Xf0kqT1bfkX/n8rLh/VLB9IPQFsbTxtPdCw/1YsU8Ul0kW9wvf8yBv3tvu3KEB
         /I+Kk+5mwXy32Mq3d0KA+Z0RcrVXtRHzJJu250e2Qj5QaPySJiz7y0jqF3Kncdidxj6i
         DaikCFMMonNpe5+srBr6AaIoUcXBjSGDlUwyrKFlhoMqviS05Uh9X0VzaItm4RmZrpxV
         qSKPwT/7UwlosU/qZgOQjdjSNb7GG51ZJqfhwdIAgRRpgKfWrT8Y2dqWQCxSdc4gKNE0
         lShA==
X-Gm-Message-State: AOJu0YxxTTRy7AK9XljCmYh3RrckLdEEu0HSV3MYP7OGBZFDW5tclUFB
	Opt5ET2ObqsFPbkfnGZOoFK+34Hq4F1ToxVf6lISfWNY+b+WbutqHlF5xg==
X-Google-Smtp-Source: AGHT+IG/odOMGKBg+vcdGB3RALr5Hd9MmeQdUh9jT+AVNXJwaxswMOeyQZQefoSy1xBRJz6JIPXfKg==
X-Received: by 2002:a05:6214:4606:b0:6b0:7f0c:d30e with SMTP id 6a1803df08f44-6c32b695e95mr29667296d6.10.1724771458887;
        Tue, 27 Aug 2024 08:10:58 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c162d4d03bsm57209536d6.51.2024.08.27.08.10.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 08:10:58 -0700 (PDT)
Message-ID: <c5523231-6e48-4c4f-9ef2-ec6c4528028d@gmail.com>
Date: Tue, 27 Aug 2024 11:10:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <jLydidFkSinWpDD1Bf1E2bizPFyaZzCWNfYbSHtcKk@lists.ettus.com>
Message-ID-Hash: E464ICLUP2OPWDOYSWZH2EYGDKD6V7NX
X-Message-ID-Hash: E464ICLUP2OPWDOYSWZH2EYGDKD6V7NX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why does the self-calibration utility not work?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E464ICLUP2OPWDOYSWZH2EYGDKD6V7NX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDgvMjAyNCAwOToyNCwgSG9zc2VpbiB2aWEgVVNSUC11c2VycyB3cm90ZToNCj4NCj4g
WWVzLCB0aGVyZSBhcmUgNiBjYWxpYnJhdGlvbiBmaWxlcyAoLmNhbCkgdW5kZXIgfi8ubG9jYWwv
c2hhcmUvdWhkL2NhbCANCj4gZm9yIGJvdGggZGF1Z2h0ZXJib2FyZHMgKHR4X2RjLCB0eF9pcSwg
YW5kIHJ4X2lxKSB3aXRoIHNlcmlhbCBOby4gb2YgDQo+IGRhdWdodGVyYm9hcmRzIGluIHRoZSBm
aWxlIG5hbWVzLg0KPg0KPiBUaGFua3MgZm9yIHlvdXIgaW50ZXJlc3QhDQo+DQo+DQpTbywgd2hh
dCBMTyBvZmZzZXQgYXJlIHlvdSB1c2luZz/CoCAoWW91IG1lbnRpb25lZCBsb3ctSUYgbW9kZSks
IGFuZCB3aGF0IA0KaXMgdGhlIHJhdGlvIGJldHdlZW4geW91ciBzaW5nbGUtdG9uZSBjYXJyaWVy
LCBhbmQNCiDCoCB0aGUgTE8gbGVha2FnZT/CoCBEbyB5b3UgaGF2ZSBhIHNwZWN0cmFsIHBsb3Q/
DQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
