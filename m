Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC64B4E81FA
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 17:57:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBBBC384982
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 12:57:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648313861; bh=qkpAyNX8tqvc8gUYi1UQP/vuP+LjZOHo3YcApc5j7tM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WXwKHK4WGjI4496fcIgQinsO3RBbTl3ZYLcWKBq778EIyFyVDhTziQzv2oPTr3U8N
	 nyapTSPMYmOI14lpb36Gclltg7sl5Y8Bp/QnfA+eow4ANsB+GshlwCYz1Ql8DXxTni
	 DGgCl+wocS60JBxuR9qv1UfTg3TZUOFbuZi7WceeDoutlPaJYHQzvNTBagqd+qcQOL
	 FrSX6r/yGIMNZ6Kb7ZpJvZ7ShVwLTTsfn6ynjSrLKevJwdwOah5iqdfWtnhhAJNnKt
	 etdEGW1xsPLVOpEbMCFKu5CFjWN+6xz799L+HjWuv3HJBdiR+FIyPcXMcl7ut7ibUP
	 jsnd5VHF0RPtw==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id B34E93844D2
	for <usrp-users@lists.ettus.com>; Sat, 26 Mar 2022 12:56:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pO9l8M7M";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id b189so8268680qkf.11
        for <usrp-users@lists.ettus.com>; Sat, 26 Mar 2022 09:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=me+djZbpM+rS/sqexuw1Po9/tQmVq2Qn8sWXELq2/8I=;
        b=pO9l8M7M0E/+x1Xd7eki+NbhcGuokQ26L+cjXdvpJJ3I0/pvIkJS8jlLFRjk0OU34J
         kCaaA4V8hfqE2NKGbX70D5+tLDalC54ClMepsC6l/OgZspYw1h7J+w80SlM4KgCo+vur
         HQHGLO4VuAC/UIEKqxM9RlqxyhBWU/r2jcN2BH8IMztibyCBDI4BdcdPQtaoEvZkLjTR
         dzlG4Mc47AaXypIzcv4YceP7hjdSfPDLi8Jw3c0WFAbnDTPHz/H6lckC1uR9xFiTlTBW
         f+8MokPNwIUae/8rvGBGudgY+qolGZQHTqYqA+Nd17otKCDO9FxgCRd/seSEJfsC6uSn
         Cdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=me+djZbpM+rS/sqexuw1Po9/tQmVq2Qn8sWXELq2/8I=;
        b=CPOsEkL9IC2Rg+//G7gsNG/6CrUAxisnnL1naJ2yu52NLJhjt6vvk8KfJLDxUYuX0a
         luInG2uCWpSZEOS/LaRA+e9lQwMO/Af2V65eEYkGafydoJj0urfAYDOpWoFG9U2OEbzH
         Hviu9RyyD9aBPDr/K9HL6FwPFnpsPEGoi9bT1WN2j5rptLay+BUgQL1UCASUOS6NEBds
         AQZ3kPhZ9bnxS8/SRTUanpCUQ9Ll8tWaONOm2vnT76K2ZvFvWRJzN1eT5LGQKPVDWxHR
         f4sSd6+0pf5w0MzPwGmw8q2C7U3PNvGGTzp7e5aIEJifQlDBHCQbeWGTZnisMHLf6Geh
         zK7w==
X-Gm-Message-State: AOAM530XlAstVHTl8bDwIxRkFVhCJu2A7LertjPs1QY7mk3xIRua7azz
	sZc2mC7gSdeyh5U559sVCGCK+GImtCs=
X-Google-Smtp-Source: ABdhPJzPwsMfSh8Cj6WluLUkClANypiIflSIAzqAE/VvPKw8xGzgijLkOzZP0TDLOiRFd3Gjloh23A==
X-Received: by 2002:a05:620a:1103:b0:680:a888:3322 with SMTP id o3-20020a05620a110300b00680a8883322mr8034074qkk.533.1648313798913;
        Sat, 26 Mar 2022 09:56:38 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d21-20020a05622a101500b002e07151139fsm8647704qte.17.2022.03.26.09.56.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Mar 2022 09:56:38 -0700 (PDT)
