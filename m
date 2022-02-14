Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D054B5673
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 17:36:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AF1D385953
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 11:36:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GIOsa0Pk";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B8CF3855DA
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 11:31:15 -0500 (EST)
Received: by mail-qk1-f172.google.com with SMTP id w8so14824412qkw.8
        for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 08:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=SojdinVcoGCr0JFdjUnriT+tURCPgx8PrUASo6TWcvY=;
        b=GIOsa0PkbBkTZlWiYdZUd+WrrQ6eiwepi8+tGPtrMqwwWwQHGuB9lJH+CmSySeZoBP
         aEPYSwAF7oIQC0X+9JbbFJnnIw7bZD2Mt60wEEnxmkIWMK2aBs5FsGcdfS6V2fc0rghJ
         3Cl6vaZeTMIimgNuoQNh7RHdAbOtsxj1ZIliZOLjoTJuBnMq/hPzlXckgaHujbPU8mnh
         NVfUrPA8MLJ1UvpDTY7ZMPg2LiJGpjOGiOjQJFBDqpHZ0J4YeMRWu1gxAFf5cY1ubT37
         cuIiA+6/V5XcYJeywDbBigQvYPxe10/F8Oc5zzkKEZOLM4KWSHSvvmadmxSpdUXnU3ux
         907A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SojdinVcoGCr0JFdjUnriT+tURCPgx8PrUASo6TWcvY=;
        b=c4FjLJuRQ/+sJkw2N4o9jQ3pBeXKLuYnAboX9br+AlcuWIj8gIIMCFdxUeX76j4ZZM
         /vPDmM8wWRA95fAzVICYRyaQosUaRTAFtCCdSPDTowII5hNSexQSFVZ6kgjVXDauZhOF
         z2w7DtCukQT8pNnNgyJjebjIlTltPY6ucj1wVLr/OA+XXvJQNyKztr+uDhcsPmWaUvNh
         HtSv4ibI+tmt5dz+D0Mj987hP7RfqQG/en0qprm9GGK0tyf4vut1MKqO0Moe793UCRfh
         mzQxuVdiRf3iv5G0cJVct+TJTWzyxEmiHFYeDx7Eey1Bp5LoyZxZfeXKUny3dhY3qn0u
         qQ/Q==
X-Gm-Message-State: AOAM531wyi+cY/G7QHQkekBctQS/YxUPygbtiJ6rwYii1GwYYFiajnTW
	ubCuHFRaTcebkeGuTM1DxGIamr5EGA/9oA==
X-Google-Smtp-Source: ABdhPJzdUsxk00kf31LjCqp8zeYifBxfb48/05MMzqJw3sfwzrmfIieZ0dZ3y1d7lpuFsVTnDG7ivw==
X-Received: by 2002:a37:aac9:: with SMTP id t192mr289605qke.118.1644856275204;
        Mon, 14 Feb 2022 08:31:15 -0800 (PST)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y15sm15873778qko.133.2022.02.14.08.31.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 08:31:14 -0800 (PST)
Message-ID: <c83d6c10-9159-f329-2f25-db055e9429f9@gmail.com>
Date: Mon, 14 Feb 2022 11:31:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
 <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
 <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
