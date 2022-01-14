Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED27A48EC00
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 15:50:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DC743847BC
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 09:50:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="rob+VikD";
	dkim-atps=neutral
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 895633849DC
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 09:49:29 -0500 (EST)
Received: by mail-wr1-f49.google.com with SMTP id s1so16015621wra.6
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 06:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=pvAilYOWei0x5mm8kDdPXZiX43wjunNqC6FBn8f4MnI=;
        b=rob+VikD1zMRnjzpMYAQDkqi1nyRkDK0aKmpk0XVa8U0P9HUzhcgGqC08HDAgzGoJy
         xGljnOZhnN5ah/NNIaqDiILQskwT2+UD0vdblVLWTrC2WwpZJ9+EDeeANZyc9iS0r+d/
         hJBkey7jRQ7cgkuwFsjUYJW1owoCFgmJCkk6DX6M5x+i/+TETZsGOXeuA1Dz7UOuUshe
         UgWXX9zCglzWUkf9BXRkTIcXN6KKsW697cf0qULnYUUgDV5rUc30uJIkhNrY9csyKHre
         bLFh7d6JGc3a9gk7VQg9cINT0c7XO2C11nGh7wgFGx09E2BcULcdmUUP0ga6qI4hKZL9
         U+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pvAilYOWei0x5mm8kDdPXZiX43wjunNqC6FBn8f4MnI=;
        b=Izv3IiWFbnXXK0KfkcqwNiRAx2t9lrnmiL4FSwIscTEi1eesxhTEoJdWZzlReSLUxS
         WBtwvCH4tj07YgMlT4BXYIU6OeJZhr/BVOw2qbCCtg+Z+2K0Grl3twewjk9iKzTE8OD5
         x+4g3GPSyOBUiGzfFMYN2Qlk+JDJuQAys2L3yTP7AAHTJs2eJFROuZ2KsERydEnNOrEG
         UmFJblzAV2YB20BBIHTZPsYJuaJIDztZYmU1Ycw++aAvvMkkuQ3A6U5nVm7SWgUb02yC
         ADs8RYo8FkPNW9Cv7/9LB9BNxkIrgnDzR/eUAVdl6MfwFPPoYIsrS00WIQPtAeRQj4Bw
         Yn/A==
X-Gm-Message-State: AOAM5322SufSy3gH9T4HRR0rS2TEeDOsWMCEdyUXBf6B4U8eAvPZxtXL
	P5gpDAWg8LiJspud09CgV471eqXhrxlyAW79
X-Google-Smtp-Source: ABdhPJyoPFqD26hRilnNxgGzPWhkBTLzM6cu4QWnwDfiSORKxeLepY8yWPcKd/9/zaO54navDbOUuA==
X-Received: by 2002:a5d:4212:: with SMTP id n18mr8732509wrq.362.1642171767995;
        Fri, 14 Jan 2022 06:49:27 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-31.hsi.kabel-badenwuerttemberg.de. [46.223.163.31])
        by smtp.gmail.com with ESMTPSA id a6sm5497904wrq.22.2022.01.14.06.49.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 06:49:27 -0800 (PST)
