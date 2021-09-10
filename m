Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 741C2407341
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 00:12:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7F46384725
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 18:12:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EtuoG/bX";
	dkim-atps=neutral
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C0D783846C7
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:11:15 -0400 (EDT)
Received: by mail-qv1-f47.google.com with SMTP id w8so2295788qvt.0
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 15:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=69CvL+IprVAIHTBZeDNCSbrMymGZm23lEaiDcdCxGPc=;
        b=EtuoG/bXqb1lAcA4EN0ctYGhQUeVRMOqJn8b+mTci2nmgl+MzhSLHZSMAGx0tT4R+9
         u+XJDsxjEgA/Vq5nmUKG3chBNdqAQMc0IbEZil1haLMg/vI51Xyhl5nwiUCVlzvh089G
         9ncHy63AQMbv6i3obUDd6fnZbJGBVXjcI6oU5+RyYEGhbM/9vvFmFZKQ/fAZO3iJggTP
         qf+2bCjqNar33+8CNG2U6Ny1f4Ibabns9tqGH6enQ3RLCllpXYsxatBdRfCTxWNL6QY9
         5lbT7AGL/zVHPtTEG3fj156zgIrOMkNjp3wOwZxAuldMJt99/BWbcgS7mEPAZ1i1689v
         auAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=69CvL+IprVAIHTBZeDNCSbrMymGZm23lEaiDcdCxGPc=;
        b=gh/JPIkJUThrU91IOCbply85aGAI0IiSgi0lLjci6IQpPCANCV9CcUKn93wBqIAEc0
         vIIOJcjUFbuWgup2NICrMQXRVLe2Ac0f3VGR/P2ooQmdYYSji4BBmahdLofl4vXDS4Kc
         DBsh1Ve8/SN9Ftbi2D1c5w8u3UFRkEaZr+DFDa80NF3n9mWgoMS8ljiiajooGYfahrbe
         kG+vIRSzJdP10wxbUGlmiCwn6+FKtgM5UOChumpoSb9x5COoCKqCvlgd6TvpFB5hmuqv
         atw+62modgdUfqpbTdWpFHZZiFYQYmJs+cCIVgpdyTUZ4ske9bN9/j1tyyxjnlOHhts9
         mkqA==
X-Gm-Message-State: AOAM531WmhA24fyZu/JulMNkRH9Tvan2iP72mDMmZk85e3CPDArVyh+U
	giZd2BQzjbXgfWbrLd2Fkj0gpTUVKkyaFg==
X-Google-Smtp-Source: ABdhPJxnK63XIVpwadYA9L1uqtPLjoM4h89AU2ETphEwaVsqSNIlD8IRM1Mij2gWYWZc2zQUJfyAOw==
X-Received: by 2002:ad4:46e1:: with SMTP id h1mr10527826qvw.32.1631311874903;
        Fri, 10 Sep 2021 15:11:14 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 9sm4378849qkc.52.2021.09.10.15.11.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:11:14 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
