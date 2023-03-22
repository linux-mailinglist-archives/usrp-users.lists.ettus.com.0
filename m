Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B01C56C59A6
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:57:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECB0E384596
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 18:57:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679525824; bh=8w+K96VQbNvr3kvADD7Zo05PSM8/uWvc51it1gOgYEg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ywiLn5l+Ug0xahawPdnA0iiY49dE8iyZrmRot1dhIWGkKmYMP4PrCxidlAC38DWmh
	 QUr4SrXRDu5P1l04JPxe+qMZJTwVDsyS7qfHiuRxVwm3plh/PzthhotD+jvQwX49YB
	 skJ6SQgO6Xa7fprLTqgqS9n0DD2Ts6ump1spAjKMKydXmQy/6eBBUcJKD6lU+2wUdO
	 8AZGTqiBBl7okXIP30dLdJKEAvA9hklxJQgKYC2QHnDAqV21WgGfAy09O0eT+BdBtV
	 0EidZfxmVE1jj+y8YwofS3SP6yQmCQJqJbaAWIXSyc4UfWb7a3l4lN/Tt3sU5m+RRo
	 hJD3nKht7U0eQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 5563F384550
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 18:56:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IwRZJj2R";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id s12so24676170qtq.11
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 15:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679525773;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AagBJzG6qUE3Yq9vXYhqgGmnIfHkT9guvLZ7FE2tJUw=;
        b=IwRZJj2R+Cma0zTG32ABpF+JlILuPqrRLrQa5wLGGkod7/ckitXSLrUYxAi+W31M62
         VqhL167pw44aKW3FFkK5f7t3ezKCJCP54GKgq0koql6oxDtP6lScjPOSZSlZaQc/Hxs8
         t0cAh5L4rwank9/Hoh+nf1C250ANErnhN5ccV2yabqbBVl1ZN8xmjD0sSh7VhYpsmjtL
         uGmnY7OpVC1xcqzXh7ozqiC75w1t14O7gUC2ksSL1U01A5g4Zet+jBuzRIhdaFe2iM82
         uL8+dnLggAQqR7jIYky1XRSQsBunrpZCfRlWNF3EprDFwobN83PQm+59aIi5ndDT61ra
         hrwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679525773;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AagBJzG6qUE3Yq9vXYhqgGmnIfHkT9guvLZ7FE2tJUw=;
        b=vn5rKGKrEUBE+mZxc4Xho+EPlnaE2/1hChLBptDZSXCFPEWjbeURZMo+8bHAMQonr0
         XkfWrvjpt2aE2fiLlWs/SUCwPXtCXzCeUTNRfCm3XWgLfdz4WxuwpK2KToCxFfWlUfUp
         K/pBXeeWJFg/lMygGNqIYp0mN04NapEDZZA2/ojyLuGT478D41zAaG14S44Y3JmSyPOC
         2hn3J8oWT+L5ruDsDi7jMq6bvcIBAXILvbm1xfzqXo/YW0qO36iVRq6r1dlcnZ6mFVoh
         dzvynOlMMiPSy5i1O222sQvEKRCtKfuQUQUZDSwsrpLa3VbUePsc5IhUOK61xSTdpYlT
         KQzA==
X-Gm-Message-State: AO0yUKUUo+BMTl7pE9TfIPeRCnVyy+fudGDqHnZfh43/v4TQfuDZnzq1
	YNzrcXwr7QdMi9miKwOEdxRG+91XAVQ=
X-Google-Smtp-Source: AK7set/mvdnsEU53+1MdH227Hve/UiY0hkWUydYnmXpPxve2vR2J9gKh6fHqtuDjk+37hio7NND+lw==
X-Received: by 2002:ac8:5a44:0:b0:3ba:807:99d9 with SMTP id o4-20020ac85a44000000b003ba080799d9mr8705562qta.6.1679525773604;
        Wed, 22 Mar 2023 15:56:13 -0700 (PDT)
