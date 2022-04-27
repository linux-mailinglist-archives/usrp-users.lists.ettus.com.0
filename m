Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CE1511853
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:29:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEA47384A4B
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 09:29:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651066158; bh=1GwVXwt9RHCEUTdj98hvEBkqq4Sv6DqLmo9oGeQYsEs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Pn6kf83qTS1j+2sbSoV0ASEyQ6VCh++1LL3EyBqeGZ0bKJqg0AWtXE2328YffEIKx
	 8n0N30KKSD6On3pYhiPb6cB+gIpT28UiQP9voZEdDFe1vTdLSJz8ytlZR3a27lkwW+
	 fEUmn0b5vhaGAqEZarf5SOXShHR67H7pxXAnT5h40wjUCVUEfMf9xNQupjrGluwpMy
	 eoAIlZB8c0YcOzKtP99mCV4SloC2Ypg3SyV8tO4NbxufMNWePH6Gsy3w2Xso3aSD5j
	 kIc4Rca1oi4ZodEsLHUA46yoINpY6zKjWUdoV84MamauaZZPsQM+TUxDbKnKp+nrjj
	 Eb+RO6lJFPpOA==
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C6962384869
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 09:28:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G1Uiw/LA";
	dkim-atps=neutral
Received: by mail-wr1-f50.google.com with SMTP id q23so2534218wra.1
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 06:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=k6uYkqOfboAVAvEUFE0zutNu8KYGOZ/4UmNxmdPvQ6Q=;
        b=G1Uiw/LAF+RnoaDEk9NaEtUtV8id1PUewFwDD+gYfwTjYOJPBx20F3/8Fc+HT4AiRk
         ZegD4bkQMlZxOhAPKO8p9VMzwUPQTYLGrkRM6cHkBSjMUt/+6GTRU1xFbQbKlIktSkil
         i+SUe4Bnm/0hJnEgmn9bIdra59EaCAR7mjj5j8KgcOi4JKP1TEJDlDZR/9XemlYkSrVS
         J6/h7zBa5gc7JmiibbyNqS4/0gdbfXsBba3S1U3IDmRaq3pr33uPf+FezwR38Zca7DGc
         6RWKTMdHM/2Ns3tKm3sxPzV65aPwS7Zeb4IjtZasbNCOPicYBp5qr1G99JjO1bplml8J
         z3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=k6uYkqOfboAVAvEUFE0zutNu8KYGOZ/4UmNxmdPvQ6Q=;
        b=b/OhO6NSAfmEbG7gmTL9D08VFIJHIhBGNZStyF1bvkC52D9RnEMtTXgwjYMZs/B68O
         7qUZkz5ZHhmfyPcGXvSRGBeVKi7Uw1usRh3Sy8gMPXtdzHXB3b1SNhOu0bSA2NpxuD+O
         97Z0Oc/TMc7uGPvFsllIgkh+dn9lxYI+XohF74b5nzWmP/xXu8ZDzkGTJX79CGRJfCkW
         4o/X64nuJtyC6GuEia0uKc7bMeSAppTKnoUOVTO9IIvv5LiyJaolzZdLYHu+wololDuj
         T3ggkJejf9H3Rx0qwpZmUrhyHtG5+J+FKt0Y0Yzbi9yxWxwvGhycdRtWk8X+bqCdPllq
         F/pw==
X-Gm-Message-State: AOAM530SvjDyu0DsiprsT/EycS53CEKRPvcczYXqHbtw48UIPwLArOuL
	JNOdzRPDl9NTwxLCFcTIVe9SSqUoAjxx+WECQQg=
X-Google-Smtp-Source: ABdhPJxDDDTT7rhGxuQgOam+CjcI5/mu6emd72DPXJKoLWGttdi/x4n6eG15t8BhLiwIaXoglDcz1thqDcHJq54zTCk=
X-Received: by 2002:adf:d213:0:b0:20a:d703:154f with SMTP id
 j19-20020adfd213000000b0020ad703154fmr16173393wrh.604.1651066099615; Wed, 27
 Apr 2022 06:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM@lists.ettus.com>
