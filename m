Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6134CB14A
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 22:27:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B7FF384FA6
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 16:27:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z4AMxqTj";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E4BF38488D
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 16:26:39 -0500 (EST)
Received: by mail-qv1-f43.google.com with SMTP id f4so2234529qvd.0
        for <usrp-users@lists.ettus.com>; Wed, 02 Mar 2022 13:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=T1XCxSKTcr7Zx5CPPjQGa1ouRLYzK5gAiiOZxe1d+Ys=;
        b=Z4AMxqTjPlbAFdq5pBruipEO/4f0qcP3KMFT1jsrQZMTMdt4TB91JUWaV8E5eRqnfo
         IdYOziwPQMIOfFaUhPJDpnYxKuF2RvRk8tG83mnNpw3mnIDCn2vVmKrSAi0s6Ei1RNXs
         RDTlg4bwryp5LjhKTb8e0In42UqGU2XdliGOUdkR7HmL1npXEHan+4NzIQNySJfGb6oK
         HMyJkffqUw0HVsQ51H84X9RfoiFbNZP90s2NBVZEwcToPn+aG4SAaRtQu29c+S7vawEF
         HygJ6zjcUoUSogQkhYfCTQln/jFkoP65yHVtMfxjPe5yA9XX9DWIvbpvLjLuH1lRF/5q
         mRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T1XCxSKTcr7Zx5CPPjQGa1ouRLYzK5gAiiOZxe1d+Ys=;
        b=6Q05gF41y/vB8XGbSAL03z+vwaBMhsN42eaFxrY+dRPZ+tPmeJj66HJPLd1ls+rvMI
         cg+QDNnPg98nQzE+hXwA+0LQ60skfoZ4idUW/A37mOe6q+P7CbbaXjA6eeEFCy01JSRo
         ew24qAoFlJ/GATHAxUZeQhsKh3ZNYNhbAOmV5YjTh+Qu8Kwj6YHjOvA3ajpr7d2unk8z
         /IVhcHKAYic0BS5S3alPHXmzfa/Vg0J2wy2Eoq2PT9uKco/ivbsK+3yQi6UPbxd4OBkL
         IwDvZDywbVGQpPZLCVRIOklNIsKpP3wvWmpPG6O+m8+Nx1sp85D+0Eb66xIjbRaYMRXC
         060A==
X-Gm-Message-State: AOAM53355LrpTVoZvddeuCequnUQSil6d8Lja+rMEwx2HyzXxIkb7YCz
	BXKO9kYLSr/sw77l2Ml7AODvg+PCH7jMUw==
X-Google-Smtp-Source: ABdhPJzsGlMRIxxuq4wXRg4GPpRq5oGDbB6IScEvgjC86NdHvm2lmowFbaFcPg+WFns+mFrAafAMYQ==
X-Received: by 2002:ad4:5aaf:0:b0:432:ec0a:f90c with SMTP id u15-20020ad45aaf000000b00432ec0af90cmr14144531qvg.27.1646256398417;
        Wed, 02 Mar 2022 13:26:38 -0800 (PST)
Received: from [192.168.2.195] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id h188-20020a376cc5000000b0064957b23a9csm100043qkc.118.2022.03.02.13.26.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 13:26:38 -0800 (PST)
Message-ID: <15d3388e-530d-4f36-b060-18b98fb2a5c6@gmail.com>
Date: Wed, 2 Mar 2022 16:26:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
 <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
 <BN6PR16MB1700F6B67CE5F3F4EA17DB7DB9039@BN6PR16MB1700.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN6PR16MB1700F6B67CE5F3F4EA17DB7DB9039@BN6PR16MB1700.namprd16.prod.outlook.com>
Message-ID-Hash: RHX2HUL3Q66THM6DU5VONFKQIRXTQVKU
X-Message-ID-Hash: RHX2HUL3Q66THM6DU5VONFKQIRXTQVKU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: single flow utilising multiple receivers with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RHX2HUL3Q66THM6DU5VONFKQIRXTQVKU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0wMiAxNjoyMywgSm9uYXRoYW4gUHJhdHQgd3JvdGU6DQo+IFdlbGwsIHllcyBJ
IGRvIHdhbnQgdG8gZG8gdGhhdC4NCj4NCj4gSXQncyBhIHRlc3Qgb2YgZGF0YSB0cmFuc2ZlciBj
YXBhYmlsaXRpZXMgb2YgdGhlIFBDIGluIHByZXBhcmF0aW9uIGZvciB1c2Ugd2l0aCBhbiBYNDEw
IGluIHRoZSBmdXR1cmUgKGJ1dCBJIGRvbid0IGhhdmUgYW4gWDQxMCB5ZXQpLg0KPg0KPiBUaGUg
b3RoZXIgcmVhc29uIGZvciBvdmVyIHNhbXBsaW5nIHRoZSBiYW5kIGlzIHRoYXQgaW4gZGV0ZWN0
aW5nIGEgcHVsc2Ugb2YgUkYgc2lnbmFsLCB0aGUgcHJlY2lzZSBzdGFydCB0aW1lIGlzIHZlcnkg
aW1wb3J0YW50IGluIG91ciBhcHBsaWNhdGlvbiBzbyB0aGF0IHRoZSBoaWdoZXIgc2FtcGxlIHJh
dGUgYWZmb3JkcyBiZXR0ZXIgcmVzb2x1dGlvbiBpbiB0aGF0IHJlZ2FyZC4NCj4gVGhlIFgzMTAg
aGFzIHR3byAxMEdiRSBpbnRlcmZhY2VzLCBpcyB0aGVyZSBub3QgYW4gYXBwcm92ZWQgd2F5IG9m
IHVzaW5nIHRoZW0gaW4gdGhpcyBtYW5uZXI/IFdoYXQgaWYgSSBoYWQgMiB4IFR3aW5SeCBhbmQg
d2FudGVkIHRvIGdldCAxMDBNU1BTIGZyb20gYWxsIGZvdXIgb2YgdGhlbT8NCj4NCj4ga2luZCBy
ZWdhcmRzDQo+IEpQDQo+DQo+DQpZb3UganVzdCBuZWVkIHRvIHVzZSB0aGUgInNlY29uZF9hZGRy
IiBzeW50YXgsIGFzIEkgbGlua2VkIGVhcmxpZXIgaW4gDQp0aGlzIHRocmVhZC7CoMKgIFRoZSAi
YWRkck49IiBzeW50YXggeW91J3JlIHVzaW5nIGlzIGZvcg0KIMKgIG11bHRpcGxlIFVTUlBzLg0K
DQpZb3UnbGwgYWxzbyBuZWVkIHRoZSBjb3JyZWN0IEZQR0EgaW1hZ2UgdG8gc3VwcG9ydCAxMEdp
R2Ugb24gYm90aCBwb3J0cywgDQpidXQgSSB0aGluayB5b3UnZCBhbHJlYWR5IHNhaWQgeW91J2Qg
ZG9uZSB0aGF0Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
