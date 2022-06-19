Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E619E5507E8
	for <lists+usrp-users@lfdr.de>; Sun, 19 Jun 2022 03:50:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBCF63841EF
	for <lists+usrp-users@lfdr.de>; Sat, 18 Jun 2022 21:50:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655603454; bh=DUSqfLAUgjG3xr7mr4/S1EEnfVsRKWf8/dTyW7k3eNY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iikLh6Bknvw7YCBBMhmmILP1etVWH7qEF+u6TUEN5331B4LclxPH+IU7tudIv5l82
	 gfT5VnzcYVVo3bbsCdSgx0SViuM9GnWNHkkRUsY5tGBeQpyjC93DoKeZYGX1ogKnrU
	 05isez6bHH7xay/Wfvhmi5IrqaMswc1vxTGOYTZEC4/PsZO2CgluMX8T2TNX56DVM6
	 621Xdi2CnfrsDMKHGiYODdrVpDubYgH+SXZnNuCHXUL+no4Ry8adEl6tgyt5VvgcvT
	 BfVaTEWm/wa8RkqdjI6/1FF1eTHMsTLMF2SdMCBDrIuDuMQVqBowx7hvxIiByo3N12
	 pZp1j7lxg7zGw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E04C53841A6
	for <usrp-users@lists.ettus.com>; Sat, 18 Jun 2022 21:49:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k/csyo+3";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id cu16so10993146qvb.7
        for <usrp-users@lists.ettus.com>; Sat, 18 Jun 2022 18:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=DtmAvjZmtmhTq1YRsG8qX6U6cJU7Lgn9+GlkGBwA0Qo=;
        b=k/csyo+3tTDJvqbTCyInNMaslcZQt9tnOjfCaKn1oy9B7MV2hcpHcaFy3SEev/cqKT
         b9NywVBH/6YG7zwogWy2tcj2FPzYw4YWA7JJdcR+sLZJkudLvhKnfEqyN92WIqIulCSU
         8qQI6XqBozsUiuImEKIrjK9S9jKuZ8jtKYj3twZ1x7NDtYjk1GMdI2J7kxB/4fJIzSJ+
         KhvrpSdJAJrDw1njJBez1Y0bFGTWKSpssmgSyaRCBUi2STW42GjFYjA/Kc283xRWg1oG
         rHssebuU/FTl6BuvZ/ZooKD0ecKZZleS3jlDDOPa7khvslPQIBQ0vCANjj1UaHdU+yrq
         eu6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DtmAvjZmtmhTq1YRsG8qX6U6cJU7Lgn9+GlkGBwA0Qo=;
        b=BkZoPy55SlJ97xMvzCuJJIAKQNDDvs56q6GThRgu0fgWA7HuMALEZIXeFXernBJkui
         4UhkEnu1+jyVmldQlZfZGhGr+ymEa1zohGRQm5ow9xIG1/vMw46Qa9w6Lw6QoCsbN8rf
         OIKFZ9A+uiVaRYRzvKT7/d+eV1EmK8/NhDHuAInhHGyrmK6vN0/2CRRo7SET+g9pfV6o
         jdErCqu69tR5ZOzSOoMV0lLmDmJ9IGNvsCtYJjUolJ52qKoSqOWEweU080rIdXZxYped
         JBjOcsKmddOeJGMFu+nQ9vvgx53Ec+lV+1QuYbU3fjK1w4zlX2ytRCwAw2Wz91YuAFxl
         F9kw==
X-Gm-Message-State: AJIora+jBE62OUM9fKMSJ+IDm7o8X5NGt2GxC7o2CV7uf6XWmUFDy+bq
	RK64ThgslG+PkJS5JO1dWAznjkKuwYCfmB8W
X-Google-Smtp-Source: AGRyM1trV9e1OhO/0gXFdiZtVvDW+s/IX+M3qXfkwxMf+ZzmbeflDm6FX5GP4h4f5CCeo2XznGzu/A==
X-Received: by 2002:ac8:578d:0:b0:305:19c7:eec9 with SMTP id v13-20020ac8578d000000b0030519c7eec9mr14397456qta.299.1655603390120;
        Sat, 18 Jun 2022 18:49:50 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id e7-20020a05620a014700b006a66f3d3708sm7884631qkn.129.2022.06.18.18.49.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jun 2022 18:49:49 -0700 (PDT)
