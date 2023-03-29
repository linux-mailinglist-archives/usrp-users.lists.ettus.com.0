Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEBC6CEC66
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 17:08:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F46B384392
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 11:08:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680102497; bh=MBXmv5U+LiwimvuijaTkYDIM49QmH1PxRG6WSyHyMyU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nSuea5p3+WPvzTGHUU/ZcY16MXtwDWxDIDgF2llaEo34dQLZvOpdTiZdf11BkFc7A
	 w1+6AyNJlv0vFF7caPpr+Xi9sUPG9zXlCIpk9UihJXhfwAzlbj0kPagUWYctzCw5S4
	 l9+dirBpTUHkG6PJ3U/aTocgA9kjbw/wvABc8YdpUxS4/O+UQBtnaW2NUiuG5EtNBD
	 7LF30/iOJLNSLHKLqkx0lRngxbWKbeEI5lhZquWl2ySP35d2FeWYyGvtYNvwoqTGBZ
	 f+xVUwrJ93mH0gLZH0KVJGdB7lawX/bEWJytXVHGfsT3w/auzrp7TxG/TpAIuFU2nO
	 la6airXl7VQQQ==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A64CA384253
	for <usrp-users@lists.ettus.com>; Wed, 29 Mar 2023 11:08:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L1X7D11y";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id cu4so11796134qvb.3
        for <usrp-users@lists.ettus.com>; Wed, 29 Mar 2023 08:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680102487;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I3DF/oNFtF84tzWFHX6YIZjbcmHRcTeVkuxcHvngK+4=;
        b=L1X7D11y+zHIcFTARZZF3kNx1+QK6y4MrLyqRju7r4vbKT/uIZH1/BEizAJMsRLaJ2
         H83U1tm0VMQPLYPU4Mf67na4XT+8kktDlSEX9+tqzLJXZQiGOqcU71BljmCejRdBlHc4
         HwFc3Dq6wjT9vc8W+g21oQYyaa8z6CzPMz64utYog/N0/UlD1uELn1a2+q8FBFVkArKX
         t7LujkPkDVEoXHQw7mJNpJ2+V7t4gXogTWKsKBSXehK9XU+j7ht35qjLaqxMwLkEJdQ2
         79KI8vv/4KVQIxXduglzEEITCuJmfwYqKZGXqed+HBgpSHj4aoDdDTVYnOSg9qh4cVkU
         LGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680102487;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3DF/oNFtF84tzWFHX6YIZjbcmHRcTeVkuxcHvngK+4=;
        b=VaGrOnwkWHm0Knx8bGG0uJxAjd1CT4SIC05hRZrEP4G/LDHGmOL8zPd+hHdXqJOYP4
         jPJFvvdf8VfA4Llu0MNaENOJiFMFw8HGtT4d8pLBj0Z+wSLMiBhndYSgz6rL0sB6pZ6/
         JYptFLgn2q7+J+fOO12fMEdO5reG6TEo2NeTgJNRtiPu0tQOjcnhjc/3vGcYdbEdVvBq
         4BA/kEidrmHDOJuWa2JGVvalgO9EmhS8eX/pKmbH4azvIm0qcwwtBSJrA4G02wh/88wu
         GtrUhnbrVMjWNmUGaHqLy62tyDOH9GQ4+tsVKux+7ITAe9+aDHjtlRC9WMGO4KqCEdJF
         7uNg==
X-Gm-Message-State: AAQBX9ddcig67DQZfNx0kzuUxWEsQf6qTWdA+65FAIKGSOgWBXCKPEF3
	taN7DsWaK7zyG9eHQAinJpuc04WwIsA=
X-Google-Smtp-Source: AKy350am8rHYz1XtSkVvw71ADzqCcgpaCNlx+RaUdXRGzYPCk8ju/KoT4q1HAZ2yLLREEx5s6NgjQw==
X-Received: by 2002:ad4:5949:0:b0:5d5:11b4:ad0 with SMTP id eo9-20020ad45949000000b005d511b40ad0mr30488624qvb.11.1680102486818;
        Wed, 29 Mar 2023 08:08:06 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id g11-20020ad457ab000000b005dd8b9345c2sm4717282qvx.90.2023.03.29.08.08.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 08:08:06 -0700 (PDT)
