Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D417589AC6
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 13:12:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4625383BB4
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 07:12:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659611533; bh=LpxS9QpcrGHOIjQ99SV8VhJVYHDqBCwW18NuQP/KmrQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rnRvST6c3Ic+0Ey2K+Enc2stY7DgDD4qv3JFD/PII0npoyvNh0LqvTrsyrU9DScsx
	 XBTKRnDRSnt+Dx+EqCTlvlSd69QNlTtjHSzbZGRL2oVgsDKCiI0nE6l+4fx2sTT+jw
	 X7hzQpEDi+QvQgsTInBd6XteStoomMHYDFhKWdT4zOaAMrLdj0ETQQrGq4m+aczKxL
	 HGJy0t1XiAk+ZKN3hXgFsGa51a1VPLH7kiLA2F463AtNBCOXGpoU6DNdxbcgSt6Bb8
	 PkHCeoGuL/PPUGu2TWy/uk4glsy3mmiiW7PscC4+vLBpy+AgW0s8erlxKI1VayLTqu
	 rUWIZz94dyzQA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A2370383B79
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 07:10:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GtbO19Qo";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id m8so24825128edd.9
        for <usrp-users@lists.ettus.com>; Thu, 04 Aug 2022 04:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Sy8bjVtlxjTowDGm7mu7hMv6sNHGvhx5/RHonNtOkPk=;
        b=GtbO19QoawRLuSR6MfLY12/PRIey8VzzhkxFBIQRIWguaDwgt0VWjn6Lj1S/72+hPb
         NQKMKtJL/1qsv0Db/HpgFGqDEJRo5M2x2W5mHkxl1rBvjbTsx6YfsXR2sVhD3WqbNetZ
         yx6udJsQRTox1yV3xHzWA4LXCFBsk22UkYflHPDtviISsnYU9oPY0kBHPvViXfD90kxE
         A1ZOB1y0SnMTCPAt3JKcgKQap/ag5ggVU7dk488EtntLXzCoVgZ8nMUVc2to7ejbGXWS
         W7ybYdeh0L4zHCAeIG00kY5auxWFWld3fmdw7d94Vjd1qq+qjjXlz/HrjSWroojHhzsp
         LO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Sy8bjVtlxjTowDGm7mu7hMv6sNHGvhx5/RHonNtOkPk=;
        b=4eMqjKyQz1KS6xkUt5CxnvzWhx3yOAAsPty52+X2R1TI8WJQNML7QFwVuUABa/137c
         8m4FpnMjOi+N20MVPVrrzOQpQIHs3BKgiU9tDso/0p1kwHE6mj4w5B8EnLMS/+u66uPF
         c5EIU3zpFB4MEgoMuXQ+yg0jNJputk/+Yt3VyVDGY9mmiAQVEea27a6hroAVCPTg6rlF
         iSn53JeG7uYDr81XwnYQlQygUyBwBn+ecgDoHeLlYfqg5nv84N/XtgYQICK2Fseh11Qa
         j3xk6ys33AJ6ad+FAYGzaoLTKn2525m3SGfqWTQ5okf6OpcPYi16layuH8f/PJM2h/j8
         h2Fg==
X-Gm-Message-State: ACgBeo3sAe51OS4n5OMMnPBQKgPcJ7QtT6DzkMVvS64LkafCEls2zly3
	j0MiOVhbyoKP2MjxyuGUoEZTUmEoG9neDZxaHH8=
X-Google-Smtp-Source: AA6agR6487tlhiS9oTsfo3jpmU4WJ4GQL8nH5OFhwz+v2KIQZn46IQToXuxVnjkWoPsytILEi2b2g2XNlAw0OuY4Uvo=
X-Received: by 2002:a05:6402:5107:b0:43d:6b26:bdc5 with SMTP id
 m7-20020a056402510700b0043d6b26bdc5mr1499418edd.156.1659611402403; Thu, 04
 Aug 2022 04:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4@lists.ettus.com>
In-Reply-To: <pDoXa4Vqp42pFOZuspVOFoFc5oMQjAIt3tZ4C5KB4@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 4 Aug 2022 14:09:50 +0300
Message-ID: <CAAxXO2G65Td7RVEfWZcPHb43VEjRX3=zjm-J0H6UrRS4Fe2vqQ@mail.gmail.com>
To: henry.powell.xx@gmail.com
Message-ID-Hash: 77XSVE3VB7AWIDKAPPFLTOYRCN7WQH7R
X-Message-ID-Hash: 77XSVE3VB7AWIDKAPPFLTOYRCN7WQH7R
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77XSVE3VB7AWIDKAPPFLTOYRCN7WQH7R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSBub3Qgc3VyZSB5b3UgdGFsayBhYm91dCB0aGUgc2FtZSB0aGluZy4uLg0KT2ZjIHlvdXIg
UEMgaXMgY29ubmVjdGVkIHRvIHlvdXIgVVNSUCBieSBjYWJsZS4NCkJ1dCwgdG8gbXkga25vd2xl
ZGdlLCBhbGwgVVNSUHMgYXJlIGZvciB3aXJlbGVzcyBjb21tdW5pY2F0aW9ucy4NCkFyZSB5b3Ug
c2F5aW5nIHRoYXQgeW91ciBVU1JQIGhhcyB3aXJlZCBkYXVnaHRlcmJvYXJkcz8NCkZyaWlzIGVx
dWF0aW9uIGFwcGxpZXMgdG8gdGhlIHNpZ25hbCByZWNlaXZlZCBieSB5b3VyIGRhdWdodGVyYm9h
cmRzLi4uDQoNCkJSDQpOaWtvcw0KDQpPbiBUaHUsIEF1ZyA0LCAyMDIyIGF0IDE6MzAgUE0gPGhl
bnJ5LnBvd2VsbC54eEBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBUaGUgZGF0YSBJIHNoYXJlLCBJ
IGdhdmUgYWxsIG9mIHRoaXMgd2hlbiBjb25uZWN0ZWQgYnkgY2FibGUuIEkgY2FsY3VsYXRlZCBG
cmlpcyBjYWxjdWxhdGlvbiwgdG9vLiBCdXQsIFNpZ25hbCBpcyB0cmFuc21pdHRlZCBieSBkaXJl
Y3RseSBjYWJsZS4gSSBkb27igJl0IHRoaW5rIHRoaXMgZXF1YXRpb24gaXMgbmVjZXNzYXJ5Lg0K
Pg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
