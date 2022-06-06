Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBCA53E5CB
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 18:55:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BA97383FBB
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 12:55:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654534553; bh=NAuLFUJAtvDuH6Nii0slFnwxpOnK6Qw2nZtAPXajph4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EC2FD9qt8QW5nP229FcqOX+f6ly/VGkZhGSW2/g913v5tbbVdT9kmjRBdoII65Gtn
	 y8hIEiej1DkeWg7qa5EgDDC37kNs9Fgi32UtEpVAKXBBlwabH3u90N80iKzBJw7+ek
	 w0Z98trjo3zldzWK+tFNs/ron0Xb4xM8plEW+R+wd59i8zJlHZAMb9t6K0Lwe/xsaF
	 cBH6P0I8hXCAlwUaFUL8+5nA9oESPHVulkrLATUnhiX4lzFsZOhWFPdCwBPQe8oiLg
	 TdkbEezxxIlSxTatB2DpfjSW8OifyBI3z0L7rZDcWwP5Yj6shRYIA8+GlED0qR+deO
	 GzI+K8qdCNZ6w==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 26779383E32
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 12:54:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YrGya/Le";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id v1so10792901qtx.5
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 09:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=3o8ROyRZfDKm6mspmekG00a6eiZqPLyFLBiyQtT8400=;
        b=YrGya/LeMDU+M82xRiIF7VxoXWb9o8m5X4xijKMWDY6gMj2K5xOfRiQaMK8FTfNDfb
         2Cb4lLoCspDN+xJ9QHlI0iKqm1tnG0PRbHyOokNCFlv2Q2wGfh43aJHAPFVQpiIRqSf6
         P5/j+2YDcNyRXW+d5skOOxAMvRXb5MwhbmABDFp2JDrdoaBopUnTQbGLsnD7LbY4RQTr
         9zCMhW7J2j5WHhDkQlDj2ZffunZZ5rFVq1KFWdNy7RFkwBwjzSWGI676MZLIqm5bVstJ
         siBbtBl47oi9u/WQOAvF7QmQBVSTmbH2myLu0ZUXwF1NOLTwQLFOPWAbKPVfxe26rcna
         WWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3o8ROyRZfDKm6mspmekG00a6eiZqPLyFLBiyQtT8400=;
        b=gj2TZ7bZhub14GlAcc7JJ7K0lf9cSBh8HfCps8we0NU+pvPub0cXE7ZjozbDnUfJ/C
         rHN8u05XWhKJ5yAa4XzvOkgrfUva4PAW8TVW3gBzo0a8fhPrVGD8+FlfC+7cnY3JbV+v
         cZp1EVMCMxPybPNgs6mWgeTfJJrp+R+y+2WGODnGHaO96bdFiMSmQwAwkLt4y0fp3z/L
         Q7/pGoioyVSl8iSgrgAsgVYv0jQIMQV1gLX8FTpLqKwKtceIdI0wicZqL4Oj+M/n9ieC
         C0nKl0H0gBQ5vvqDQkqJLfV8qLlRjzkZy+SiXa/MqSkFDovlZnAyIQQxTJaOjQC2roCX
         P/Ig==
X-Gm-Message-State: AOAM530vNF1tg+77c+YKVxKMZy+360aKWWlzuBGDNrFVAJDPAmqjrpjj
	QbJeOySvkUhMnoYvczr2W7Qu3cjbwIoj5Q==
X-Google-Smtp-Source: ABdhPJyNSkpov+Iq/zTWhMgSmXgS1ZUHjF9IsWzluCZoSv+4BDIxFpLYikkeVg23OsfYQiWBeL8fIQ==
X-Received: by 2002:ac8:4e41:0:b0:304:baf2:39fc with SMTP id e1-20020ac84e41000000b00304baf239fcmr18937731qtw.105.1654534484327;
        Mon, 06 Jun 2022 09:54:44 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id s20-20020a05620a0bd400b006a6a5d1e240sm7629152qki.34.2022.06.06.09.54.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 09:54:43 -0700 (PDT)
