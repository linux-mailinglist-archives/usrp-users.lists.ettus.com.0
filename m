Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7016987C1B6
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 17:59:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EFE4385365
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 12:59:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710435595; bh=c3h4GtThrE7U7PrvIFYCDVbHYA2dLGNms7+GUvQa8CQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ddiw/RXZYHG541pmWd3e35mZxUsdq6H5ZKSTomMpobV8AbXn41HR8KrlSZnT3+cuB
	 L4qVja0z5RZuae6ect15EHNvOzZgaAvBX5qzXI11Hot7yqsJ8/QA1pvGI1lUBC+Mbl
	 gS0KnLAiOzn3rDhCw87sT+JriTBhD7Feg3A0SmgmlFAR32j1MamxE9QbWMaGJQC0d1
	 o8bn9wP4pgpiezxEBiZ8pxDoQQSzcfIoS8d5G3tm3hvV+OH9f4yjWlfJmE74JSFnl+
	 GclsyKqwheN4eBUN/AraLi8Sgql08UPBSwjUtfW6f85jQx1OuKfAzcoZPva75suRFO
	 PILdbTeJmSbIg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 24B8B38455A
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 12:59:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C86w5tdt";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7882d713f6fso57274185a.0
        for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 09:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710435545; x=1711040345; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tqEZAGsHWGsXGep1cDn2N9mayxglR8E8bcStEmQxQDM=;
        b=C86w5tdthYbQDNioHq5ExJgKiptzoqQ0/d6tuhx7lDWNetRY9pzOdkRjFdRJp/SZ+Y
         liqtgYzOLENFFUG6nCWXgjjmEMyK0IX8YzFlefqhnJtBThs0hKNm4l+U9MWhpDncVmSb
         PBnslsUmUxdIQ/PxtteLjDmNoQk/Yd11ldOU2BJ5xKKi6no/i72c/TbA/w0jjyQ6utUs
         IdEwiuI4BAGzzDJ00iozgqHdOSq+zRxZVIDUnDNA0nI3aavXSqAt+hDjdR/2AS8QGLmk
         bdpu3+5RiE7qJlaT3RKJot2z8Rb95DMAnZ1m7knZhiPp+PHZGwFZSKQel0lRh1s8+T4L
         V4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710435545; x=1711040345;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tqEZAGsHWGsXGep1cDn2N9mayxglR8E8bcStEmQxQDM=;
        b=A+0t1m41jJ5S138HEiI3s/fEvg/FYaMJM3kDpKeDbgy30C4/jUfi6UEXzokwP2z+0T
         XY1O4Bn8tuySG3HJBs4a7OMyc1aWEmJHRSJlbEgW8gO3YXIXahS7YD8Ufpw+ikbKjDay
         l20HIF9VXcCuTm5+DyAr68SeLqcDO0J/gM+msCRRziiVPIxii1vcbT2kmb+k/9cNgR+Z
         VCGou7Yhh3y2oPe6oTsdOxtqj+nb6by3QxApjlh8esmNtP+ifw1fhBlNrPU4jwBMOBuV
         yZK5wSo7qsYem4kzPmHUM0a0TPJ2ZvstZKeg5p68l/VkbGDiolXrnHPoE++OfL8wvNez
         yN4w==
X-Gm-Message-State: AOJu0YwBla+irm5fBB9fXLJie0nkmyV/dfivSe5bEIZWqmXjkaukhMrf
	wTiw0VPCj+awC/M0ggoE13YZKSypVmhGiWon3IZfs/0af7M+kguXKQmlj5keZ8g=
X-Google-Smtp-Source: AGHT+IHyUvY4Yf5+rWXTzJroHp2lCRBKpTA/lv1fDfgVmThLKngWhQ3zLb6iU8YMCZk1yHnfW1hPjg==
X-Received: by 2002:a05:620a:5d98:b0:787:ef0f:f809 with SMTP id xx24-20020a05620a5d9800b00787ef0ff809mr2511497qkn.24.1710435542524;
        Thu, 14 Mar 2024 09:59:02 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id f28-20020a05620a12fc00b00788258a8888sm1023211qkl.48.2024.03.14.09.59.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 09:59:02 -0700 (PDT)
Message-ID: <403f1e1f-5e3c-4e01-864c-c4fe3ac68cc6@gmail.com>
Date: Thu, 14 Mar 2024 12:58:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <D4276B0A-B6FC-43E8-9DAB-CA51FFFA86AC@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <D4276B0A-B6FC-43E8-9DAB-CA51FFFA86AC@me.com>
Message-ID-Hash: N2URAW6A7AC5BRPYAPJD6K3UZFI23F5W
X-Message-ID-Hash: N2URAW6A7AC5BRPYAPJD6K3UZFI23F5W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NI 2944 to USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N2URAW6A7AC5BRPYAPJD6K3UZFI23F5W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTQvMDMvMjAyNCAxMjo1NiwgSmltIEdydWJiIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiBJ
IGhhdmUgYW4gTkkgMjk0NCB3aGljaCBJIHdvdWxkIGxpa2UgdG8gdXNlIHdpdGggZ251IHJhZGlv
Lg0KPg0KPiBJIGZvdW5kIHRoZSBrYiBhcnRpY2xlIGRlc2NyaWJpbmcgaG93IHRvIGxvYWQgdGhl
IFgzMTAgRlBHQSBpbWFnZSBoZXJlOg0KPg0KPiBodHRwczovL2tiLmV0dHVzLmNvbS9SdW5uaW5n
X1VIRF9hbmRfR05VX1JhZGlvX29uX05JX1VTUlAtUklPDQo+DQo+IEnigJlkIGxpa2UgdG8ga25v
dyBob3cgdG8gZmluZCB0aGUgSVAgYWRkcmVzcyBmb3IgdGhlIFNGUCsgMTBHIEUgcG9ydC4gDQo+
IMKgSXMgdGhlcmUgYSBkZWZhdWx0IGFkZHJlc3MgcHJvdmlzaW9uZWQ/IMKgRG9lcyB0aGUgYm94
IHVzZSBESENQIGFuZCANCj4gdHJ5IHRvIGdldCBpdHMgYWRkcmVzcyBmcm9tIGEgREhDUCBzZXJ2
ZXI/DQo+DQo+IFRoYW5rcyBmb3IgYW55IGFkdmljZSB5b3UgY2FuIGdpdmUgbWUgdG8gbWFrZSB0
aGUgY29udmVyc2lvbiBnbyBzbW9vdGhseS4NCj4NCj4gQmVzdCwNCj4gSmltDQo+DQo+DQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
Cmh0dHBzOi8va2IuZXR0dXMuY29tL1gzMDAvWDMxMF9HZXR0aW5nX1N0YXJ0ZWRfR3VpZGVzDQoN
Cmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfeDN4MC5odG1sDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
