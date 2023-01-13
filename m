Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67166A146
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 18:57:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 675063843BE
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 12:57:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673632676; bh=Whp5O03xNXSSKQ/WvAM+DVAvr2UBaT10heR9p6UotOQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=v33P5pSuV04l6V3p5bto6Ufmy/AZQjnsZfeF+Ykezo6xFaNmHXnRxb5KRTN2fHTnU
	 m/Tjcju+ggfwh2GGh43sm1R0YjN8NrS90GDxBBXtxq1PruBGMlv/nOiqHV3nc5qji8
	 jo9DqOKW+IWC38y/yEKLl5uRl0Xhxsd6j3InXlum0oEr46GM4MKuFx5OjZf4N0L3Oz
	 Yy4jVFWvLH85L0cMtPmHSdOTEqPBUjDRCovVpX08QHCo+zI15fjItsWspXQac343oy
	 Qc24zH+LQpiggxO59NarCPdR8V7XliV16TLXtE+AjiwMQLy9c9xGVB6Ub7aEnyYuf/
	 B2ybG4QqV+2Vw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 67643384374
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 12:56:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gzkZ/MUB";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id i12so15279874qvs.2
        for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 09:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E4R/+/vA2Km403Rqddy+bY8upT6hGbPDtYET5CL+biU=;
        b=gzkZ/MUBk23Vh1bGZdE6wRu9H6NQF90GmIEW2zRm7ChfuOOUss+Do7aQ9nx0Ie0AIt
         bwlexIFxbaLUptIXyKHQZUKz3p8qaQ/sazsgfX71g3DcdC2PRLuCJOVugh3K/haTCPh5
         EyHzb+JmYcz7JjKGnmtJ/zSFCMKYBc6HNjix+M0i/QOSSwW/MwpsDFcjxEjBZGG94wKD
         AEYTXAesxkDoYuuZ6V2WLX/e/Y7clDAr6HBGv1tqfpZmDd58J7kTXEpSpU05LWdCavu5
         g+E5GjdYOrqRDpQ8qNCKj9GY2xMH/NEP8KrA34IaXUt00QZvg3g0NWhl4kQf9O065LF0
         dDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E4R/+/vA2Km403Rqddy+bY8upT6hGbPDtYET5CL+biU=;
        b=wMN4WnPPYxJyi+jjrdOQ54JunKug5EThdmpys68yZ2aAq4Q4NQHT/6YvihrdcwOgyU
         PZR5cpEK5b0pjwFEidKyUa4TNF0KiXkYZJURhdGxuR7LvlRtdHsR1o6uRXlwoDJnFdd7
         wwLzBdJ+L7LbL95dmhRZHlVUhfPavvl0Qp/QMTxZmz8oU8nLzKXU46OVS4gzjvZ3lHkZ
         Rm/kO31ql00JK3UiAS8j2HZX+HgVy4KCOy5eoH3mwtQpK8w+4q3xBKZaw4lbS8Mb4V6r
         RawCZsKnsBAEKL18P3abLbvtlwpHA2UzbbNTBJU7lhZozXz8juOqpO3HgZdcQpFQRxoi
         sz8w==
X-Gm-Message-State: AFqh2krodMXbBTeCdbUEg1A9meILsy/RvhOjENzPQNOvTGV8vPiB674C
	LfXHYH62f4YC8PA1qqMOLzWIEVazUg4=
X-Google-Smtp-Source: AMrXdXusLa5usmIjqWtMIVjgHM2CjUqeZllaUrDEzfZnQW0Xb+45beciL1oH7/QLRGEpyTrQdzJtQA==
X-Received: by 2002:a0c:80eb:0:b0:534:7159:478b with SMTP id 98-20020a0c80eb000000b005347159478bmr8041545qvb.49.1673632566593;
        Fri, 13 Jan 2023 09:56:06 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id j20-20020a05620a289400b006fed58fc1a3sm13082031qkp.119.2023.01.13.09.56.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 09:56:06 -0800 (PST)
