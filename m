Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A6F4F3D52
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 21:18:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79FEB384170
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 15:18:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649186296; bh=68Ll8CcJKJrqY8AtALIfDFIaBIAIGcQeKTfC/yMDCAA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=W333quSfhp0N0lVVz/byZzsxz1vu5dYH2LVd8HbO5kRBA+3FO9G23Ba7zJWZ0DzZp
	 wGtD4c5TCZkdGlcKHqmXYIxMfN5+q3xj46kLR+KG6GHCHSjwB9Y+Wk5oM9HZjun4Ri
	 sWCOd0D5B0ysiVvw2b+zxiH7HVkh9vtzKtPYexwYh7A8iUU/eP/R6S5DjismShJCxc
	 F/FRi1nWHDfc1eTZf37Scm79k/zWzRXgpBFDP1EqDv6HxW2MOonZuLCc951lxzuKRV
	 UIargmxjdDYaYL8Llaqih5O31rpTy5s25zcyYZWUxIMkoCbzy6F/MrSSjXdVvYIz7/
	 6zl07bdl4jVCg==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 16EF6384A7C
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 15:17:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VcvT8RIU";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id cs16so396140qvb.8
        for <usrp-users@lists.ettus.com>; Tue, 05 Apr 2022 12:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=gIkftIl6dOJetMmDZ96rXpYrJ4CRcGdH4P8s1r34WgA=;
        b=VcvT8RIU6GrfyGB8HYZjOjlVdBwVywoqoeF33jGEQokZWY4iyBVTkOO2uznrBHu2Ca
         wP3brclJp4RgjsLDsX6w80juZYaLfYxRpdaFUgkPgRgnlZFB2UWbqdcPIOGBEqn+L9C8
         tqCy1P8K85Rxc0oyW+Ak3QF9NPO9hzvShNxUfo0CJU7uJNCS0el6R2h0RnFXxfEC/6ZD
         acl0VDuk+rmjdcRCk3gEBxbFP4Dq9Gcoskv0GNbblsZ19K7m1V2lo3sHKUofetcvRtB3
         Z01un576I4DS6STalsFq57rv98HYPVNe1zncsWYSBtCRpY+5/i8iyCKACl7uihAz988J
         vU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gIkftIl6dOJetMmDZ96rXpYrJ4CRcGdH4P8s1r34WgA=;
        b=0XCyFGvNLpmr5WxoBdiU31sq0BdEinO1PPd3KDH0ggbigS4Zxu1jqpMNOMc0ARBA5Q
         mcXcfhdkftUmNjq1fVcmPkAeZb6AaUlQiNgjPWEC0MA0RSuyWEurm0/IA7WgRPnLncWt
         9+wOJTvxSBfCAnPvYeZX9WrAHnbhwrHEmXWBDLz40ZszFywDttmg8SUsc/aEuiuAfj6g
         +DctuT+9TT1C4A8P8A1kVTQkazPBxo/C92QOggtSnhktQYtBrnHX4WzziAdcjeYEb3Nv
         qJv8iOKqDtOcSwHYqj1HbUsyYCAWN2d3PDLv3G965IZHRn71M3Bp9GQT6S06ZPGbqNHl
         ETlg==
X-Gm-Message-State: AOAM532pIMCRcEXj/dKwhgktTwyN2T8yoWsA8PJ24gKr3mrBPLzoOwC4
	/+R1AxuqPD9+lT25zxYVrxKProczvGw=
X-Google-Smtp-Source: ABdhPJxIUnP8dnk1ufPN0LsVPRi/noWChynfuXmPLbEAo83Cei0rhJ19DysAfsCmK4ESaNLjmapHsw==
X-Received: by 2002:a0c:a942:0:b0:443:a395:cc1f with SMTP id z2-20020a0ca942000000b00443a395cc1fmr4199780qva.68.1649186232182;
        Tue, 05 Apr 2022 12:17:12 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x6-20020ac86b46000000b002e02be9c0easm10265926qts.69.2022.04.05.12.17.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 12:17:11 -0700 (PDT)
