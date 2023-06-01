Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3940A71F613
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jun 2023 00:37:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3CDB384547
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 18:37:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685659042; bh=Y3RoM+m3CEz9dztZBqW8RjSMUV6cxMf3YVan0YN5tXc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wlUGIF4cZi190njw5+x1bclmdz2VhrDsmhp2cxbPCRYgVxpvApdnqy5lUng53YcnJ
	 YkvdBKIZXm0xFUilN0noNzAmwJtUOuLVbgtC4w4IWM1+ddkZuhnt6yjXOL2SavqvHh
	 umCLYIme9VRuD2LX/mPROzl18zaYQLxstzQoKqhdQiKUlgO4HZWLvj8qL6hS4u3qHs
	 0vZIZPi5+BCCZg4a7Qz/oQp196od7OpffcopOB+us3Wo+LEtnYNzkeCTAUqAgz1fb+
	 L9HtIPY/lt8NzgEa7APCibaR0HYsWWbJ9EtBbQ3IGEl3xfQUO2mTuKAiBSLDy+ZMcp
	 fZWBhuWMIOe/Q==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F83A3811CC
	for <usrp-users@lists.ettus.com>; Thu,  1 Jun 2023 18:36:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZSUQ+uNx";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6261367d2f1so12280196d6.3
        for <usrp-users@lists.ettus.com>; Thu, 01 Jun 2023 15:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685658982; x=1688250982;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gSkqr17YI3mUf4RSh05B77PKxJVOg/vVk45od+ZGQrY=;
        b=ZSUQ+uNxJ6iFosXc3RCoMsNmI0BKfLyNODQhVfyae//JivN8wOaA8Np/M8elwQZkil
         YTXWEkNlBA4UQ2divnllX9+utjW9c3zeFk/iA0+deiXRHU0i7ipqKe79mBbPBTfVQrwT
         Fjx00ms4TU8mFD3EEYTIqSBVj5dOSKiVdcBeax00V/cBVMOaRCSiLXqk9em14FC240yI
         SDIIi6l+Ik8rB87SbSt8YY7EM566kmBMfVo5n0dtBBUNECSRfXIxVgmqJPfepayjwh1Q
         ChrCCsf3pfRCFB6Q3gir23O4kMLJMGJgUKw8AvntRhGUmwHP3w4um+UPgciFvHB+bPIj
         coIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685658982; x=1688250982;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gSkqr17YI3mUf4RSh05B77PKxJVOg/vVk45od+ZGQrY=;
        b=UsIELxTSRucyr6CyS3dkPuCeON2ys81HO70Ann2A5IyM+EDqT1o0omBtREo5WW92Fe
         Mclt8Nn+eo/VvdGefwLnopwjhhnKaw5D0Ja+ruoGfqeRJoSv+1a3goE3HK5QJo+0XNIa
         Q2GO9Yymg8sYCwMZ3DDbmxpU2bwI1U59eYgQnwEELZoPwsBmeFcZhqtUSGa4kK8qUb7K
         nNRzIqYvn9n6c5u7Iy/a3Kvxb7gqEMwd0HqnTxf9jRvCI61gCjtPeJ+UgvO3E0fQqbTj
         kzsXGs2hFQ3y1nb93h9kmdK8rv2mfYryYbWB8Z6Yk3NT4cpRgJ64a492TKepWtWHVAvt
         wivg==
X-Gm-Message-State: AC+VfDxW3gXfG4g/lfkNPfnbFR/J3AWej+2DA/RJi2w+5+S2ug6pNJcR
	WRoc8hu7qNA7X2GUW9LdsM3yUyW4NJoA5w==
X-Google-Smtp-Source: ACHHUZ6584+Y91prqBZHg9leHHUxKaBYta5oOp62AwCsJVk72voFYc3KJX48OHsSxRcP3Zi+2zFuUw==
X-Received: by 2002:a05:6214:c4a:b0:625:83ab:8a42 with SMTP id r10-20020a0562140c4a00b0062583ab8a42mr14530960qvj.46.1685658982272;
        Thu, 01 Jun 2023 15:36:22 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id w20-20020a0562140b3400b0062381fa97c5sm4095955qvj.92.2023.06.01.15.36.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 15:36:21 -0700 (PDT)
