Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 881125750AF
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 16:24:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3835C3818D4
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 10:24:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657808653; bh=1q1zzJA/6y0MkC8ZK1HtXXzLbOaPDLlpemJvKIuPFRY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Z6d1juV/crzbYJU3qFwwvly+K2LJukfXtLVwhaqxwsOHa3PBxJHVWUuwGY0TBx1+n
	 t1DpYz6gXmdgzZDkUjcCHhCmQ8p60iBmTdhIryCnpC6ysyrWSW0Eza37qsWg4ySwIb
	 wc3QakUwFKaQG4XAT6Vmb2tjO3xz2rZwL1YX51xhr++f/qh4pkCkiL7GGTKYh8n9YY
	 3UNKvW0TVybr9i7XlnUSkzrKn++kj6bQdpEkyJY0y1N52he5LurOZaahJHBAR1zkjn
	 1DOxLEAJTPckDcK/qBVGOHwAihp2IigSkjGl6bpujsoApMKG0ylF6wItwXnKWLOp0c
	 4UWe8JgA0ykdA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id AD71E381008;
	Thu, 14 Jul 2022 09:29:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XQvSAgAr";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id sz17so3408736ejc.9;
        Thu, 14 Jul 2022 06:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=v8SWJFZZoIL0OEZBDirON8yK6fFAlvYHJBkYMPrcnf4=;
        b=XQvSAgAr4/rwVQ84FZi72EtMc4KT9/WDNRz0HKEIha6L5S+Anhs3vxcyvXCv7SdhaV
         H/k2YgqIBSDwuc7ygnaI3QOlUJbBiOI6PTQCiyosgJSqoHDi0TCKJMTOOlxlVcR+s4wM
         UA46n9kpTLN1xlt+FnfamaVPe2BseMDLVGdGADUUIG+xCnAEPyxOLJ/Bs3LPMmf0jcx3
         nJTTj0XV6K+MolaPgfhYGT0ENbS15vkfg1yPjDTMRjxF7cQHVwplsdBqcq/vU/gTQYxr
         KYC9syNHfC3adoCghD0QeabgP+gMJeKcic67oz4nVYApTBvchEir1sF8Rccvzpmtf8Et
         B1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=v8SWJFZZoIL0OEZBDirON8yK6fFAlvYHJBkYMPrcnf4=;
        b=pCBxRkGw1XPKgPzbVB680azJw5R5rQbva6t+WKKxlNLlAnqVBfzF5OA5X10WZ51gQ6
         wsuLesApqEuFCa87C+aBPUajgu29jbUpP8xrunqNuhlurCXBJvTHjDD/rtnb1Dx1ClI6
         eEi2Rj57FSckhY665LowD7IxHM+UUaXKQ80QL0ZfmF/MaaRHLNbkY9B78i2Gn+lqDGdw
         QRvqGs275IoHOZArJG0Cjaq5xJ4ZXK7TlevqGcba90EEYTClBdR0GyvctFg3XAjsWnK7
         0ZSpOeESTe+1EIMobxxyxTvvU4C58T6MFX8nevj1eNT72NAhVms8QxwMOoB261OVrniu
         lpMA==
X-Gm-Message-State: AJIora+WhSDULKVrD+f4ymE3kuLMXgXfA4PF03ISB9xSH3TPGqT08KXG
	UtgAJ0XNnrJV6aGOIPIQ8X7PPFG4l1EgLCIxuQnI2qFX
X-Google-Smtp-Source: AGRyM1uekI9U1a6W7ZbJgf32COmmXO/tFHyVDROHZ0YbdKL5rhs8AIqKhux3uENnizUEnmFMiRkdvPyYDsuiDl5RI/c=
X-Received: by 2002:a17:907:94c3:b0:72b:335f:6f02 with SMTP id
 dn3-20020a17090794c300b0072b335f6f02mr8598759ejc.40.1657805348751; Thu, 14
 Jul 2022 06:29:08 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR04MB41449224096D758652637DBBC6899@VI1PR04MB4144.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB41449224096D758652637DBBC6899@VI1PR04MB4144.eurprd04.prod.outlook.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 14 Jul 2022 16:28:57 +0300
