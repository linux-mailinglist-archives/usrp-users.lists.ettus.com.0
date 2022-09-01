Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2655A9F3A
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 20:40:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25D5138838F
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 14:40:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662057629; bh=w9wdF1/MeWeo2Qxa52a/GWrbTsmVTNv9upK+USCKNYI=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=P7VbQXbwCrx1TBXWdLniXwUrPBDPxdfm6QrQbKtsfQUCFABUmbpbaTi/H5wrBh0jQ
	 kVelNInM/T+ze6I/xsHhOeCOA1Ak1NW3/YvTy6dCCZw99GBjZeAYRu0B6QogOakhkH
	 qNEczuOC43BBbVh2x2k+04jgeRjdMDUBYazcnRNdzpsdCVYI1uP13CjDfXqAhTP4rJ
	 PCa0BW+7n2y010fikSoTtXWiUiFTW8oLS6fN34DyyAVLL2ve5Q9bhU7XHQdKxZr6Vh
	 xKTMDiL3dzz/ke2gr7LzUn7+lHsJmhYhThHozDlFLHzTEqiZw9M3gLp86sdtO4rqWq
	 KY2qR6Kyv4PNA==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id EF099387CD0
	for <usrp-users@lists.ettus.com>; Thu,  1 Sep 2022 14:39:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WQyWCJL7";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id q8so14122548qvr.9
        for <usrp-users@lists.ettus.com>; Thu, 01 Sep 2022 11:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date;
        bh=zLCIi8/lgK07TyC2aNTYOi2n89uglJipZ2EXC28R5W4=;
        b=WQyWCJL7lUmntDL3kkv141slz1QqprDDOW5KUaTD8nUH7sCtcZRVSNifbNshTd7kuv
         7rc2GirHhGsvOOXoeRTo3e5GTAHsD+frNM5JYPAzrxmW1UO4D01oETcf3hEfPI05G6Jk
         6/2BGkEvf2XH6y1LSZiYF0ClpMEVV7kU7JdqzZIq10V5lm/2tfgIF78yGIqGvMqCKx6M
         k5v32j1HVdGfEJXKJa85JoujKwEE/87CBRbiMZycBAaaW6Elo7Lrts6ccoDI23chFLip
         YwwKKEjmt83FxlXlNgLthQEKX3tCtI1GLWOPhOCbfUzLaSRGR/wBf7K8qJOwP9H0eKoO
         zSvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date;
        bh=zLCIi8/lgK07TyC2aNTYOi2n89uglJipZ2EXC28R5W4=;
        b=llxjNtOXNnknMobMEtNfxxFwlLMKmy1BAohT4PZHkkpoSe8vqKopYOIbqsPFCCqh+p
         CtjpjBOYFIXXDcc7asNA6lQ42lbgGxssgGFkeF2kedZ80lSxyTYwWWg66mw/zQMjkQXC
         SG1UI340EBc9zj0XKVEh+U9VNf7XQPpK2/f5bSCBlnIzy64MCQJkPjSieKPh69USE2z9
         MCAXzAfNmRjDW4Ef/qY/6AvwIidm+y/WO/1oF4/Puk7SfM8LkxWdAQnicT5lJaVNwOna
         Ltih/LWf19EgdpneuNcloC7L/IWRXukVfjnu5TUABM+TJit9pxGOx0Kw9ZDQCtNw8ulF
         I2Sg==
X-Gm-Message-State: ACgBeo3qQLG/3JDaHTB8wx1dSgkrfASOF9mPHgIffolkt2Caag5tFFpt
	ox77709vg3uX4kac70DjrDf3arJu9k4=
X-Google-Smtp-Source: AA6agR7hjXXOYbRnQR0nX1pa0gQqAFBA4ZAWq4dMkL93o2x5kB+lbyZRpZG+CruQrKIh009zgDigHg==
X-Received: by 2002:a05:6214:5014:b0:499:1cb5:735d with SMTP id jo20-20020a056214501400b004991cb5735dmr8896814qvb.99.1662057547022;
        Thu, 01 Sep 2022 11:39:07 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:1870:6bc0:c06f:1498:4dce:d88b])
        by smtp.gmail.com with ESMTPSA id cn8-20020a05622a248800b003435bb7fe9csm10493791qtb.78.2022.09.01.11.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 11:39:06 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 1 Sep 2022 14:39:05 -0400