Message-ID: <41e81a68-3327-2f2e-3f9e-97ed7ecee580@gmail.com>
Date: Sat, 18 Jun 2022 21:49:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTR1UvNgy85dc77qnrq4ku3XuYQnGpLvBMvy-YkrTB7rdg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTR1UvNgy85dc77qnrq4ku3XuYQnGpLvBMvy-YkrTB7rdg@mail.gmail.com>
Message-ID-Hash: GVAOKPKZUGUQKQZIETKFCMZBDQVU777Q
X-Message-ID-Hash: GVAOKPKZUGUQKQZIETKFCMZBDQVU777Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2xx custom FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVAOKPKZUGUQKQZIETKFCMZBDQVU777Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNi0xOCAyMToyNiwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IEhpLA0KPiBIYXMgYW55
b25lIG1vZGlmaWVkIHRoZSBCMnh4IG1vZHVsZSAibmV3X3R4X2NvbnRyb2wiIGluIHRoZSBmb2xs
b3dpbmcgDQo+IHdheSBzbyB0aGF0IGl0IHdvdWxkIGJlIHN0cmFpZ2h0Zm9yd2FyZCB0byBpbnNl
cnQgYSBjdXN0b20gZHNwIG1vZHVsZSANCj4gKDMyLWJpdCBBWEkgaW4vb3V0KT8NCj4NCj4gVGhl
IGV4aXN0aW5nIGxvZ2ljIHRha2VzIGFzIGlucHV0IGFuIEFYSSBzdHJlYW0gd2l0aCA2NC1iaXQg
c2FtcGxlcyANCj4gYW5kIGNvbnZlcnRzIHRoaXMgdG8gMzItYml0IHNhbXBsZXMgKG5vbiBBWEks
IHN0cm9iZS9ydW4pIHRoYXQgYXJlIA0KPiBzZW50IHRvIHRoZSBEVUMuwqAgQWRkaXRpb25hbGx5
LCBpdCBjaGVja3MgZm9yIGVycm9ycyBvbiB0aGUgaW5jb21pbmcgDQo+IHN0cmVhbSBhbmQgaGFu
ZGxlcyBVbmRlcnJ1biAvIExhdGUgZm9yIHRoZSBvdXRnb2luZ8KgMzIgYml0IHNhbXBsZXMuDQo+
DQo+IEkgd291bGQgbGlrZSB0byBkaXZvcmNlIHRoZSBpbnB1dCBmcm9tIHRoZSBvdXRwdXQgbG9n
aWMgYnkgYWRkaW5nIGFuIA0KPiBvdXRwdXQgQVhJIDMyLWJpdCBzdHJlYW0gYW5kIGFuIGlucHV0
IEFYSSAzMi1iaXQgc3RyZWFtIGZvciB0aGUgDQo+IHB1cnBvc2Ugb2Ygc2VuZGluZyB0byAoJiBy
ZXRyaWV2aW5nIGZyb20pIGEgImN1c3RvbSBEU1AgYmxvY2sgKDMyIGJpdCANCj4gQVhJKSIuIFdp
dGggdGhpcyBkaXZvcmNlLCB0aGUgbG9naWMgb24gdGhlIGV4aXN0aW5nIDY0LWJpdCBBWEkgaW5w
dXQgDQo+IHN0cmVhbSAobG9va2luZyBmb3Igc2VxdWVuY2UgZXJyb3JzICYgcmVzcG9uZGluZyB0
byBFT0IgQWNrKSBjYW4gDQo+IHJlbWFpbiBsYXJnZWx5IHRoZSBzYW1lLCBidXQgdGhlIGxvZ2lj
IGZvciBkZXRlY3RpbmcgTGF0ZS9VbmRlcnJ1biANCj4gd291bGQgYmUgbW92ZWQgdG8gdmFsaWRh
dGluZyB0aGUgbmV3IDMyLWJpdCBpbnB1dCBBWEkgc3RyZWFtIGNvbWluZyANCj4gZnJvbSB0aGUg
ImN1c3RvbSBEU1AiIG91dHB1dC7CoCBJbiB0aGUgZXZlbnQgdGhhdCB0aGVyZSBpcyBubyANCj4g
Y3VzdG9twqBEU1AgYmxvY2ssIHRoZSBvdXRwdXQgY291bGQgYmUgcm91dGVkIHN0cmFpZ2h0IGJh
Y2sgdG8gdGhlIGlucHV0Lg0KPg0KPiBJbiBhbnkgY2FzZSwgYmVmb3JlIEkgZW1iYXJrIG9uIHRo
aXMgKHdoaWNoIHdpbGwgYmUgYSBjaGFsbGVuZ2UgZm9yIA0KPiBtZSksIEkgd2FudGVkIHRvIHNl
ZSBpZiBzb21lb25lIGhhZCB0cmllZCB0aGlzLg0KPiBSb2INCj4NCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KTXkgaW1wcmVzc2lv
biBpcyB0aGF0IHRoZXJlIGhhcyBiZWVuIHZlcnkgbGl0dGxlIGN1c3RvbSB3b3JrIGRvbmUgb24g
dGhlIA0KQjJ4eCBGUEdBIG91dCBpbiB0aGUgY29tbXVuaXR5LCBidXQgb2YgY291cnNlIG1hbnkg
cGVvcGxlIHdobyBtaWdodCB3b3JrIA0Kb24gc3VjaCBzdHVmZiBtYXkgbm90DQogwqAgYmUgYXQg
bGliZXJ0eSB0byBkaXNjdXNzLi4uLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
