Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 219D06EE598
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 18:21:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1945B38486F
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 12:21:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682439693; bh=oQmmoJi/r6fSJUfyRD5carxSl5dGI7YUh2W+y5ODKME=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uLM5oMwD6f6zBXeEad4aINEQ9W8xcH73dyhSlpKDi/ZiYwb9ysmB3vbbj7YVdvsk+
	 6/c7/HEJg8RWWAZCSKprCIiHEBjCYEtYahpWqKF8t3mhtsHtVtZUif6DcSCX/BhySm
	 gjqnw3ctS8UQBuxflSOULXXuKBCpgcfLkAM+sr3GgmGFr4Y7AKw03zVx8QLW9GAX2G
	 hDkiSUb8yPCTpFqkvu+HsdI+g4RYXB0qWF7W0kNg4Yfccy2AMTcrzwoohe/bBRms68
	 T4OZJSwmV5pbJXZY1B0pPFl9LzPHL61KeJPyy2Ux4prYjGOnc0VNZcA5YWDdYFEAHT
	 smAimkT2Hs6Bw==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C4E2638489D
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 12:20:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zf7shFB8";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-5ef414ce24eso28531546d6.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 09:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682439647; x=1685031647;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M5iTH0UoSsyFWS00hRrapYWcTL/4wdV61KjgztSdaCA=;
        b=Zf7shFB8C7/pRpD55K8tSBHaf7NZ2vJEn2bQiGByDPwe3tkkzSSJWC2oNUPuXcxuSl
         j18pvtr928vE6CL0OviRZYKnUEdTEtF/2jE8mXodKMGW6chxVHNJQS2ciZL/47QUahQL
         e0gg5MgbiRg8v9gASbX8RPuZiypxoLqb7wBK5YoSDme/zUj6qSiuhIPQT4jbqJI9FKwE
         0HmeUF95StymtN91Sy6Wo4hJEviv69PNkx6gKkpzxsp1sZAp7gtVTZK4DbzhDRKXYMza
         P6qGuUiLJMwiP05XPQgMm2bjpWF6pLz89aRAPxYKTFA5huJ9xkAPlPU+9fHFWr1qlBb2
         mImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682439647; x=1685031647;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M5iTH0UoSsyFWS00hRrapYWcTL/4wdV61KjgztSdaCA=;
        b=cOD6QZ+v1x6vvjnHADePP8/tGiCO8cnfNpuuMYBEH7T09T0vXT40/6h+vkxw0GrZ6y
         MgKr7UJl6JIWP/Jf3MQ9xLMa+jxdc9zzc1N8yWSH17se1DrrNqQloAs+FCFQWxjEvPvS
         bQVW7vCSfHKFPpNgZ6M6tMI+Lmpl1ypbK/EbQNMbs3LRbY3znDsjpHdS6wnzZ9Td1O3V
         wjw5YUrrEBllPMmA7IF8p/tlssgDXN2vQN1lpHX2QUUYssJMekP3HW9UAzv7opnP/h1J
         dIIqNtCZ8hMcrQI0LDZMySt1DHbCP8OyVxMhagPXkW5ejdtz/aUGNqzjo/v7q+SivK4B
         OS+Q==
X-Gm-Message-State: AAQBX9fo22OT7aFmgZSKVhxDMZvRn4w9VCa4LR/t7Bd7nOAz1EyHdgna
	Hl4GqahreqQ4W1uMY4KdOVfKf42Pnsk=
X-Google-Smtp-Source: AKy350baAnTZC7qnO3LCyDO9i38zYMeTvAXkQ/n5jJru1LIstyxzDjRhECvUUHBFjnKLfwOYvV1HWA==
X-Received: by 2002:a05:6214:226a:b0:5cc:75c7:8f19 with SMTP id gs10-20020a056214226a00b005cc75c78f19mr33304455qvb.10.1682439646732;
        Tue, 25 Apr 2023 09:20:46 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y3-20020a0cd983000000b0060133179e06sm3801423qvj.43.2023.04.25.09.20.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 09:20:46 -0700 (PDT)
