Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0683A5370EA
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 14:21:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F7E9384381
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 08:21:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653826913; bh=KUbmDRKj0CsdiO0hGHLwHWDsnEv754QqGO59g7CMO1M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eXKXR8xEgMbDOyuTWCsAf1P1Ejnsp81nBIu0PnGj4z+hBoqQ4c0aKgJZiXRtaoEbU
	 3cdUM4KeK2uqAhvfSFT3DHfD+oXJdabL+U90bG7BLV7q4L/Ofp6/hc//mdG/8l/U1G
	 BGtmz6Z70OkA2Jc+5sdCSlRa/uYn/W321spp0+vTzZcXb16j4JZmnGIv5fYISkUSKh
	 Lk+zBIxF6SA6slPNHS9ADyJ5gzJ8/18Zdp813hAMlDFArUq2gvn18sPjss+/uS81BI
	 UrtJeEwcrNOxdxMvhut/ELrvvzlszo/8nHFCIHwhiECgiUSjkOKYU75Ws/SWnZvVYY
	 usb2aMGOGHsag==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 961063840EB
	for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 08:20:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="KtP9DmCR";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id jx22so16160735ejb.12
        for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 05:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Wdd4ydNmw2+N5sJHzsuC6B4KKiK3cr9tFhyL3jWJsmQ=;
        b=KtP9DmCRQuePp+8B7ia+I9c65NnkLOArJHiiIVurryakOlxe/lNAbqkaBMKwCv19ow
         oNZGXx3ttXQ4fOF3NiwHB+/ix4V2+AI9JndR5pbCuhkMFBUjG52qwVCeBDFtGtTAkVhY
         +Ekcn1puitaFnv9HaEi4lX6055GjGzvM1bxL1tnWVmLCgaPfEQirS/xNna+ka84zpaMh
         jKqcR0T71PRota5pHj4oRZhalV3KSyr4Vu964leRzTIARfV/KXrRKcvsoBz3eV0EE/6K
         QStpLAosNGuEtJsVf/NOEkxYwilJRwdwH9MX9ql6Xo/jHd0Ggk7prO5R17XxHEofYRi4
         aEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Wdd4ydNmw2+N5sJHzsuC6B4KKiK3cr9tFhyL3jWJsmQ=;
        b=Sj43RNzuQrkKo83QF1X+fK5uEwDiOkmqAuAI+1JfjvZlSFC+ttzOb3U/773+VXI1oM
         fJjiv7axdyE9NHLAbALoodEOrRy6OP7JSziK1dzS4kEOeGrweNc8Bgaj+BZE4afkPcx0
         nxluV74k+qzzPxxV9kDP/MojK91krcj2S7VC4p+LLS2XUdaKAkuzzmP/0dOML3CcbiU/
         Cfeu8J79uymtx2YdYRugKg+F1JvC+o6QSwATs3zp9wGk8d9LYtY6lVfPFCm+Do0AE02T
         DjrvB/epy7RHmCdKyDbmBPZ9N5KNLfPwdEHxatjXl4NuH9cw33grmROEHCPCo3Iv5Nho
         Tn3A==
X-Gm-Message-State: AOAM532+9CgFl6Vfb2pANaMMznE5YQ6XZ03BKYN16UzooCnw8WGpvf7P
	Yaz/tVrWY+xK7XCevhr6NAkWT21e+qRRAaeV
X-Google-Smtp-Source: ABdhPJyE5xa++QyLe59QwGruy4yK1T6J5FoblNYCYQN4mGDF1ho0WpeMnrWBgPenweLy7xx1RfdBfg==
X-Received: by 2002:a17:907:9621:b0:6fe:c661:b300 with SMTP id gb33-20020a170907962100b006fec661b300mr33922013ejc.294.1653826854550;
        Sun, 29 May 2022 05:20:54 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3846:61fc::d8d? ([2001:9e8:3846:61fc::d8d])
        by smtp.gmail.com with ESMTPSA id d12-20020a170906040c00b006f3ef214db5sm3086901eja.27.2022.05.29.05.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 05:20:54 -0700 (PDT)
