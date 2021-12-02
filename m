Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C684667BE
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 17:19:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21CB03848D8
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 11:19:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WSBz5BE/";
	dkim-atps=neutral
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 83892384ED9
	for <usrp-users@lists.ettus.com>; Thu,  2 Dec 2021 11:18:07 -0500 (EST)
Received: by mail-io1-f45.google.com with SMTP id x6so58569iol.13
        for <usrp-users@lists.ettus.com>; Thu, 02 Dec 2021 08:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=H+Te9RR4ZFzw8x7bOZ9vgouuyrOlxMNg3NFbpdS2960=;
        b=WSBz5BE/3RsqiQ3DjzXZqo8sCNj+UDVqYZaskOhwvBa9vpRXcJypOiu8dL9azLPuoe
         c9LIt1nsxGDRbEtPFYKD9YCBvYZla9onkYOc38i6pL5JA3h2v1bwSr0GAC4pljUr+lZS
         COtqVNWscD5o4tlWRGBmr8HyMInA4Kur2TqpGtOXY0SlSqPqiBwiq5zfO+P/OBOKLXnE
         2Nyq7A+Yap6j9mDT0VE2U1B1kb7UKHcRoge/KT0Tj29JQEyLSwq5mhppDlhOPX+b/Q8n
         xcRJXgMDIRpgb2e1nCrKVoHdP+cPXmvRTfEsWMfJ7qZOILQI8HMG1VOKbPwHGAmbV69w
         mT9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H+Te9RR4ZFzw8x7bOZ9vgouuyrOlxMNg3NFbpdS2960=;
        b=TwsAKCNIA5s8Wen4bBExnmE2zkgTw5uZY87tOaJknn9IefqiYwFMw4/aWljwxFc8sN
         3sBTVcyqOPI04834H2nJQcrhuHCAVd50SpsHnWmLH6NXi8pD1o7zFKi0/Jc0o4SKMaEV
         90tuqBdSpTYZyYPCMRzE+ly96N0KnrJ7QdXjnzPaazgniKbeiShGOHXy+6lzJQ9rORyH
         7S/Jrbc7wBf631W3Y2QEas30YJjLjjnrF60FNrahI0dCczUC0c4OTgK+fqPw0mTMxMH1
         DcRZjEGBeE1goPHeptTOe0YAFcrLUPODNlFl/yvZkVv+7JLSxg6Fy4nTMWt5ExkpuiBR
         qaAA==
X-Gm-Message-State: AOAM530/uvHDYyYPLX5x+T1Oc6Pu4nFk6IjM6Ou1E2bPGQ3gRZZFEUfa
	79RPbP8PtQWZD8QKiTlI6J/wfjr5DiY=
X-Google-Smtp-Source: ABdhPJxbi2RZtGVEuCOYtXF7ejxL+BVWWKvfU/r6qSGbIAPtEEDoVa/U1DxXEbBMoU/RwNxstohsuA==
X-Received: by 2002:a05:6602:2c0d:: with SMTP id w13mr15905015iov.79.1638461886766;
        Thu, 02 Dec 2021 08:18:06 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id u24sm107011ior.20.2021.12.02.08.18.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Dec 2021 08:18:06 -0800 (PST)
