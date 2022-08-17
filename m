Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF24596F4F
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 15:17:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2282384285
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 09:16:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660742218; bh=ZyzcjqgD0MYZR/B0TC9coLjfF+LX5VhtRF2lDsaP/7E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MfwYa34qpyG3iWzcDqINpmuJbj3jKLWUNn5P3EUqpEI1nZjYZX8/yS+40Ayyh7qie
	 ispqNXhUkqdLvIWZJOQE7Q/yhdzdL2zcHrYC+updLF2Vad1UFL1uhOVvQLJ7ZB1wEe
	 McJPEIHXjqQanjaKedj1TY36lNXM9AsyoE5YDd//JfabjEHW7MQX4yDxjPNuVZV2CB
	 wnDEmuyCA0Zd1U5hnHqouAcn6ljR3vv+xPndD+WIkNl7Q9ciPqCb7r2Nb9uUO0sHrR
	 KCvni3LkjepO+gDDLnSCfqIFP4LfQ7f+aG3UaBmcw82tPEnrqOP+z+/nCM+lnKcCSZ
	 et0AF/Rmk9dIA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E023384307
	for <usrp-users@lists.ettus.com>; Wed, 17 Aug 2022 09:11:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="loM0ylf7";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id e13so17398930edj.12
        for <usrp-users@lists.ettus.com>; Wed, 17 Aug 2022 06:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=BSX+0+lXLeb+iCJr14lhVZbwwArNx883hpa7gGRriSY=;
        b=loM0ylf7dMWfPOHeFZtl90CoqsP1aCYSj4nWhq0gV483xzZSFwkTXUn24VdCFpWkqR
         PjDx4z0CBY+rVTAlud0RUFmMgDur2OUGWgIvHNVcxaaMCE415APF4qOHdpohq3VTJ4gz
         gxmR8qXxeXt9hnuXjZLF+X8CSXuJdnVmzYfsBMCVFrY+xp3VBPJsF0E3J9B2DP2Njl7+
         Q92lF14r9QW2+vIWENV0756AnWG4zIbmNSi10BP8XoBt+JphxY778e6pxErVPAbmt1qe
         mdWfO9rwpNjTQV9ir+9dXBCnUlKqkc3KxqTWh1ZiU1fnAl1oeX68gmGPg1lZROyH8fXa
         E3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=BSX+0+lXLeb+iCJr14lhVZbwwArNx883hpa7gGRriSY=;
        b=qQHrE/MRCbMByJ7lP+y0/J+OLWEyH4Qo2SmuhGZoXLLsntRS3SBi13cIArhmFtiXGs
         sRMpO4ZiERKeAiyzJFXX5qejJApPfGRMdlU1Pn5olVFeUR/pAZFohQ5ZDle8X6V0QPCl
         1NmCqIw1iHkaf3U6sFW5efVxpzPD/pkymvexHKSJH4AAVAviFTzfz5xs/BTUV8JjBy1f
         AJZMDA0T0Y0vEdWeqsbPipTViQ+9QFV5K9Yv0qVW/fUZKTEZTcgCIbXz+V4RL9J2F36J
         53ics6Bv0/oiVseZmQIoIrFcLX3oT1Bh8sv3r8xn7f4zrk+zmtyOnICWRDGu9TdoJqPW
         0arA==
X-Gm-Message-State: ACgBeo0ZEbkPmZtDelVSTDa+46unknDWoJatdOnjGilUZDH0byhWT70R
	PDF7bwGwjrxR3a9wmu5N5z0DprCY8WuyLXWnQxY=
X-Google-Smtp-Source: AA6agR6iP9pT53QxCQ9suh6ojAZQY6WKEFDQUPlL6UScBVS6+3yq5Qs/0iD4sEAlBiP5z+V0tGUID6OuoGMnS3I4+68=
X-Received: by 2002:a05:6402:5107:b0:43d:6b26:bdc5 with SMTP id
 m7-20020a056402510700b0043d6b26bdc5mr23118104edd.156.1660741872116; Wed, 17
 Aug 2022 06:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY@lists.ettus.com>
In-Reply-To: <QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 17 Aug 2022 16:11:00 +0300
Message-ID: <CAAxXO2EDKmjShD_vw2jeiZDV4-Eo6TccwZeiY+-V+WbAjbR+yw@mail.gmail.com>
To: woznych@gmail.com
Message-ID-Hash: UMZ6MBIUOKE75NMQPR3EKJBIAIWRXDD2
X-Message-ID-Hash: UMZ6MBIUOKE75NMQPR3EKJBIAIWRXDD2
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UMZ6MBIUOKE75NMQPR3EKJBIAIWRXDD2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VHJ1ZSwgeW91IGRvbid0IG5lZWQgdG8gYmUgYWxpZ25lZCB5b3Vyc2VsZiwgYWx0aG91Z2ggaXQg
d291bGQgYmUgYQ0KZ29vZCBpZGVhIGZvciBmYXN0ZXIgYWNjZXNzLg0KVGhlIGJ1ZmZlciB5b3Ug
YXJlIHJlYWRpbmcgZnJvbSBpbiB1aGQgaXMgYWxpZ25lZCwgc28gd2hlbiB5b3UgdHJ5IHRvDQpy
ZWFkIHVuYWxpZ25lZCBkYXRhIGluIHlvdXIgb3duIGJ1ZmZlciwgeW91IGZvcmNlIHRoZSBidXMg
ZXJyb3IgaW4gdGhlDQp1aGQgYnVmZmVyLg0KVG8ga2VlcCBhbGlnbm1lbnQgdGhlIHVoZCBidWZm
ZXIgY291bGQgc2VuZCB5b3UgbW9yZSBkYXRhIHRoYW4gYXNrZWQsDQpidXQgdGhhdCB3b3VsZCBy
ZXN1bHQgaW4geW91ciBtZW1vcnkgY29ycnVwdGVkLg0KT3IgaXQgY291bGQgc2VuZCB5b3UgbGVz
cyAoYWxpZ25lZCkgZGF0YS4gSSBkb24ndCBrbm93IHdoeSBpdCBkb2Vzbid0IGRvIHRoaXM6KQ0K
DQpIVEgNCk5pa29zDQoNCk9uIFR1ZSwgQXVnIDE2LCAyMDIyIGF0IDU6MDEgQU0gPHdvem55Y2hA
Z21haWwuY29tPiB3cm90ZToNCj4NCj4gSSB0d2Vha2VkIGl0IHRvIG1ha2Ugc3VyZSB0aGUgYnVm
ZmVyIHNpemUgaXMgYSBtdWx0aXBsZSBvZiDigJxyeF9zdHJlYW0tPmdldF9tYXhfbnVtX3NhbXBz
KCnigJ0gYW5kIGhhdmVu4oCZdCBiZWVuIGFibGUgdG8gZ2V0IHRoZSBpc3N1ZSB0byBvY2N1ci4g
V2lsbCByZXF1aXJlIG1vcmUgZXhoYXVzdGl2ZSB0ZXN0aW5nLCBidXQgbG9va3MgcHJvbWlzaW5n
IHNvIGZhciBzaW5jZSBJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgc2VnIGZhdWx0IGJlaGF2
aW9yIGp1c3QgcHJpb3IgdG8gdHJ5aW5nIHRoaXMgY2hhbmdlIG91dC4NCj4NCj4gVGhhbmtzIQ0K
Pg0KPiBDaHJpcw0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