Message-ID: <f290466f-67a7-c625-a5e7-b2100cda8fa5@gmail.com>
Date: Wed, 29 Mar 2023 11:08:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <7VwjNj85uDfBgWrARLoI4p7MLdUijonHD174xcVdWw@lists.ettus.com>
Message-ID-Hash: NS7WREBTDD4FK6LA4XT3VMWY5XUBOUSU
X-Message-ID-Hash: NS7WREBTDD4FK6LA4XT3VMWY5XUBOUSU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NS7WREBTDD4FK6LA4XT3VMWY5XUBOUSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDMvMjAyMyAwMTozNiwgc29yaW5nQGF5ZWNrYS5jb20gd3JvdGU6DQo+DQo+IEnigJl2
ZSB1cGxvYWRlZCBhIHNhbXBsZSBvZiB0aGUgc2lnbmFsIEkgZ2VuZXJhdGUgYXQ6DQo+DQo+IGh0
dHBzOi8vbWVnYS5uei9maWxlL2pFRWduQlpMI0tyLXFqU1VYbFlETkJtdVZmRnZTT3d5MUNKQ0Jl
bG14c1NzblMyYTRhRFENCj4NCj4gVGhlIGZpbGUgaXMgYmluYXJ5LiBUaGUgc2lnbmFsIGlzIHNh
bXBsZWQgYXQgNS43NiBNSHouIFRoZSBzaWduYWwgaXMgDQo+IGNvbXBsZXggaW50ZXJsZWF2ZWQs
IDE2IGJpdHMgc2lnbmVkLg0KPg0KPiBJIGdhdGhlciB0aGUgc2lnbmFsIGFzIGl0IGlzIHRyYW5z
bWl0dGVkIHRvIHRoZSBCMjA1Lg0KPg0KPiBJIHVzZTogbGludXg7IEdOVSBDKysgdmVyc2lvbiA5
LjQuMDsgQm9vc3RfMTA3MTAwOyBVSERfNC40LjAuMC0wLWc1ZmFjMjQ2Yg0KPg0KPiBHYWluIDgw
IGRiLiBCVyAxMCBNSHouIGxvLW9mZnNldCAzZTYuIFJhdGUgNS43Nk1Iei4NCj4NCj4gSSBtZWFz
dXJlIGFuIG91dHB1dCBwb3dlciBvZiAzIGRibS4gSW1hZ2UgcmVqZWN0aW9uIGFib3V0IDI1IGRi
IG9ubHkuDQo+DQo+IEkgY29waWVkIHRoZSBjb2RlIGZvciB0aGUgaW5pdGlhbGl6YXRpb24gb2Yg
dGhlIFVTUlA6DQo+DQo+IHN0ZDo6c3RyaW5nIGRldmljZV9hcmdzKCJudW1fc2VuZF9mcmFtZXM9
MjU2Iik7DQo+DQo+IHN0ZDo6c3RyaW5nIHN1YmRldigiQTpBIik7DQo+DQo+IHN0ZDo6c3RyaW5n
IGFudCgiVFgvUlgiKTsNCj4NCj4gc3RkOjpzdHJpbmcgcmVmKCJleHRlcm5hbCIpOw0KPg0KPg0K
PiBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQ3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNlIHdp
dGg6ICVzLi4uIikgJSANCj4gZGV2aWNlX2FyZ3MgPDwgc3RkOjplbmRsOw0KPg0KPiB1aGQ6OnVz
cnA6Om11bHRpX3VzcnA6OnNwdHIgdXNycCA9IA0KPiB1aGQ6OnVzcnA6Om11bHRpX3VzcnA6Om1h
a2UoZGV2aWNlX2FyZ3MpOw0KPg0KPiAvLyBMb2NrIG1ib2FyZCBjbG9ja3MNCj4NCj4gc3RkOjpj
b3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkxvY2sgbWJvYXJkIGNsb2NrczogJWYiKSAlIHJlZiA8PCBz
dGQ6OmVuZGw7DQo+DQo+IHVzcnAtPnNldF9jbG9ja19zb3VyY2UocmVmKTsNCj4NCj4gLy9hbHdh
eXMgc2VsZWN0IHRoZSBzdWJkZXZpY2UgZmlyc3QsIHRoZSBjaGFubmVsIG1hcHBpbmcgYWZmZWN0
cyB0aGUgDQo+IG90aGVyIHNldHRpbmdzDQo+DQo+IHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0
KCJzdWJkZXYgc2V0IHRvOiAlZiIpICUgc3ViZGV2IDw8IHN0ZDo6ZW5kbDsNCj4NCj4gdXNycC0+
c2V0X3R4X3N1YmRldl9zcGVjKHN1YmRldik7DQo+DQo+IHN0ZDo6Y291dCA8PCBib29zdDo6Zm9y
bWF0KCJVc2luZyBEZXZpY2U6ICVzIikgJSB1c3JwLT5nZXRfcHBfc3RyaW5nKCkgDQo+IDw8IHN0
ZDo6ZW5kbDsNCj4NCj4gLy9zZXQgdGhlIHNhbXBsZSByYXRlDQo+DQo+IGlmIChyYXRlIDw9IDAu
MCkgew0KPg0KPiBzdGQ6OmNlcnIgPDwgIlBsZWFzZSBzcGVjaWZ5IGEgdmFsaWQgc2FtcGxlIHJh
dGUiIDw8IHN0ZDo6ZW5kbDsNCj4NCj4gcmV0dXJuIH4wOw0KPg0KPiB9DQo+DQo+IC8vIHNldCBz
YW1wbGUgcmF0ZQ0KPg0KPiBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBUWCBS
YXRlOiAlZiBNc3BzLi4uIikgJSAocmF0ZSAvIA0KPiAxZTYpIDw8IHN0ZDo6ZW5kbDsNCj4NCj4g
dXNycC0+c2V0X3R4X3JhdGUocmF0ZSk7DQo+DQo+IHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0
KCJBY3R1YWwgUlggUmF0ZTogJWYgTXNwcy4uLiIpICUgDQo+ICh1c3JwLT5nZXRfdHhfcmF0ZSgp
IC8gMWU2KSA8PCBzdGQ6OmVuZGwgPDwgc3RkOjplbmRsOw0KPg0KPiAvLyBzZXQgZnJlcQ0KPg0K
PiBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBSWCBGcmVxOiAlZiBNSHouLi4i
KSAlIChmcmVxIC8gDQo+IDFlNikgPDwgc3RkOjplbmRsOw0KPg0KPiB1aGQ6OnR1bmVfcmVxdWVz
dF90IHR1bmVfcmVxdWVzdChmcmVxLGxvX29mZnNldCk7DQo+DQo+IHVzcnAtPnNldF90eF9mcmVx
KHR1bmVfcmVxdWVzdCk7DQo+DQo+IHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwg
VFggRnJlcTogJWYgTUh6Li4uIikgJSANCj4gKHVzcnAtPmdldF90eF9mcmVxKCkgLyAxZTYpIDw8
IHN0ZDo6ZW5kbCA8PCBzdGQ6OmVuZGw7DQo+DQo+IC8vIHNldCB0aGUgcmYgZ2Fpbg0KPg0KPiBz
dGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBUWCBHYWluOiAlZiBkQi4uLiIpICUg
Z2FpbiA8PCANCj4gc3RkOjplbmRsOw0KPg0KPiB1c3JwLT5zZXRfdHhfZ2FpbihnYWluKTsNCj4N
Cj4gc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkFjdHVhbCBUWCBHYWluOiAlZiBkQi4uLiIp
ICUgDQo+IHVzcnAtPmdldF90eF9nYWluKCkgPDwgc3RkOjplbmRsIDw8IHN0ZDo6ZW5kbDsNCj4N
Cj4gLy8gc2V0IHRoZSBJRiBmaWx0ZXIgYmFuZHdpZHRoDQo+DQo+IHN0ZDo6Y291dCA8PCBib29z
dDo6Zm9ybWF0KCJTZXR0aW5nIFRYIEJhbmR3aWR0aDogJWYgTUh6Li4uIikgJSAoYncgLyANCj4g
MWU2KSA8PCBzdGQ6OmVuZGw7DQo+DQo+IHVzcnAtPnNldF90eF9iYW5kd2lkdGgoYncpOw0KPg0K
PiBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQWN0dWFsIFRYIEJhbmR3aWR0aDogJWYgTUh6
Li4uIikgJSANCj4gKHVzcnAtPmdldF90eF9iYW5kd2lkdGgoKSAvIDFlNikgPDwgc3RkOjplbmRs
IDw8IHN0ZDo6ZW5kbDsNCj4NCj4gLy8gc2V0IHRoZSBhbnRlbm5hDQo+DQo+IHN0ZDo6Y291dCA8
PCBib29zdDo6Zm9ybWF0KCJTZXR0aW5nIFRYIEFudGVubmE6ICVzIikgJSBhbnQgPDwgc3RkOjpl
bmRsOw0KPg0KPiB1c3JwLT5zZXRfdHhfYW50ZW5uYShhbnQpOw0KPg0KPiBzdGQ6OmNvdXQgPDwg
Ym9vc3Q6OmZvcm1hdCgiQWN0dWFsIFRYIEFudGVubmE6ICVzIikgJSANCj4gdXNycC0+Z2V0X3R4
X2FudGVubmEoKSA8PCBzdGQ6OmVuZGwgPDwgc3RkOjplbmRsOw0KPg0KPiBzdGQ6OnN0cmluZyBj
cHVfZm9ybWF0ID0ic2MxNiI7DQo+DQo+IHN0ZDo6c3RyaW5nIHdpcmVmbXQ9InNjMTYiOw0KPg0K
PiB1aGQ6OnN0cmVhbV9hcmdzX3Qgc3RyZWFtX2FyZ3MoY3B1X2Zvcm1hdCwgd2lyZWZtdCk7DQo+
DQo+IHN0ZDo6dmVjdG9yPHNpemVfdD4gY2hhbm5lbF9udW1zOw0KPg0KPiBjaGFubmVsX251bXMu
cHVzaF9iYWNrKGJvb3N0OjpsZXhpY2FsX2Nhc3Q8c2l6ZV90PigiMCIpKTsNCj4NCj4gc3RyZWFt
X2FyZ3MuY2hhbm5lbHMgPSBjaGFubmVsX251bXM7DQo+DQo+DQo+IEl0IHdvdWxkIGJlIGdyZWF0
IHRvIGtub3cgaG93IHRvIGdldCBpdCB3b3JrIHByb3Blcmx5Lg0KPg0KPiBUaGFuayB5b3UsDQo+
DQo+IFNvcmluDQo+DQo+DQpZb3Ugc2hvdWxkIGJlIGFibGUgdG8gdXNlIHRoZSB0eF9zYW1wbGVz
X2Zyb21fZmlsZSBleGFtcGxlIGZvciB0aGlzIA0Kc2ltcGxlIHRlc3QsIHdoaWNoIGluY2x1ZGVz
IHRoZSBhYmlsaXR5IHRvIHNldCBhbiBMTyBvZmZzZXQuDQogwqAgVGhpcyB3aWxsIHRlbGwgeW91
IHdoZXRoZXIgaXRzIHlvdXIgc2V0dXAgb3Igc29tZXRoaW5nIGVsc2UuDQoNCk1ha2Ugc3VyZSB0
aGF0IHlvdXIgc2FtcGxlIGFtcGxpdHVkZXMgYXJlbid0IHNhdHVyYXRlZCAodGhhdCBpcywgZG9u
J3QgDQphcHByb2FjaCBtb3JlIHRoYW4gcGVyaGFwcyArLy0gMjAwMDAgb3Igc28pLg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