In-Reply-To: <MXBxN3qxdsXpsZGoldHPO27XrGF7JgNZkOstJBpeMM@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 27 Apr 2022 16:28:08 +0300
Message-ID: <CAAxXO2EayVoGOB4_Lh0w1NOFbSNQMoOhMjeZ5iP=0c9LRm4rDQ@mail.gmail.com>
To: emanuele.tolomei@intecs.it
Message-ID-Hash: VNLDXPMFFBBW2U2WDNLRMUOXXIWBRTWF
X-Message-ID-Hash: VNLDXPMFFBBW2U2WDNLRMUOXXIWBRTWF
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 with TwinRX - Overflow errors after some time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VNLDXPMFFBBW2U2WDNLRMUOXXIWBRTWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCllvdSBhcmUgdXNpbmcgYSB0b3RhbCBvZiAyMCBNU3BzLlRoYXQncyBhIGJpZyBjaHVu
ay4gU2VlbXMgeW91cg0KYXBwbGljYXRpb24gaXMgbm90IGZhc3QgZW5vdWdoLg0KSXQgdGFrZXMg
fjE1JyB0byBmaWxsIHlvdXIgYnVmZmVycywgdGhlbiB5b3UgZ28gaW50byBidWZmZXIgb3ZlcmZs
b3cgZXJyb3JzLg0KQWdhaW4gdGhpcyBpcyB5b3VyIGFwcGxpY2F0aW9uLCBhbmQgeW91IGtub3cg
YmV0dGVyIGhvdyBpdCBpcyBpbXBsZW1lbnRlZC4NCg0KSFRIDQpOaWtvcy4uDQoNCk9uIFdlZCwg
QXByIDI3LCAyMDIyIGF0IDQ6MTAgUE0gPGVtYW51ZWxlLnRvbG9tZWlAaW50ZWNzLml0PiB3cm90
ZToNCj4NCj4gSGVsbG8sDQo+DQo+IEkgaGF2ZSBhbiBVU1JQIFgzMDAgY29uZmlndXJlZCB3aXRo
IHR3byBUd2luUlggc2hhcmluZyB0aGUgc2FtZSBMTy4gTXkgYXBwbGljYXRpb24gdXNlcyBhbGwg
Zm91ciBSWCBjaGFubmVscyBvZiB0aGUgU0RSLCB3aXRoIGEgc2FtcGxpbmcgcmF0ZSBvZiA1IE1T
cHMgZWFjaCwgY29udGludW91c2x5IHJlY2VpdmluZyBzYW1wbGVzLg0KPg0KPiBUaGUgcHJvYmxl
bSBpcyB0aGF0IHRoZSBhcHBsaWNhdGlvbiBzdGFydHMgdG8gb3V0cHV0IG92ZXJmbG93IGVycm9y
cywgZm9sbG93ZWQgYnkgbGF0ZSBjb21tYW5kIGVycm9ycywgYWZ0ZXIgcnVubmluZyBzbW9vdGgg
Zm9yIGEgdmFyaWFibGUgcGVyaW9kIG9mIHRpbWUgKHVzdWFsbHkgYmV0d2VlbiAxNSBtaW51dGVz
IC0gMSBob3VyKS4NCj4NCj4gVGhlIFNEUiBpcyBjb25uZWN0ZWQgdG8gdGhlIGhvc3QgUEMgd2l0
aCBhIDEgR2lnYWJpdCBFdGhlcm5ldCBjb25uZWN0aW9uLCBhbmQgSeKAmW0gdXNpbmcgVUhEIHYz
LjEzLjEuMC4NCj4NCj4gRG8geW91IGtub3cgd2hhdCBjb3VsZCBjYXVzZSB0aGVzZSBvdmVyZmxv
dyBlcnJvcnM/DQo+DQo+IFRoYW5rIHlvdSBpbiBhZHZhbmNlDQo+DQo+IEVtYW51ZWxlDQo+DQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
