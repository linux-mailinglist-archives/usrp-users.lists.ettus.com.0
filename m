Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 022EA4A8D32
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 21:27:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FF4E385AC0
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:27:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R5Le2nCc";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 46E63385AB8
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 15:26:41 -0500 (EST)
Received: by mail-qv1-f43.google.com with SMTP id b12so3614412qvz.5
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 12:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=bNU8OH8glTuaP5StKkR8J3Qd/e6Y+j46x7ouCsFCdDw=;
        b=R5Le2nCcaA79KIdfld1IriPh8rVvQ+8/v3ee9ckeN56GlLKPCNE1k0ihjpzOAhBgW9
         HAXi8l9VFNYmGXG2XmQdxzXdE1X2lzbXRIPn1DYiS8v415NOS5vbLWYvGPV+eRoY41I2
         Kq4mm0G00aYZqoRFhhAeA7l5hhPSQU9DEqvNblV2KX/c2sgg0c+hWVhcHUEFEo+HiiDN
         VrWXdYUCSiXkl+F42GIu1Ol/Zkbl+/Dhd80/Ie6ehD/ZjjZCu8sS+z4Kz2Vzbil2onbw
         Yuz/cqIJ6FSNCq6InAPU/2VdfBzJK4gm1hb+JHkXYdGFJMf1JLBtc6p3MO2sfdZ3gwtH
         9d6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bNU8OH8glTuaP5StKkR8J3Qd/e6Y+j46x7ouCsFCdDw=;
        b=wZ9jeN1wax0O8h5IfYW33o1ZpaMqXdtdMHVR86L/8amuBw6kJRBozgosrBlzSciL6I
         pIB3H6/x1Mfc9zHkurQHmF4RwrP6jtYS4I8CopQnfnwaVBinnhY+XS+rHDVRBXJ8juYp
         mNlOoFcqjYUZwvVal8mytTNQ4doobJ3hy/rpXtiQoAzMLWE+pWCCbutloiKQG6lQ5cyR
         ZsoPVvCg3tmKjbNXJIyJ0Dv1UMB7YuyDSvuQPuqrQurwv9x9xCIm+lDY7wLo3PVTbjPK
         5wJbpvh+HwWEkCbdujkDRG5HMYKYMJOTU8hAUVIg/5RBgdiPNsVEdWw1hjG1vjMuPP63
         +qOQ==
X-Gm-Message-State: AOAM530eILTyk7tB2bI4jXk4wIxJ5i/17WWYvTfRV6rUUvNEkJk+sOwE
	F8sU6gQ4M0chYfkQpUcgzk1D4P9CBwk=
X-Google-Smtp-Source: ABdhPJziHVu/AXDeNVUMrF9qdExihBvmz/eg1bCG4vzv6T3tEUufPeSxG6QChDu6y5zFGNI8C2C1/A==
X-Received: by 2002:a05:6214:2a8a:: with SMTP id jr10mr32712855qvb.112.1643920000264;
        Thu, 03 Feb 2022 12:26:40 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t1sm14740427qtc.48.2022.02.03.12.26.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 12:26:39 -0800 (PST)
