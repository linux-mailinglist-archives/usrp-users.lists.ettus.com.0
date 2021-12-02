Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE62E4668E4
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 18:12:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D3A73850BA
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 12:12:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JXQ0f83Q";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D62A5384664
	for <USRP-users@lists.ettus.com>; Thu,  2 Dec 2021 12:11:15 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id bu11so159643qvb.0
        for <USRP-users@lists.ettus.com>; Thu, 02 Dec 2021 09:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=bmJHP2Cy/xV03dSDADR3HUHRuMecfju8UpQfvhIF1jk=;
        b=JXQ0f83QtiXAHAxhLDbxzNqUxGBZhlFc7FWOzATIzDTlvul2fzDY1pSQ2b7tgZyVU2
         kcTbWszM8cWYfBZHxJVPv+VvaO/wzyhdmGf01vb/g2psn8Qu+x3GLiB9rojIAfJCrkbL
         wiQbyvq97z4Ym3YaNQoFOQS68smsMhJcUPFYFbs3rEwTXjzPVACo8pzauXHpcEh+m2WR
         fJlAaWx9D/DLEqwPys9S52kgETTTFySpLvPmI09gCgt4t5upyyQd0b/rQESNGGTHTVnv
         22iTwq6oyyULMc9LIfC83iKqM0uIs8ng5epEeOOqRg6O39gKXnmlM8kEbU7PULs32mzm
         w2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=bmJHP2Cy/xV03dSDADR3HUHRuMecfju8UpQfvhIF1jk=;
        b=xOJmJLEUSvKviaSvKhzyT8tVT0K47FpcMMRCsEeSbdgmCiVa2srKvk11xgsjojXlbh
         mU4fxDnUJeo6K7wG7vwxtsGg1JyLfYrywOShW2+qWQ//YF9hbzwbc1VMQG1MWY8BmZ4c
         nqLqxf2YKYC8CoDWmNWoioUQbHv9jZG+4NFvNYyECph+mFq8JaHqxcR6wOACy9FUBXnX
         qkNSCRlRXW56UlniLFgOmPGirXgCO62AhXfCXHXG4BQYR8ZQgWE5IElFf3wKTXgNVkLv
         IUoqzAQJ4J5YRdqflPuYohe+s3/xY44znKtTEJf3+2ke0RSbPIAQfTLSZCHi/q8A8SeU
         QSYw==
X-Gm-Message-State: AOAM530+OuPzDBLQPAW3a5UVE+tCQwwp/s0Pl1lnUE704oUhtVg2zoh3
	/CGu0BAryoah44DnYbvFZwoHD9tO6Go=
X-Google-Smtp-Source: ABdhPJymf5ss3Lzxh8fXg3ivGcT6x+Idx1WAlxwTlFHkIEEv6d+PW55XEOxAT8k8v0PkGlueyaiS8Q==
X-Received: by 2002:a05:6214:1c41:: with SMTP id if1mr13394778qvb.0.1638465075365;
        Thu, 02 Dec 2021 09:11:15 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id w63sm235079qkd.88.2021.12.02.09.11.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Dec 2021 09:11:15 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 2 Dec 2021 12:11:14 -0500
Message-Id: <619E2271-EBC2-426A-853B-98538B2A2E02@gmail.com>
References: <72030c28858743c790876de59cc91eab@erdc.dren.mil>
In-Reply-To: <72030c28858743c790876de59cc91eab@erdc.dren.mil>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: 5WGRIJSB6FLWDX6WEYH7DDQ4XIPLJFZJ
X-Message-ID-Hash: 5WGRIJSB6FLWDX6WEYH7DDQ4XIPLJFZJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Turning on E313
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5WGRIJSB6FLWDX6WEYH7DDQ4XIPLJFZJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IG5lZWQgYSBwb3dlciBpbmplY3RvciBhdCB0aGUgbGFwdG9wIGVuZC4gDQoNClNlZSDigJxQ
b2UgcG93ZXIgaW5qZWN0b3LigJ0gb24gYW55IG9mIHlvdXIgZmF2b3JpdGUgc2l0ZXMuIA0KDQpT
ZW50IGZyb20gbXkgaVBob25lDQoNCj4gT24gRGVjIDIsIDIwMjEsIGF0IDEyOjAzIFBNLCBXb2xz
aWVmZmVyLCBDYXJsIEwuIEVSREMtUkRFLUNSTC1OSCBDSVYgdmlhIFVTUlAtdXNlcnMgPHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToNCj4gDQo+IO+7v1ByZXR0eSBiYXNpYyBxdWVz
dGlvbiBoZXJlLi4uIEFueW9uZSBrbm93IGhvdyB0byB0dXJuIG9uIHRoZSBFMzEzPyBUaGUgZ2V0
dGluZyBzdGFydGVkIGd1aWRlIHNheXMgdG8gcGx1ZyBpbnRvIHBvd2VyIHN1cHBseSwgYnV0IHRo
aXMgdW5pdCBzdXBwb3J0cyBQb0UgYW5kIGRvZXNuJ3QgY29tZSB3aXRoIGEgUFMuLi4gUG9FIGlu
IGdlbmVyYWwgaXMgYSBuZXcgY29uY2VwdCB0byBtZSBzbyBJJ20gbm90IGV2ZW4gc3VyZSBpZiBh
IGxhcHRvcCBldmVuIGhhcyB0aGUganVpY2UgdG8gZG8gdGhpcyBraW5kIG9mIHdvcms/IFRoYW5r
cyBpbiBhZHZhbmNlIQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