Message-ID-Hash: 4CIFD6NUPRZJX5EQ2LQ5YPKOZKU3GG4Y
X-Message-ID-Hash: 4CIFD6NUPRZJX5EQ2LQ5YPKOZKU3GG4Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogTWVuZGVyIFVwZGF0ZSBQcm9jZXNzIE4zMTA=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4CIFD6NUPRZJX5EQ2LQ5YPKOZKU3GG4Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0xNCAxMToyOCwgR2l1c2VwcGUgU2FudGFyb21pdGEgd3JvdGU6DQo+IE5vLiBJ
IGhhdmUgdGhlIFVTUlAgYXMgSSBib3VnaHQgaXQNCj4NCj4gSWwgMTQvMi8yMiAxNzoyNywgTWFy
Y3VzIEQuIExlZWNoIGhhIHNjcml0dG86DQo+PiBPbiAyMDIyLTAyLTE0IDExOjI1LCBHaXVzZXBw
ZSBTYW50YXJvbWl0YSB3cm90ZToNCj4+Pg0KPj4+IE5vdyBpdCB3b3JrcyBmaW5lLCBidXQgd2hl
biBJIHRyeSB1aGRfdXNycF9wcm9iZSB0aGlzIGlzIHRoZSByZXN1bHQ6DQo+Pj4NCj4+PiBbSU5G
T10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjUuMDsgQm9vc3RfMTA2NTAxOyANCj4+
PiBVSERfNC4xLjAuNC1yZWxlYXNlDQo+Pj4gW0lORk9dIFtNUE1EXSBJbml0aWFsaXppbmcgMSBk
ZXZpY2UocykgaW4gcGFyYWxsZWwgd2l0aCBhcmdzOiANCj4+PiBtZ210X2FkZHI9MTkyLjE2OC4x
MC4yLHR5cGU9bjN4eCxwcm9kdWN0PW4zMTAsc2VyaWFsPTMyMTEwMDgsZnBnYT1IRyxjbGFpbWVk
PUZhbHNlLGFkZHI9MTkyLjE2OC4xMC4yIA0KPj4+DQo+Pj4gW1dBUk5JTkddIFtNUE0uUlBDU2Vy
dmVyXSBBIHRpbWVvdXQgZXZlbnQgb2NjdXJlZCENCj4+PiBbSU5GT10gW01QTS5QZXJpcGhNYW5h
Z2VyXSBpbml0KCkgY2FsbGVkIHdpdGggZGV2aWNlIGFyZ3MgDQo+Pj4gYGZwZ2E9SEcsbWdtdF9h
ZGRyPTE5Mi4xNjguMTAuMixwcm9kdWN0PW4zMTAsY2xvY2tfc291cmNlPWV4dGVybmFsLHRpbWVf
c291cmNlPWludGVybmFsJy4NCj4+PiBbRVJST1JdIFtSUENdIEF0IGxlYXN0IG9uZSBQTEwgZGlk
IG5vdCBsb2NrISBDaGVjayB0aGUgbG9ncyBmb3IgDQo+Pj4gZGV0YWlscy4NCj4+PiBbRVJST1Jd
IFtNUE0uUlBDU2VydmVyXSBpbml0KCkgZmFpbGVkIHdpdGggZXJyb3I6IEF0IGxlYXN0IG9uZSBQ
TEwgDQo+Pj4gZGlkIG5vdCBsb2NrISBDaGVjayB0aGUgbG9ncyBmb3IgZGV0YWlscy4NCj4+PiBF
cnJvcjogUnVudGltZUVycm9yOiBFcnJvciBkdXJpbmcgUlBDIGNhbGwgdG8gYGluaXQnLiBFcnJv
ciBtZXNzYWdlOiANCj4+PiBBdCBsZWFzdCBvbmUgUExMIGRpZCBub3QgbG9jayEgQ2hlY2sgdGhl
IGxvZ3MgZm9yIGRldGFpbHMuDQo+Pj4NCj4+Pg0KPj4gRGlkIHlvdSBhY3R1YWxseSBoYXZlIGFu
IGV4dGVybmFsIGNsb2NrIGNvbm5lY3RlZD8NCj4+DQoNClNvLCB3aGVuIHlvdSBkbyB0aGUgdWhk
X3VzcnBfcHJvYmUsIGFkZCAiY2xvY2tfc291cmNlPWludGVybmFsIiB0byB0aGUgDQpkZXZpY2Ug
YXJncyAtLSBpdCBsb29rcyBmcm9tIHRoaXMgdHJhY2UgdGhhdCBpdCdzIHRyeWluZyB0byB1c2Ug
YW4gDQpleHRlcm5hbCBjbG9jayBieSBkZWZhdWx0Lg0KIMKgIFdoaWNoIGl0IHNob3VsZG4ndC4N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