Message-ID: <6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com>
Date: Tue, 25 Apr 2023 12:20:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230425143440.1139F4D935@mail.futurelabusa.com>
Message-ID-Hash: DQJ3WKTSWXMSLJJRLV76OQJMERW2NMP6
X-Message-ID-Hash: DQJ3WKTSWXMSLJJRLV76OQJMERW2NMP6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQJ3WKTSWXMSLJJRLV76OQJMERW2NMP6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDQvMjAyMyAxMDozNCwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gV2UgaGF2ZSBiZWVu
IHdvcmtpbmcgd2l0aCBOMzEwIGFuZCBOMzIxIHJhZGlvcy4gSXQgc2VlbXMgdmVyeSBkaWZmaWN1
bHQgdG8gZ2V0IGxvbmcgdGVybSBjb250aW51b3VzIG9wZXJhdGlvbiB3aXRob3V0IHVuZGVyLXJ1
bnMgZXZlbiBhdCB0aGUgc2VlbWluZ2x5IHZlcnkgbG93IGRhdGEgcmF0ZSBvZiAxMi41IE1zcHMu
DQo+DQo+IEN1cnJlbnRseSB3ZSBhcmUgdHJ5aW5nIHZhcmlvdXMgZmlybXdhcmUgdmVyc2lvbnMs
IGNoYW5naW5nIGJ1ZmZlciBzaXplcywgZXRjLiwgYnV0IHNvIGZhciBub3RoaW5nIGhhcyBnb3R0
ZW4gdGhlIHJhZGlvcyB0byB3b3JrIGNvbnNpc3RlbnRseSBmb3Igc2V2ZXJhbCBob3VycyB3aXRo
b3V0IHVuZGVyLXJ1bnMuIE9uZSBydW4gbWlnaHQgZ28gZm9yIDMgaG91cnMgd2l0aG91dCBmYWls
dXJlLiBUaGUgbmV4dCBhdHRlbXB0IHVuZGVyLXJ1bnMgYWZ0ZXIgMTAgbWludXRlcy4gSXQgaXMg
dmVyeSBlcnJhdGljLiBPdXIgbmV4dCBhdHRlbXB0IHdpbGwgYmUgdG8gaW1wbGVtZW50IGFuIGlu
cHV0IEZJRk8uDQo+DQo+IFRoZSBjb25maWd1cmF0aW9ucyBoYXZlIGRpcmVjdCBjb25uZWN0aW9u
cyBiZXR3ZWVuIGEgZmFzdCBob3N0IChVYnVudHUgd2l0aCB1bm5lY2Vzc2FyeSBzZXJ2aWNlcyBp
bmNsdWRpbmcgTmV0d29yayBNYW5hZ2VyIGRpc2FibGVkIG9yIHJlbW92ZWQpLCBhbmQgdGhlIHJh
ZGlvIHdpdGggMTAgR2JpdCBhbmQgZnJhbWUgc2l6ZSBvZiA5MDAwLiBXaXRob3V0IHVzaW5nIGp1
bWJvIGZyYW1lcyB0aGUgYmVoYXZpb3Igd2FzIGZhciB3b3JzZS4NCj4NCj4gQW55IG90aGVyIGlk
ZWFzPz8NCj4NCj4gVGhhbmtzLQ0KPiBKaW0NCj4NCj4NClNvbWV0aGluZyB5b3UgY291bGQgdHJ5
IGluIHRlcm1zIG9mIGlzb2xhdGluZyByb290IGNhdXNlIGlzIHRvIHVzZSB0aGUgDQoiYmVuY2ht
YXJrX3JhdGUiIGV4YW1wbGUgYXBwbGljYXRpb24sIGFuZA0KIMKgIGNvbmZpZ3VyZSBpdCB1c2lu
ZyB0aGUgLS1kdXJhdGlvbiBvcHRpb24gZm9yIGEgdmVyeSBsb25nIHJ1biBhbmQgdXNlIA0KLS10
eF9yYXRlIHRvIGNhdXNlIGl0IHRvIG9ubHkgZG8gYSBUWCB0ZXN0Lg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
