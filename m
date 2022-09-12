Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E7D5B5DEA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 18:12:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6EF17381405
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 12:12:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662999143; bh=GZsPVmUKyuj/P8mVng5j24yN7bKRnC9BBNonP3zigpo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VIvpNUxzSLciy+xU7HVgwo2Dxu7W8V2lGwqBedDPJQ5pPz2kbdtaUmiLR4GEsvX3Z
	 tnCo+cGPuVKpw0+uAlW0k9aDVhBUcWzMA+I1j2v4msWQbi9ggfrd+C3RkIzMaXK7Pn
	 /zCk7LT96Q6T/bB5ucRTyeRd8Iv3G0eRKUw3A3H2xfNe6+CJBGyQb/AX64EcoykhXh
	 33fU6lJSotRUMk2Jc+SNhY37OXhPugEzUt/zyZxsi7NNFjcvAb37VkDO1xLj3D0Ngb
	 97jW55BV33dguI6fb2sk0BKiuRwADtKEE1MQY/vFwNf3jEW/TMx5siDY4eN7Bra+St
	 RSmdNKOB23nkg==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id EEF81380AE5
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:10:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XYYGUTty";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id l5so7065747qvs.13
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 09:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=q/L3B08gGotGkaV6QBdtwX2nGpPWOOtWi08LcuHBJmc=;
        b=XYYGUTtyIvaWY+V76zLPqowHZBprYSltdW+FkLa6SGqf4UcbmleulUAJRBJhgJjwA/
         A1CLDrWvIuLt7lVDkAS7TveGZQYRQB8Ew9h1BuoX31W5/V0rVPOPcrE7crfHLR/ieLC2
         B9Vpe7Xbp3k/aSHzbiSmQnnVn4RNG8K0Z0Kv5dozqLzemLYZRh9Av0I65Dg0E17T2vn4
         15+ZqQoRfeeri2H0+6wGAjsiDiBWZGDgnzUq3pfWAyFsD7ISDBmzV7U3XGljIlp9XTlk
         xbw3pIBoPPHu/YfpoovYz6H49SNXZMvaB3INpMWASzlUy1XQ0OWTcRqnsNQs4akcvaMo
         xfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=q/L3B08gGotGkaV6QBdtwX2nGpPWOOtWi08LcuHBJmc=;
        b=l8Gv6IfBwBWqtkCNIWIH5VvETlMTZRThSBCJJ22ETRZM8BK4Jigya83+FHBHFgDnMH
         bXw2+DrMjaPpLZb71cSf2BCZjwI+n4pyWjzxzDYHin4lxP6UtipFz8J5bX/8TjL04HW3
         lygPlQ/a883VtssPU8bo1Fh5WsvMi40rEmSG/Q79InxCZurKriZylWLqRScfD3946YRa
         79RGxub7munMW4Xpya6gh42p4rcTg1yLxH/97p5woYaU+f8+WmiVJS0aOYHrFh+pWAa3
         1Yud21SI5H3vBLd3ZIyjRGuMAlmpJKeIfm5NmFxY3LWr/iLNu8cuGdfk2yAI8TS/o/RC
         Tt1g==
X-Gm-Message-State: ACgBeo3DN3I0FodjM4Ftd1+8iD+XubX0CkFgVnVolfPzn9iiBYd8TfVj
	Je5oKNP6QtnObNTbuBfSvMN2M1trYQ4=
X-Google-Smtp-Source: AA6agR5Wnr/6E4SN+LjoD5Dr8IET910+dhmDAkt2OjNsIhESSQQkNTizPyZR6t+BakWHWJtkusJHuw==
X-Received: by 2002:a0c:8081:0:b0:496:7822:c55a with SMTP id 1-20020a0c8081000000b004967822c55amr23744499qvb.87.1662999034141;
        Mon, 12 Sep 2022 09:10:34 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id e19-20020a05622a111300b003437a694049sm7214102qty.96.2022.09.12.09.10.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 09:10:33 -0700 (PDT)
Message-ID: <8b6c2553-678f-0c84-636c-138d65f27a88@gmail.com>
Date: Mon, 12 Sep 2022 12:10:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8@lists.ettus.com>
Message-ID-Hash: EO73NLP2WHFQPDYI4RLUWCOXMSDOGCKL
X-Message-ID-Hash: EO73NLP2WHFQPDYI4RLUWCOXMSDOGCKL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EO73NLP2WHFQPDYI4RLUWCOXMSDOGCKL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0xMiAxMDo1OCwgamFzb25AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20gd3JvdGU6
DQo+DQo+IFRoYW5rcyBNYXJjdXMuDQo+DQo+IEkgYWdyZWUsIHRoZXJlIGlzIG5vIHdheSB0aGlz
IGlzIGRlc2lnbi1pbnRlbnQuIE15IGd1dCBzYXlzIGl0IGlzIHNvbWUgDQo+IHNvcnQgb2YgY2xv
Y2sgc2l0dWF0aW9uIG9uIHRoZSBGUEdBLCBidXQgSSBhbSBub3Qgc3VyZSB3aGF0LiANCj4gVW5m
b3J0dW5hdGVseSwgdGhlIG9ubHkgb25lcyB3aG8gY2FuIHByb2JhYmx5IHdlaWdoIGluIG9uIHRo
aXMgd291bGQgDQo+IGJlIHNvbWUgb2YgdGhlIEV0dHVzIEZQR0EgZGVzaWduZXJzLCBhbmQgSSBh
bSBndWVzc2luZyB0aGF0IHRoZXkgZG9u4oCZdCANCj4gc2VlIHRvbyBtYW55IHBlb3BsZSBjaGFu
Z2luZyB0aGUgc2FtcGxlIHJhdGUgb24gdGhlIGZseSwgYW5kIHRoaXMgaXMgDQo+IGFuIHVuc2Vl
biBiZWZvcmUgYnVnLg0KPg0KPg0KPg0KU2FtcGxlLXJhdGUgaXMgYW4gaW5oZXJlbnQgcHJvcGVy
dHkgb2YgYSAqc3RyZWFtKiBhcyBJIHJlY2FsbCwgcmF0aGVyIA0KdGhhbiBhICpzZXNzaW9uKi7C
oCBBcmUgeW91IGNyZWF0aW5nIGEgbmV3IHN0cmVhbQ0KIMKgIGFjcm9zcyBzYW1wbGUtcmF0ZSBj
aGFuZ2VzLCBvciBhcHBseWluZyB0aGUgcmF0ZSBjaGFuZ2UgdG8gYW4gDQpleGlzdGluZyBzdHJl
YW0/DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
