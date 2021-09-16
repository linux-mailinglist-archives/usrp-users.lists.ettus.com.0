Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A222540D164
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 03:48:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BE4238442D
	for <lists+usrp-users@lfdr.de>; Wed, 15 Sep 2021 21:48:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jtzF/Wml";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id C6DAB384237
	for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 21:48:04 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id b64so5868726qkg.0
        for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 18:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Bpflj1XhQIxr7+KG2GFZ1SWurl10xytoZCiyWIT3vAw=;
        b=jtzF/Wmlj30xC3hoSkjjv2gPYv1zOk6/ZeDo53jAnJBVmLuVSpQ4kXJ+8ySv2vKNU/
         U+BaTVrNJTl2TyZlmr5pyfN06e9RRW4xn0azkdQuK0iBkv0CKLSfSgPaYmDJNobLq5Ip
         YqPSunOPYZtt/gDcLe99Skn1Bnl2K6g7NmsDmJ+/DKlJKtYLgr4pFozxVZqLHga9beLu
         0CElXw04A6zi96KCqayF51Dcq0Af/tl5anGqZMnxRCokWJEbT52fQEwoiAZ0RpeHLw9k
         rjm4+371bCJ1fhNGizqamu0gW+wLlWC2/IajtCKrwCawnhvxTRhxHFQM6kNGditozpu/
         gJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Bpflj1XhQIxr7+KG2GFZ1SWurl10xytoZCiyWIT3vAw=;
        b=leigjnLsjh7AbWlsLD4rGIlo1uf6T2GiD+pCEeabgrRjyAnErTtLX6u/yhB4B41j+Z
         gwcneKL78agenTsT67dLuqg7oVAOdNT8c1eCN1FcvM6+7vLefAItMwtw3dojUfM91JaB
         lnocYEoUFThKb1NMK7Zdfa0VZT/rhkHqwcA1Pqjj+Upfhz9pCsesYFFc8G3SO+gZLYA8
         S+C+mC716T+TgBAUmkmVlQGzcPPV6HMN48UYvV2OHEqIadcxJE/eio4486z5byV8N2kS
         /SBT7YMurnpnWeV2NH6t9YIg/ZbGsh0u0+YUIoo31huF4qI3B4kXg4PjyYCaXPi1rQ8+
         Dogg==
X-Gm-Message-State: AOAM533ZMnFy+KbhvOYHseB7HqURTal9I85rX8SlArffT0vGdNbsBYPi
	Z0Hnnee6uDyl0w3htjm/4D8R0G3maKBddw==
X-Google-Smtp-Source: ABdhPJy31lxCS3uuBTNcVhouS5RldG+EwiLpmZxjjO+PD52FytvlJtlbRBv3V+I+RFbvLWHgA+9KTw==
X-Received: by 2002:a37:2dc7:: with SMTP id t190mr3025584qkh.60.1631756883813;
        Wed, 15 Sep 2021 18:48:03 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y24sm1393065qkj.102.2021.09.15.18.48.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 18:48:03 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <82a8e974-82b5-8f96-3fa3-f66b66ed4e02@rurisond.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <67e07144-aa0f-d338-003c-d9b871073cb7@gmail.com>
