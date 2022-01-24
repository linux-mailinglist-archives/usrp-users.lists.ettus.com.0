Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EC449873B
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 18:50:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 805F4384AA4
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 12:50:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="efDY8Q+x";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 351B8384158
	for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 12:49:37 -0500 (EST)
Received: by mail-qv1-f41.google.com with SMTP id g11so15749375qvu.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Jan 2022 09:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=r+pqJHAVzK4Sm+waJ+2RYuVQSE1lx1FZ2HvhjM6tnV4=;
        b=efDY8Q+xlxeIkyLxvDaNMC/zfFY36c/RBG1JaRIUmIHd52E6L8OM5nYDafikOPqZIB
         JxsquWKiqgwon17Bspy6xzkdgSn5w07nJOMZ0E1+eNTtxZxFgmN1DNTSzDlIj0ZinQEQ
         QgH4eodIU4N6id4YrvCzJX3o1ZygTRiseF7sRBz4Se2QHsGh8OIZMnpNsNGhXeiW5nMr
         PyGaYP/SAF4c/f2rZm5gYhk+aKL7wfHP5DGd+APInmQzxVLcyVToXojj7Lo59Rcan/ma
         kfeXb/BvDyYP91IoHarbdCTf/2vVNSfg90SMb7ense/BmA1UsNWjTXo/PAdYLY88fShZ
         7Cmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r+pqJHAVzK4Sm+waJ+2RYuVQSE1lx1FZ2HvhjM6tnV4=;
        b=uWr4l3oj8CE+moCxgXiCe4nLs+yqY6QeqfKScyh3KoPuh0rRJOYzdKJp0azebS8B5/
         0jtzglhyFKrhUzF05Aq9JSF71ujnaPb6uOgydDZRJUWYQXijTKbAiyDvRGlhNOsD1mZS
         nrjjY5toyAbaeWu5+Ae8UTSUB+XMNB12el6cV0GyiKUTI5//iXTyhyMDl12KvXaPETK/
         frrIywkP7LDI0+MpJnSVRIFbvhjrL5uJqgLE9ETi7aPJxJdysbOQdLdHY9x6UmKtOw/O
         CgrM8sOzFrCkWD4L3qb5KDVKeyZbfS6DmILoXXJmAEUmxkwC2Dr+wdKUuGGQiN8cJw1o
         nMGg==
X-Gm-Message-State: AOAM532uXFZ6pmHv263NgO6zTvXyYfoGhciqRx/RDfvOIJu+03fG8Oee
	7sfMjF0rQ2066CJr6gR1LkyVKVLr7vOnzQ==
X-Google-Smtp-Source: ABdhPJycqmGCzmytOUTwtKc09a4FaybLY39BjfKZeNQbngrFTykgFKG+FENWAVT9fVb+3JlEleOSCw==
X-Received: by 2002:a05:6214:2a8b:: with SMTP id jr11mr15650494qvb.49.1643046576685;
        Mon, 24 Jan 2022 09:49:36 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d13sm8006628qte.77.2022.01.24.09.49.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 09:49:36 -0800 (PST)
Message-ID: <374574be-bb6c-f737-46f4-97d738178b4d@gmail.com>
Date: Mon, 24 Jan 2022 12:49:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ming You <M.You@lboro.ac.uk>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <f24351c6-0aae-d3e4-14be-9c531480bc75@gmail.com>
 <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