Message-ID: <f2e2c498-05b0-4972-e5d7-ad5ab617036a@gmail.com>
Date: Thu, 2 Dec 2021 11:18:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <oaX8Lx5HOOveYhOwbr7KrcPml5JDVzXUkj4zW97ko@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <oaX8Lx5HOOveYhOwbr7KrcPml5JDVzXUkj4zW97ko@lists.ettus.com>
Message-ID-Hash: GKZTYY5M5TV6GF7ZAPCOXHXVWOYQOWH6
X-Message-ID-Hash: GKZTYY5M5TV6GF7ZAPCOXHXVWOYQOWH6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n320 power calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GKZTYY5M5TV6GF7ZAPCOXHXVWOYQOWH6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0wMiAxMDo0OCwgc2Vja2lub25jdTgwNzBAZ21haWwuY29tIHdyb3RlOg0KPg0K
PiBBY3R1YWxseSwgZm9yIG5vdywgUnggcG93ZXIgY2FsaWJyYXRpb24gaXMgd2hhdCBJIGFtIGlu
dGVyZXN0ZWQgaW4uIEFzIA0KPiBJIHVuZGVyc3RhbmQsIHNob3VsZCBJIHNldCB0aGUgUkYgZ2Fp
biBsZXZlbCBpbiBteSBhcHBsaWNhdGlvbiB3aGVuIEkgDQo+IGNsb3NlIHRvIHRoZSBzcGVjaWZp
YyBmcmVxdWVuY2llcyB3aGljaCBhcmUgbWVhc3VyZWQgYmVmb3JlPw0KPg0KPg0KSSdtIG5vdCBz
dXJlIHdoYXQgeW91IG1lYW4gYnkgdGhpcy0tSSdtIGd1ZXNzaW5nIGl0J3MgYmVjYXVzZSBFbmds
aXNoIA0KaXNuJ3QgeW91ciBmaXJzdCBsYW5ndWFnZSwgYW5kIEkgYXBvbG9naXplIGZvciBmYWls
aW5nIHRvIHVuZGVyc3RhbmQuDQoNClRoZSBnZW5lcmFsIGFwcHJvYWNoIGlzIHRoYXQgZm9yICpF
QUNIKjoNCg0KIMKgwqDCoCAtIGZyZXF1ZW5jeS1zZXR0aW5nDQogwqDCoMKgIC0gZ2Fpbg0KIMKg
wqDCoCAtc2FtcGxlLXJhdGUNCg0KWW91IHByZXNlbnQgc2V2ZXJhbCBrbm93biBwb3dlciBsZXZl
bHMgdG8gdGhlIFJYIHBvcnQsIG5vdCB0byBleGNlZWQgDQotMTVkQm0gb3Igc28uwqDCoCBPbmNl
IHlvdSBoYXZlIHRoYXQsIHlvdSBjYW4gZ2VuZXJhbGx5IHBsb3QgYW4gDQppbnRlcnBvbGF0ZWQg
Y3VydmUNCiDCoCAod2hpY2ggb3ZlciBtb3N0IG9mIHRoZSByYW5nZSBzaG91bGQgYmUgdmVyeSBj
bG9zZSB0byBhIHN0cmFpZ2h0IHNsb3BlKS4NCg0KTm93LCB3aGVuIHlvdXIgYXBwbGljYXRpb24g
bmVlZHMgdG8ga25vdyB0aGUgcG93ZXIgbGV2ZWxzIGl0J3Mgc2VlaW5nLCANCnlvdSBjYW4ganVz
dCBjb25zdWx0IHRoZSB0YWJsZXMgYXNzb2NpYXRlZCB3aXRoIHlvdXIgZ2VuZXJhdGVkIA0KY2Fs
aWJyYXRpb24gY3VydmUuDQoNCktlZXAgaW4gbWluZCB0aGF0IFNEUnMgYXJlIHNhbXBsaW5nICp2
b2x0YWdlcyosIE5PVCBwb3dlci7CoMKgwqDCoCBXaGljaCANCm1lYW5zIHRoYXQgdGhlICpwb3dl
ciogaW4gYSBzaWduYWwgaXMgcHJvcG9ydGlvbmFsIHRvOg0KDQogwqAgQVZHKEkqSSArIFEqUSkN
Cg0KQ2FsaWJyYXRpb24gc2ltcGx5IGhlbHBzIHlvdSBmaWd1cmUgb3V0IHdoYXQgdGhlIHByb3Bv
cnRpb25hbGl0eSANCmNvbnN0YW50IGlzIGZvciBhbnkgZ2l2ZW4gaGFyZHdhcmUtcGFyYW1ldGVy
IHNldHRpbmcuDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
