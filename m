Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FA45AF441
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 21:12:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E0113837AC
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 15:12:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662491576; bh=xUqJcPANoLfHd26bK9O5RkCGywZz99HB945GJPHAMrk=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pZLXzEMB1JLtFoHf3SLCp+ZkklvFQNaTEEVNZ5Hkfct99lNik8cSu8332nhwYSEKf
	 EN+Pdocf37ALF15XqY3spsqASEW8CVCxPs9TveJpzNYlpYQUIuZJKxQ2VySLq3E9fp
	 iiBNjnw83dO0UFore5lvcagHa75xQyPxHeFcNDDpmiqat75xe/vnVSzUuQV7DA5GGH
	 q4nDcxIpWbesg6fdXz96p3eDVmgr26W+7ir6v3x76z4evBr4kBRHrawKTig+LMYCSo
	 RwO+osHMGR8NZCo4NDl0tcGbjltzHrBKX9RoCy4zM2lZBlAclEEa9WxT7GZilXY7MG
	 mNiYXbrGxse5Q==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 11E52381854
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 15:11:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l6cn3BWa";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id b16so16444142edd.4
        for <usrp-users@lists.ettus.com>; Tue, 06 Sep 2022 12:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :from:to:cc:subject:date;
        bh=D3FlJDRuMwlPWHuv3dLsHWuXeQ0lJA9phMKGMGTnkws=;
        b=l6cn3BWaWw8UUvXGti8JsLcgM92PDum7QGUg5KkbQtQRrjdxw1s6kH1GszH29DD4In
         0d6AeKZMlE/yFBxHiXHDhmufWoquAG6ZMWFkG+fDFFGPqgxC8Hi2zF9XUNbKCJwUFQmY
         /3EVEFRUBuEcGM88ARurlV50x9VrFC60Ws7/cdcTGal8DJNSvVZMPAlwCzRRBFRmMk+W
         pu0lBJbwZg0Rx7HLdA8OTXVW4LdYEfUp9O/CW1aV9CDfsU/uFJJD/EagtWsPYTuF5KBB
         IW7hzZ5gOYpXZIXy9icONft/9+ISTEiDmgXlD5oApBGYARocHTXkLHGW5xnNGBIhBRQJ
         hLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=D3FlJDRuMwlPWHuv3dLsHWuXeQ0lJA9phMKGMGTnkws=;
        b=lPq0QjjUK6Dd4S0Y0xQABsRpDbXW/Pq48ubs+gKSTx9p+BRJuCb7NmrA+MIQfxKUCJ
         k4buUTvSBNMMiiLgy7Rmb7asegn1DurNz2//L/tw2LAI+ZpPRoDr4jxnruNJ3dKLlmLh
         7OkzK6zzbzI47CLwYCSYldcbEjQNuq4bPvTmT91nWC3s0xneP63xmIqCxSV7ncgWZDeZ
         FqON4hEEP3hTsMvxDgfTzfJd5ZnyHZaEgp/ZYtHqMtuCPOYS2FvQYyOYuKdbM6v2Vnjx
         +kkwVrtB1z1HIjat7yFUQmcck/gSXhRXJPB2TrsluDwdMIPELYG8z7BA7ax4E1bM/plZ
         KO4g==
X-Gm-Message-State: ACgBeo08ZJqRO2PleUZKH1oQQS4nEQ6MncoqO406mGvmrLQszQuldYuA
	Jgb9kbSmmdvNB1OfqUq6ynM=
X-Google-Smtp-Source: AA6agR6hjOssDGe8Sa65yU87AxrfMJ5kHtBklkH/CdwFeTK0z2W/L+m6m5esuea6XoPE4YBOLsFNQg==
X-Received: by 2002:a05:6402:500d:b0:440:9bc5:d0c1 with SMTP id p13-20020a056402500d00b004409bc5d0c1mr91202eda.202.1662491502936;
        Tue, 06 Sep 2022 12:11:42 -0700 (PDT)
Received: from MatthiasNB ([2a01:598:b9a4:a23:6041:1d2b:a119:2d8a])
        by smtp.gmail.com with ESMTPSA id nd38-20020a17090762a600b007341663d7ddsm7340502ejc.96.2022.09.06.12.11.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Sep 2022 12:11:42 -0700 (PDT)