Date: Wed, 15 Sep 2021 21:48:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <82a8e974-82b5-8f96-3fa3-f66b66ed4e02@rurisond.com>
Content-Language: en-US
Message-ID-Hash: GG76ZOLQWW3G6FKFFEFMTRSWXVPX3IWM
X-Message-ID-Hash: GG76ZOLQWW3G6FKFFEFMTRSWXVPX3IWM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 in Network Mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GG76ZOLQWW3G6FKFFEFMTRSWXVPX3IWM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0xNSA5OjQwIHAubS4sIFRvbSBSaWRkbGUgd3JvdGU6DQo+IEhpLA0KPg0KPiBX
ZSBoYXZlIGEgY291cGxlIG9mIEUzMTBzIHcvU0QgY2FyZHMgdGhhdCBhcmUgcnVubmluZyBVREgg
My4wMDkuMDAzLiBJIHdvdWxkIGxpa2UgdG8gaW5pdGlhbGx5IHVzZSBpdCBpbiBuZXR3b3JrIG1v
ZGUgd2l0aCBHbnVSYWRpbyBydW5uaW5nIG9uIGEgTGludXggSG9zdC4gRWl0aGVyIGFuIEV0aGVy
bmV0IGNvbm5lY3Rpb24gb3IgZXZlbiBvdmVyIFVTQiB3b3VsZCBiZSBzdWZmaWNpZW50IGZvciB0
aGUgY3VycmVudCBuZWVkcy4gSSBkbyB1bmRlcnN0YW5kIHRoYXQgdGhlIHBlcmZvcm1hbmNlIG1h
eSBub3QgYmUgb3B0aW1hbCBvdmVyIHRoZSBuZXR3b3JrIGJ1dCB0aGF0IGl0IGNhbiBiZSBkb25l
Lg0KPg0KPiBXZSBoYXZlIGluc3RhbGxlZCBVSEQgb24gYSBVYnVudHUgMTguMDQgaG9zdCB3aXRo
IHZlcnNpb24gMy4wMTAuMDAzLiBUaGUgRTMxMCBESENQcyBhbiBhZGRyZXNzIGFuZCB0aGUgTGlu
dXggSG9zdCBjYW4gc3NoIGludG8gdGhlIEUzMTAgYW5kIHZpc2EgdmVzYS4gQm90aCB1c3JwX2Zp
bmRfZGV2aWNlcyBhbmQgdWhkX3VzcnBfcHJvYmUgb24gdGhlIGhvc3QgcmV0dXJuICJObyBVSEQg
RGV2aWNlcyBGb3VuZCIgYnV0IHRoaXMgYXBwZWFycyB0byBiZSBleHBlY3RlZCBmcm9tIHJldmll
d2luZyBwcmV2aW91cyBmb3J1bSBwb3N0cyBXUlQgRTMxMC4gQWRkaW9uYWxseSBJIHdhcyBhYmxl
IHRvIGdldCBhbiBvbGQgVVNSUDEgdXAgYW5kIHJ1bm5pbmcgZnJvbSB0aGUgVWJ1bnR1IGhvc3Qg
d2l0aG91dCBhbnkgaXNzdWVzLg0KPg0KPiBXb3VsZCBpdCBiZSBwb3NzaWJsZSB0byBvYnRhaW4g
dGhlIHN0ZXBzIHRvIGNvbmZpZ3VyZSB0aGUgRTMxMCBmb3IgZWl0aGVyIEV0aGVybmV0IG9yIFVT
QiBzZXR1cC4gVGhhbmtzIGluIGFkdmFuY2UuIFRvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpUaGVyZSdzIHNvbWUgZG9jdW1l
bnRhdGlvbiBoZXJlOg0KDQpodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWxfYXJjaGl2ZS9y
ZWxlYXNlXzAwM18wMDlfMDA3L2h0bWwvcGFnZV91c3JwX2UzeDAuaHRtbCNlM3gwX25ldHdvcmtf
bW9kZQ0KDQpOb3RlIHRoYXQgbW9zdCBwcmUtYnVpbHQgVUhEIHBhY2thZ2VzIERPIE5PVCBpbmNs
dWRlIHN1cHBvcnQgZm9yIHRoZSANCkUzMTAgaW4gbmV0d29yayBtb2RlLS1hcyBub3RlZCBpbiB0
aGUgYWJvdmUgZG9jdW1lbnRhdGlvbi4NCg0KVW5sZXNzIHlvdSBoYXZlIHN0cm9uZyByZWFzb25z
IE5PVCB0bywgeW91IG1pZ2h0IGNvbnNpZGVyIGEgbXVjaCBuZXdlciANClVIRCB2ZXJzaW9uIG9u
IGJvdGggeW91ciBob3N0IGFuZCB0aGUgRTMxMC0tSW4gVUhEIDQgYW5kIG5ld2VyLCBuZXR3b3Jr
DQogwqAgbW9kZSBpcyBzdXBwb3J0ZWQgd2l0aG91dCB0aGUgbmVlZCBmb3IgYSBzZXBhcmF0ZSAi
c2VydmVyIiBwcm9ncmFtLsKgIA0KQnV0IGlmIHlvdSdyZSBzdGlja2luZyB3aXRoIFVidW50dSAx
OC4wNCwgeW91J2xsIG5lZWQgdG8gZG8gYSBzb3VyY2UgYnVpbGQuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