Message-ID-Hash: QV67RIYAT56N6TX342KYC6H7IHCWY77B
X-Message-ID-Hash: QV67RIYAT56N6TX342KYC6H7IHCWY77B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QV67RIYAT56N6TX342KYC6H7IHCWY77B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0yNCAxMjozNywgTWluZyBZb3Ugd3JvdGU6DQo+IEhpIE1hcmN1cywNCj4NCj4g
VGhlIFgzMTAgaXMgYWN0dWFsbHkgZnVsZmlsbGVkIGJ5IFVTUlAtMjk1MCwgaS5lLiwgWDMxMCBh
bmQgV0JYIGFuZCBHUFNETy4NCj4NCj4gVGhlIGdyYXBoIGhhcyBiZWVuIGF0dGFjaGVkLCBhY3R1
YWxseSBpdCBpcyB2ZXJ5IHNpbXBsZSwganVzdCBzZW5kIGEgdHJpYW5nbGUgc2lnbmFsIG92ZXIg
b25lIGNoYW5uZWxzIGZyb20gdGhlIHR4IChmb3IgY29udmVuaWVuY2UsIEkndmUgb25seSBhdHRh
Y2hlZCBvbmUgYW50ZW5uYSB0byB0aGUgb25lIGNoYW5uZWwgb24gdHggc2lkZSwgc28gdGhhdCBp
dCBpcyBhIG11Y2ggY2xlYXIgY29uc3RlbGxhdGlvbiBmaWd1cmUgb24gcnggc2lkZSkuIFRoZSBj
b25zdGVsbGF0aW9uIGZvciBzdWNoIGNhc2Ugc2hvdWxkIGJlIGEgcXVhZHJpbGF0ZXJhbCBzaGFw
ZS4gV2l0aCBYMzEwKFdCWCksIHRoZSBjb25zdGVsbGF0aW9uIGF0IGJvdGggY2hhbm5lbHMgYXQg
cnggaXMgdmVyeSByb2J1c3QgKHRoZSBzaGFwZSBpcyBub3QgbW92aW5nIG11Y2gpLCBidXQgd2l0
aCBOMzIxLCB0aGUgY29uc3RlbGxhdGlvbiBzaGFwZSBpcyBhcHBhcmVudGx5IHJvdGF0aW5nIHdp
dGggdGltZSwgYW5kIGlmIGluY3JlYXNpbmcgZnJlcXVlbmN5IGl0IG1pZ2h0IGp1c3Qgcm90YXRl
LiBUaGF0IGlzIHdoYXQgSSBhbSBjb25mdXNlZCBhYm91dCB0aGUgTjMyMSBwaGFzZSBsb2NrIHBl
cmZvcm1hbmNlIGV2ZW4gd2l0aCBleHRlcm5hbCBSRUYgYW5kIFBQUyBmcm9tIENEQSAyOTkwLiAg
SXQgc2VlbXMgdG8gbWUgdGhhdCB0aGVyZSBzaG91bGQgYmUgc29tZSAicHJvcGVyIiBjb25maWd1
cmF0aW9uL3R1bmluZywgaWYgdGhpcyBpcyBub3QgYSBidWcuDQo+DQo+IFJlZ2FyZGluZyB0aGUg
M3JkIHF1ZXN0aW9uIG9uIHdoYXQgSSBhbSBtZWFzdXJpbmcsIGZyb20gdGhlIGFib3ZlIGRlc2Ny
aXB0aW9uIHlvdSBjYW4gZ2V0IGFuIGlkZWEgd2hhdCBJIG1lYW4gLS0gIEkganVzdCB3YW50IHRo
ZSBOMzIxIHRvIGhhdmUgdGhlIHNhbWUgcGhhc2UgcGVyZm9ybWFuY2UgYXMgWDMxMCwgc2luY2Ug
dGhlIHJvYnVzdCBwaGFzZSBsb2NraW5nIGlzIGNyaXRpY2FsIHRvIGFueSBleHBlcmltZW50IHdo
ZW4gbXVsdGlwbGUgY2hhbm5lbHMvdXNycHMgYXJlIGludm9sdmVkLg0KPg0KPiBBbHNvIHRvIG1l
bnRpb24gdGhhdCBJJ3ZlIHRyaWVkIGFsbCBzdXBwb3J0ZWQgTjMyMSBtYXN0ZXIgY2xvY2ssIDIw
ME0sIDI0NS43Nk0gYW5kIDI1ME0sIHRoZXkgZG9uJ3QgaGVscCBhbmQgcHJvYmxlbXMgYXJlIHRo
ZSBzYW1lLg0KPg0KPiBBbnkgaWRlYSBvciBzdWdnZXN0aW9ucyB3aWxsIGJlIG11Y2ggYXBwcmVj
aWF0ZWQuDQo+DQo+IFRoYW5rcywNCj4gTWluZw0KPg0KPg0KV2hhdCBoYXBwZW5zIGlmIHlvdSBy
ZWR1Y2XCoCB0aGUgYmFzZWJhbmQgYW1wbGl0dWRlIGEgbGl0dGxlIC0tIHBlcmhhcHMgDQp0byAw
Ljg1IG9yIDAuOT8NCg0KQXJlIHRyYW5zbWl0dGluZyBvdmVyIGNhYmxlIG9yIGFudGVubmFzP8Kg
IElmIGNhYmxlLCBkbyB5b3UgaGF2ZSBhbiANCmF0dGVudWF0b3IgaW4gcGxhY2U/IElmIHNvLCBo
b3cgbXVjaCBhdHRlbnVhdGlvbj8NCg0KQXJlIHlvdSBhYmxlIHRvIGNvbmZpcm0gdGhhdCB0aGUg
Q0RBLTI5OTAgaXMgcHJvZHVjaW5nIGEgMTBNSHogYW5kIDFQUFMgDQpzaWduYWw/DQoNCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
