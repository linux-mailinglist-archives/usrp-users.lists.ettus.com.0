Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A86C316F9DA
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2020 09:41:32 +0100 (CET)
Received: from [::1] (port=56074 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6sFw-0000sS-Qi; Wed, 26 Feb 2020 03:41:24 -0500
Received: from mx1.itsystems.it ([62.94.30.103]:42860)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <p.palana@itsystems.it>)
 id 1j6sFs-0000oT-8b
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 03:41:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wWxRvt32jkhFODTdn3vNXEmmDADDWdTOQPwFeqCX6rA=; b=MTh7WOh2wwHoYzrxkh1rpYUQVf
 PI1yj2xfbJV3by9b2Mizq3C5+hGfSPST3xPoDx3xRNuKL8qcf7DImqbNY34OLC08zfWcsZ19B6DDp
 9isdEnIFjX+DQfP2MvXILEjrBwsWXp+jzkdR/zGuKabAiKDp1Gr/U2i8xsEOjE6B2li0=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1j6sEk-0005yc-28
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 08:40:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <c8cd447d-acde-1201-1dbb-1562017c2153@itsystems.it>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 Hv257PEMJkU=
Message-ID: <d2ea76a1-88d2-517b-0137-2c4e1783f69f@itsystems.it>
Date: Wed, 26 Feb 2020 09:40:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c8cd447d-acde-1201-1dbb-1562017c2153@itsystems.it>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Rob, Hello Marcus, thank you for your answers. They
 make perfect sense. Have a good day Paolo On 25/02/20 14:43, Paolo Palana
 via USRP-users wrote: > Hello to all the mailing list. > > I've a little
 problem
 in setting the rx frequency on my n310 when I need > to acquire from all
 4 channels. > [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0001]
Subject: Re: [USRP-users] linuhd 3.14.1.1 Problem in setting rx frequecy on
 n310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SGVsbG8gUm9iLCBIZWxsbyBNYXJjdXMsCnRoYW5rIHlvdSBmb3IgeW91ciBhbnN3ZXJzLiBUaGV5
IG1ha2UgcGVyZmVjdCBzZW5zZS4KCkhhdmUgYSBnb29kIGRheQpQYW9sbwoKCk9uIDI1LzAyLzIw
IDE0OjQzLCBQYW9sbyBQYWxhbmEgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGVsbG8gdG8gYWxs
IHRoZSBtYWlsaW5nIGxpc3QuCj4KPiBJJ3ZlIGEgbGl0dGxlIHByb2JsZW0gaW4gc2V0dGluZyB0
aGUgcnggZnJlcXVlbmN5IG9uIG15IG4zMTAgd2hlbiBJIG5lZWQKPiB0byBhY3F1aXJlIGZyb20g
YWxsIDQgY2hhbm5lbHMuCj4KPiBJIHVzZSB0aGUgbjMxMCBkaXJlY3RseSBpbiBteSBwcm9ncmFt
IHVzaW5nIGxpYnVoZC4gVGhlIGNvZGUgSSB1c2UgaW4KPiBvcmRlciB0byBzZXQgdGhlIHJ4X2Zy
ZXF1ZW5jeSBpczoKPgo+IMKgwqDCoCBGaXJzdCBvZiBhbGwgc2V0IHRoZSBzdWJkZXZzOgo+Cj4g
wqDCoMKgIMKgwqDCoMKgIGlmKHZtLmNvdW50KCJzdWJkZXYiKSl7Cj4gwqDCoMKgIMKgwqAgwqAg
wqDCoMKgwqDCoMKgIG1Vc3JwLT5zZXRfcnhfc3ViZGV2X3NwZWMobVN1YkRldik7Cj4gwqDCoMKg
IMKgwqDCoCB9Cj4KPiDCoMKgwqAgwqDCoMKgIC4uLi4uLi4uLi4uLgo+Cj4gwqDCoMKgIMKgwqDC
oMKgIGZvcihzaXplX3QgaT0wOyBpPG1GcmVxcy5zaXplKCk7IGkrKykKPiDCoMKgwqAgwqDCoMKg
IHsKPiDCoMKgwqAgwqDCoCDCoCDCoMKgIGNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBj
aGFuICVkIEZyZXE6ICVmIE1IeCIpICUgKGkpCj4gJSAobUZyZXFzW2ldLzFlNikgPDwgZW5kbDsK
PiDCoMKgwqDCoMKgwqDCoCDCoMKgwqAgdWhkOjp0dW5lX3JlcXVlc3RfdCB0dW5lX3JlcXVlc3Qo
bUZyZXFzW2ldKTsKPiDCoMKgwqAgwqDCoMKgwqDCoMKgwqAgdHVuZV9yZXF1ZXN0LmFyZ3MgPSB1
aGQ6OmRldmljZV9hZGRyX3QoIm1vZGVfbj1pbnRlZ2VyIik7Cj4gwqDCoMKgIMKgwqAgwqAgwqDC
oCBtVXNycC0+c2V0X3J4X2ZyZXEodHVuZV9yZXF1ZXN0LCBpKTsKPiDCoMKgwqDCoMKgwqDCoCDC
oMKgwqAgY291dCA8PCBib29zdDo6Zm9ybWF0KCJOZXcgUlggRnJlcSBjaGFuICVkOiAlZiBNSHou
Li4iKSAlIGkKPiAlIChtVXNycC0+Z2V0X3J4X2ZyZXEoaSkvMWU2KSA8PCBlbmRsIDw8IGVuZGw7
Cj4gwqDCoMKgIMKgwqDCoCB9Cj4KPgo+IFRoZSBvdXRwdXQgSSBjYW4gc2VlIG9uIG15IGNvbnNv
bGUgY29uZmlybSB0aGF0IGV2ZXJ5IGNoYW5uZWwgc2hvdWxkCj4gaGF2ZSB0aGUgcmlndGggZnJl
cXVlbmN5Lgo+Cj4gT2YgY291cnNlIHRoaXMgaXMgbm90IHRoZSBjYXNlLgo+Cj4KPiBTdXBwb3Nl
IEkgd29udCBhY3F1aXJlIGZyb20gQTowIFJYMiAoaWYgSSB1c2UgVFgvUlggaXMgdGhlIHNhbWUp
IGFuZCBBOjEKPiBSWDLCoCB0dW5pbmcgdGhlIGZpcnN0IGRldmljZSBhdCA2NTQuMCBNSFoKPgo+
IGFuZCB0aGUgc2Vjb25kIHRvIDg5Ni44IE1IWi4gV2hhdCBoYXBwZW4gaXMgdGhhdCBib3RoIGNo
YW5uZWxzIGFyZSB0dW5lZAo+IHRvIHRoZSBsYXN0IGZyZXF1ZW5jeSAoSSdtIHN1cmUgb2YgaXQg
YmVjYXVzZSBJIHRlc3RlZCBpdCB3aXRoIGEgc2lnbmFsCj4gZ2VuZXJhdG9yKS4KPgo+IEknbSB1
bmFibGUgdG8gdW5kZXJzdGFuZCB3aHkgdGhpcyBoYXBwZW4uIEFueSBoZWxwIGlzIGFwcmVjaWF0
ZWQuCj4KPiBUaGFuayB5b3UKPgo+Cj4KPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