Message-ID: <CAAxXO2HsH=j+EgPhSn0upzfGniqbeNTFdcPsCyK0QvPNOb+67g@mail.gmail.com>
To: =?UTF-8?B?TWFydGEgQnJracSH?= <Marta.Brkic.00@fesb.hr>
Message-ID-Hash: 2UZMP76V7PVAKJ6ZFUYZJMMH7GWIIOWI
X-Message-ID-Hash: 2UZMP76V7PVAKJ6ZFUYZJMMH7GWIIOWI
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>, =?UTF-8?Q?Katarina_Rado=C5=A1?= <krados@fesb.hr>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with collecting GNSS signals by using GNSS-SDR and USRP N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2UZMP76V7PVAKJ6ZFUYZJMMH7GWIIOWI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNClRvIHNldCB0aHJlYWQgcHJpb3JpdHksIHlvdSBuZWVkIHRvIGFkZCB5b3VyIHVzZXIg
dG8gZ3JvdXAgdXNycC4uLg0KIkQiIG1lYW5zIGRyb3BwZWQgcGFja2FnZXMuIFlvdSBhcmUgbm90
IHJlYWRpbmcgZmFzdCBlbm91Z2guDQpTaW5jZSB5b3VyIGxhc3QgcnVuIHdhcyBhbHNvIGF0IDQg
TWh6IHdpdGhvdXQgYW55ICJEInMsIGl0IHNlZW1zIHlvdXINCnByb2JsZW0gaXMgd2l0aCB5b3Vy
IGhhcmQgZGlzayBJL08uLi4NCg0KSFRIDQpOaWtvcw0KDQpPbiBXZWQsIEp1bCAxMywgMjAyMiBh
dCAxOjM5IFBNIE1hcnRhIEJya2nEhyA8TWFydGEuQnJraWMuMDBAZmVzYi5ocj4gd3JvdGU6DQo+
DQo+IEhpLA0KPg0KPiB3ZSBoYXZlIHByb2JsZW0gd2l0aCBjb2xsZWN0aW5nIEdOU1Mgc2lnbmFs
cyBmb3IgR05TUyBzcG9vZmluZyBieSB1c2luZyBVU1JQIE4yMTAgKGRhdWdodGVyYm9hcmQgVUJY
LTQwKSwgYWN0aXZlIEdOU1MgYW50ZW5uYSAoR1BTR2xvbmFzcy0zNi1OLUdBKSBhbmQgR05TUy1T
RFIuDQo+IEZpcnN0bHksIHdlIGZvbGxvd2VkIGFsbCBzdGVwcyBmcm9tIEdOU1MtU0RSIGNvbmZp
Z3VyYXRpb24gcGFnZSBhbmQgd2Ugc3VjY2Vzc2Z1bGx5IGdvdCB0aGUgcG9zaXRpb24gZml4ZXMg
d2l0aCBkb3dubG9hZGVkIGZpbGUgb2YgcmF3IHNpZ25hbCBzYW1wbGVzIGFzIGF0IHRoZSBsaW5r
Lg0KPiBBZnRlcndhcmRzLCB3ZSB0cmllZCB0byBnZXQgdGhlIHBvc2l0aW9uIGZpeGVzIHdpdGgg
YWN0aXZlIEdOU1MgYW50ZW5uYSBidXQgdW5zdWNjZXNzZnVsbHkuIFdlIHNldCBhbGwgdGhlIHBh
cmFtZXRlcnMgYXMgYXQgdGhlIGluc3RydWN0aW9ucyBhdCB0aGUgbGluayBhbmQgcmFuICdteV9H
UFNfcmVjZWl2ZXIuY29uZicgZmlsZS4gQXMgdGhlIHJlc3VsdCwgd2UgZ290IHByaW50ZWQgJ0Qn
IChwbGVhc2Ugc2VlIHNjcmVlbnNob3RzIDEgYW5kIDIgYXR0YWNoZWQpLiBXZSB0cmllZCB0byBz
b2x2ZSB0aGlzIHByb2JsZW0gYnkgZm9sbG93aW5nIHRoZSBpbnN0cnVjdGlvbnMgYXQgRVRUVVMg
cGFnZSBidXQgbm90aGluZyB3b3JrZWQgaW4gb3VyIGNhc2UuDQo+DQo+IFRoZW4sIHdlIHRyaWVk
IHRvIHNldCB0aGUgc2FtcGxpbmcgZnJlcXVlbmN5IHRvIDJNSHogYW5kIHRoZXJlIHdhcyBubyBw
cmludGVkICdEJyBhZnRlciBydW5uaW5nIHRoZSBjb25mIGZpbGUuIEhvd2V2ZXIsIHdlIGRpZG4n
dCBnZXQgdGhlIHBvc2l0aW9uIGZpeGVzIGFuZCB3ZSBvbmx5IGdvdCAnTG9zcyBvZiBsb2NrIGlu
IGNoYW5uZWwnIChzY3JlZW5zaG90IDMpLiAgV2Ugc2VhcmNoZWQgZm9yIHRoZSBzb2x1dGlvbiBh
bmQgd2Ugd29uZGVyIGlmIG1pc3NlZCBzb21ldGhpbmcgb3Igd2UgZG8gbm90IGhhdmUgYWxsIG5l
Y2Vzc2FyeSBlcXVpcG1lbnQgKHdlIHNhdyB0aGF0IGJpYXMtdGVlIGlzIG5lZWRlZCBmb3Igc29t
ZSBkYXVnaHRlcmJvYXJkcykuDQo+DQo+IFdlIHdvdWxkIGJlIHRoYW5rZnVsIGlmIHlvdSBjb3Vs
ZCBoZWxwIHVzIHdpdGggb3VyIHByb2JsZW0uDQo+DQo+IFRoYW5rIHlvdSBpbiBhZHZhbmNlIGFu
ZCBiZXN0IHJlZ2FyZHMsDQo+IEthdGFyaW5hIFJhZG/FoSBhbmQgTWFydGEgQnJracSHDQo+DQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
