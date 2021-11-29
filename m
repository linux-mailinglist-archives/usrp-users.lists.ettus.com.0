Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD96A460DFD
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 05:14:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0C6C3849F9
	for <lists+usrp-users@lfdr.de>; Sun, 28 Nov 2021 23:14:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AIa5cQ6K";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 445EF3846A0
	for <usrp-users@lists.ettus.com>; Sun, 28 Nov 2021 23:13:41 -0500 (EST)
Received: by mail-qk1-f179.google.com with SMTP id de30so21601554qkb.0
        for <usrp-users@lists.ettus.com>; Sun, 28 Nov 2021 20:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=GxJ/S5neum6g8ITi36uAtpWidoK26mvVYzDL4X5UoAE=;
        b=AIa5cQ6KbG2f30xkg8ey/qXgASmXNSw6Tv9V90Wl63mGPcESw8Ixk+RNYLX7+k+njX
         //fbRf57r/b6PRp1gNWWlH1+nL2roojvEQ0+mwbtMeJ/Qy+BIw0PaAANLHG5KNlCLlF/
         RLiV03kWzoS0c6VDPJ45cutM7V7FEIt1X42DQMzefBqUbhYdmln25kE6C9ZhDPyApF1x
         x6j8sFcKhh3E5nQjjiTDSvb4Yo8QPZnLPFjeHR3KxKE1Qb0e/1I2wCiQ6O9Cdc5CGP7t
         pUTIecdvRqioP1BTx+HyOsMPdvVzScGfupj5skIl13mrORS4W1s1HQJiiwJMD55I+BG6
         FzNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GxJ/S5neum6g8ITi36uAtpWidoK26mvVYzDL4X5UoAE=;
        b=oXFABmerCQp1E+lmptMo0EUfaAvLo4uUwlBjNayUFXg+xyUA5eOaClb/IxN/Jwoard
         PFJ9lYuQg4ioV7nZBgbGBUdtvp96Bb7WVmt+wpEgEWal0tIgsPMyIWaSWlZWiHiCl23S
         FgV/HtNwiU8o9LOicltXEYUDZozCNsyWpdQSvQr3zxLBXPKEebpuTAJ8nb6K6iKj1dsH
         upust+6FVgmcdbz2EIqzXosfZ3PJ4kdcEE3/sWHKuQ24Po2ZoIv26xbKG+iyNq9w7cjP
         TAYzDDGKTJ4b5ueXe9XGoSNBHb41F1GF0Pnmws3BhHwTm5yo+iYQm+UIKJOYs+1y/LnD
         9S3g==
X-Gm-Message-State: AOAM531ep+dYF04dGdRFZhzW+BTjzJO/qSnVvNXh0MfYklPN6obtuJzu
	gu5YNTRXBOqdcNVZ3nJhfhqx4PaTdYo=
X-Google-Smtp-Source: ABdhPJx+YURELe8TMpeNrb3+iiXPNacwSIwajYQO9sOlFk1adZSOup2m/j5OJXi2wbmNkq/HVGvt0g==
X-Received: by 2002:ae9:f701:: with SMTP id s1mr36106916qkg.425.1638159221162;
        Sun, 28 Nov 2021 20:13:41 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g14sm7846346qko.55.2021.11.28.20.13.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Nov 2021 20:13:40 -0800 (PST)
