Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ACF537AEC
	for <lists+usrp-users@lfdr.de>; Mon, 30 May 2022 14:59:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BAB5A383EB5
	for <lists+usrp-users@lfdr.de>; Mon, 30 May 2022 08:59:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653915554; bh=Q9qBq2Btvkqjnoiv4peh13vZZ7DBSkJxb2fc4WULy94=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HD0BbTnZTWs1ps+tA1APAPfBQw3w2mX7TFfP7usir9AT4jR2s0+/BK1jQUudwPLar
	 OYlNB/mN321U58HnKx/tgp6KuvOPE4sA1xtOkGgyORXPvDGH6GmlmtZVOsDVaUi+X1
	 KcawGxJLuBbnB+YmAzjdmtzlGI/cGK0gyVW6Ojzz7j3I8qKCDx8Zajd7rIC8ctJRsl
	 EyLYBTIdTjkXufsf5B8aveoh4ZegKC3M59ckfxdm2oaqTIU9ry8mH7P8YA6VZos2to
	 oPxVLzgz57V8siTtH9yqIM96sl0hnWvrxLx2yMShS7uikilsYrnhpvxS/aspfiLLVQ
	 IGtrYr50Rqwpw==
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EAC4383EB0
	for <usrp-users@lists.ettus.com>; Mon, 30 May 2022 08:58:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="mnWQ7Axp";
	dkim-atps=neutral
Received: by mail-wm1-f42.google.com with SMTP id l188-20020a1c25c5000000b003978df8a1e2so4308716wml.1
        for <usrp-users@lists.ettus.com>; Mon, 30 May 2022 05:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=QIEw4awBNmL4hsH0CoT27dvuPSgvZOWDyZ+OfLO4SxI=;
        b=mnWQ7AxpjUI9E/32HvjkLz/3Ug5+qQqwWXVqDNVVsboyVHhTq67R+nP2zjtE0gLKda
         J7H/YLA6iCb3/YTIHND1nhGEPwj6k+S1iL+6drkEVVm497sP4pUfAOx+49RGT15jC/UU
         Qiak0FxJ6eTrNxOQJogjkPh27jCU4yFMTL+uahjpRnVpZpNGDwQE6s83IJFMGkFbEh7d
         5FwRLkY111rLKrDkotGyiTPYgnRuqm+eImQS9ZaIJ9tvS6e4n2JZX8QbWD0aFfbXvAk+
         XIHoEXxSxKiEu+SvwkCeDudVdoNrDBEmiLK2DTfZbSS+50TZqTORDMUCXEfOqLAHP7X9
         IWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QIEw4awBNmL4hsH0CoT27dvuPSgvZOWDyZ+OfLO4SxI=;
        b=XznTyHCZLfUO9QUkBVkNUvA8o0Cg/VixVJ98G7Ci9SLbrTRvtVWg0oeDFklerp8fza
         ficyXWpzSt7NCXYBNL+0swnKG40+b4kWlV53kJc75EtGRFepdknqRGBr9wslIiFYGwZv
         zW5LB19PrM9teuaebQGDXBNd1tq13iOAFYKNoj25iaN48SQuMMMPE2+kxCkQMPR0xaPC
         RL5mFhzpzPZ6pwauiv3Plp0TeMoW6BYdH/UM9579HU47EOae5ZE/UttKP2ODfrEnAfGx
         zq3i5lpCxvnxJMw32SZYKOwKCtmcQbebY3/MOs4QU4qvKm+aC1t3On6ooYR+VyDcAI/b
         FwkA==
X-Gm-Message-State: AOAM532oJrnYcEeZZ+bgdDBMIw2+yekcENNpY5bsUmXVKnmNlCB6LNDo
	O7U2p63I1vJ1OyUzdtkaRjADPXIVMvRWsBDQ
X-Google-Smtp-Source: ABdhPJz370WfVvIuIbgfeR8qMt3HKEaslGDA6a34DQ9QNkHTmCrYQSVmxT/tEOTTKjDcefO/Dt74uA==
X-Received: by 2002:a05:600c:1993:b0:394:8ae3:e28d with SMTP id t19-20020a05600c199300b003948ae3e28dmr19331307wmq.49.1653915488953;
        Mon, 30 May 2022 05:58:08 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3855:fcfc::d8d? ([2001:9e8:3855:fcfc::d8d])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d58cf000000b0020d02ddf4d0sm8833882wrf.69.2022.05.30.05.58.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 05:58:08 -0700 (PDT)
