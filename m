Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 318B17B8459
	for <lists+usrp-users@lfdr.de>; Wed,  4 Oct 2023 17:59:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43C733851DF
	for <lists+usrp-users@lfdr.de>; Wed,  4 Oct 2023 11:59:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696435149; bh=P2nAcULHxtmc6NO8+uvrBaO+KQadkvILdIOM7s4WBXI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=c8E90FgI1ki7JODTWoR/AfdwZYxag4hA5mjujNCzJRd8p4BEukX7fXFBNZzWHERGe
	 DoPDxHCPiejCphY+YcZaKM6Qr+S6Y45RCZ/Od2L0t+75wS3K9U+UXi/AP+GgzXe+3C
	 Ho5zfrO2KFjzYFJvNGgYR5m+J2gZ2rprqUMSZ2OfzENOKPoGYu+bktPmBJqRzq39JF
	 xMUeyY6xgZmcpHtvYBcZu2rESu7EQhk5s0r+PaM/89ck2vNk3FLpG+ccp8s3w4wcpw
	 11qqZroBkaCE0X2ytO1cdChWtcMfQTt7s2kynD67wYNitbCMc06b6As18xNJMrY2mg
	 CfnQgVMyxBbVA==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 244CD3849F3
	for <usrp-users@lists.ettus.com>; Wed,  4 Oct 2023 11:58:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lks6yawR";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7740cf93901so149701985a.2
        for <usrp-users@lists.ettus.com>; Wed, 04 Oct 2023 08:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696435119; x=1697039919; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J4njhzumaiilpif9hDPV6vAkmQoQqGYlEhqigu5wL1s=;
        b=lks6yawRk9Rl0aQSKeDZ8UzO/NhwrUezU51/Z0OG1wHJqes1gnRVkRLdW+TfFgRuvZ
         lkueWOc9mtJciX6m7Phh/69uLIOuxJ4ybk+9ZIkqK0CT+T/YtAkZf+1t1C+TB29VVBri
         t1AuhwYvCRmUH1QOpc42sLaC0zMg4g3cophoXoDSkzX27sa95v4cTRGgERCONUlFntCp
         xIM1BfHNsAUjtmqJRIpPXoGyuKsLfQmKZI9HVEHHnhOEM0ikXunUf7yxlqdYKB0QkF09
         kzIHJHRxahV4Op1u1W4l4+PDWAo3hwG7cUt/L7JmyHUzRYUw9d09wdJdEtqiNiCXmI5O
         SBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696435119; x=1697039919;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J4njhzumaiilpif9hDPV6vAkmQoQqGYlEhqigu5wL1s=;
        b=L6lMnl0cO0kxSRy4JP7aUhawwTNrmLHBceV0STRFEJQ1V4m1LGVXlMWl2/XcFu+g1B
         6lYFNHrH76qwEuoZLHhBwXcU10umfzbBROupakoOmX/gE2yWj3DoyGoifQP5MMhJxDKv
         6Vo1vuU4devj2k2KkCkVtAxr1FImC0lKQqgAhPOumaghEtQmH9SHEVr1tw0pdjuVvkjI
         3JNMZzLgACejbYa81SFq16thYa2GNfCtIwqyQQ/pO8JuGdgNSFKwLsKGZQ3yzNCQKONK
         txFhGTcWaJOfnPYoD4rXIQiAo2fYaKUWOSvRMNYFxf7hdmEe+eCHXhtcdr7nt63syFrw
         mP/w==
X-Gm-Message-State: AOJu0YyZj1W80y6io1al/XfHRx9BuUITGQ0XbXVRM0UBpL5zeJwxX6Uw
	FbniJHGbKRvZlDovX5jWGXi8xZCfTaA=
X-Google-Smtp-Source: AGHT+IHPBg77FWVwvKL7jjX6lVml1TG4s0gUZ8AeVxp/qJDZxaz9iZZWC0iKVsZbKeIgajv1Lh3BRg==
X-Received: by 2002:a05:620a:384d:b0:774:7f4:1dc3 with SMTP id po13-20020a05620a384d00b0077407f41dc3mr2435503qkn.41.1696435119313;
        Wed, 04 Oct 2023 08:58:39 -0700 (PDT)
Received: from [192.168.2.145] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id g10-20020ae9e10a000000b00774292e636dsm1354378qkm.63.2023.10.04.08.58.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 08:58:38 -0700 (PDT)
Message-ID: <d2540f9d-5b66-9b58-7e58-c4b19b950138@gmail.com>
Date: Wed, 4 Oct 2023 11:58:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RXfnq73qVvyj0ol93m5IBvFbPBfudRCxQAH7we4Dw@lists.ettus.com>
Message-ID-Hash: Q6PSISUGRNWCRMCCPOQHKXTRLJMAONYM
X-Message-ID-Hash: Q6PSISUGRNWCRMCCPOQHKXTRLJMAONYM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFDC initialization in UHD 4.5.0.0 for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6PSISUGRNWCRMCCPOQHKXTRLJMAONYM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDQvMTAvMjAyMyAxMDozMSwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBUaGFu
a3MgZm9yIHRoZSBpbnNpZ2h0LiBJIHdhcyB1bmRlciB0aGUgaW1wcmVzc2lvbiB0aGF0IHRoZSBN
UE0gd2FzIA0KPiBjb21wbGV0ZWx5IGhvc3Qtc2lkZS4NCj4NCj4gU28gaWYgSSBhbSB1bmRlcnN0
YW5kaW5nIGNvcnJlY3RseSwgV2hlbiB0aGUgcmFkaW8gYmxvY2sgaXMgDQo+IGluc3RhbnRpYXRl
ZCwgdGhlIHg0MTAgY2FsbHMgdGhlIGhvc3Qgc2lkZSBmb3IgdGhlIFJGREMgaW5pdGlhbGl6YXRp
b24/DQo+DQo+IEFuZCBhZGRpdGlvbmFsbHksIGFuZCBJIGFtIG5vdCBzdXJlIGlmIHRoaXMgaXMg
dGhlIOKAnHJpZ2h04oCdIHdheSB0byANCj4gdGhpbmsgYWJvdXQgaXQsIGRvZXMgdGhlIHg0eHgu
cHkg4oCccnVu4oCdIG9uIHRoZSB4NDEwIGl0c2VsZj8NCj4NCk1vc3Qgb2YgdGhlIG5ld2VyIFVT
UlBzIGhhdmUgYSBaeW5xIEZQR0Egb24tYm9hcmQgdGhhdCBydW5zIGEgTGludXggT1MsIA0Kd2hv
c2UgbWFpbiBwdXJwb3NlIGlzIHRvIHJ1biBNUE0sIHdoaWNoIGlzDQogwqAgdXNlZCB0byBwcm92
aWRlIGEgInNlcnZlciIgdGhhdCBjb250cm9scyB0aGUgdW5kZXJseWluZyByYWRpbyANCmhhcmR3
YXJlLsKgwqDCoCBVSEQgb24geW91ciBob3N0IFBDIHRhbGtzIHRvIE1QTSB0byBzZXQNCiDCoCBy
YWRpbyBwYXJhbWV0ZXJzLCBhbmQgc3RhcnQvc3RvcCBzdHJlYW1pbmcsIGV0Yy4NCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
