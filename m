Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD53848E151
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 00:57:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00C00384FB1
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 18:57:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="0c32+ZTD";
	dkim-atps=neutral
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id E861B384F73
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 18:56:50 -0500 (EST)
Received: by mail-wr1-f42.google.com with SMTP id l25so12871211wrb.13
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 15:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=1PNWPu5vWTtCHg8rWO6aTbSSJPHL+BwgRZeV/gUvDxA=;
        b=0c32+ZTDbxDW6fIFky2/hK9zPVhgXJ12viCy+rprGc9OGQlwSOokDovm/DkJbMVRKO
         +PpNPTaTOKoeaBkSt8LsgKgKVMX2p/d3sh9yILFrXhirT33cZbhZz0IHa5GoLn14YTHd
         R2au9S7htvn/Wp29BamcqtpXYxE7egwJzvSLOGaIvhxx50SMwDNszMDTIpPqxWpNMCay
         m5nylkrRsCD10WLcgnxyw/d4i7GsZTDm3yM6u41opfK2AboYwk16GVUp1dhTSmrR8RpF
         wpxAJfSM3zJrwicm5Qh2e0we2vQ2fYA06INXaAdcmmXTDM3ZMQHYDFbrDyXKXCu8S1ML
         u5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1PNWPu5vWTtCHg8rWO6aTbSSJPHL+BwgRZeV/gUvDxA=;
        b=hMb4oS3+icToAMju/2klZ8Xa6tshW/NdkIIt0Ud+1vKd8qCs0MnmnCp6RkhYtt+Xjg
         H/vL3z2TKH8cJAEL1jtf1+ygDIgw8NKyPaQ4sb5xeUa93M24hrnir1xmR565c/65jKZK
         VHtUwlZFSPO3HcKTsoiBMAsvhQZ41bhCFIx+iJhQPv9qz10vIIaAJyR6udH7/PHaRLrx
         2icGo1/e3bbSik3OGLC2/BNH+TNp126aQY7H2AymLDy09od7IMeGeMb74WBt5b37NHcw
         HtavN2HCArkH8Wr6qkb3TOSAvtNyEwqpEB9HiKqbYn+gWtBdzfPuU1j3v1q/BbSB5OoA
         kIDQ==
X-Gm-Message-State: AOAM531ho9DsOxWk8JRW3UJl32A5RZCtYRd3Sg+OaUJpdORfVFVPWIM7
	frs1cxbNNwxNm+OI+zvUlXRwTCiPi8uMD32l
X-Google-Smtp-Source: ABdhPJygQA/J5VGw1Tz7rjiT1NanO2tqWA/f6LHQWJ7Dh1rETVB1W/PDLs5tJEeoTijq5xVtdILYQA==
X-Received: by 2002:a5d:6c68:: with SMTP id r8mr6174377wrz.37.1642118209424;
        Thu, 13 Jan 2022 15:56:49 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-31.hsi.kabel-badenwuerttemberg.de. [46.223.163.31])
        by smtp.gmail.com with ESMTPSA id m9sm3657011wrw.94.2022.01.13.15.56.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 15:56:49 -0800 (PST)