Message-ID: <cf9cfa63-0f79-155b-3475-7055f4076806@gmail.com>
Date: Fri, 13 Jan 2023 12:56:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <lyWylQBd4TCG3An5OK7aoZeCWQv4zAup3hfuNV1Ps@lists.ettus.com>
Message-ID-Hash: WI6SJW7ZEWLLTP5BDJ3VGZB6PW5A7O23
X-Message-ID-Hash: WI6SJW7ZEWLLTP5BDJ3VGZB6PW5A7O23
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WI6SJW7ZEWLLTP5BDJ3VGZB6PW5A7O23/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTMvMDEvMjAyMyAxMDoyOCwgbWdhcnJldHRAZ2FycmV0dC10ZWNoLmNvbSB3cm90ZToNCj4N
Cj4gVGhhbmsgeW91IGZvciB0aGUgcmVmZXJlbmNlLiBXZSBhcmUgYnVpbGRpbmcgZnJvbSB0aGUg
aW1hZ2VzIGxpc3RlZCBpbiANCj4gbXkgb3JpZ2luYWwgZW1haWwuIFdlIGhhdmUgVUhENC4xLjAu
NCBVcCBhbmQgcnVubmluZywgYW5kIHRoZSBzZCBjYXJkIA0KPiBpbWFnZSB3b3JraW5nIGluIHRo
ZSBkZXZpY2UuDQo+DQo+IFdlIGFyZSBzZXR0aW5nIHVwIHRoZSBjcm9zcyBjb21waWxlciB3aGlj
aCBpcyByZXRyaWV2ZWQgdXNpbmcgdGhlIA0KPiBpbWFnZXMgZG93bmxvYWRlciBmcm9tIHRoZSBp
bnN0YWxsZWQgVUhELg0KPg0KPg0KPiBUaGUgaW1hZ2VzIGxpc3RlZCBhYm92ZSBoYXZlIGEgZ251
cmFkaW8gMy44IGluc3RhbGwsIHdoaWNoIHNvbWUgDQo+IHBhdGNoZXMgKHRoYXQgd2UgZG9u4oCZ
dCBrbm93IGhvdyB0byBhcHBseSkuIFdlIGFyZSBnb2luZyB0byBhdHRlbXB0IGEgDQo+IEdudXJh
ZGlvIDMuMTAgKGdyLXJmbm9jKSBpbnN0YWxsIHVzaW5nIHRoZSBVSEQ0LjEuMC40IGluc3RhbGxl
ZCBpbiB0aGUgDQo+IFZNLiBJIGJlbGlldmUgd2UgZG8gbm90IG5lZWQgdG8gY3Jvc3MgY29tcGls
ZSBnbnVyYWRpbywgYXMgd2Ugb25seSB1c2UgDQo+IHRoYXQgb24gdGhlIGhvc3Qgc2lkZS4NCj4N
Cj4gRXZlbnR1YWxseSwgd2UgbmVlZCB0byBjcmVhdGUgYW4gUkZOT0MgYmxvY2sgdGhhdCBwZXJm
b3JtcyBzcGVjaWFsaXplZCANCj4gZnVuY3Rpb25zIHJlcXVpcmVkIGJ5IG91dCBjbGllbnQuIChX
ZSBhcmUgY3VycmVudGx5IHVzaW5nIHRoZSBzdG9jayANCj4gMy4xNS4wLjAgTFRTIHN0b2NrIGJs
b2NrcykuDQo+DQo+IG1jZw0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJZiB5b3UncmUgb25seSB1c2luZyBHbnUgUmFk
aW8gb24gdGhlIGhvc3Qgc2lkZSAtLSBhcyBpbiBhIFBDIGhvc3QsIGFuZCANCnVzaW5nICJuZXR3
b3JrIG1vZGUiIG9uIHRoZSBFMzEwLCB0aGVuIGl0IGRvZXNuJ3QNCiDCoCBtYXR0ZXIgd2hhdCB2
ZXJzaW9uIChpZiBhbnkpIG9mIEdudSBSYWRpbyBpcyBpbnN0YWxsZWQgb24gdGhlIEUzMTAuDQoN
CkkgcnVuIFVidW50dSAyMi4wNCBvbiBteSBQQywgYW5kIGl0IGhhcyBVSEQgNC4xLjAuNSB3aXRo
IHRoZSBzdGFuZGFyZCANClJGTm9DIGJsb2NrcyBpbiB0aGUNCiDCoCBwYWNrYWdlZC1ieS1VYnVu
dHUgcGFja2FnZXMuIMKgIElmIEkgd2VyZSB3YW50aW5nIHRvIHVzZSBpdCB3aXRoIG15IA0KRTMx
MCwgSSdkIHNpbXBseSB1c2UgdGhlIGFwcHJvcHJpYXRlIEUzMTAgc3lzdGVtDQogwqAgaW1hZ2Ug
ZnJvbSBoZXJlOg0KDQpodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9lM3h4
L21ldGEtZXR0dXMtdjQuMS4wLjUvDQoNCk9yIHVzZSB1aGRfaW1hZ2VzX2Rvd25sb2FkZXIgb24g
bXkgUEMgYW5kIHNwZWNpZnkgInNkaW1nIiBpbiAiLS10eXBlIi7CoMKgIA0KVGhlbiBwcm9ncmFt
IGFuIFNEIGNhcmQgd2l0aCB0aGUgaW1hZ2Ugb24NCiDCoCBpdC4NCg0KVGhlbiBmb3IgUkZOb0Mg
ZGV2ZWxvcG1lbnQsIEknZCB1c2UgdGhlIGFwcHJvcHJpYXRlIHZlcnNpb24gb2YgVml2YWRvIHRv
IA0KZ2VuZXJhdGUgdXBkYXRlZCBGUEdBIGltYWdlcyBhbmQgbG9hZCB0aGVtDQogwqBvbnRvIHRo
ZSBFMzEwLsKgwqAgQnV0IEknbSBub3QgYW4gRlBHQS9SRk5vQyBwZXJzb24sIHNvIHRoYXQgaXNu
J3QgDQpzb21ldGhpbmcgSSBoYXZlIGludGltYXRlIGtub3dsZWRnZSBvZi4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