Message-ID: <a2566291-391e-7881-c33a-627e9adda655@gmail.com>
Date: Sun, 28 Nov 2021 23:13:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dOFg7mTPfCCQVbTC7lEJO6QTo5o7Aho0wB6DkZ14GFI@lists.ettus.com>
Message-ID-Hash: 4JE23UUZNRI7FUJCESEZQ4H5WTDUZQ55
X-Message-ID-Hash: 4JE23UUZNRI7FUJCESEZQ4H5WTDUZQ55
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JE23UUZNRI7FUJCESEZQ4H5WTDUZQ55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0yOCAwNzowNSwgaXcxZm53QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGVsbG8g
YWxsLA0KPg0KPiBEaWQgeW91IG1hbmFnZSB0byBzb2x2ZSB0aGlzIGFuZCBob3c/DQo+DQo+IEkg
aGFkIHNpbWlsYXIgcHJvYmxlbSwgZXZlbiB3aXRob3V0IG1vZGlmeWluZyB0aGUgaW1hZ2UuIEFm
dGVyIGFuIA0KPiB1cGRhdGUgb2YgVUhEIGRyaXZlcnMgSSBsb2FkZWQgdGhlIG5ldyBpbWFnZSB1
c2luZyB0aGUgaW1hZ2UgbG9hZGVyIA0KPiBhbmQgc29tZXRoaW5nIHdlbnQgd3JvbmcgKHNvIEkg
Y291bGQgbm90IHVzZSB0aGUgeDMxMCBhbnltb3JlKS4gSSBnZXQgDQo+IHRoZSBzYW1lIGVycm9y
IGFzIHJlcG9ydGVkIGluIHRoZSBmaXJzdCBwb3N0Lg0KPg0KPiBUbyBtYWtlIGl0IHdvcmtpbmcg
YWdhaW4gSSBoYWQgdG8gdXNlIFZpdmFkbyB0byBsb2FkIHRoZSBpbWFnZS4gQnV0IGl0IA0KPiBp
cyBub3Qgc3RvcmVkIGluIFJPTSwgc28gZXZlcnkgdGltZSBJIHN3aXRjaCBvZmYsIEkgbmVlZCB0
byByZWxvYWQgDQo+IHdpdGggVml2YWRvLiBJIHRyaWVkIGRpZmZlcmVudCBVSEQgdmVyc2lvbnMg
YW5kIHNhbWUgcmVzdWx0LiBObyB3YXkgdG8gDQo+IHVzZSB0aGUgVUhEIGltYWdlIGxvYWRlciBh
bmQgc3RvcmUgdGhlIGltYWdlIGluIFJPTS4NCj4NCj4gSSBhbHNvIG5vdGljZWQgdGhhdCB3aGVu
IEkgdXNlIEdOVVJhZGlvIHRvIGdlbmVyYXRlIGV2ZW4gYSBzaW1wbGUgDQo+IHNpZ25hbCwgSSBn
ZXQgc2V2ZXJhbCB1bmRlcnJ1biBlcnJvcnMgKGxvdHMgb2Yg4oCYVeKAmSkgdGlsbCB0aGUgdGV4
dCANCj4gYnVmZmVyIGlzIGNvbXBsZXRlbHkgZnVsbCBhbmQgdGhlIHNjcmlwdCBjcmFzaGVzLiBJ
4oCZbSBub3Qgc3VyZSBpdCBpcyANCj4gcmVsYXRlZCB0byB0aGUgc2FtZSBpc3N1ZSwgYnV0IChp
ZiBJIGFtIG5vdCB3cm9uZykgd2hlbiB3ZSB1c2VkIHRoZSANCj4geDMxMCBhdCBiZWdpbm5pbmcg
aXQgd2FzIHdvcmtpbmcgZmluZS4NCj4NCj4gSSB3YXMgd29uZGVyaW5nIGl0IG1heSBiZSBhIHBy
b2JsZW0gb2YgY29tbXVuaWNhdGlvbiBvbiB0aGUgTEFOIChpLmUuIA0KPiBkYXRhIHRyYW5zbWlz
c2lvbiBmcm9tIFBDIHRvIHgzMTApIHdoaWNoIGNyZWF0ZXMgcHJvYmxlbXMgd2l0aCBib3RoIA0K
PiB0aGUgaW1hZ2UgbG9hZGluZyBvciBkYXRhIHRyYW5zbWlzc2lvbiAod2hpbGUgaXQgaXMgT0sg
bG9hZGluZyBpbWFnZXMgDQo+IHZpYSBKVEFHKS4NCj4NCj4gQW55IGlkZWE/DQo+DQo+IEFsDQo+
DQpJIGFwb2xvZ2l6ZSwgSSBtaXNzZWQgdGhpcyBtZXNzYWdlIGVhcmxpZXIgdG9kYXkuDQoNClRo
ZSBwcm9jZWR1cmUgZm9yICJ1bmJyaWNraW5nIiBhbiBYMzEwL1gzMDAgaXMgZG9jdW1lbnRlZCBo
ZXJlOg0KDQpodHRwczovL2tiLmV0dHVzLmNvbS9YMzAwL1gzMTBfRGV2aWNlX1JlY292ZXJ5DQoN
Ckl0IGlzIHRoZSBjYXNlIHRoYXQgc2luY2UgdGhlcmUncyBuby9saXR0bGUgZXJyb3ItcmVjb3Zl
cnkgd2hlbiANCnVwbG9hZGluZyBuZXcgZmlybXdhcmUgdG8gdGhlIGRldmljZSwgYW55IGNvbW11
bmljYXRpb25zIGhpY2N1cHMgZHVyaW5nIA0KZmlybXdhcmUvRlBHQSB0cmFuc2ZlciBjYW4NCiDC
oCByZXN1bHQgaW4gYSBkZXZpY2UgdGhhdCByZXF1aXJlcyB0aGUgcmVjb3ZlcnkgcHJvY2VkdXJl
Lg0KDQpJZiB5b3Uga25vdyB5b3VyIG5ldHdvcmsgY29ubmVjdGlvbiBpcyB1bnJlbGlhYmxlIChm
b3Igd2hhdGV2ZXIgcmVhc29uKSANCkRPIE5PVCBhdHRlbXB0IGZpcm13YXJlL0ZQR0EgdXBkYXRl
cyBvdmVyIHRoYXQgbmV0d29yayBjb25uZWN0aW9uLg0KDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