Message-ID: <eb77fd10-41be-c80c-79cf-41ea8b4db269@gmail.com>
Date: Thu, 1 Jun 2023 18:36:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <34f133e4-3eab-0cc4-a5ba-e579fbfaf3c9@febo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <34f133e4-3eab-0cc4-a5ba-e579fbfaf3c9@febo.com>
Message-ID-Hash: H5QGB2RN6E57V4URQRYFE5VJ7U6QL5UZ
X-Message-ID-Hash: H5QGB2RN6E57V4URQRYFE5VJ7U6QL5UZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: octoclock specs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H5QGB2RN6E57V4URQRYFE5VJ7U6QL5UZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDEvMDYvMjAyMyAxNTo1NiwgSm9obiBBY2tlcm1hbm4gTjhVUiB3cm90ZToNCj4gSGkgLS0N
Cj4NCj4gVGhlcmUncyBzb21lIGZhaXJseSBvbGQgZGF0YSBhYm91dCB0aGUgT2N0b2Nsb2NrIGhl
cmU6DQo+IGh0dHA6Ly93d3cuYW5kZXJzd2FsbGluLm5ldC8yMDE2LzA5L2V0dHVzLW9jdG9jbG9j
ay1kaXN0cmlidXRpb24tYW1wbGlmaWVyLyANCj4NCjIwMHBzIG9mIHRpbWluZyBkaXNwZXJzaW9u
IGFtb25nIGRpZmZlcmVudCBnYXRlcyBpc24ndCB0aGF0IHdlaXJkLCB3aGVuIA0KdGhlIHN3aXRj
aGluZyB0aW1lIGNhbiB0YWtlIHVwIHRvDQogwqAgMTVuc2VjIG9uIHRoZSBub24tJ0YnIHZhcmlh
bnRzIG9mIHRoZSA3NDA0LsKgIEkgZG9uJ3Qga25vdyB3aGljaCBvZiANCm1hbnkgdmFyaWFudHMg
b2YgdGhlIDc0MDQgd2VyZSB1c2VkIG9uDQogwqAgdGhlIE9jdG9jbG9jay7CoCBCdXQgaWYgdGhl
eSdyZSBnYXJkZW4gdmFyaWV0ecKgIEhDIG9yIExTIG9yIHNvbWV0aGluZywgDQp0aGUgc3dpdGNo
aW5nIHRpbWUgZGlzcGVyc2lvbiBvbiB0aGUNCiDCoCAxUFBTIG1heSBiZSBmYWlybHkgaGlnaC4N
Cg0KDQoNCg0KPg0KPiBJbiB0aGUgc2hhbWVsZXNzIHBsdWcgZGVwYXJ0bWVudCwgdGhlIFRBREQt
MSBkaXN0cmlidXRpb24gYW1wbGlmaWVyIA0KPiBmcm9tIFRBUFI6DQo+IGh0dHBzOi8vdGFwci5v
cmcvcHJvZHVjdC90YWRkLTEtcmYtZGlzdHJpYnV0aW9uLWFtcGxpZmllci8NCj4NCj4gaGFzIHZl
cnkgZ29vZCBhZGRpdGl2ZSBub2lzZSwgYW5kIGlzIGluZXhwZW5zaXZlLsKgIEl0IGhhcyBzaXgg
Y2hhbm5lbHMgDQo+IGJ1dCB0d28gb3IgbW9yZSBib2FyZHMgY2FuIGJlIHN0YWNrZWQgYW5kIGRy
aXZlbiBmcm9tIGEgY29tbW9uIGlucHV0LiANCj4gVGhlIGRvd25zaWRlIGlzIHRoYXQgaXQncyBh
IGtpdCAodGhyb3VnaC1ob2xlIHBhcnRzKS4NCj4NCj4gSSBjb21wYXJlZCB0aGUgYWRkaXRpdmUg
cGhhc2Ugbm9pc2Ugb2Ygc2V2ZXJhbCBkaXN0cmlidXRpb24gYW1wcyBoZXJlOg0KPiBodHRwczov
L3d3dy5mZWJvLmNvbS9wYWdlcy9hbXBsaWZpZXJfcGhhc2Vfbm9pc2UvDQo+DQo+ICh0aGF0IGRh
dGEgaXMgYWxzbyBmYWlybHkgb2xkOyBjdXJyZW50bHktc2hpcHBlZCBUQURELTFzIHVzZSBhIG5l
d2VyIA0KPiBhbXBsaWZpZXIgY2hpcCB0aGF0IHNlZW1zIHRvIGhhdmUgYSBjb3VwbGUgb2YgZEIg
YmV0dGVyIHBlcmZvcm1hbmNlKS4NCj4NCj4gQmVzdCwNCj4gSm9obg0KPiAtLS0tDQo+DQo+IE9u
IDYvMS8yMyAxNToxNiwgRXVnZW5lIEdyYXl2ZXIgd3JvdGU6DQo+PiBIZWxsbywNCj4+DQo+PiBJ
IGFtIGJ1aWxkaW5nIGEgaGlnaC1lbmQgdGVzdGJlZCBhbmQgdHJ5aW5nIHRvIGRlY2lkZSBvbiBh
IDEwIE1IeiANCj4+IGRpc3RyaWJ1dGlvbiBvcHRpb24uwqAgSSd2ZSB1c2VkIG9jdG9jbG9jayBm
b3Igb3RoZXIgc3lzdGVtcyBhbmQgaXQgDQo+PiAnd29ya3MuJ8KgIEhvd2V2ZXIgdGhlIGRhdGFz
aGVldCBpcyBwcmV0dHkgc3BhcnNlLsKgIERvZXMgYW55b25lIGhhdmUgDQo+PiBkZXRhaWxlZCBz
cGVjcyAodGhhdCB5b3UgbWVhc3VyZWQgb3IgZnJvbSBFdHR1cykuwqAgSSBhbSBpbnRlcmVzdGVk
IGluIA0KPj4gdGhlIG5vbi1HUFNETyB2ZXJzaW9uIHNpbmNlIG15IDEwIE1IeiBjb21lcyBmcm9t
IG91dHNpZGUgdGhlIHN5c3RlbQ0KPj4NCj4+IMKgICogcG9ydC10by1wb3J0IGRlbGF5IHZhcmlh
dGlvbg0KPj4gwqAgKiBwaGFzZSBub2lzZSBpbmNyZWFzZSBpZiBhbnkgKGFzc3VtaW5nIGV4dGVy
bmFsIHNvdXJjZSkNCj4+DQo+PiBNeSBvdGhlciBvcHRpb24gaXMgDQo+PiBodHRwczovL2VuZHJ1
bnRlY2hub2xvZ2llcy5jb20vcHJvZHVjdHMvZGlzdHJpYnV0aW9uLzEwLU1Iei1sb3ctcGhhc2Ut
bm9pc2UgDQo+PiA8aHR0cHM6Ly9lbmRydW50ZWNobm9sb2dpZXMuY29tL3Byb2R1Y3RzL2Rpc3Ry
aWJ1dGlvbi8xMC1NSHotbG93LXBoYXNlLW5vaXNlPiwgDQo+PiB3aGljaCBpcyBhYm91dCA1eCBt
b3JlIGV4cGVuc2l2ZS4NCj4+DQo+PiBUaGFua3MuDQo+Pg0KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fDQo+Pg0KPj4gRXVnZW5lIEdyYXl2ZXIsIFBoLkQuDQo+PiBBZXJvc3BhY2UgQ29ycC4s
IFByaW5jaXBhbCBFbmdpbmVlcg0KPj4gVGVsOiAzMTAuMzM2LjEyNzQNCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
