Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EE4523C56
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 20:18:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8793038433D
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 14:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652293132; bh=P8iu9BvkTujL6NU17+tRx/vEYJcVHtgyZqUFJSpVm2c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VdUpL7ZRx78mq/gMhtqMXd4aHEsGj79uNU/vQIl/7bQb/eEbmCvoMr1UG6Gnn6OWB
	 KsijDAxMVN3ES3G9uVgQuWCM8T63x9+VeZeTyfb2ZkIHf7iUTxZByrW8uA6XeNeazi
	 60C4aJXcouY6cD9NsuW7sRkleEoe83lfpNJBDoN8/4h6WRqgHiUGJe5QxHabUY9/f4
	 5/yvNYlsS6iqGT7MWyXznnnq1wE/aFg4TUztjZE9WWkNLh3loY761kGDtldL4IgHHq
	 3P6ul7seF4Leh6Y/XkUSHOv5fqTqurIBS2sffa1n0O3YD04EzjqfYRBXXIuL2/ws//
	 FVsU+NruWzHEQ==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D22D9384328
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 14:17:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jo2MejA8";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id g3so1357427qtb.7
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 11:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=s+p6tT6BQCQ+/T63RyNhhXYFjj8SNaTnQ4CjzxhlWX8=;
        b=jo2MejA8Xu+JRQq2BAPDLmls3TbmbXMrV25oie3U8gT/DHxdxdmeA5QrRlT0XGKo9Q
         Lyd9a/7QiNNFSlAOcA+Bo8D2EeDzx6Wa4WPHob2I9e0JwzvweJaeCKptM9XTQIQpdfqx
         T7bsfCyzdUuNHaoMfMxGAA4tjN3cgLwJ8j/QrHhNimOKu4C0n7DVCJTVvda6B32pJHyP
         TNtM5Koi5GhS6MvrJSEMwT/JaAdwBEPeLv+EGvoQ+XpCdXg5YSIh7oHtgbTSIILBKqFa
         z987xyaH5rnlGSnBXTRWCz7VouN7lEDVyRHhVAjVwYCG71TW5iAmwb/fnsd0zu9VJfBV
         AA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s+p6tT6BQCQ+/T63RyNhhXYFjj8SNaTnQ4CjzxhlWX8=;
        b=q59nQmOSbWKLP7K2raTw82jBtu2AibzThJfgb8B9Fgix5ZHl8/p0RbyL6zNULflOls
         CRBIrzexXvNUNSTty3T+QhPWkrxHYoKe6Fbu1xHzIJPOBnr+Pco/BHAZaEWHrtO6usbd
         FY+fUyLPuPqnFSwrlXEhkNLQFLLLMO6f+SH5+lfOBz5ZvwGyb4nwT5HnCdH7vh1r3pVU
         KB5SEcOVY8pX++lYhm0qFDwuCzjKM94jAj5LCrVT8FKjhlXMLdlkOORqN0u/eYg/G3tn
         AAZBuif1suWgRHc70zKDsMHl1CkTlVdIxNYEUa/61d4swc8gLecMMYT6DH14FRd+tQdv
         X4OA==
X-Gm-Message-State: AOAM533Y5DcFwbiz47KPm1niewZlFqSZoKjpRHBrZD0j312WH2myZV4y
	GOM3ogyZQqgUQ1e/0Qrag8Ko2Sj80DY=
X-Google-Smtp-Source: ABdhPJwm8nKGBIXw2hpi4DyWzCBHZzHn16PK8PlGi2ZwLNT+uV+FioTrBiibu/Z9KRSh2DfpK4gTmw==
X-Received: by 2002:ac8:59d3:0:b0:2f3:d7ee:2b54 with SMTP id f19-20020ac859d3000000b002f3d7ee2b54mr16486663qtf.290.1652293046025;
        Wed, 11 May 2022 11:17:26 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id bk29-20020a05620a1a1d00b0069fca79fa3asm1809537qkb.62.2022.05.11.11.17.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 11:17:25 -0700 (PDT)
Message-ID: <d6eeb5b3-f981-45e6-2397-85f5b9614903@gmail.com>
Date: Wed, 11 May 2022 14:17:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wJnU0NzoU1ulUt2QW5uXOtwMHcw6At3XHw6A0Oc@lists.ettus.com>
Message-ID-Hash: OPS6UTKKB42SDTPTL7XXRCVEG2ZSRQRC
X-Message-ID-Hash: OPS6UTKKB42SDTPTL7XXRCVEG2ZSRQRC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC DDC or DUC frequency change
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPS6UTKKB42SDTPTL7XXRCVEG2ZSRQRC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0xMSAxNDoxMCwgcmJsYWNrQHN3cmkub3JnIHdyb3RlOg0KPg0KPiBBIHF1ZXN0
aW9uIGZvciBhbnlvbmU6IHdoZW4gY2hhbmdpbmcgdGhlIGZyZXF1ZW5jeSBvZiBhIERVQyAob3Ig
RERDKSANCj4gd291bGQgeW91IGV4cGVjdCB0aGUgb3V0cHV0IG9mIHRoZSBibG9jayB0byBiZSBw
aGFzZSBjb250aW51b3VzIA0KPiB0aHJvdWdoIHRoZSBjaGFuZ2U/IFBoYXNlLWNvbnRpbnVvdXMg
YmVoYXZpb3Igd291bGQgYmUgdHlwaWNhbCBmb3IgDQo+IG1hbnkgRERDIGltcGxlbWVudGF0aW9u
cywgYnV0IHdpdGggdGhlIFJGTm9jIGJsb2NrIEkgYW0gc2VlaW5nIGJpZywgDQo+IGFyYml0cmFy
eSBwaGFzZSBqdW1wcyB3aXRoIHRoZSB0dW5lIGZyZXF1ZW5jeSBjaGFuZ2XigKYuLg0KPg0KPg0K
SSBkb24ndCB0aGluayB0aGF0IHBoYXNlLWNvbnRpbnVpdHkgYWNyb3NzIERVQy9EREMgY29uZmln
dXJhdGlvbiB3YXMgDQpldmVyIGEgZGVzaWduIGdvYWwsIGZyb20gd2hhdCBJIHJlY2FsbC4uLg0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