Message-ID: <7e9c6643-bffb-8a5b-915a-ff4524770449@gmail.com>
Date: Mon, 6 Jun 2022 12:54:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0a7201d879c4$18b47460$4a1d5d20$@beniston.com>
Message-ID-Hash: AKAUEEBLMG2GMSL46MC4E5EOSP7FSO4Q
X-Message-ID-Hash: AKAUEEBLMG2GMSL46MC4E5EOSP7FSO4Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Automatic master clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKAUEEBLMG2GMSL46MC4E5EOSP7FSO4Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNi0wNiAxMjo0MCwgSm9uIEJlbmlzdG9uIHdyb3RlOg0KPiBIaSwNCj4NCj4gT24g
YSBiMjEwLCBhZnRlciBtYW51YWxseSBzZXR0aW5nIGEgbWFzdGVyIGNsb2NrIHJhdGUsIGl0IGNh
biBiZSByZXR1cm5lZCB0bw0KPiB0aGUgYXV0b21hdGljIHNldHRpbmcsIGJ5IHNldHRpbmcgdGhl
IHByb3BlcnR5Og0KPg0KPiAvbWJvYXJkcy8wL2F1dG9fdGlja19yYXRlIHRvIHRydWUNCj4NCj4g
SG93ZXZlciwgdGhpcyBkb2Vzbid0IHNlZW0gdG8gd29yayBvbiBhbiBFMzIwLiB1aGRfdXNycF9w
cm9iZSAtLXRyZWUgZG9lc24ndA0KPiBzaG93IGFuIGF1dG9fdGlja19yYXRlIHByb3BlcnR5LiBI
b3cgY2FuIEkgc2V0IGl0IGJhY2sgdG8gYXV0b21hdGljIG9uIGFuDQo+IEUzMjAsIG9yIGFueSBv
dGhlciBVU1JQIGRldmljZT8NCj4NCj4gVGhhbmtzLA0KPiBKb24NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClRvIGJlIGhvbmVzdCwgSSBkaWRu
J3QgZXZlbiBrbm93IHRoZXJlIHdhcyBzdWNoIGEgcHJvcGVydHkuIE5vcm1hbGx5LCBvbiANCmRl
dmljZXMgd2l0aCB2YXJpYWJsZSBtYXN0ZXIgY2xvY2sgcmF0ZXMgKG5vdCBhbGwgZGV2aWNlcywg
QlRXKSwNCiDCoCBVSEQgc2ltcGx5IGRlY2lkZXMgb24gdGhlIG1hc3Rlci1jbG9jayByYXRlIGJh
c2VkIG9uIHRoZSBzYW1wbGUgcmF0ZSwgDQphbmQgaWYgeW91IGRvbid0IGxpa2UgaXRzIGNob2lj
ZSwgeW91IGNhbiBzcGVjaWZ5DQogwqAgIm1hc3Rlcl9jbG9ja19yYXRlIiBpbiB0aGUgZGV2aWNl
IGFyZ3VtZW50cy7CoMKgIEkgd2FzIG5vdCBhd2FyZSB0aGF0IA0KYW55IG9mIHRoaXMgY291bGQg
YmUgbWFkZSAic3RpY2t5IiBhcyB0aGUgYXV0b190aWNrX3JhdGUgcHJvcGVydHkNCiDCoCBzdWdn
ZXN0cy4NCg0KSSdtIHByZXR0eSBzdXJlIHRoYXQgaWYgeW91IGp1c3QgKmRvbnQgc3BlY2lmeSog
YSBtYXN0ZXJfY2xvY2tfcmF0ZSBpbiBhIA0Kc2Vzc2lvbiB3aXRoIGFuIEUzeHggZGV2aWNlLCBV
SEQgd2lsbCBzaW1wbHkgcGljayBhbiBhcHByb3ByaWF0ZQ0KIMKgIG1hc3Rlci1jbG9jayByYXRl
LsKgIFRoYXQgaXMgY2VydGFpbmx5IHRydWUgd2l0aCBFMzEwIGFuZCBCMjEwLCBidXQgSSANCmRv
bid0IGhhdmUgYW4gRTMyMCB0byBwbGF5IHdpdGguDQoNCg0KT24gb3RoZXIgZGV2aWNlcywgbGlr
ZSBYMzEwIGFuZCBOMzJ4LCB0aGUgbWFzdGVyIGNsb2NrIGlzIE5PVCB0ZXJyaWJseSANCmZsZXhp
YmxlLCBhbmQgaWYgeW91IGRvbid0IHNwZWNpZnkgaXQsIHRoZSBkZWZhdWx0IGZvciB0aGF0IHBh
cnRpY3VsYXINCiDCoCBkZXZpY2VzIGlzIHVzZWQuwqAgVGhlIHZhbHVlIG9mICJtYXN0ZXJfY2xv
Y2tfcmF0ZSIgY2FuIG9ubHkgYmUgY2hvc2VuIA0KZnJvbSBhIHNtYWxsIG51bWJlciBvZiBkaXNj
cmV0ZSB2YWx1ZXMuDQoNCk9uIHN0aWxsIG90aGVyIGRldmljZXMgKE4yeHgsIGZvciBleGFtcGxl
KSB0aGUgbWFzdGVyLWNsb2NrIHJhdGUgaXMgDQp1dHRlcmx5IGZpeGVkLCBhbmQgc3BlY2lmeWlu
ZyBtYXN0ZXJfY2xvY2tfcmF0ZSBlaXRoZXIgZG9lcyBub3RoaW5nLA0KIMKgIG9yIHJhaXNlcyBh
biBleGNlcHRpb24uDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
