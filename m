Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1211BA21EED
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 15:19:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C11B5386222
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 09:19:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738160374; bh=pRt1OSsPHw/g5CIVUa008jIYMATsCpY9yyFbeE0YtvA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=w/xjLnPxBD7kqodfyJJ+89vD9FmWmMODgtwRKgk1l6bRRTc/LYalnEJCI6s4U+IkA
	 zF+ocz+JgeqAw3Mq2QMfeCwwKpy6A/5m+O/NIFmUDvIffW1840HUomPbJug06/K69D
	 MQG70YPrXiN52SiCNxACYSN8H5ldtdnd0KlYGTIR/zgcVpPvWW+khlmgFWYJAemYPH
	 lfZWepoeSCe2wlfpt9X+3NgxAMUSYDl+cYnKeER6QVAMbNH4QxhPDomeh0a75dR9WK
	 YlWypAZXliLqWScT1JUaMO5RjQDH6nWyabw9MbAngUc2Lmv9zkHRq4PfZstoFJGCzf
	 MCE5nVrKE8Ckg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 5315D3861D5
	for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 09:19:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fx4n5Jf1";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7b6e9317a2aso69491085a.0
        for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 06:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738160362; x=1738765162; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ThGEh0P9K//+/CfysrRhiu9btJR5qMjWlae1NXIsgIM=;
        b=Fx4n5Jf1oTQNg6/WAx/2iLlV9nGkrkWHnrKM4xo9hguNImVEQmSAaPbCg6GdVN6Unn
         /GSm4wExDOGkBUC7WbTj9Vrwrp8IacwFyh1KPK+o6r/++tqXPSkBcN2Z3yxczYJWLeWb
         S8tOAQsoaUhVSkWY9BxShtO1HolWqp/sDccVkQ9z5mQhdhwLTO2ajDH4ZsCLQy7tz5pg
         GU+a7KtmR4mYHLSPVUTSqLWsM2D/+NmjRA+V+kkuecpr5oNfDvvDcNi98IvAxgdsXOeK
         IjQCBfV/IBmdQMUBVvWx28C3ZU8P8CMK5EOF1/zsEhJXUZS41xN4oAxBM0twB8J8ToSh
         QOXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738160362; x=1738765162;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ThGEh0P9K//+/CfysrRhiu9btJR5qMjWlae1NXIsgIM=;
        b=ANWjVquOfBDQ5WtCYyF5oDk6OOaX+8uOMTKb8QBFhBrgvdpJ9U95inGStd0zbRQC4O
         3p6CiYzjcn1zdVTqLUyaZn+rYQ2j82Ul5JvZmKhvrDhfeD55Cq80OUG3XbEkjnMUTKPX
         G20BG5YCdgjcUwZrZRJnsujElVG0Eamc/COvkMX0yqaJICqzZ7jQdN46kur3javlUAS+
         zhU+K9iTUFb4Icq1lTTVYK3MQWPDWbPZqnw+GYB1Kgxtb0Uy+MBYN9IkxGl+9CFylC6Q
         qsVTQ2qbFXjdP4gylxtNeKAxlmCB3gRxUOjGh2aYz0seqP0h4+opXYSFRTgWWSS/tC7Z
         2b4A==
X-Gm-Message-State: AOJu0YwHx+Q1aaRqnWE1c0NLTvZ9eb2GiiBYUdiVvy4h75EoAsZyUx6g
	b3wbZMCjig2pA9CpomiwK1DCW8oLKBlCM1rA7tC827hy0tok5h6ev/P2Bg==
X-Gm-Gg: ASbGncv2GYN16qZlxFcncCjC89+UzuEU8WWwzL4468t+3Ef6kAKLOp4VLKoJG6SvuoH
	sfjEEm2Aeb05WfiwmuAxEa9knrXGfJlm5f70/fOKTh8nv5eBEON3NwABptDB/JbqBoJM5Dto/t4
	+TxNEMC/Q25DbqhZ83rI/p4l71p7y+uzMbJcBLOJsAImA4ncVjqP6l9N+Z7hvsH8RonFXw32WnY
	PJHkMVbW0LWTC12efRCkdHylu7sIUGSZroKOtyTMxBnVxouem/QO4AZlIODOMWcx9XBpZD7Yjpq
	mIZFE29JMmwPtK8DHEAf08cEXQ==