Message-ID: <f474c612-9ba2-7fa5-5ef2-e1258f9643c9@gmail.com>
Date: Tue, 5 Apr 2022 15:17:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
 <145346f1-a2f5-2f1c-e226-7f08b417f32b@balister.org>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <145346f1-a2f5-2f1c-e226-7f08b417f32b@balister.org>
Message-ID-Hash: 26MQBNJ2C7LWXJII5UG2YIEBO7KSMLA3
X-Message-ID-Hash: 26MQBNJ2C7LWXJII5UG2YIEBO7KSMLA3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/26MQBNJ2C7LWXJII5UG2YIEBO7KSMLA3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0wNSAxNTowMCwgUGhpbGlwIEJhbGlzdGVyIHdyb3RlOg0KPiBEb2VzIHRoZSBF
dHR1cyBpbWFnZSBoYXZlIGlwZXJmMyBvbiBpdD8gSSBzdXBwb3NlIEkgc2hvdWxkIHJlbWVtYmVy
IA0KPiBob3cgaXQgd29ya3MgYW5kIHNlZSBpZiBpdCBoYXMgdXNlZnVsIG51bWJlcnMuDQo+DQo+
IFRoYXQgd291bGQgaGVscCBmaW5kIHRoZSBib3R0bGUgbmVjay4NCj4NCj4gUGhpbGlwDQo+DQpJ
dCdzIGFsbW9zdCBjZXJ0YWlubHkgdGhlIGVuY3J5cHRpb24sIGdpdmVuIHRoYXQgdGhlcmUncyBh
IDMuNToxIA0KaW1wcm92ZW1lbnQgZ29pbmcgZnJvbSAic3NoIiB0byAiaW4gdGhlIGNsZWFyIG92
ZXIgc3RyYWlnaHQgSFRUUCIuDQoNClNob3VsZCBwcm9iYWJseSB0cnkgcnVubmluZyBTU0ggd2l0
aCBhbGwgdGhlIHZlcmJvc2l0eSB0dXJuZWQgb24gdG8gc2VlIA0Kd2hpY2ggYWxnb3JpdGhtIGl0
J3MgbmVnb3RpYXRpbmcuwqAgSWYgaXQncyBhbnl0aGluZyBvdGhlciB0aGFuDQogwqAgQUVTIEkn
ZCBiZSBzdXJwcmlzZWQsIGJ1dCBvdGhlciBhbGdvcml0aG1zLCBmb3IgZXhhbXBsZSwgdGhlIDNE
RVMgYXJlIA0KcXVpdGUgc2xvdyAocmVsYXRpdmUgdG8gQUVTKSBvbiBjb21wdXRlciBoYXJkd2Fy
ZSwgZHVlIHRvIHRoZQ0KIMKgIGFyYml0cmFyeSBwZXJtdXRlIHRoYXQgaXMgdXNlZCBiZXR3ZWVu
IHJvdW5kcy7CoCBUaGF0J3Mgbm90IGVhc3kgdG8gDQpzcGVlZC11cCBpbiBzb2Z0d2FyZS4NCg0K
QUVTLCBvbiB0aGUgb3RoZXIgaGFuZCwgaXMgIm1vZGVybiIsIGFuZCB3YXMgZGVzaWduZWQgdG8g
YmUgInNwZWVkeSIgb24gDQphIHdpZGUgdmFyaWV0eSBvZiBjb21wdXRlciBoYXJkd2FyZS7CoMKg
IEkgd291bGRuJ3QgYmV0IHRoYXQNCiDCoCBBUk0tYmFzZWQgQUVTIGltcGxlbWVudGF0aW9ucyB3
aW4gYW55IHBlcmZvcm1hbmNlIHByaXplcy4uLg0KDQovbWUgZm9ybWVyIGNyeXB0byB3ZWVueQ0K
DQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
