Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A474E81F5
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 17:52:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81D9C384392
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 12:52:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648313538; bh=UCStXqJQN1nAn/wyuVqX94auJcnOVMclFFDa+wlZGJA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f4P/afwjBFX19lrMCyQIUsrr2wRVd3oYJ3oT0ji4+SOaFfKtnlf/YjBxOlV6WmsXL
	 cNU+twEEdisvSsWNUfoVmu3gT5QLD1RDxA4Qp+nCVGw60StKe3sx+VxEfw2LHM3CF/
	 g5duN9ufsT3DEgAwC+SI8KHrCtaunYHXZc++HSGEH9jIVWRWRV9/XWxX52nPFgRWsD
	 3RXFJVTNVYDPA9zFz++k1ZAg8wr56QIcQlxCYveyj1sFEw69Iy0DvCYrzn+Nmvvfhr
	 6RkyxcM0jTLSgp4wlPe9FzN9/vCrMGyEGHA/zQLhwBFUUQZ793apv0P7TrHHj5kfu/
	 t/D/AGyZGsbcQ==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id DB959384660
	for <usrp-users@lists.ettus.com>; Sat, 26 Mar 2022 12:51:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LtbmqUc1";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id b18so8955391qtk.13
        for <usrp-users@lists.ettus.com>; Sat, 26 Mar 2022 09:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=hkBC1tsw3H8dhF5I6DImkCsEtcYFJf9ZwHkQJkyI7SA=;
        b=LtbmqUc12kki1VqcrBVXSZNnhmCr3VbOTasSehJ2eFmeZYdDtMG/6RUuGDFnfYsiIh
         HGDT+T3er1cbxM0yESisNjDz8IxNxFz9cY41o2iA0hSQ1WM8SZoSZGalmO5nZy8K+NL5
         SSXTuv9M0KaBPyAatV0RQoNt72O1jaKj9+UYHorJWvV7uKQZVnwuuwtR9KzfsJ58accj
         8fJXX8a/o1x9T7b8G72Hghb0dmU0xFsCjvdega3g5kIQj6JOtrJm24RH+jaDfp48hsB1
         GDfQrhd/HLlTCviGwD+NnWovl+sbmMrGTlF9PU0enxkLPQ2rbT+pU7b1iACpaLLeD+pL
         p6LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hkBC1tsw3H8dhF5I6DImkCsEtcYFJf9ZwHkQJkyI7SA=;
        b=zMcNKYdoJKUcWXLzqWCBTfawWT3YBM32qaFxai++18ZiJvByBtpfz2MH1izAIlMnQn
         aw+/5VmAxzZDSmQGdZUtQ8AKeecrg88PeyCPp4KIbEvoBqdWbmCah0Txcz0RHzDWNjIq
         HkOn87qOrTXvFtamxlwS6xKz7J2qHANVN0Fn/No1QwNbEBkqTgDhyi7PEDWd96FdplQ/
         aFWDAKphOVDjhslA+0Uo54a6E9hjg/je4W/KMOu54VdmlKk5MV7z4CIjHu5WwKuNmIhw
         pwrskhSDL8XIP8n31JntvTsw5gJ1VsYlMCEgxQoqS2QfRs425JYev3ObQ5XYamx0E3jY
         /IJw==
X-Gm-Message-State: AOAM532lezDZTcmqJJt+i9mH4Fmcjh0APM5cvYmO7QndU6v0ag97w5Vg
	A1B5IEmgL8+6oSbTT8oNfJNQztxCnhM=
X-Google-Smtp-Source: ABdhPJxv9D1BBJcOLd3oveNR/8NsOxQhUy0HRTX9DgmRJTNpdMEbhGMiyaPJOKKexcJgC53tJmzykA==
X-Received: by 2002:ac8:5b15:0:b0:2e1:d89a:a8a4 with SMTP id m21-20020ac85b15000000b002e1d89aa8a4mr14679904qtw.613.1648313477128;
        Sat, 26 Mar 2022 09:51:17 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id l126-20020a37bb84000000b0067b3c2bcc0dsm5245539qkf.1.2022.03.26.09.51.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Mar 2022 09:51:16 -0700 (PDT)
Message-ID: <6ed3ab2a-db32-f2cb-24b0-d12f4fd0e00d@gmail.com>
Date: Sat, 26 Mar 2022 12:51:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08@lists.ettus.com>
Message-ID-Hash: EPUIBF73LLHDV6UDXZ5HYM2S7MQYGHYU
X-Message-ID-Hash: EPUIBF73LLHDV6UDXZ5HYM2S7MQYGHYU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGES_DIR and Ubuntu 20.04.3 LTS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EPUIBF73LLHDV6UDXZ5HYM2S7MQYGHYU/>
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
dHMuZXR0dXMuY29tDQpBcmUgeW91IGZvcmdldHRpbmcgdG8gImV4cG9ydCIgeW91ciBlbnZpcm9u
bWVudCB2YXJpYWJsZSBzZXR0aW5nPw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