Message-ID: <9b49be1d-f09c-86b8-cdbe-3389243c29b9@gmail.com>
Date: Thu, 3 Feb 2022 15:26:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
Message-ID-Hash: KPTLH4MH3UO42PMRYHSDC7ECG4XTEVEI
X-Message-ID-Hash: KPTLH4MH3UO42PMRYHSDC7ECG4XTEVEI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands compatibility between different USRP series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPTLH4MH3UO42PMRYHSDC7ECG4XTEVEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0wMyAxNToxNywgSm9obiBIb2RnaW5zIHdyb3RlOg0KPiBIaSB0aGVyZSwNCj4N
Cj4gV2UgaGF2ZSBhIHNpbXBsZSBzZXQgdXAgd2hlcmUgd2UgY29sbGVjdCBpcSBzbmlwcGV0cyBm
cm9tIDMgdXNycCdzIGF0IA0KPiB0aGUgc2FtZSByeC10aW1lcyB2aWEgdGltZWQgY29tbWFuZHMu
IFdlIGludHJvZHVjZSBkZWxheXMgYmV0d2VlbiB0aGUgDQo+IHVzcnAncyB2aWEgYSByZWZlcmVu
Y2UgZGVsYXkgYm94IGFuZCB0cnkgdG8gcmVjb3ZlciB0aGUgaW50cm9kdWNlZCANCj4gZGVsYXlz
IHZpYSBjcm9zcy1jb3JyZWxhdGlvbi4NCj4NCj4gVGhpbmdzIHdvcmsgZ3JlYXQgd2hlbsKgYWxs
IHRoZSByeCdzIGJlbG9uZyB0byB0aGUgc2FtZSBVU1JQIGZhbWlseS4gDQo+IEZvciBpbnN0YW5j
ZSB3ZSBoYXZlIGJlZW4gYWJsZSB0byByZWNvdmVyIHRoZSBjb3JyZWN0IGRlbGF5IGZvciBhbGwg
DQo+IEIyMTAgKHdpdGggR1BTRE8vVENYTykgb3IgYWxswqBFMzEwICh3aXRoIEdQUyBhbnRlbm5h
KSBzY2VuYXJpb3MuIA0KPiBIb3dldmVyLCB3aGVuIHdlIG1peCBkaWZmZXJlbnQgVVNSUCdzLCB0
aGUgZGVsYXlzIGNvbXB1dGVkIHZpYSANCj4gY3Jvc3MtY29ycmVsYXRpb24gbm8gbG9uZ2VyIG1h
a2Ugc2Vuc2UuDQo+DQo+IEZvciBpbnN0YW5jZSwgd2hlbiB3ZSB1c2UgMSBCMjEwIGFuZCAyIEUz
MTAncyB0aGUgZGVsYXlzIGJldHdlZW4gQjIxMCANCj4gYW5kIEUzMTAncyBqdXN0IG9zY2lsbGF0
ZSB3aWxkbHkgYnV0IHRoZSByZWxhdGl2ZSBkaWZmZXJlbmNlIGJldHdlZW4gDQo+IEUzMTAgcmVt
YWlucyByZWxhdGl2ZWx5IHN0YWJsZS4gV2UgdGVzdGVkIDIgQjIxMCdzIHdpdGggYSBzaW5nbGUg
WDMxMCANCj4gKHdpdGggR1BTRE8vT0NYTykgYXMgd2VsbCBhbmQgd2Ugc2VlIHRoZSBzYW1lIHBy
b2JsZW0gYXMgd2VsbC4gVGhlIA0KPiBpbnRlcmVzdGluZyB0aGluZyBpcyB0aG91Z2ggdmlzdWFs
aXppbmcgdGhlIHNwZWN0cnVtIG9mIGNvbGxlY3RlZCANCj4gc25pcHBldHMgZnJvbSBkaWZmZXJl
bnQgVVNSUHMgc2hvdyBwcmV0dHkgbXVjaCB0aGUgc3BlY3RydW0gb2YgdGhlIA0KPiBrbm93biBh
cHBsaWVkIHNpZ25hbC4NCj4NCj4gSXMgdGhlcmUgc29tZSBmdW5kYW1lbnRhbCBkaXNjcmVwYW5j
eSBiZXR3ZWVuIGRpZmZlcmVudCBVU1JQIGZhbWlsaWVzPyANCj4gT3IgbWF5YmUgVUhEIHNvbWVo
b3cgaW50ZXJwcmV0cyBzYW1wbGVzIGRpZmZlcmVudGx5IGZvciBkaWZmZXJlbnQgDQo+IFVTUlAn
c8KgKGZsaXBwaW5nIGkgYW5kLnEsIGRpZmZlcmVudCByeC10aW1lLCBwcHMgaW1wbGVtZW50YXRp
b25zLMKgIA0KPiBzb21lIHByZWNpc2lvbiBpc3N1ZXMgbWF5YmUpPw0KPg0KPiBJbiBhbnkgY2Fz
ZSBJIHdvdWxkIGJlIGdyYXRlZnVsIGlmIGFueW9uZcKgY2FuIHNoZWQgc29tZSBsaWdodCBvbnRv
IA0KPiB0aGlzIGJlaGF2aW9yLg0KPg0KPiBCZXN0LA0KPiBKb2huDQo+DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBncm91
cCBkZWxheXMgYmV0d2VlbiBVU1JQIGZhbWlsaWVzIHdpbGwgYmUgZGlmZmVyZW50IGR1ZSB0byAN
CmRpZmZlcmVudCBGUEdBIGltcGxlbWVudGF0aW9ucywgdGhlIGV4YWN0ICJwbGFjZW1lbnQiIG9m
IHRpbWUtb2YtZGF5IA0KcmVnaXN0ZXJzLCBldGMuDQoNCkl0IHdvdWxkIGJlIHZlcnkgZGlmZmlj
dWx0IHRvIGd1YXJhbnRlZSBwaGFzZS1jb2hlcmVuY2UgYWNyb3NzIGRpZmZlcmVudCANClVTUlAg
ZGV2aWNlIHR5cGVzLCBiZWNhdXNlIHRoZSBpbXBsZW1lbnRhdGlvbnMgYXJlIGRpZmZlcmVudC0t
bm90IGp1c3QgDQp0aGUgRlBHQSBiaXRzIGFuZA0KIMKgIHBpZWNlcyAoRFVDcywgRERDcywgZXRj
KSwgYnV0IGFsc28gdGhlIGFuYWxvZyBzdGFnZXMgd2lsbCBiZSBkaWZmZXJlbnQuDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
