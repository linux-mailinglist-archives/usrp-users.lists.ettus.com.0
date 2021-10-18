Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFFB4321F4
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 17:07:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A094C384805
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 11:07:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kBMfYqpQ";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 72EA9384209
	for <USRP-users@lists.ettus.com>; Mon, 18 Oct 2021 11:06:38 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id r17so15515692qtx.10
        for <USRP-users@lists.ettus.com>; Mon, 18 Oct 2021 08:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=rn5ULqOsoa1NO5XuzpFOPqgx901+jhms3WgxwyN72dg=;
        b=kBMfYqpQC/1wWSV2Kqow1QYXeHxL+Oc0sRZmOY0db+/yhv8F6REQljWSx+IvO0np/I
         WHSEa/2GEmzGVzbDBo6ER8SOKQ8rjX6XwyTdFMX/k3JOELn+ma07eYlf2K+mVdjg0TBx
         vX06AT/XxhD2GN/LhUq2afFx0C06jF9aBu8RUvXjNuC3o6bjNlztjj6qHhbuD0zLf5TZ
         OHC7vG9sdBKh73MGgdSc6wbtKE1HKScIJg3JXMmWhMPCggLxAHDcMLKR6cfI4JxRxk9s
         FwtTC3UBMjb6SWIHsX5tMM0RElUKteD6NnxK2OCGPhcWBsI18ErhnhxCfOBeZ9Ic5xmn
         5IJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=rn5ULqOsoa1NO5XuzpFOPqgx901+jhms3WgxwyN72dg=;
        b=sCAqV1gFqmBVnDKp2xg5/ifxPK3J2sGujMPI8R5+DY425sa7/+irpTV1QaWwFXvxAn
         9qwFvhnpRs49IyeRkSRb+kzMqSftaygdJTNnvC0XeLbVEl4c9equeXlfNWKguMPTqg8q
         VLUF8kd7x6IAgFMX7HS+f6nGiOk0Z7kuHXsYoP2Lk+pfbwTS1EfI2puFhThvzJPtRYva
         IOx1sr7QGdhmeOc1eMn22w07CRdTkvOA43AFeAVh7Y1aNMA9szxpttcf/jLspYHJBs6a
         JoI4BlITyTmX3jv8d2sdPCl6xdKsqV76UwhHD9L4izDHwzzCHgZqTY6qvBR0Fdl3qiA+
         p2WQ==
X-Gm-Message-State: AOAM533P1cURDMMhqp+/sJQaCpyVv3g+qNkQtCYd/LgvQIAncuN2A9AZ
	NGr8kT/RNyFND1GSTYkTJsM=
X-Google-Smtp-Source: ABdhPJxEYnQmRw+inRD/nbP1AirKeCbrEnSehWcUJtGdnTm9VxQ613upBzLlXbBrXZQi5CfoC7509w==
X-Received: by 2002:ac8:5784:: with SMTP id v4mr30748819qta.42.1634569597881;
        Mon, 18 Oct 2021 08:06:37 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id h125sm6658731qkc.29.2021.10.18.08.06.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:06:37 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Oct 2021 11:06:36 -0400
Message-Id: <86635E53-4FBB-4AD2-93C6-00F407FECC7F@gmail.com>
References: <SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9@SN6PR05MB4429.namprd05.prod.outlook.com>
In-Reply-To: <SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9@SN6PR05MB4429.namprd05.prod.outlook.com>
To: Weite Zhang <zhang.weit3@gmail.com>
X-Mailer: iPhone Mail (18H17)
Message-ID-Hash: 4R5P2HUXKS6JAOKEXI4WGTBV6YBVXJ6Z
X-Message-ID-Hash: 4R5P2HUXKS6JAOKEXI4WGTBV6YBVXJ6Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Maximum input power
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4R5P2HUXKS6JAOKEXI4WGTBV6YBVXJ6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgcmVjb21tZW5kIG5vIG1vcmUgdGhhbiAtMTVkYm0gaW5wdXQgcG93ZXIuIEl0IHdpbGwgdG9s
ZXJhdGUgYSBsaXR0bGUgYml0IG1vcmUuIEJ1dCB0aG9zZSBsZW5zZXMgd2lsbCBjYXVzZSBwZXJt
YW5lbnQgZGFtYWdlLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIE9jdCAxOCwgMjAy
MSwgYXQgMTA6MDAgQU0sIFdlaXRlIFpoYW5nIDx6aGFuZy53ZWl0M0BnbWFpbC5jb20+IHdyb3Rl
Og0KPiANCj4g77u/DQo+IEhpLA0KPiANCj4gSSBhbSBwbGF5aW5nIHdpdGggYSBCMjEwIGJvYXJk
LiBJIGFtIGp1c3Qgd29uZGVyaW5nIHdoZXRoZXIgYW55IG9mIHRoZSBoYXJkd2FyZSBjb21wb25l
bnRzL2NoaXBzIG9uIHRoZSBib2FyZCBtaWdodCBnZXQgYnVybmVkIG9yIHVucmVjb3ZlcmFibGUg
ZGFtYWdlIGlmIEkgaGF2ZSBoaWdoIGlucHV0IHBvd2VyIGF0IHRoZSBSeCBjaGFubmVscywgZWcg
MjBkQm0sIG9yIDMwZEJtPyBDb3VsZCBhbnlvbmUgaGVscD8gVGhhbmsgeW91IQ0KPiANCj4gDQo+
IA0KPiBSZWdhcmRzLA0KPiBXZXN0DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