Message-Id: <DB52B5D9-F848-415D-8BF9-562FD666CA7F@gmail.com>
References: <CAB__hTRxCVCibZ9ugK+LZ0D4jQccRyeD4=iObboo_0QXJmwNDA@mail.gmail.com>
In-Reply-To: <CAB__hTRxCVCibZ9ugK+LZ0D4jQccRyeD4=iObboo_0QXJmwNDA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19G82)
Message-ID-Hash: MJV4AHOFNLK73DELJBLN2XFDNWW7DOZ3
X-Message-ID-Hash: MJV4AHOFNLK73DELJBLN2XFDNWW7DOZ3
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_radio_loopback
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MJV4AHOFNLK73DELJBLN2XFDNWW7DOZ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IFJvYjoNCklmIHlvdSB1c2UgR05VUmFkaW8sIFRoZSBwcm9iZSBzaWduYWwgYmxvY2sgY2Fu
IHRha2UgaW4gYSBzdHJlYW0gYW5kIHRoZSBmdW5jdGlvbiBwcm9iZSBibG9jayBjYW4gcG9sbCBU
aGUgbGV2ZWwgb24gYSB0aW1lIGludGVydmFsIHRoYXQgeW91IHNldCBpbiB0aGUgYmxvY2suIFRo
ZW4geW91IGNhbiB1c2UgdGhhdCBjaGFuZ2luZyB2YXJpYWJsZSBlbHNld2hlcmUgaW4gdGhlIGZs
b3dncmFwaCB0byBhZGp1c3QgdGhlIGdhaW4uIA0KDQo8ZW5kIHRyYW5zbWlzc2lvbj4NCg0KPiBP
biBTZXAgMSwgMjAyMiwgYXQgMTA6NDYsIFJvYiBLb3NzbGVyIDxya29zc2xlckBuZC5lZHU+IHdy
b3RlOg0KPiANCj4g77u/DQo+IEhpLA0KPiBJIGFtIGludGVyZXN0ZWQgaW4gaW1wbGVtZW50aW5n
IGEgcmVsYXRpdmVseSBzaW1wbGUgcmVwZWF0ZXIgYXBwbGljYXRpb24gb24gdGhlIFgzMTAgYW5k
IEUzMTAuIEkgcmFuIHRoZSBFdHR1cyByZm5vY19yYWRpb19sb29wYmFjayBleGFtcGxlIGFuZCB0
aGlzIGlzIG5lYXJseSBhIHBlcmZlY3QgZml0IGZvciB0aGUgZnVuY3Rpb25hbGl0eSBJIHdhbnQu
IEhvd2V2ZXIsIEkgYW0gd29uZGVyaW5nIGhvdyBteSBhcHBsaWNhdGlvbiBjYW4gaW50ZWxsaWdl
bnRseSBzZXQgdGhlIFJ4IEdhaW4gJiBUeCBHYWluLiBBY3R1YWxseSwgdGhlIFR4IGdhaW4gaXMg
ZWFzeTogSSBjYW4gbGVhdmUgaXQgZml4ZWQgb3IgSSBjYW4gY2hhbmdlIGl0IGludmVyc2VseSB3
aXRoIHRoZSBSeCBnYWluIHRvIG1haW50YWluIGNvbnN0YW50IGxvb3AgZ2Fpbi4gIEJ1dCwgdGhl
IFJ4IEdhaW4gSSB3b3VsZCBsaWtlIHRvIHNldCBiYXNlZCBvbiBpbnB1dCBzaWduYWwgcG93ZXIu
ICANCj4gDQo+IEknbSBub3QgdGhpbmtpbmcgb2YgYSBmYXN0IEFHQyBvciBldmVuIGxvZ2ljIHJl
c2lkaW5nIG9uIHRoZSBGUEdBIGF0IGFsbC4gSSdtIHRoaW5raW5nIG1vcmUgYWxvbmcgdGhlIGxp
bmVzIG9mIHRoZSBob3N0IFBDIG9jY2FzaW9uYWxseSBxdWVyeWluZyBhbiAicnNzaSIgb3Igb3Ro
ZXIgZGlnaXRhbCBwb3dlciBlc3RpbWF0ZSBhbmQgdGhlbiBjaGFuZ2luZyB0aGUgUnggZ2FpbiBp
biByZXNwb25zZS4gIEkgZG9uJ3QgY2FyZSBhYm91dCBhY3R1YWwgcG93ZXIgbGV2ZWxzIC0gSSBq
dXN0IHdhbnQgdG8gbWF4aW1pemUgdGhlIGRpZ2l0YWwgZHluYW1pYyByYW5nZS4NCj4gDQo+IEkg
a25vdyB0aGF0IEkgY2FuIGltcGxlbWVudCBhIGN1c3RvbSBSRk5vQyBibG9jayB0aGF0IHNpbXBs
eSBwYXNzZXMgc2FtcGxlcyB0aHJvdWdoIHdoaWxlIGNvbXB1dGluZyB0aGlzIGVzdGltYXRlIHN1
Y2ggdGhhdCBpdCBjYW4gYmUgcXVlcmllZCB3aXRoIGEgcmVnaXN0ZXIgcmVhZC4gQnV0LCBiZWZv
cmUgZG9pbmcgc28sIEknbSB3b25kZXJpbmcgaWYgc29tZXRoaW5nIGFscmVhZHkgZXhpc3RzIHN1
Y2ggdGhhdCBJIHdvdWxkbid0IGhhdmUgdG8gZG8gc28uIA0KPiBSb2INCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