Message-ID: <e6efb3b5-d727-1ccf-619f-4a572b3d4c21@ettus.com>
Date: Mon, 30 May 2022 14:58:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <dadaad2586274afaa98554722cd79a2f@campus.tu-berlin.de>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <dadaad2586274afaa98554722cd79a2f@campus.tu-berlin.de>
Message-ID-Hash: X3TBA727AMIGXZTLL2V4MML7O3T6HFTU
X-Message-ID-Hash: X3TBA727AMIGXZTLL2V4MML7O3T6HFTU
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: power level control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X3TBA727AMIGXZTLL2V4MML7O3T6HFTU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhhdCdzIHdoYXQgKnlvdSogbmVlZCB0byBkZXRlcm1pbmUsIHRocm91Z2ggY2FsaWJyYXRpb24h
IEFwcGx5IGEgc2F5LCAtNTAgZEJtIHBvd2VyIA0Kc2lnbmFsIHRvIHRoZSBVU1JQJ3MgaW5wdXQu
IE5vdGUgZG93biB0aGUgZGlnaXRhbCBwb3dlci4gQ2hvb3NlIHRoZSByZWZlcmVuY2UgbGV2ZWwg
YXMgdGhlIA0KZGlmZmVyZW5jZSBiZXR3ZWVuIC01MCBkQm0gYW5kIHdoYXQgeW91IG9ic2VydmVk
Lg0KDQoNCkJlc3QgcmVnYXJkcywNCg0KTWFyY3VzDQoNCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hl
ZCBDb2RlIGlzIHByb3ZpZGVkIEFzIElzLiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlk
YXRlZCBhcyBhIHByb2R1Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBz
eXN0ZW0sIG9yIGZvciB1c2UgaW4gaGF6YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBh
bGwgcmlza3MgZm9yIHVzZSBvZiB0aGUgQ29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3Qg
dG8gdGVybXMgb2YgdGhlIGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdo
aWNoIHRoZSBDb2RlIGlzIHVzZWQuIFN0YW5kYXJkIGxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0Mg
Y2FuIGJlIGZvdW5kIGF0IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5z
ZXMvLg0KDQpOSSB3aWxsIG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMgdW5kZXJz
dGFuZGluZyBhbmQgY29uZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUg
bm90IGZvciB0aGUgdXNlIGluIHRoZSBwcm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueSBp
dGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSB3aXRoIGEg
Zm9vdG5vdGUgMSBkZXNpZ25hdGlvbiBpbiB0aGUgbGljZW5zZSByZXF1aXJlbWVudCBjb2x1bW4g
b2YgU3VwcGxlbWVudCBOby4gNCB0byBQYXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRp
b24gUmVndWxhdGlvbnMgYW5kIChpaSkgc3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8g
dGhlIHRyYW5zYWN0aW9uLiAgSWYgb3VyIHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBwbGVh
c2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9u
IG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNlIERlcGFydG1lbnQgYmVmb3Jl
IHRoZSB0cmFuc2FjdGlvbiBtYXkgcHJvY2VlZCBmdXJ0aGVyLg0KDQpPbiAzMC4wNS4yMiAxNDo0
OCwgQ2hhbmcsIEthaXhpbiB3cm90ZToNCj4NCj4gRGVhciBhbGwsDQo+DQo+DQo+IEkgaGF2ZSBy
ZWFkIHRoZSBhcnRpY2xlIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3Bvd2Vy
Lmh0bWwgDQo+IDxodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9wb3dlci5odG1s
PsKgb2YgcG93ZXIgbGV2ZWwgY29udHJvbC4gSSB3b25kZXIgd2hhdCANCj4gaXMgdGhlIGRlZmF1
bHQgdmFsdWUgb2YgUlggcmVmZXJlbmNlIGxldmVsPyBJIGRpZG4ndCBmaW5kIHNvbWUgaW5mb3Jt
YXRpb24gYWJvdXQgdGhhdC4gDQo+IERvZXMgYW55b25lIGhhdmUgaWRlYT8NCj4NCj4NCj4gc2lu
Y2VyZWx5DQo+DQo+DQo+IFFhc2ltDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
