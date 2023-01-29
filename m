Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939C67FCCD
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 06:09:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBE2D384005
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 00:09:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674968976; bh=b14BoiSpbxaa7YfEtFww5eukDEjl/vVxEVsBLK4cLbY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pzxVG2txQE4GZDqT3IfYeXv8CAL2ggnprepPbrX3MDXCiOHgJ0rdF01BR7C69xfoM
	 Qey4GtqXeHUgwaJVxcdWeiT0TpA5DrGmaSKCUtJCO2yDzoWNnG3Hcif84jGrKSkBiV
	 4wMBZRKx++eLJLL/xNJZF397CFLdy1BecvjMQX75zRsbjtqyASUXLRP7VKsZ0iYxuy
	 IJQuFHXmtHyFqDHiUTRvNoLYNOkRl/fyk2l/LGfojaAiuIE+xMSNipBC7nte26FwAT
	 sICT98h5OyZNX90GQb5Nv0o5Nte5Oo1huN6yLwfr/keeWLBp2/F8ArMjoCnkVSzTME
	 C/zvO/W71PMfA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 82EEE380B6D
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 00:08:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CpV2LWBk";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id q15so7550175qtn.0
        for <usrp-users@lists.ettus.com>; Sat, 28 Jan 2023 21:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1xxiXktMEf6Zm6+oxjuwCQdLqlBrGzfjbrHCewohZUc=;
        b=CpV2LWBk3LVZ5ZoD9HRVU72RwZ2rQHO+9ceaeM+m7u84jDZjpPCqc7qgALSeMEskld
         fyQWFm9Q5lRWjfvn0NolwQVM1n6rceWJ1D4Wk2YvYiHq356h+GYFIPout7t50lXoxJGD
         UmDNW/VqD7fQr9IrOzz1sUYV7sOTsEz1PD+uybxbgKKtMpQDmeRFfXhFWioZas7rqbf7
         uybZ5+K6gXVFGer+wD28fD6uveHbBg9BiVQBdTfpTPTbK5bXV6WsWxkWw+7kvx9GSjIv
         NmFTzWF98i08Aa/NHEDrYRbKoYTTfxt3v815ul7E4hEUcU9OxkXlquxku/PBkoB8iz/h
         Tdcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1xxiXktMEf6Zm6+oxjuwCQdLqlBrGzfjbrHCewohZUc=;
        b=e0V77gpx2T43XMwuEWH96+Rc/qEMkc5GzaHNqm+XRDzPsfWcH2WoJ1u5aTaKSv4UKD
         xE6fg+tmMG5pnJHpastQ0NZWuXPVrSyRm8RHFTd72bFZTB6ZOl3xEJFbqTdlbadvddGl
         dTYf/SAns3iQsLk3UNgXfo2iTB+pqkyOCtKCOiH1bl7xDUKUZCgpDH21wWrxphq22ALA
         BqLgolToomnb+Ylhhgpc9KBbIznQXcQlkjrU9CUT+JTmMgO5zPXBqRRo2h5cT+A5oQNx
         tsfttHvhtgjw+44s4hICo40mrtR8Y2/27g/NEtMt6hUMqcP/zExMrYWvXjNJmTnuF5di
         3ONQ==
X-Gm-Message-State: AFqh2kr0wS/n4laaXOgFAxYRFQcv+4UMz+Ij2xV2HfPyhr4LUBpCsPj7
	HZGJ0EU80VOFttSnVZn5NMhCYY5aXqk=
X-Google-Smtp-Source: AMrXdXto88OM6bie5VBaNOl8ydGo6rHtZr8juEsfk3Tle8/PDQxbELPOfSJdaSxVPd9xIm0yw9I0Gw==
X-Received: by 2002:a05:622a:4316:b0:3b6:31e3:1a57 with SMTP id el22-20020a05622a431600b003b631e31a57mr58541924qtb.8.1674968925676;
        Sat, 28 Jan 2023 21:08:45 -0800 (PST)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id ek3-20020a05622a4fc300b003b68ea3d5c8sm5708652qtb.41.2023.01.28.21.08.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jan 2023 21:08:45 -0800 (PST)