From: "Matthias Schraml" <matthiasschraml@gmail.com>
To: =?utf-8?Q?'Marcus_M=C3=BCller'?= <marcus.mueller@ettus.com>,
	<usrp-users@lists.ettus.com>
References: <01a901d8beeb$e0240a80$a06c1f80$@googlemail.com> <61fb1c43-53b8-232b-1546-b4daf5331c76@gmail.com> <8715ed08-fce7-390d-ef16-6a390104eb7c@ettus.com>
In-Reply-To: <8715ed08-fce7-390d-ef16-6a390104eb7c@ettus.com>
Date: Tue, 6 Sep 2022 21:11:39 +0200
Message-ID: <008501d8c224$7ee70470$7cb50d50$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQHqxuChoPaovxQwXUrlS8vRzde6GgI791Z9ARW/Z2etlCsNcA==
Message-ID-Hash: SGHQL55K2JUHFAYFIYXM4KP4MU44KBUB
X-Message-ID-Hash: SGHQL55K2JUHFAYFIYXM4KP4MU44KBUB
X-MailFrom: matthiasschraml@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2.5G Ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGHQL55K2JUHFAYFIYXM4KP4MU44KBUB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KDQp0aGFuayB5b3UgdmVyeSBtdWNoIGZvciB0aGUgaGludHMuDQogDQpSZXVz
aW5nIHRoZSBjbG9ja3Mgb2YgdGhlIDEwRyBpbnRlcmZhY2Ugc2VlbXMgdG8gYmUgYSBnb29kIHN0
YXJ0aW5nIHBvaW50LiBNYXliZSBpdCBpcyBuZWNlc3NhcnkgdG8gZ2VuZXJhdGUgYSAzMTIuNSBN
SHogY2xvY2suDQpTaW5jZSBJJ20gbm90IGFuIEZQR0EgZXhwZXJ0IHRoYXQgZXhwZXJpbWVudCB3
aWxsIHRha2Ugc29tZSB0aW1lLCBhdCBsZWFzdCBtb3JlIHRoYW4gSSBoYXZlIGV4cGVjdGVkLg0K
DQpCZXN0IHJlZ2FyZHMNCk1hdHRoaWFzDQoNCi0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0
LS0tLS0NClZvbjogTWFyY3VzIE3DvGxsZXIgPG1hcmN1cy5tdWVsbGVyQGV0dHVzLmNvbT4gDQpH
ZXNlbmRldDogU2Ftc3RhZywgMy4gU2VwdGVtYmVyIDIwMjIgMTI6NDkNCkFuOiB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KQmV0cmVmZjogW1VTUlAtdXNlcnNdIFJlOiAyLjVHIEV0aGVybmV0
DQoNClNlY29uZGluZyB0aGF0Lg0KDQpOb3csIGFybWNoYWlyIG5ldHdvcmsgc3RhbmRhcmRpc3Qg
aGVyZSwgYnV0IGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCAyLjUgR2IvcyBFdGhlcm5ldCBpcyBh
IHJlZHVjZWQtcmF0ZSAxMCBHQmFzZS1UIChzbywgcHJldHR5IG11Y2ggSUVFRTgwMi4zYW4tMjAw
Niwgd2l0aCByZWR1Y2VkIGNsb2NrcykuIEknbSBub3Qgc3VyZSB3aGV0aGVyIHRoZXJlJ3MgYW55
IG90aGVyIGluY29tcGF0aWJpbGl0eSBiZXR3ZWVuIDgwMi4zYW4tMjAwNiBhbmQgODAyLjNiei4g
QnV0IGhvbmVzdGx5LCB0aGUgMTAgR0Jhc2UtVCBJUCBjb3JlIGlzIHVzZWQgaW4geDMwMF9zZnBw
X2lvX2NvcmUudiwgaXQncyB3cmFwcGVkIGluIHRoZSBvbWlub3VzbHktbmFtZWQgeGdlX21heF93
cmFwcGVyLnYsIHNvIGdvIGFoZWFkIGFuZCBqdXN0IGRyb3AtaW4gcmVwbGFjZSBpdCwgaWYgaXQg
Y2FuIHdvcmsgYXQgdGhlIHNhbWUgMTU2LjI1IE1IeiBzeW1ib2wgY2xvY2sgdGhhdC4gRG9uJ3Qg
a25vdyB3aGV0aGVyIHRoYXQgd29ya3Mgb3V0LW9mLXRoZS1ib3gsIGJ1dCBhcyBsb25nIGFzIHlv
dSBuZXZlciByZW1vdmUgdGhlIGNoaW5jaCAvIFBDSWUgYXNpYyBpbnRlcmZhY2UsIHlvdSBjYW4g
YWx3YXlzIGxvYWQgYSB3b3JraW5nIEZQR0EgaW1hZ2UgdmlhIHRoZSBKVEFHIGludGVyZmFjZSwg
c28gc3Rha2VzIGFyZSBxdWl0ZSBsb3cuDQoNCkNoZWVycywNCg0KTWFyY3VzICh0aGUgb3RoZXIh
KQ0KDQpPbiAwMi4wOS4yMiAyMDowNywgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KDQo+IE9uIDIw
MjItMDktMDIgMTI6NDgsIE1hdHRoaWFzIFNjaHJhbWwgd3JvdGU6DQo+Pg0KPj4gSGkgYWxsLA0K
Pj4NCj4+IEnigJltIGN1cnJlbnRseSB3b25kZXJpbmcsIGlmIGl0IGlzIHBvc3NpYmxlIHRvIHVz
ZSAyLjVHIGV0aGVybmV0IHdpdGggYW4gVVNSUCBYMzEwLg0KPj4NCj4+IEJhY2tncm91bmQ6DQo+
Pg0KPj4gSSBvd24gYSBicmFuZCBuZXcgc21hbGwgYnV0IHBvd2VyZnVsIGNvbXB1dGVyLiBUaGUg
UENJZSBzbG90IGlzIA0KPj4gb2NjdXBpZWQgYnkgYSBHUFUgYW5kIHRoZXJlIGlzIG5vIFRodW5k
ZXJib2x0IHBvcnQuIFNvIHRoZXJlIGlzIG5vIGNoYW5jZSBmb3IgMTBHIGV0aGVybmV0Lg0KPj4N
Cj4+IEhvd2V2ZXIsIHRoZSBjb21wdXRlciBoYXMgYSAyLjVHIGV0aGVybmV0IHBvcnQuDQo+Pg0K
Pj4gVGhlIFhpbGlueCBJUCB1c2VkIGZvciAxRyBldGhlcm5ldCBpbiB0aGUgVVNSUHMgYWxzbyBz
dXBwb3J0cyAyLjVHLiANCj4+IEluIHRoZW9yeSwgdGhpcyBzaG91bGQgYmUgc3VmZmljaWVudCBm
b3IgMnggMzAuNzIgTVNwcyB3aGljaCB3b3VsZCBiZSANCj4+IGEgZ3JlYXQgaW1wcm92ZW1lbnQg
Y29tcGFyZWQgdG8gdGhlIDI1IE1TcHMgb3ZlciAxRyBldGhlcm5ldC4NCj4+DQo+PiBJcyBpdCBw
b3NzaWJsZSB0byBtb2RpZnkgdGhlIEZQR0EgaW1hZ2UgdG8gc3VwcG9ydCAyLjVHIGV0aGVybmV0
Pw0KPj4NCj4+IEhhcyBhbnlib2R5IGFscmVhZHkgZG9uZSB0aGlzIG1vZGlmaWNhdGlvbj8NCj4+
DQo+PiBLaW5kIHJlZ2FyZHMNCj4+DQo+PiBNYXR0aGlhcw0KPj4NCj4+DQo+IFRoZSBQSFkgaW1w
bGVtZW50YXRpb24sIGFzIEkgcmVjYWxsLCBpcyBmaXhlZC1yYXRlLiAgIEl0J3MgDQo+IGFsbW9z
dC1jZXJ0YWlubHkgcG9zc2libGUgdG8gbW9kaWZ5IGl0IHRvIHN1cHBvcnQgaXQsIGJ1dCB0aGF0
IA0KPiB3b3VsZG4ndA0KPiAgIGJlIGEgY29uZmlndXJhdGlvbiBzdXBwb3J0IGJ5IE5JL0V0dHVz
Lg0KPg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSBUbyB1bnN1YnNjcmliZSANCj4gc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
