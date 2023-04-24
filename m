Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DD56ED4FE
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 21:02:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D113383A4E
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 15:02:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682362951; bh=e6KEYvU9XqkjZAUGhoTOLI38S+KI/UVOWtzBKiFcLPs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Dj2gFy2XtxLmSw84GO4Re1LQbKvj+8J5ExnCDzsQQsjmTKvbXHij4lPPB+KyRgzzL
	 qwtTZBimbnq4id12bMQyytCZxd6YdpkJXvfyeHaJJxeg9NhiSac0H6bRx9OD8x6L0C
	 a7o+wNgMjtYptZuelOG1hyCYTJkHGHgdcmdKNdggRwTs134QyDkyMQi1uV7UjNEuY3
	 gdEf0xCUPaC00yQ8wLrVLysKnd+KQCkv21GBguFuXCSt5QkI92rqMWtBoYwvRkE1FX
	 KIu1Sv0MfkXiKLLa3XDtSnYenoIQVFO37m9zFq9RFKqa7aO4koNbKiRPo7Hwu7bh1k
	 gEU8CxNDObuzA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 52832380C04
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 15:01:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y+d+o9tf";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-3eef63eff7eso22583631cf.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 12:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682362913; x=1684954913;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+H3xcoEmP9WSt8HhdZGzDGztHmKVKZYmqd+IJIIWLx0=;
        b=Y+d+o9tfJh5wItLg+940ptasv0+L/hr/AnO0iFLRZMU+z9ZLmqMr1IxL3hgCB6dEkw
         +bke1yoi09JXwk3G4dxDUljR23l+L4xypLiz3gwXf4G1l9LEb66lyD0qAIxCw3oWdOL6
         m4CxsgT1OnDEGof02afnOgUisvhlzH0WFEqoz39zkEfZg8wxkTrltmwK1bzDapClYORR
         4g1dsjC8R2+y98gTKWcUDtS4WBMpo/x2ccphFSfu+RFXOclvx7DjafvTlescWZsj533b
         IqxDwbr0HNURWXgh/TZUznFzpdIfb/kmCW9/8pCZE11BZ05jgybCWvMG86zWXN6ce9OR
         Jh7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682362913; x=1684954913;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+H3xcoEmP9WSt8HhdZGzDGztHmKVKZYmqd+IJIIWLx0=;
        b=HtE8QY0o3dOLTkUnJpZQifco27aG2LexKYVi9XWdCYWd7iy6TkA1ru8RIJ1YSv2jKL
         Dj4P21BQXUG2LN9MS1NifEVzeRR9FlH37y/rt9tHd2gUN5PW+CeKHxCsnR0/fIVANxvW
         XQjGdFMDklNSrJ32zrmB3kuvIwmPkTMaPcWszm+GOeo5Cw93/tn1Fep8OgZLcr0NIsfR
         cV/qSGMzSdhLVa4NlhQJKZrwHW1Emr+KuH//PFTPiKjaDRcW5JzGmr4mI5wkksj5rjsN
         unzueaT7aw0a9TeGF/TkLKUYE2ukCKa/32XCC+7Na7I1DPZvIau25K4TZOQrb7IBPk4Y
         DmuA==
X-Gm-Message-State: AAQBX9edWQYOAxq3Enb3EyVivIYG5cc8Qswazvg0Xs2Y8Kjk2HmE+Blj
	lhZ/o9h29VEZ2IBsAYnKynq/ApbuIiU=
X-Google-Smtp-Source: AKy350bDa2cHQeFhQylspz/eM81FkscGQp13QQyHjlmfUWabt2Q0Ilj8YBFjJqTeiabCJwUATXf6kQ==
X-Received: by 2002:a05:622a:1648:b0:3bf:d258:4a85 with SMTP id y8-20020a05622a164800b003bfd2584a85mr21952926qtj.66.1682362913626;
        Mon, 24 Apr 2023 12:01:53 -0700 (PDT)
Received: from [192.168.2.177] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id cc18-20020a05622a411200b003b9b8ec742csm1752915qtb.14.2023.04.24.12.01.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 12:01:53 -0700 (PDT)
Message-ID: <df33e071-caac-f463-5e09-28f699e7edd7@gmail.com>
Date: Mon, 24 Apr 2023 15:01:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q@lists.ettus.com>
Message-ID-Hash: LAHJNK7VWBNN5G3INSLDX4ZWQYVAUILH
X-Message-ID-Hash: LAHJNK7VWBNN5G3INSLDX4ZWQYVAUILH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 Tx warning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LAHJNK7VWBNN5G3INSLDX4ZWQYVAUILH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDQvMjAyMyAxMzowMywgam9yZ2UuZ29uemFsZXouby0tLSB2aWEgVVNSUC11c2VycyB3
cm90ZToNCj4NCj4gaGkgYWxsDQo+DQo+IHdoZW4gaSB0cnkgdG8gdXNlIGEgVHggY2hhbm5lbCBv
biB0aGUgdXNycCBFMzEyIGkgZ2V0IHRoaXMgd2FybmluZzoNCj4NCj4gW1dBUk5JTkddIFtNVUxU
SV9VU1JQXSBDYWxsaW5nIG11bHRpX3VzcnA6OnJlY3ZfYXN5bmNfbXNnKCkgaXMgDQo+IGRlcHJl
Y2F0ZWQgYW5kIGNhbiBsZWFkIHRvIHVuZXhwZWN0ZWQgYmVoYXZpb3VyLiBQcmVmZXIgY2FsbGlu
ZyANCj4gdHhfc3RyZWFtOjpyZWN2X2FzeW5jX21zZygpLg0KPg0KPiBkb2VzIGFueW9uZSBrbm93
IHdoYXQgaXQgaXMgdGhlIG5hdHVyZSBvZiB0aGlzIHdhcm5pbmcsIGFsc28sIHdoZW4gaSANCj4g
dXNlIHRoZSBUeCBjaGFubmVsLCB0aGUgbGVkIGluZGljYXRvciBnb2VzIHJlZCBhbmQgaXQgZnJl
YWtzIG1lIG91dCwgDQo+IGlzIHRoZXJlIHNvbWV0aGluZyBpIGNhbiBkbyB0byByZXNvbHZlIHRo
aXMuDQo+DQo+IGkgYW0gdXNpbmcgR1JDIDMuOCBhbmQgVUhEIDQuMw0KPg0KPg0KVGhpcyBsaWtl
bHkgbWVhbnMgdGhhdCB0aGUgZ3ItdWhkIHRoYXQgaXMgbGlua2VkLWluIHRvIHlvdXIgR1IgMy44
IA0KaW5zdGFsbCBpcyB1c2luZyBhbiBvbGRlciBBUEkgZWxlbWVudCB0aGF0IGlzIGRlcHJlY2F0
ZWQtYnV0LXN0aWxsLXRoZXJlDQogwqAgaW4gVUhEIDQuMy4NCg0KVGhlIFJFRCBsaWdodCBvbiBU
WCBpcyBub3JtYWw6DQoNCmh0dHBzOi8va2IuZXR0dXMuY29tL0UzMTAvRTMxMiNGcm9udF9QYW5l
bA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