Received: from [192.168.2.161] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id m18-20020ac86892000000b003e385853778sm3254586qtq.73.2023.03.22.15.56.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 15:56:13 -0700 (PDT)
Message-ID: <f93eade3-99f8-aa07-f080-f90e863ef753@gmail.com>
Date: Wed, 22 Mar 2023 18:56:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <xmI3iK0V47RcCPqgkkDO9Is3AR18bgJn7GAyg470Xnw@lists.ettus.com>
Message-ID-Hash: LGULWYMRUXN6OF5TBBCKI466SU2BDUJV
X-Message-ID-Hash: LGULWYMRUXN6OF5TBBCKI466SU2BDUJV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LGULWYMRUXN6OF5TBBCKI466SU2BDUJV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMDMvMjAyMyAxODo0Miwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBOb3Ro
aW5nIGludGVyZXN0aW5nLCBJIGFtIGN1cnJlbnRseSBqdXN0IOKAnHRveWluZyBhcm91bmTigJ0g
dG8gdW5kZXJzdGFuZCANCj4gdGhlIGRldmljZShhbmQgc2RycykgYmV0dGVyLCBhbmQgdGhlIGxv
d2VzdCB0aGUgY2xvc2VzdCBhdmFpbGFibGUgDQo+IHNpZ25hbCBnZW5lcmF0b3IgSSBoYXZlIGdv
ZXMgdG8gMTAwIGtoei4gSSB3YXMgdXNpbmcgMyBNaHogYmVmb3JlIGJ1dCANCj4gSSBmaWd1cmVk
IGlmIHRoZSBBUEkgd2FzIHRlbGxpbmcgbWUgdGhhdCBpdCB3YXMgYWJsZSB0byBiZSB0dW5lZCBs
b3dlciANCj4gdGhhbiB3aHkgbm90IHRyeSByZWR1Y2luZyB0aGUgaW5wdXQgZnJlcXVlbmN5Lg0K
Pg0KPg0KPiBJIGFtIGN1cnJlbnRseSBqdXN0IGludGVyZXN0ZWQgaW4gdHJ5aW5nIHRvIGludGVy
cHJldCB0aGUgZGF0YSB0aGF0IA0KPiBjb21lcyBmcm9tIHRoZSBBREMuIEkgc2F3IG9uIHRoZSBk
YXVnaHRlcmJvYXJkIHRoZXJlIGlzIGEgbG90IG1vcmUgDQo+IGdvaW5nIG9uIHRoYW4ganVzdCB0
d28gbWl4ZWQgc2lnbmFscywgc28gSSBhbSBhc2tpbmcgaWYgdGhlcmUgYW55IA0KPiBwYXJ0aWN1
bGFyIGZvcm11bGEgb3IgY29uc2lkZXJhdGlvbnMgSSBzaG91bGQgYmUgbWFraW5nIHdoZW4gdHJ5
aW5nIHRvIA0KPiByZWNvdmVyIHRoZSBvcmlnaW5hbCBzaWduYWwuIElkZWFsbHkoZm9yIG15IGFw
cGxpY2F0aW9uKSwgSSB3b3VsZCBiZSANCj4gYWJsZSB0byBkaXJlY3RseSBzYW1wbGUgdm9sdGFn
ZXMgb24gdGhlIGFudGVubmEsIGJ1dCBzaW5jZSB0aGF0IGlzIG5vdCANCj4gcG9zc2libGUgSSBu
ZWVkIHRvIHdvcmsgYXJvdW5kIHRoaXMgaW5zdGVhZC4NCj4NCj4NCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KV2hhdCB5b3UgZ2V0
IGluIEkvUSBzaWduYWxzIGlzIGEgKmxpbmVhciBwcm94eSogZm9yIHRoZSBpbnN0YW50YW5lb3Vz
IA0Kdm9sdGFnZXMgYXBwZWFyaW5nIG9uIHRoZSBhbnRlbm5hIHRlcm1pbmFscy7CoMKgwqAgSWYg
eW91IHJlYWxseQ0KIMKgIHdhbnQganVzdCBhIGhpZ2gtc3BlZWQgQURDLCB0aGVyZSBhcmUgb3Ro
ZXIgcHJvZHVjdHMgb3V0IHRoZXJlIHRoYXQgDQphcmUgY2xvc2VyIHRvIHdoYXQgeW91IG5lZWQu
wqDCoCBUcnlpbmcgdG8gY2Fqb2xlIGEgKnJhZGlvKg0KIMKgIGludG8gYmVpbmcgYSBsYWJvcmF0
b3J5IGhpZ2gtc3BlZWQgQURDLCB3aXRob3V0IHJlZ2FyZCB0byBpdHMgDQoiUkZuZXNzIiBpcyBh
c2tpbmcgZm9yIGhlYXJ0YnVybi4NCg0KU2lnbmFscyBhcmUgdHlwaWNhbGx5IGZpbHRlcmVkIGFu
ZMKgIGFtcGxpZmllZCBhbmQgbWl4ZWQtZG93biB0byANCmJhc2ViYW5kLCBmaWx0ZXJlZCBhbmQg
YW1wbGlmaWVkIGFnYWluLCBhbmQgdGhlbiBwcmVzZW50ZWQgdG8NCiDCoCBhICpjb21wbGV4KiBB
REMuwqAgQWZ0ZXIgdGhhdCwgdGhlIHNpZ25hbHMgYXJlIHVzdWFsbHkgZGlnaXRhbGx5IA0KZmls
dGVyZWQgYW5kIGRvd24tc2FtcGxlZCB0byBwcm9kdWNlIGFuIGFsaWFzLWZyZWUgY29tcGxleC1i
YXNlYmFuZA0KIMKgIHRvIHRoZSBhcHBsaWNhdGlvbiBhdCB0aGUgcmVxdWVzdGVkIHNhbXBsZSBy
YXRlLg0KDQpodHRwczovL2dldG15dW5pLmF6dXJlZWRnZS5uZXQvYXNzZXRzL21haW4vc3R1ZHkt
bWF0ZXJpYWwvbm90ZXMvZWxlY3Ryb25pY3MtY29tbXVuaWNhdGlvbl9lbmdpbmVlcmluZ19hbmFs
b2ctY29tbXVuaWNhdGlvbl9jb21wbGV4LWJhc2ViYW5kLXJlcHJlc2VudGF0aW9uLW9mLWJhbmRw
YXNzLXNpZ25hbHNfbm90ZXMucGRmDQoNCkJ1dCBpZiB5b3UncmUgbG9va2luZyB0byAqbWVhc3Vy
ZSogYWN0dWFsIHZvbHRhZ2VzIGFzIHNlZW4gYXQgdGhlIA0KYW50ZW5uYSBpbnB1dCwgeW91IGNh
bm5vdCBkbyB0aGF0IGRpcmVjdGx5IHdpdGggYSB0eXBpY2FsDQogwqAgcmFkaW8gKHdoZXRoZXIg
YW5hbG9nIG9yIERTUCkuwqDCoCBCdXQgd2hhdCB5b3UgKmNhbiogZG8gaXMgZW5nYWdlIGluIGEg
DQoqY2FsaWJyYXRpb24qIHByb2Nlc3MgdXNpbmcgc291cmNlcyBvZiBrbm93bg0KIMKgIHBvd2Vy
LS10aGlzIHdvcmtzIGJlY2F1c2UgdGhlIHRyYW5zZm9ybWF0aW9ucyBkZXNjcmliZWQgYWJvdmUg
YXJlIGFsbCANCm1vcmUtb3ItbGVzcyBsaW5lYXIuDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