Message-ID: <41a1e0b9-a58c-16f7-f3e4-0fea36e1f49b@gmail.com>
Date: Sat, 26 Mar 2022 12:56:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08@lists.ettus.com>
Message-ID-Hash: UZZ3Q3LF4ASO7AC5HTT2BT77ICH6IK4L
X-Message-ID-Hash: UZZ3Q3LF4ASO7AC5HTT2BT77ICH6IK4L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGES_DIR and Ubuntu 20.04.3 LTS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZZ3Q3LF4ASO7AC5HTT2BT77ICH6IK4L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yNiAxMjozNywgZG9uQGNvbW1sYXJnby5jb20gd3JvdGU6DQo+DQo+IEkgaGF2
ZSBiZWVuIGZpZ2h0aW5nIHRoaXMgcHJvYmxlbSBmb3IgdHdvIG1vbnRoczsgc29tZXRpbWVzIGFi
bGUgdG8gDQo+IHdvcmsgZm9yIGEgY291cGxlIG9mIGRheXMsIGFuZCB0aGVuIGl0IGJyZWFrcyBh
Z2Fpbi4gSXQgb2NjdXJzIG9uIA0KPiBtdWx0aXBsZSBoYXJkd2FyZSBwbGF0Zm9ybXMuDQo+DQo+
IEBTRFIxMDAwOn4vU0RSL3VoZC9ob3N0L2J1aWxkL2V4YW1wbGVzJCBzdWRvIC1FIC4vYmVuY2ht
YXJrX3JhdGUgDQo+IC0tYXJncyANCj4gdHlwZT1iMjAwLGZwZ2E9L3Vzci9sb2NhbC9zaGFyZS91
aGQvaW1hZ2VzL3VzcnBfYjIwMG1pbmlfZnBnYS5iaW4gDQo+IC0tcnhfcmF0ZSAxMGU2IC0tdHhf
cmF0ZSAxMGU2DQo+DQo+IHJlc3VsdHMgaW46DQo+DQo+IOKAlOKAlOKAlOKAlOKAlOKAlOKAlC0N
Cj4NCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gOS40LjA7IEJvb3N0XzEw
NzEwMDsgDQo+IFVIRF80LjIuMC5naXQtNDM1LWcyMjA3MTBiMQ0KPg0KPiBbV0FSTklOR10gW0Iy
MDBdIEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IENvdWxkIG5vdCBmaW5kIHBhdGggZm9yIA0K
PiBpbWFnZTogdXNycF9iMjAwX2Z3LmhleA0KPg0KPiBVc2luZyBpbWFnZXMgZGlyZWN0b3J5OiA8
bm8gaW1hZ2VzIGRpcmVjdG9yeSBsb2NhdGVkPg0KPg0KPiBTZXQgdGhlIGVudmlyb25tZW50IHZh
cmlhYmxlICdVSERfSU1BR0VTX0RJUicgYXBwcm9wcmlhdGVseSBvciBmb2xsb3cgDQo+IHRoZSBi
ZWxvdyBpbnN0cnVjdGlvbnMgdG8gZG93bmxvYWQgdGhlIGltYWdlcyBwYWNrYWdlLg0KPg0KPiDi
gJTigJTigJTigJTigJTigJTigJQNCj4NCj4gdGhlIGVudmlyb25tZW50IHZhcmlhYmxlIGlzIHNl
dCBpbiB+Ly5iYXNocmMgYXMgc2hvd24gYmVsb3cNCj4NCj4g4oCU4oCU4oCU4oCU4oCU4oCU4oCU
DQo+DQo+IEBTRFIxMDAwOn4vU0RSL3VoZC9ob3N0L2J1aWxkL2V4YW1wbGVzJCBlY2hvICRVSERf
SU1BR0VTX0RJUg0KPg0KPiAvdXNyL2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMvDQo+DQo+DQo+IGpl
cmljaG9AU0RSMTAwMDp+L1NEUi91aGQvaG9zdC9idWlsZC9leGFtcGxlcyQgc3VkbyAtRSB1aGRf
ZmluZF9kZXZpY2VzDQo+DQo+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDku
NC4wOyBCb29zdF8xMDcxMDA7IA0KPiBVSERfNC4yLjAuZ2l0LTQzNS1nMjIwNzEwYjENCj4NCj4g
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4g
LS0gVUhEIERldmljZSAwDQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQo+DQo+IERldmljZSBBZGRyZXNzOg0KPg0KPiBzZXJpYWw6IHh4eHh4
eHh4eA0KPg0KPiBuYW1lOiBCMjAwbWluaQ0KPg0KPiBwcm9kdWN0OiBCMjAwbWluaQ0KPg0KPiB0
eXBlOiBiMjAwDQo+DQo+IOKAlOKAlOKAlOKAlOKAlOKAlOKAlA0KPg0KPiBJIHdhcyBicmllZmx5
IGFibGUgdG8gaGF2ZSB0aGUgY29tbWFuZCB3b3JraW5nIGJlbmNobWFya19yYXRlIHdvcmsgDQo+
IGxhc3Qgd2VlayBieSBhZGRpbmcgdGhlIGFyZ3MsIGJ1dCBub3cgaXQgaXMgZmFpbGluZyBhZ2Fp
bi4gSXQgZmFpbHMgDQo+IHdpdGggc3VkbyAtRSBvciBwbGFpbiBzdWRvLiBBbmQgYWxzbyBmYWls
cyB3aXRob3V0IHRoZSBhcmdzLiBIb3cgZG8gSSANCj4gZ2V0IHBhc3QgdGhpcz8gVGhhbmtzIQ0K
Pg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tDQpBbHNvLCB0aGVyZSdzIFpFUk8gcmVhc29uIHRvIHJ1biB0aGlzIHVuZGVy
ICJzdWRvIi7CoCBObyBlbmhhbmNlZCANCnByaXZpbGVnZSBpcyByZXF1aXJlZCB0byBydW4gdGhp
cywgdW5sZXNzIHlvdSBoYXZlbid0IGluc3RhbGxlZCB0aGUgDQoidWRldiIgcnVsZXMgZm9yIHRo
ZSBVU1JQLg0KDQpJJ20gcHJldHR5IHN1cmUgdGhhdCB0aGUgZGVmYXVsdCBVYnVudHUgaW5zdGFs
bGVyIGRvZXMgdGhhdCwgYWx0aG91Z2ggbXkgDQpyZWNvbGxlY3Rpb24gaXMgdGhhdCBpdCBkb2Vz
bid0IGhhdmUgYSBydWxlIGZvciAibWluaSIgc2VyaWVzIGluIHRoZcKgIA0KInVoZCIgcnVsZXMg
ZmlsZSBpbg0KIMKgIC91c3IvbGliL3VkZXYvcnVsZXMuZCBmaWxlLg0KDQpFYXN5IGVub3VnaCB0
byBhZGQsIGp1c3QgY29weSBvbmUgb2YgdGhlIG90aGVyIHJ1bGVzIGFuZCB1c2UgYSBwcm9kdWN0
IA0KaWQgb2YgIjAwMjIiLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
