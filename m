Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D0493D3A
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jan 2022 16:32:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 347C63853BE
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jan 2022 10:32:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kLkOevsJ";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7DF8E3852CC
	for <usrp-users@lists.ettus.com>; Wed, 19 Jan 2022 10:30:54 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id p9so3047709qkh.3
        for <usrp-users@lists.ettus.com>; Wed, 19 Jan 2022 07:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=8+OaunM47dparu5BI+gmX3Gjcmm9aBrZYzuVt+2ap+g=;
        b=kLkOevsJycq7J3/9eQoC3jCnSkBY4clK3X6zjQ0pJJ+X2v1UphE+tVcfrmjBoI42Iy
         QtQ8I+o+8RZN1bNKS1Dw+u/2kj6LgIkyobNxd8+D4hAFmvCyPTgaDH4QkogN4Mr6MU7i
         73115AEEN66qXN1MzbYKcUM4/zSkAuTU6L+L98weow4T3AyIcEtM33MI88eoFdIOwhi0
         xr4p3GCWcYWuKcVmOMPiW0uBg4k/aL/U0L5dWAQv+B+I+J/aVdsu/lWnuJdp3L7/dhCh
         HyzndkJQxsER4dC3rX3DZsgSMC74BeIFmvSkgKZziMykUNtxSRu6zIhPjahaFTRj1Yti
         +9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=8+OaunM47dparu5BI+gmX3Gjcmm9aBrZYzuVt+2ap+g=;
        b=7G0NVm6jIoEtXwVjG1TXgun8+xhF/G7iVcMB1C/UQzbu/7B6smTllXnfBqH/bQJhKm
         mwjDz5SmtyvtYtsikBwrybwR7c5D7qp3OmufDHWCRuUYA0C+wuUYBLo2r/TlAuNflJtn
         V2VDbXj/s2xc40mPkUXHcbHVVG2eSXA4HK9pLSyAPP+r6t5fh81zdKQY0ueF8qhq9ejs
         iishw45ijyULQ5+pXBPnyBp0/f/xlVi+PZA1zcbKv7nznrUKwNgOM+G+i1A0QkZqdB2w
         xd25/PO5PFM+GDblF2xpPeHJo8GU1rnpIaMy3tcflI9t/roP/SJSflLWAMA7sIxXl4Qr
         QneA==
X-Gm-Message-State: AOAM533zwD+BrVEaqmDgZBDV4h59pkTfjPK2Z6frBnwOFgGxh5LTPX3z
	exUMiY8+2nOgV0AaFb+UkHF0rOGZzkY=
X-Google-Smtp-Source: ABdhPJzWBMd0zVCQJB5y8V0V05vIc41PtB7Y/VqVRlPwHEd3s4Rd6sHgEQM9t7cKVDkpW3LQ0KlcgQ==
X-Received: by 2002:a05:620a:12a7:: with SMTP id x7mr21668555qki.468.1642606253875;
        Wed, 19 Jan 2022 07:30:53 -0800 (PST)
Received: from smtpclient.apple ([2600:380:9179:1cae:6d38:646:d15a:113a])
        by smtp.gmail.com with ESMTPSA id br11sm18532qkb.118.2022.01.19.07.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jan 2022 07:30:53 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 19 Jan 2022 10:30:52 -0500