Message-ID: <b222fefa-959e-1ce1-308c-ce5b969d84c2@ettus.com>
Date: Sun, 29 May 2022 14:20:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: sp h <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
References: <CAA=S3PtTWd58=86uj1n-Ac7WJ6zftigHEw+nkZqJtvyz9t+9tA@mail.gmail.com>
 <5995527a-8d4b-90c0-a335-11a026e520f3@ettus.com>
 <CAA=S3Pt2gA_J4RnxxLS7_vrJw8xBADrgD5uQNEiwHyq0Rg_Dog@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3Pt2gA_J4RnxxLS7_vrJw8xBADrgD5uQNEiwHyq0Rg_Dog@mail.gmail.com>
Message-ID-Hash: DKCLE6S3SI7Z22FO2SCYQLGRG2Q65NLU
X-Message-ID-Hash: DKCLE6S3SI7Z22FO2SCYQLGRG2Q65NLU
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's RFNOC image builder Unit in gr-ettus and Gnuradio?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKCLE6S3SI7Z22FO2SCYQLGRG2Q65NLU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

UGxlYXNlIHJlcGx5IHRvIHRoZSBsaXN0ISBTb3JyeSwgeW91ciBlbWFpbCBzYWlkIG5vdGhpbmcg
YWJvdXQgYSBidWcuIENhbiB5b3UgcGxlYXNlIA0KZGVzY3JpYmUgaW4gZGV0YWlsIHdoYXQgeW91
IGFyZSBkb2luZywgd2hhdCB5b3UgKmV4cGVjdCogdG8gaGFwcGVuLCBhbmQgd2hhdCBoYXBwZW5z
IA0KKmluc3RlYWQqPw0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJjdXMNCg0KT24gMjkuMDUuMjIgMTQ6
MTYsIHNwIGggd3JvdGU6DQo+IFllcywgSSByZWFkIGFsbCBVSEQgNCBEb2NzIGFuZCBHUkNPTiB2
aWRlb3MgYnV0IGRvIHRoZXNlIGJsb2NrcyBpbiBpbWFnZSBidWlsZGVyIHJlYWxseSANCj4gd29y
az8gSSB0aGluayB0aGV5IGFyZSBub3Qgc3RhYmxlIGFuZCBoYXZlwqBhwqBidWcgLi4uDQo+IERv
ZXMgYW55b25lIHdvcmsgd2l0aCB0aGVtPyAuLi4gU28gSSBtYW51YWxseSBjaGFuZ2UgdGhlIFVT
UlAgaW1hZ2UgY29yZS4gQnV0IGluIEdVSSBJIA0KPiBoYWTCoGFtYmlndWl0eS4uLiBTbyBJIGFz
ay4NCj4gVGhhbmtzIHZlcnkgbXVjaA0KPg0KPiBPbiBTdW4sIE1heSAyOSwgMjAyMiBhdCA0OjMz
IFBNIE1hcmN1cyBNw7xsbGVyIDxtYXJjdXMubXVlbGxlckBldHR1cy5jb20+IHdyb3RlOg0KPg0K
PiAgICAgSGkgU3RhY2twcm9ncmFtbWVyLA0KPg0KPiAgICAgaGF2ZSB5b3UgcmVhZA0KPiAgICAg
aHR0cHM6Ly9rYi5ldHR1cy5jb20vR2V0dGluZ19TdGFydGVkX3dpdGhfUkZOb0NfaW5fVUhEXzQu
MCNSdW5uaW5nX3RoZV9JbWFnZV9CdWlsZGVyID8NCj4NCj4gICAgIEJlc3QgcmVnYXJkcywNCj4g
ICAgIE1hcmN1cw0KPg0KPiAgICAgRElTQ0xBSU1FUjogQW55IGF0dGFjaGVkIENvZGUgaXMgcHJv
dmlkZWQgQXMgSXMuIEl0IGhhcyBub3QgYmVlbiB0ZXN0ZWQgb3IgdmFsaWRhdGVkDQo+ICAgICBh
cyBhIHByb2R1Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0s
IG9yIGZvciB1c2UgaW4gaGF6YXJkb3VzDQo+ICAgICBlbnZpcm9ubWVudHMuIFlvdSBhc3N1bWUg
YWxsIHJpc2tzIGZvciB1c2Ugb2YgdGhlIENvZGUuIFVzZSBvZiB0aGUgQ29kZSBpcyBzdWJqZWN0
DQo+ICAgICB0byB0ZXJtcyBvZiB0aGUgbGljZW5zZXMgdG8gdGhlIFVIRCBvciBSRk5vQyBjb2Rl
IHdpdGggd2hpY2ggdGhlIENvZGUgaXMgdXNlZC4NCj4gICAgIFN0YW5kYXJkIGxpY2Vuc2VzIHRv
IFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0DQo+ICAgICBodHRwczovL3d3dy5ldHR1cy5j
b20vc2RyLXNvZnR3YXJlL2xpY2Vuc2VzLy4NCj4NCj4gICAgIE5JIHdpbGwgb25seSBwZXJmb3Jt
IHNlcnZpY2VzIGJhc2VkIG9uIGl0cyB1bmRlcnN0YW5kaW5nIGFuZCBjb25kaXRpb24gdGhhdCB0
aGUNCj4gICAgIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRo
ZSBwcm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueQ0KPiAgICAgaXRlbSBwcm9kdWNlZCwg
cHVyY2hhc2VkLCBvciBvcmRlcmVkIGJ5IGFueSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVz
aWduYXRpb24gaW4NCj4gICAgIHRoZSBsaWNlbnNlIHJlcXVpcmVtZW50IGNvbHVtbiBvZiBTdXBw
bGVtZW50IE5vLiA0IHRvIFBhcnQgNzQ0LCBVLlMuIEV4cG9ydA0KPiAgICAgQWRtaW5pc3RyYXRp
b24gUmVndWxhdGlvbnMgYW5kIChpaSkgc3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8g
dGhlDQo+ICAgICB0cmFuc2FjdGlvbi7CoCBJZiBvdXIgdW5kZXJzdGFuZGluZyBpcyBpbmNvcnJl
Y3QsIHBsZWFzZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkNCj4gICAgIGJlY2F1c2UgYSBzcGVjaWZp
YyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNlIERl
cGFydG1lbnQNCj4gICAgIGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2NlZWQgZnVydGhl
ci4NCj4NCj4gICAgIE9uIDI5LjA1LjIyIDEwOjQ4LCBzcCBoIHdyb3RlOg0KPiAgICAgPiBXaGF0
J3MgUkZOT0MgaW1hZ2UgYnVpbGRlciBVbml0IGluIGdyLWV0dHVzIGFuZCBHbnVyYWRpbz8NCj4g
ICAgID4gSSBjYW4gd29yayB3aXRoIFJGTk9DIGJsb2NrcyBidXQgSSBjYW4gbm90IHVuZGVyc3Rh
bmQgdGhlIGFwcGxpY2F0aW9uIFJGTk9DIGltYWdlDQo+ICAgICA+IGJ1aWxkZXIgVW5pdCBjYW4g
YW55b25lIGhhcyBhbnkga25vd2xlZGdlPw0KPiAgICAgPiBTY3JlZW5zaG90IGZyb20gMjAyMi0w
NS0yOSAxMy0xNS00MS5wbmcNCj4gICAgID4NCj4gICAgID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gICAgID4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gICAgID4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiAgICAg
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gICAgIFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+ICAg
ICBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