Message-ID: <660259ac-e194-0522-7ff1-8b8835b08eb9@gmail.com>
Date: Sun, 29 Jan 2023 00:08:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RiTRGkDVwBQHnZ3CI92ZdUg91OIex1fSP9eD3aBQ@lists.ettus.com>
Message-ID-Hash: UZ2FNYEFAW6HU6SM4CMFFAB5LSKMXKAD
X-Message-ID-Hash: UZ2FNYEFAW6HU6SM4CMFFAB5LSKMXKAD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Routing n321 TrigIn/PPS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZ2FNYEFAW6HU6SM4CMFFAB5LSKMXKAD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDEvMjAyMyAyMDowMCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSSBhbSB0cnlpbmcgdG8gZGV2ZWxvcCBhbiBSRk5vQyBhcHBsaWNhdGlvbiB0aGF0
IHN0YXJ0cyBjb2xsZWN0aW5nIA0KPiBzYW1wbGVzIHdoZW4gYSB0cmlnZ2VyIHJpc2VzLiBIb3dl
dmVyLCBJIGFtIHVuc3VyZSBob3cgdG8gcm91dGUgdGhlIA0KPiBUcmlnSW4vUFBTIHVuZGVyIHRo
ZSBSRk5vQyB1dGlsaXR5LiBGb3IgZXhhbXBsZSwgSSBmb3VuZCB0aGUgcmFkaW8gDQo+IFJGTm9D
IGlzIHVzZWQgdG8gaW50ZXJmYWNlIHdpdGggdGhlIFRYL1JYLg0KPg0KPg0KPiBUaGFua3MsDQo+
DQo+IEpvZQ0KPg0KPg0KVGhlIFBQUyBpbnB1dCBpc24ndCBkZXNpZ25lZCBhcyBhIGdlbmVyYWwt
cHVycG9zZSB0cmlnZ2VyIGZvciBzYW1wbGluZywgDQpwZXIgc2UsIGJ1dCByYXRoZXIgYXMgYSB3
YXkgb2Ygc3luY2hyb25pemluZyBvZiB0aGUNCiDCoCBULk8uRC4gKFRpbWUtT2YtRGF5KSBjbG9j
a3MgYWNyb3NzIG11bHRpcGxlIFVTUlAgdW5pdHMuwqDCoMKgIFRoZSANCiJzZXRfdGltZV9uZXh0
X3BwcygpIiBhbmQgInNldF90aW1lX3Vua25vd25fcHBzKCkiIG1ldGhvZHMNCiDCoCBpbiB0aGUg
VUhEIEFQSSBpbXBsZW1lbnQgdGhpcy7CoMKgwqAgVGhlIGJhc2ljIGlkZWEgaXMgdGhhdCBlYWNo
IG9mIHRoZSANClVTUlAgdW5pdHMgcmVjZWl2ZXMgb25lIG9mIHRoZXNlICJzZXRfdGltZV9uZXh0
X3BwcygpIiBjYWxscywNCiDCoCB3aGVuIHRoZSB0aGUgbmV4dCAxUFBTIHB1bHNlIGFycml2ZXMg
YXQgdGhlIHVuaXQsIHRoZSB0aW1lLW9mLWRheSANCmNsb2NrIHdpbGwgYmUgcmVzZXQgdG8gd2hh
dGV2ZXIgaXMgc3BlY2lmaWVkLsKgIFRoaXMgcHJvdmlkZXMNCiDCoCBhc3N1cmFuY2UgdGhhdCBh
bGwgdGhlIFVTUlAgdW5pdHMgd2lsbCBhZ3JlZSBvbiB3aGF0IHRpbWUgaXQgaXMsIHNvIA0KdGhh
dCB0aW1lc3RhbXBpbmcgKGFuZCBhbGwgdGhlIHN5bmNocm9uaXplZCBhbmQNCiDCoCBwaGFzZS1j
b2hlcmVudCBnb29kIHRoYXQgcHJvY2VlZHMgZnJvbSB0aGF0KSBjYW4gd29yay4NCg0KVXNpbmcg
aXQgYXMgYSBnZW5lcmFsLXB1cnBvc2Ugc2FtcGxlIHRyaWdnZXIgaGFzIGJlZW4gYSBmYWlybHkg
Y29tbW9uIA0KInRoaW5nIiBvdmVyIHRoZSB5ZWFycywgYW5kIGl0IGlzIHBvc3NpYmxlLCBidXQg
d2l0aA0KIMKgIHNvbWUgRlBHQSBtb2RpZmljYXRpb25zLsKgwqAgU29tZSBmb2xrcyBoYXZlIGFs
c28gdXNlZCBvbmUgb2YgdGhlIEdQSU8gDQppbnB1dHMgZm9yIHRoaXMsIHJhdGhlciB0aGFuIHRo
ZSAxIFBQUyBpbnB1dC7CoCBBZ2FpbiwNCiDCoCB3aXRoIHNvbWUgRlBHQSBtb2RpZmljYXRpb25z
Lg0KDQpBIGdlbmVyYWwgaW50cm9kdWN0aW9uIHRvIFJGTm9DIGlzIGhlcmU6DQoNCmh0dHBzOi8v
a2IuZXR0dXMuY29tL0dldHRpbmdfU3RhcnRlZF93aXRoX1JGTm9DX2luX1VIRF80LjANCg0KDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
