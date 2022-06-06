Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0604B53E613
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 19:06:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4373A383F23
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 13:06:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654535196; bh=lCSOvzs7c8r7EG0G1kY+Y57jooX8IWXsvxKu7UC8dXo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mbQErryc58wanF+WsL+upnSGXVgMtlk6Tkk7+Iv+aCpBcIOcaAKTAZI1F4HqhkOos
	 4fUn8lWIT8gNPmODaWSdhSl+qR8Fx6gkr/OvCyGI5alTBzfyWb8EoVzhCkEm6J4Va7
	 FxEEQoFx/xBhTUhRMlkmU2WFJXcdvqGXV3GLVwruKrChmBPHyz0pukD+nwuOb9/+Xc
	 i5iEaFF8kRvavND6yT+N5gROo+QECZtsWk/09KTkQzFHwOMD14frI6nhlVblZ9Dfrn
	 iSEbt8/X31tkQLerG+jDmReDbbp/ddOBg6S0I8WB62nM5KOA6EG1ykUEhVy1Jw2lzX
	 CcIjpoFBI7EDQ==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1447F383E32
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 13:05:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iJRT1Xtv";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id t21so3780939qtw.11
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 10:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=mUzhC5OWAPTjBPby3X7hpMqIlV92c91NoiZyHgz8E7c=;
        b=iJRT1XtvYSlQKVy/wJUNF0LTNnedWzElltRwX2XiWw5CzyUIwN5t4IcEfuRRI8spxW
         y2XxanaSk5tTJnNazMivgHayiPBRvFG2kXL9uC8j/xsDlAEp70GLJW03ajBifNS4GIEm
         16blPLXIPYOLrkfOH9YZTDKk+MhwXsItHE3TrL3tOZHTSlfZTufi2M4siytC74BaidCU
         ce/nXrndZv5FDnz8e0p+5/E77uBv4fHs9f+8I31slv/htbfMkbf1O0HdUsOJhQxaYtLA
         QHx1OzFpgb5A96/AVVMNg7zHf9zv5vQIRZpn0M1i1NVdU/45NVbN1eHynDHlSAzleKfO
         toPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mUzhC5OWAPTjBPby3X7hpMqIlV92c91NoiZyHgz8E7c=;
        b=H2ezYe7oVaCq8a4JOIS4jDv7mtXQUKFOTUrbXwvcddaSgvp46iVaAvYxEw4x5bGqGG
         HdgwRex5Dm63E1oTE5WCrifDmZDHlDd8PXaWFGlh0WdbbPXkA8j9PDX1Nq4ZIXOZ3wfD
         q0vzke6q1/S/8htefKtBSf+NcVunhkhz0IQpDsl6EzYjLtJq1NuL50Q2gSgsu6oJt6XP
         pkmtEVvQQHY/T5HSUtdckKfX6Y8FBY4eb4HPK/wAtmwtWffBfdQdvE7nepewcMb/o5QD
         jqPwd5uVQVDhIYkLZZ8WbwUsfpPIScoitmqrGonZ5gleiIhEphTF7V/ygUcUinJBhLuN
         Qn4w==
X-Gm-Message-State: AOAM531JkoEa0nNPp4IYW0yA5b/7jeldwNrsja3FJjSrdfP9hWAs5E+5
	D9SCwZhLwhgUDhRpwMAbtnMeTdQNWyxEsw==
X-Google-Smtp-Source: ABdhPJw1qK3DvK33xAKjlTi5umd5O1ILJ1ZUPqm2ok0aQXi1rVeim25wgVFcBJNt2FqRTItY1jIUNQ==
X-Received: by 2002:ac8:7f41:0:b0:2fa:f70e:8d46 with SMTP id g1-20020ac87f41000000b002faf70e8d46mr19329435qtk.528.1654535134512;
        Mon, 06 Jun 2022 10:05:34 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id f15-20020ac86ecf000000b00304edcfa109sm1929464qtv.33.2022.06.06.10.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 10:05:34 -0700 (PDT)
Message-ID: <503463d6-879b-82b9-dfc5-6980f35f635b@gmail.com>
Date: Mon, 6 Jun 2022 13:05:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jon Beniston <jon@beniston.com>, usrp-users@lists.ettus.com
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
 <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
 <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0a8a01d879c7$3bf7fbb0$b3e7f310$@beniston.com>
Message-ID-Hash: 7FFNBR3674D745OYOIIQ6EVMVLE2V3QQ
X-Message-ID-Hash: 7FFNBR3674D745OYOIIQ6EVMVLE2V3QQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FFNBR3674D745OYOIIQ6EVMVLE2V3QQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNi0wNiAxMzowMiwgSm9uIEJlbmlzdG9uIHdyb3RlOg0KPiBIaSBNYXJjdXMsDQo+
DQo+PiBJJ20gcHJldHR5IHN1cmUgdGhhdCBpZiB5b3UganVzdCAqZG9udCBzcGVjaWZ5KiBhIG1h
c3Rlcl9jbG9ja19yYXRlIGluIGEgc2Vzc2lvbg0KPj4gd2l0aCBhbiBFM3h4IGRldmljZSwgVUhE
IHdpbGwgc2ltcGx5IHBpY2sgYW4gYXBwcm9wcmlhdGUNCj4+IG1hc3Rlci1jbG9jayByYXRlLg0K
PiBUaGlzIHNlZW1zIHRvIGJlIHRoZSBjYXNlIC0gYnV0IHRoZSBxdWVzdGlvbiBpcyBob3cgdG8g
cmVzdG9yZSB0aGlzIGJlaGF2aW91ciBhZnRlciBzZXR0aW5nIGl0IHRvIGEgc3BlY2lmaWMgdmFs
dWU/DQo+DQo+IFRoZSByZWFzb24gaXQgaXMgYmVpbmcgc2V0LCBpcyBJJ20gdHJ5aW5nIHRvIGRl
dGVybWluZSB0aGUgbWluL21heCByeCBzYW1wbGUgcmF0ZSAtIGFuZCBvbiB0aGUgYjIxMCwgdGhl
IHZhbHVlcyByZXR1cm5lZCBieSBnZXRfcnhfcmF0ZXMoKSBkZXBlbmQgb24gd2hhdCBtYXN0ZXIg
Y2xvY2sgaXMgc2V0LiBTbyBJIHNldCBpdCB0byBtaW4vbWF4IGJlZm9yZSByZXR1cm5pbmcgaXQg
dG8gYXV0b21hdGljLiBQZXJoYXBzIHRoZXJlJ3MgYSBiZXR0ZXIgd2F5IHRvIGRvIHRoYXQ/DQo+
DQo+IFRoYW5rcywNCj4gSm9uDQo+DQpUaGUgIm1hc3Rlcl9jbG9ja19yYXRlIiBzcGVjaWZpY2F0
aW9uIGlzICpwZXIgc2Vzc2lvbiouwqDCoCBJdCBkb2VzIE5PVCANCnNldCBpdCBpbiBhbnkgcGVy
c2lzdGVudCB3YXkuwqDCoCBJbiB0aGUgbmV4dCBzZXNzaW9uLCBpZiB5b3UgZG9uJ3QgDQpzcGVj
aWZ5IGl0LCBVSEQgd2lsbCBwaWNrIGFuIGFwcHJvcHJpYXRlDQogwqAgY2xvY2sgdmFsdWUuwqAg
SWYgdGhpcyBpcyBOT1QgaGFwcGVuaW5nLCB0aGVuIHRoYXQgaXMgYSBidWcgb3IgYW4gDQp1bmRl
ci1kb2N1bWVudGVkIGZlYXR1cmUuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