Message-Id: <D4128DEB-12EA-448C-AC84-E204B7C7A9A1@gmail.com>
References: <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
In-Reply-To: <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: J3PP5J546RE63BNVZ2AKZO44WWR6UZWJ
X-Message-ID-Hash: J3PP5J546RE63BNVZ2AKZO44WWR6UZWJ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J3PP5J546RE63BNVZ2AKZO44WWR6UZWJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIHJvYiENCg0KPGVuZCB0cmFuc21pc3Npb24+DQoNCj4gT24gSmFuIDE5LCAyMDIyLCBh
dCAwOTo0MSwgUm9iIEtvc3NsZXIgPHJrb3NzbGVyQG5kLmVkdT4gd3JvdGU6DQo+IA0KPiDvu79P
biBXZWQsIEphbiAxOSwgMjAyMiBhdCAxOjAwIEFNIFBhdWwgQXRyZWlkZXMgPG1hdWQuZGliMTk4
NEBnbWFpbC5jb20+IHdyb3RlOg0KPj4gDQo+PiBPaywgc28ganVzdCBjaXJjbGluZyBiYWNrIG9u
IHRoaXMuIEl2ZSBnb3QgYSBkZWNlbnQgaGFuZGxlIG9uIHRoZSBQeXRob24gQVBJLiBJ4oCZdmUg
Y29uZmlybWVkIHRoZSBMTyBzaWduYWwgY29tZXMgb3V0IG9mIHRoZSBwb3J0IG9uY2UgdGhlIHNw
bGl0dGVyIG91dHB1dCBpcyBlbmFibGVkLg0KPj4gDQo+PiBSb2IgeW914oCZcmUgc2F5aW5nIHRo
YXQgZm9yIHN1cmUgYm90aCBjaGFubmVscyBuZWVkIHRvIGJlIGV4dGVybmFsIEFORCBleHBvcnRl
ZD8gbWFraW5nIHRoZSBzZXR0aW5nczoNCj4+IFRYIDA6DQo+PiBMTyBzb3VyY2UgICAgID0gZXh0
ZXJuYWwNCj4+IExPIEV4cG9ydGVkID0gdHJ1ZQ0KPj4gVFggMToNCj4+IExPIHNvdXJjZSAgICAg
ID0gZXh0ZXJuYWwNCj4+IExPIEV4cG9ydGVkID0gdHJ1ZQ0KPiBZZXMsIGV4Y2VwdCBhcyB5b3Ug
cG9pbnRlZCBvdXQgYmVsb3csIExPIEV4cG9ydGVkIGZvciBUeDEgaXMgbm90DQo+IG5lZWRlZCBh
bmQgbGlrZWx5IGRvZXMgbm90aGluZy4NCj4gDQo+PiANCj4+IFJhZGlvICMwIFRYIExPIE9VVCAw
ICA9IGVuYWJsZWQNCj4+IFJhZGlvICMxIFRYIExPIE9VVCAgMSA9IGVuYWJsZWQgKGZvciBkZWJ1
ZykNCj4+IChXaGVuIEkgc2V0IFRoZXNlIHRoZXkgdHVybiBvbiB0aGUgbGlnaHRzIGZvciB0aGUg
TE8gb3V0cykNCj4+IA0KPj4gVGhlIGZyb250IHBhbmVsIGNhYmxlIHNob3VsZCBjb25uZWN0IFRY
IExPIG91dHB1dCAwIHRvIFRYIExPIElucHV0IDENCj4gWWVzDQo+IA0KPj4gDQo+PiBMaWtlIHlv
dSBzYWlkLCBBY2NvcmRpbmcgdG8gdGhlIGJsb2NrIGRpYWdyYW0sIHRoZSBUWCBMTyBpbnB1dCAx
IHNob3VsZCBjb25uZWN0IGJvdGggY2hhbm5lbHMgdG8gdGhlIDF4MiBzcGxpdHRlciBzbyBJIHNo
b3VsZCBvbmx5IG5lZWQgMSBMTyBvdXRwdXQgdHVybmVkIG9uLiAgSWQgbGlrZSB0byBwb2ludCBv
dXQgdGhhdCBpbiB0aGUgYmxvY2sgZGlhZ3JhbSBpdCBhbHNvIGRvZXNu4oCZdCBsb29rIGxpa2Ug
aXTigJlzIHBvc3NpYmxlIHRvIGV4cG9ydCBjaGFubmVsIDHigJlzIExPLiBUaGUgb25seSBjb25u
ZWN0aW9uIGluIHRoZSBkaWFncmFtIGlzIGludGVybmFsLg0KPiANCj4gWWVzLCBTb21ld2hlcmUg
aW4gdGhlIEV0dHVzIGRvY3VtZW50YXRpb24sIGl0IGluZGljYXRlcyB0aGF0IHRoaXMgaXMNCj4g
dGhlIGNhc2UgKEkndmUgZm9yZ290dGVuIHdoZXJlKS4NCj4gDQo+PiANCj4+IEFtIEkgbWlzc2lu
ZyBzb21ldGhpbmc/IEhhdmUgeW91IGdvdHRlbiB0aGlzIHRvIHdvcms/DQo+IFllcywgSSBoYXZl
IGJlZW4gdXNpbmcgdGhpcyBpbiBhIDE2eDE2IHN5c3RlbSB3aXRoIDggTjMyMSBkZXZpY2VzIGFs
bA0KPiBjb25uZWN0ZWQgYnkgYSBzaW5nbGUgTE8gKGFyYml0cmFyaWx5IGNob3NlbiBMTyBleHBv
cnQgY2hhbm5lbA0KPiBkaXN0cmlidXRlZCB0byBib3RoIFR4IGFuZCBSeCBMTyBpbnB1dHMpLiBJ
J3ZlIGFsc28gdGVzdGVkIGl0IG9uDQo+IHNtYWxsZXIgc3lzdGVtcyBhcyBzbWFsbCBhcyA0eDQg
KGFuZCBwb3NzaWJseSAyeDIgbGlrZSB5b3VyIGNhc2UsIGJ1dA0KPiBub3QgcG9zaXRpdmUgb24g
dGhpcykuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