Message-ID: <3045d25c-427b-fd9c-b626-ac792718e498@ettus.com>
Date: Fri, 14 Jan 2022 00:56:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BL3PR16MB4476E7A5D8EFD323A338B19AB7539@BL3PR16MB4476.namprd16.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <BL3PR16MB4476E7A5D8EFD323A338B19AB7539@BL3PR16MB4476.namprd16.prod.outlook.com>
Message-ID-Hash: M6FNZJV2QAMALI57ZCH2Z7CZL6YA5OD3
X-Message-ID-Hash: M6FNZJV2QAMALI57ZCH2Z7CZL6YA5OD3
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Retrieve USRP time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6FNZJV2QAMALI57ZCH2Z7CZL6YA5OD3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KDQoxLiBtYWtpbmcgYW5vdGhlciBpZGVudGljYWwgb2JqZWN0IHdpbGwganVz
dCBnaXZlIHlvdSBhbm90aGVyIGNvcHkgb2YgdGhlIHNhbWUgc21hcnQgDQpwb2ludGVyIDopDQoN
CjEuICYgMi4gJiAzIGFyZSBzYWRseSBhbGwgaW5hZGVxdWF0ZSBzb2x1dGlvbnMsIGJlY2F1c2Ug
eW91IHF1ZXJ5IHRoZSBkZXZpY2UgdGltZSBhdCBzb21lIA0KcmFuZG9tbHkgdmFyeWluZyB0aW1l
IGFmdGVyIGEgc2FtcGxlIGhhcyBiZWVuIHByb2R1Y2VkLg0KDQoNClRoZSByaWdodCBhcHByb2Fj
aCBpcyBhY3R1YWxseSA0LCBidXQgd2l0aG91dCB5b3UgbmVlZGluZyB0byBjb3B5IHRoZSB0aGUg
VUhEIFVTUlAgU291cmNlOiANClRoZSBzb3VyY2UgYWxyZWFkeSB0YWdzIHJ4X3RpbWUgd2hlbmV2
ZXIgdGhlIGRldmljZSBzZW5kcyB0aW1lLWNvbnRhaW5pbmcgbWV0YWRhdGEgKHdoaWNoIA0KaXQg
c2hvdWxkIGRvIHdoZW5ldmVyIHlvdSBpdCBzZXRzIHRoZSBkZXZpY2UgdGltZS4NCg0KDQpJbiB5
b3VyIGN1c3RvbSBibG9jaywgeW91IGp1c3Qgd2F0Y2ggZm9yIHRoZXNlIHJ4X3RpbWUgdGFncy4g
V2hlbiB5b3UgZmluZCBvbmUsIHlvdSBzYXZlIA0KdGhlIHRpbWUgKG9yIGJldHRlciBldmVuLCB0
aWNrcykgaXQgY29udGFpbnMsIHRvZ2V0aGVyIHdpdGggaXRzIHNhbXBsZSBvZmZzZXQuIFdoZW4g
eW91IA0KbGF0ZXIgd29uZGVyIHdoYXQgdGltZSBhIHNwZWNpZmljIGl0ZW0gd2FzIHJlYWQsIHlv
dSBqdXN0IHVzZSBuaXRlbXNfcmVhZCgwKSBvZiB5b3VyIGJsb2NrIA0KdG8gZ2V0IHRoZSBvZmZz
ZXQgb2YgdGhlIGZpcnN0IGl0ZW0gaW4geW91ciAoZ2VuZXJhbF8pd29yaygpIGNhbGwsIGFuZCBj
YWxjdWxhdGUgdGhlIHRpbWUuDQoNCg0KQmVzdCByZWdhcmRzLA0KDQpNYXJjdXMNCg0KT24gMTMu
MDEuMjIgMjM6MjQsIE1pY2hhZWwgQmFzc2kgd3JvdGU6DQo+IEhpIGFsbCwNCj4NCj4gSSdtIHVz
aW5nIEdSMy45IHdpdGggVUhENC4xLjAuMS4NCj4gSSBoYXZlIGEgZmxvd2dyYXBoIGNvbnRhaW5p
bmcgYSBVSERfVVNSUCBTb3VyY2UgYmxvY2ssIHdpdGggU3luYyBwcm9wZXJ0eSBzZXQgdG8gIlBD
IA0KPiBDbG9jayBvbiBOZXh0IFBQUyIgc28gdGhhdCB0aGUgZGV2aWNlIHRpbWUgaXMgc3luY2Vk
IHRvIFBDIHN5c3RlbSB0aW1lIG9uIHRoZSBuZXh0IFBQUy4NCj4NCj4gSSB3YW50IHRvIHRoZW4s
IHNvbWV3aGF0IGZyZXF1ZW50bHksIGFjY2VzcyB0aGUgdXNycCB0aW1lIGZyb20gd2l0aGluIGRv
d25zdHJlYW0gY3VzdG9tIA0KPiBDKysgYmxvY2tzLg0KPg0KPiBPcHRpb25zIHRoYXQgSSd2ZSBj
b25zaWRlcmVkOg0KPiAxLiBGcm9tIHRoZSBjdXN0b20gYysrIGJsb2NrIC0gbWFrZSBhbm90aGVy
IFVIRCBVU1JQIGRldmljZSBpbnN0YW5jZSAodGhvdWdoIEkgZG9uJ3QgDQo+IHRoaW5rIHRoaXMg
aXMgcG9zc2libGUsIGFzIHRoZSBkZXZpY2UgaGFzIGFscmVhZHkgYmVlbiBhbGxvY2F0ZWQgdG8g
dGhlIHNvdXJjZSBibG9jayk6DQo+IMKgwqDCoCB1aGQ6OmRldmljZV9hZGRyX3QgZGV2aWNlQWRk
cmVzcygiIik7DQo+IMKgIMKgIHVoZDo6dXNycDo6bXVsdGlfdXNycDo6c3B0ciB1c3JwID0gdWhk
Ojp1c3JwOjptdWx0aV91c3JwOjptYWtlKGRldmljZUFkZHJlc3MpOw0KPg0KPiAyLiBGcm9tIHRo
ZSBjdXN0b20gYysrIGJsb2NrIC0gSnVzdCByZXRyaWV2ZSBjbG9jayBpbmZvIGZyb20gdGhlIGRl
dmljZSBhIGJpdCBsaWtlIHRoaXMgDQo+IChidXQgaXQncyB0b28gc2xvdyk6DQo+IMKgIMKgIHVo
ZDo6ZGV2aWNlX2FkZHJfdCBkZXY7DQo+IMKgIMKgIGRldlsiYWRkciJdID0gIjE5Mi4xNjguWFhY
LlhYWCI7DQo+IMKgIMKgIHVoZDo6dXNycF9jbG9jazo6bXVsdGlfdXNycF9jbG9jazo6c3B0ciBj
bG9jayA9IA0KPiB1aGQ6OnVzcnBfY2xvY2s6Om11bHRpX3VzcnBfY2xvY2s6Om1ha2UoZGV2KTsN
Cj4gwqAgwqAgc3RkOjpjb3V0IDw8IGNsb2NrLT5nZXRfdGltZSgpDQo+DQo+IDMuIEZyb20gdGhl
IGN1c3RvbSBjKysgYmxvY2sgLSBTb21laG93IGFjY2VzcyB0aGUgYWxyZWFkeSBkaXNjb3ZlcmVk
IHVzcnAgZGV2aWNlIGZyb20gDQo+IHRoZSBVSERfVVNSUCBzb3VyY2UgYmxvY2sgKG5vdCBzdXJl
IGhvdyB0byBkbyB0aGlzKQ0KPg0KPiA0LiBDb3B5IGFuZCBtb2RpZnkgdGhlIHVzcnAgc291cmNl
IGNvZGUgdG8gc2VuZCB0aW1lIGFzIGEgc3RyZWFtIHRhZyBhbG9uZyB3aXRoIGVhY2ggDQo+IHBh
Y2tldCAoc2VlbXMgbGlrZSBhIGxvdCBvZiB3b3JrISkNCj4gYS4gcGVyaGFwcyB0aGlzIGNvdWxk
IGJlIGFjaGlldmVkIHVzaW5nIHRoZSBVSERfVVNSUCBTb3VyY2UgYmxvY2sgc3RyZWFtIGFyZ3Mg
cHJvcGVydHkgLSANCj4gdGhvdWdoIHdvdWxkIHJlcXVpcmUgbW9kcyB0byB0aGUgLnltbD8NCj4N
Cj4gVGhhbmtzIGZvciB5b3VyIGhlbHAhDQo+IE1pa2UNCj4NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