Date: Fri, 10 Sep 2021 18:11:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
Content-Language: en-US
Message-ID-Hash: 6VNSKPXYDWASOHQQPUF2ARKFSFABP74I
X-Message-ID-Hash: 6VNSKPXYDWASOHQQPUF2ARKFSFABP74I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VNSKPXYDWASOHQQPUF2ARKFSFABP74I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0xMCA2OjAzIHAubS4sIG1zZnUgd3JvdGU6DQo+IGhpIHRoZXJlLA0KPg0KPg0K
PiBpIGFtIHRyeWluZyB0byBnZXQgbXkgR1BTIHRvIHdvcmsuDQo+DQo+IHNldHVwIGlzIGEgYjIx
MCwgZXh0ZXJuYWwgcGxsLWdwc2RvIGJnN3RibCBjb25uZWN0ZWQgdG8gYSBubWVhMDE4Mw0KPiBh
bnRlxYRuYSBhbmQgYSB2ay0xNzIgVVNCLUdQUy1tb3VzZS4NCj4NCj4gaSBjYW4gZ2V0IGRhdGEg
ZnJvbSB0aGUgdXNiIHJlY2VpdmVyIGJ1dCBpbiBjZ3BzIHRoZXJlIGlzIG5vIFBQUyBhbmQgbm8N
Cj4gM0QgRml4Lg0KR2l2ZW4gdGhhdCB0aGlzIGlzIG5vdCB0aGUgInBsZWFzZSBoZWxwIG1lIGRl
YnVnIG15IEdQUyIgbWFpbGluZyBsaXN0IA0KSSdtIG5vdCBzdXJlDQogwqAgdGhhdCB3ZSdsbCBi
ZSBhYmxlIHRvIGhlbHAgeW91IHdpdGggQ0dQUyBoZXJlLg0KDQo+DQo+IE5vdyB0aGUgcXVlc3Rp
b246IGNhbiBpIGFjdGl2YXRlIG15IHVzcnAgdG8gY29tbXVuaWNhdGUgd2l0aCB0aGUNCj4gZXh0
ZXJuYWwgQ2xvY2s/IGV2ZXJ5dGltZSBpbSBkb2luZyB1aGRfdXNycF9wcm9iZSB0aGVyZSBpcyBh
IGxvY2sgb24gdGhlDQo+IGdwcy4gd2hhdCBjYW4gaSBkbz8NCkRvZXMgeW91ciBCMjEwIGhhdmUg
YSBidWlsdC1pbiBHUFM/wqAgSWYgdWhkX3VzcnBfcHJvYmUgaXMgaW5kaWNhdGluZyANCiJHUFMg
TG9jazogWWVzIiwgdGhlbiB0aGF0DQogwqAgbWVhbnMgdGhhdCB0aGUgKmludGVybmFsKiBHUFMg
dW5pdCBpbiB0aGUgQjIxMCBjYW4gc2VlIGVub3VnaCANCnNhdGVsbGl0ZXMgdG8gYWNoaWV2ZSBQ
TEwgbG9jaywNCiDCoCBhbmQgaXMgcHJvdmlkaW5nIGhpZ2gtcHJlY2lzaW9uIDFQUFMgYW5kIDEw
TUh6IGludGVybmFsbHkuDQoNCklmIHlvdSB3YW50IHRvIHVzZSBhbiBleHRlcm5hbCBHUFNETyB1
bml0LCB5b3UnbGwgaGF2ZSB0byBkaXNjb25uZWN0IHRoZSANCmludGVybmFsIEdQU0RPIHVuaXQg
d2l0aGluDQogwqAgdGhlIEIyMTAsIGJlY2F1c2UgdGhlIDEwTUh6IHJlZmVyZW5jZSBsaW5lIGlu
dGVybmFsbHkgY2FuIG9ubHkgYmUgDQpkcml2ZW4gYnkgYSBzaW5nbGUgc291cmNlLg0KDQpJbiB0
ZXJtcyBvZiBzZXR1cCwgd2hlbiB5b3VyIGFwcGxpY2F0aW9uIHN0YXJ0cywgaXQgY2FuIHVzZSB0
aGUgDQpzZXRfdGltZV9zb3VyY2UoKSBhbmQgc2V0X2Nsb2NrX3NvdXJjZSgpDQogwqAgQVBJcyB0
byBzcGVjaWZ5ICJncHNkbyIgKGZvciBidWlsdC1pbiBncHNkbykgb3IgImV4dGVybmFsIiAoaWYg
eW91IA0Kd2FudCB0byBjb25uZWN0IHRoZSAxME1IeiBhbmQgMVBQUw0KIMKgIGNhYmxlcyB0byB0
aGUgQjIxMCkuDQoNCg0KPg0KPg0KPiB0aGFua3MgaW4gYWR2YW5jZQ0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