Message-ID: <b2678c40-dc51-dc1e-452d-c16805b27eaf@ettus.com>
Date: Fri, 14 Jan 2022 15:49:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
Message-ID-Hash: X2BGKYBNPFKOPTARN2OOFMQKLXIMEFKP
X-Message-ID-Hash: X2BGKYBNPFKOPTARN2OOFMQKLXIMEFKP
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 based programs cannot run stably for a long time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X2BGKYBNPFKOPTARN2OOFMQKLXIMEFKP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSmFzb24sDQoNCg0KaG0sIGlmICpJKiBoYWQgdG8gbWFrZSBJIHdpbGQgZ3Vlc3MgKGFuZCBp
dCdzIHJlYWxseSBvbmx5IHRoYXQpLCBzb21ldGhpbmcgaW4gdGhlIG5ldHdvcmsgDQpzdGFjayBy
ZW9yZGVyZWQgb3IgZHJvcHBlZCBwYWNrZXRzLCBhbmQgbm93IHRoZSBmaXJtd2FyZSBydW5uaW5n
IG9uIHRoZSBzb2Z0Y3B1IGNhbid0IA0KcmVjb25jaWxlIHRoYXQgLSBvciBqdXN0IHRoZSBob3N0
IFVIRC4NCg0KSSBiZXQgdGhpcyBpcyBoYXJkIHRvIGRlYnVnLCBzbyBsZXQncyBwbGFuIHRoaXMg
YSBiaXQ7IEkgaG9uZXN0bHkgZG9uJ3QgaGF2ZSBhIGdyZWF0IA0Kc3RhcnRpbmcgcG9pbnQgZWl0
aGVyLCBidXQgSSdkIGZpcnN0IHRyeSB0byBmaWd1cmUgb3V0IHdoZXRoZXIgdGhpcyBtaWdodCBi
ZSBuZXR3b3JrOg0KDQoxLiBoYXZlIHNvbWV0aGluZyB0aGF0IGxvZ3Mgc3RhdHMgZm9yIElQdjQu
IElmIHRoaXMgaXMgTGludXgsIChhbmQgYmFzaCwgYW5kIHlvdXIgbmV0d29yayANCmRldmljZSBp
cyBjYWxsZWQgZW5wMnMwKQ0KDQoNCndoaWxlIHRydWU7IGRvIG5ldHN0YXQgLXMgLWkgZW5wMnMw
IC00ID4gIi9teWxvZ2Rpci9uZXRzdGF0LiQofGRhdGUgKyIlcyIpIjsgc2xlZXAgMTsgZG9uZXwN
Cg0KfA0KfA0KDQoyLiBUcnkgdG8gbm90ZSBkb3duIHRoZSB0aW1lIG9mIGNyYXNoaW5nLg0KDQoz
LiBUcnkgdG8gY29ycmVsYXRlIHRoZSB0aW1lIHdpdGggYW4gaW5jcmVhc2Ugb2Ygb25lIG9mIHRo
ZSBzdGF0aXN0aWNzOyBpZiB5b3UgbmVlZCBoZWxwIA0Kd2l0aCB0aGF0LCBsZXQgdXMga25vdy4N
Cg0KDQpNeSBhcG9sb2dpZXMgZm9yIG5vdCBoYXZpbmcgYSBncmVhdCBpZGVhIHdoYXQgdGhpcyBt
aWdodCBiZSA6KCwgYnV0IGhlcmUncyB0byBob3Bpbmcgd2UgDQpjYW4gZmlndXJlIHRoaXMgb3V0
IQ0KDQoNCkJlc3QgcmVnYXJkcywNCg0KTWFyY3VzDQoNCnwNCnwNCg0KfA0KfA0KDQpESVNDTEFJ
TUVSOiBBbnkgYXR0YWNoZWQgQ29kZSBpcyBwcm92aWRlZCBBcyBJcy4gSXQgaGFzIG5vdCBiZWVu
IHRlc3RlZCBvciB2YWxpZGF0ZWQgYXMgYSBwcm9kdWN0LCBmb3IgdXNlIGluIGEgZGVwbG95ZWQg
YXBwbGljYXRpb24gb3Igc3lzdGVtLCBvciBmb3IgdXNlIGluIGhhemFyZG91cyBlbnZpcm9ubWVu
dHMuIFlvdSBhc3N1bWUgYWxsIHJpc2tzIGZvciB1c2Ugb2YgdGhlIENvZGUuIFVzZSBvZiB0aGUg
Q29kZSBpcyBzdWJqZWN0IHRvIHRlcm1zIG9mIHRoZSBsaWNlbnNlcyB0byB0aGUgVUhEIG9yIFJG
Tm9DIGNvZGUgd2l0aCB3aGljaCB0aGUgQ29kZSBpcyB1c2VkLiBTdGFuZGFyZCBsaWNlbnNlcyB0
byBVSEQgYW5kIFJGTm9DIGNhbiBiZSBmb3VuZCBhdCBodHRwczovL3d3dy5ldHR1cy5jb20vc2Ry
LXNvZnR3YXJlL2xpY2Vuc2VzLy4NCg0KTkkgd2lsbCBvbmx5IHBlcmZvcm0gc2VydmljZXMgYmFz
ZWQgb24gaXRzIHVuZGVyc3RhbmRpbmcgYW5kIGNvbmRpdGlvbiB0aGF0IHRoZSBnb29kcyBvciBz
ZXJ2aWNlcyAoaSkgYXJlIG5vdCBmb3IgdGhlIHVzZSBpbiB0aGUgcHJvZHVjdGlvbiBvciBkZXZl
bG9wbWVudCBvZiBhbnkgaXRlbSBwcm9kdWNlZCwgcHVyY2hhc2VkLCBvciBvcmRlcmVkIGJ5IGFu
eSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4gdGhlIGxpY2Vuc2UgcmVx
dWlyZW1lbnQgY29sdW1uIG9mIFN1cHBsZW1lbnQgTm8uIDQgdG8gUGFydCA3NDQsIFUuUy4gRXhw
b3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zIGFuZCAoaWkpIHN1Y2ggYSBjb21wYW55IGlz
IG5vdCBhIHBhcnR5IHRvIHRoZSB0cmFuc2FjdGlvbi4gIElmIG91ciB1bmRlcnN0YW5kaW5nIGlz
IGluY29ycmVjdCwgcGxlYXNlIG5vdGlmeSB1cyBpbW1lZGlhdGVseSBiZWNhdXNlIGEgc3BlY2lm
aWMgYXV0aG9yaXphdGlvbiBtYXkgYmUgcmVxdWlyZWQgZnJvbSB0aGUgVS5TLiBDb21tZXJjZSBE
ZXBhcnRtZW50IGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2NlZWQgZnVydGhlci4NCg0K
T24gMTAuMDEuMjIgMjA6MzcsIGphc29uIHBybyB3cm90ZToNCj4gSGkgZGVhciBFbmdpbmVlcnMg
b2YgRXR0dXMgUmVzZWFyY2gsDQo+DQo+IE91ciBhcHBsaWNhdGlvbiB3cml0dGVuIGJhc2VkIG9u
IFVIRCBhbmQgVVNSUCBYMzEwIGNhbm5vdCBydW4gZm9yIGEgbG9uZyB0aW1lKFRoZSANCj4gbG9u
Z2VzdCB0aW1lIGRpZCBub3QgZXhjZWVkIDQ4IGhvdXJzKS4NCj4gVGhlIHgzMTAgaXMgY29ubmVj
dGVkIHRvIHRoZSBjb21wdXRlciB0aHJvdWdoIGEgMTBHYkUgbmV0d29yayBjYXJkIChYNTIwKS4N
Cj4gV2UgaGF2ZSB0cmllZCB0byB1c2UgdmVyc2lvbnMgMy4xNSBhbmQgNC4xLjAuNS4gVUhEIHRo
cm93cyBkaWZmZXJlbnQgZXJyb3JzOg0KPg0KPiAxLiBVSEQgNC4xLjAuNQ0KPiBYMzAwIGZ3IGNv
bW11bmljYXRpb24gZmFpbHVyZSAjMQ0KPiBFbnZpcm9ubWVudEVycm9yOiBJTyBFcnJvcjp4MzAw
IGZ3IHBlZWszMiAtcmVwbHkgdGltZWQgb3V0DQo+IFRlcm1pbmF0ZSBjYWxsZWQgYWZ0ZXIgdGhy
b3dpbmcgYW4gaW5zdGFuY2Ugb2YgJ3VoZDo6YXNzZXJ0aW9uX2Vycm9yJw0KPiBXaGF0KCk6QXNz
ZXJ0aW9uRXJyb3I6cmVwbHkuc2VxdWVuY2UgPT0gcmVxdWVzdC5zZXF1ZW5jZQ0KPiBpbiB2aXJ0
dWFsIHVpbnQzMl90IHgzMDBfY3RybF9pZmFjZV9lbmV0OjpfcGVlazMyKHVoZDo6d2JfaWZhY2U6
OndiX2FkZHJfdHlwZSkNCj4gYXQvaG9tZS94eHgvdWhkL2hvc3QvbGliL3VzcnAveDMwMC94MzAw
X2Z3X2N0cmwuY3BwOjE2NQ0KPg0KPiAyLiBVSEQgMy4xNQ0KPiB0ZXJtaW5hdGUgY2FsbGVkIGFm
dGVyIHRocm93aW5nIGFuIGluc3RhbmNlIG9mIOKAmHVoZDo6IGlvX2Vycm9y4oCZDQo+IHdoYXQo
KSA6IEVudmlyb25tZW50RXJyb3IgOiBJT0Vycm9yIDogQmxvY2sgY3RybChDRV8wMV9Qb3J0XzQw
KSBubyByZXNwb25zZSBwYWNrZXQg4oCTIA0KPiBBc3NlcnRpb25FcnJvciA6IGJvb2woYnVmZikN
Cj4gaW4gdWludDY0X3QgY3RybF9pZmFjZV9pbXBsPF9lbmRpYW5uZXNzPiA6OiB3YWl0X2Zvcl9h
Y2soYm9vbCxkb3VibGUpW3dpdGggdWhkIDo6IA0KPiBlbmRpYW5uZXNzX3RfZW5kaWFubmVzcyA9
IHVoZDo6RU5ESUFOTkVTU19CSUc7dWludDY0X3QgPSBsb25nIHVuc2lnbmVkIGludF0gDQo+IGF0
L2hvbWUveHh4L3VoZF8zLjE1LjAvdWhkL2hvc3QvbGliL3Jmbm9jL2N0cmxfaWZhY2UuY3BwOjE1
MQ0KPg0KPiBJcyB0aGVyZSBhIHNvbHV0aW9uPw0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEphc29u
DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