X-Google-Smtp-Source: AGHT+IFRNlCuublMGTPFC4mquXPYzXJa0VbPNHEh1ONEBNuUEFF+/wKY8S657X9rZjjVWWUPhcWflw==
X-Received: by 2002:a05:620a:25c8:b0:7b1:4a2a:9ae0 with SMTP id af79cd13be357-7bff3f73149mr1164276685a.9.1738160362506;
        Wed, 29 Jan 2025 06:19:22 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be9af11709sm625610785a.112.2025.01.29.06.19.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 06:19:22 -0800 (PST)
Message-ID: <65a1efc2-0b7a-49e5-97fb-2043fa7ff2a8@gmail.com>
Date: Wed, 29 Jan 2025 09:19:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc@lists.ettus.com>
Message-ID-Hash: UCRTVDORDJXQ57E6UU2Z6XQ24F4IAVQU
X-Message-ID-Hash: UCRTVDORDJXQ57E6UU2Z6XQ24F4IAVQU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max input power without damaging B200-mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UCRTVDORDJXQ57E6UU2Z6XQ24F4IAVQU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDEvMjAyNSAwNTozOCwgZW1hbnVlbGUudG9sb21laUBpbnRlY3MuaXQgd3JvdGU6DQo+
DQo+IEhpLCBJIGhhdmUgYSBCMjAwIG1pbmkgdGhhdCBJIHVzZSBmb3IgbW9uaXRvcmluZyBwdXJw
b3NlcywgYW5kIEkgbmVlZCANCj4gdG8gaW5zdGFsbCBpdCBuZWFyIGFuIFJGIHRyYW5zbWl0dGVy
LiBJJ20gY29uY2VybmVkIGFib3V0IHRoZSBtYXhpbXVtIA0KPiBpbnB1dCBwb3dlciB0aGUgYm9h
cmQgY2FuIGhhbmRsZSBiZWZvcmUgaXQgZ2V0cyBkYW1hZ2VkLg0KPg0KPiBJIHVuZGVyc3RhbmQg
dGhhdCB0aGUgQjIwMCBtaW5pIGhhcyBhICswIGRCbSBpbnB1dCBwb3dlciBsaW1pdC4gDQo+IEhv
d2V2ZXIsIGRvZXMgdGhpcyBsaW1pdCBhcHBseSBvbmx5IHdoZW4gdGhlIFNEUiBpcyBhY3RpdmVs
eSByZWNlaXZpbmcgDQo+IHNhbXBsZXMsIG9yIGlzIGl0IGFsc28gcmVsZXZhbnQgd2hlbiB0aGUg
Ym9hcmQgaXMgaW5hY3RpdmUgKGkuZS4sIG5vdCANCj4gdHVuZWQgdG8gYSBzcGVjaWZpYyBmcmVx
dWVuY3kgYW5kIG5vdCByZWNlaXZpbmcgc2FtcGxlcyk/DQo+DQo+IFRoZSByZWFzb24gSSBhc2sg
aXMgdGhhdCBJIGNvdWxkIGRpc2FibGUgdGhlIEIyMDAgbWluaSdzIHJlY2VwdGlvbiANCj4gd2hp
bGUgdGhlIFJGIHRyYW5zbWl0dGVyIGlzIGFjdGl2ZSwgYXMgaXQgZG9lc24ndCB0cmFuc21pdCBz
aWduYWxzIA0KPiBjb250aW51b3VzbHkuDQo+DQo+IFRoYW5rIHlvdQ0KPg0KPiBFbWFudWVsZQ0K
Pg0KPg0KU21hbGwtc2lnbmFsIGFtcGxpZmllcnMgYXJlIHNlbnNpdGl2ZSB0byBkYW1hZ2UsIGV2
ZW4gd2hlbiBwb3dlcmVkLW9mZiANCih0aGUgZGV0YWlscyBtYXR0ZXIsIGJ1dCBpbiBnZW5lcmFs
LCB0aGlzIGlzIHRoZSBjYXNlKS4NCg0KSWYgdGhlIGZpZWxkIHN0cmVuZ3RocyBhcmUgZ29pbmcg
dG8gYmUgaGlnaCBlbm91Z2ggdGhhdCB5b3UncmUgd29ycmllZCANCmFib3V0IHRoaXMsIHRoZSBi
ZXN0IGFwcHJvYWNoIGlzIHRvIHVzZSBhbiBSRiByZWxheSB0aGF0DQogwqAgc3dpdGNoZXMgdGhl
IFJYIGlucHV0IHRvIGEgbWF0Y2hlZCB0ZXJtaW5hdG9yIChvciBldmVuIGEgc2hvcnQgDQpjaXJj
dWl0KSB3aGVuIHRoZSB0cmFuc21pdHRlciBpcyBvcGVyYXRpbmcuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
