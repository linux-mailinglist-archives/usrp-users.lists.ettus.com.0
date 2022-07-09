Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F82756CA5D
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 17:33:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0670C383ED8
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 11:33:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657380793; bh=EBaVC7itp5yebAmpfxOyWMc8LSmzL67/M8/0BFcU0ZY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=slh8JxcqlZojYy+cUgtm/Sg08gsTyZTqFnRXDWZuFN+dwg7xKIiSY5iE33JqqbCC2
	 PrcZUt/8L9f98GRqG87rUG1lGaflOqFqLPwM+agFA0mwoaun1+GeEE7yNcav2ciztg
	 YFr6m8b+Aqia9GvMswamYULZh0Zuyekge6poRgvO2/2dJ+xdnxMZlwKrFpBPu4S0yR
	 JhBdI+9M/m6K0vSIj1m0Y44IhZhjQ06UssXsiwA9+5PwcyEVyBXxXR0H69Fmsdxg3S
	 wijy8OifigfpwqBPyb0824b2IoGu1zFaG8whmzi6iv1L6wMFVD0cBR0aRDY+bfW3ce
	 qhy4lREjFZqDQ==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id CAE75383DD4
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 11:31:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EiohEPkg";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id cf13so79263qtb.13
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 08:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=h+j4r9SS23/bnZ/O1CzNmqvMh+xkBmnEuN3ceCCxkjU=;
        b=EiohEPkg4tPIaegA/GHie+Mj83BAb+OIycMLd1y4ixcCtjNdjzorzkknWIbYNQBXyh
         vFk39yXGS4tlNULV3hhY/dK0REFM5NgBmQuLf4sCzbscDiJxznqDmJW1SqHIQoNzBUKB
         i/H7idnipdlj2CRWLPD7SqDi7li8/S0hwldbj7xhxjh8SHJm4KWJ6AFVwaC1ZOhvTwZZ
         PF6Cy6hIBO+pHxhSV+lzNIt6mS1iPMiNnGOHqtGALRQyG7arBvIv6Akx+JilBBBub9X7
         qmC6RG2iC9mrYHSCydzQSTyE+tfhJuIQ7U397L5/FTSOIqogE6v+Zmf3pm/z3W2/jvJx
         PESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=h+j4r9SS23/bnZ/O1CzNmqvMh+xkBmnEuN3ceCCxkjU=;
        b=tNENghPARhUcZoRq7XeZPw7hahgKI7mYV7KRegpa8taHC/Tm+4XgxxfBzH01h0pjLl
         bMRwuj55rIfow1Uok8EdFGs3QcCZ4GecvETrRmN1kBM/qhn6fAempMzRH9AMawOvYTUd
         RuA74vV/T87RN9K15r4aDxYDv/K2NEbrOYiYpZS3VMSkTW3iRdrdS0UTgkRiKjHc7rt6
         l083D1bOiLwN4CKZOaS2VzGITmucMMDYqQLSs8NBvc8YvKH/T1iTIXp4dQUC+oP+FV6b
         MI7bGPznzgCviTET5GuUhrKGMQ7ym4faFggVM9slF+M6T7zYv0cpNycMJT98mkzrEQtq
         9IJA==
X-Gm-Message-State: AJIora9vKXWkkDUO1R9sguiZru6O19AzKaI3GHyzcldNXjbpD0XmovQd
	/1O/87lP1keT6IuVDXqM3B8OXP9a8oM=
X-Google-Smtp-Source: AGRyM1v4X3JaGsIK3w/m8QvTP6jOHu3oLQI45IheT7lhEKIEjOft3L3InZ1cC0R7AK1iTnIQOL2Uog==
X-Received: by 2002:a05:6214:27e6:b0:470:7e0d:b65d with SMTP id jt6-20020a05621427e600b004707e0db65dmr7322614qvb.21.1657380679709;
        Sat, 09 Jul 2022 08:31:19 -0700 (PDT)
Received: from [192.168.2.222] ([76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id z6-20020ac87ca6000000b0031d3d0b2a04sm1612634qtv.9.2022.07.09.08.31.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 08:31:19 -0700 (PDT)
Message-ID: <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
Date: Sat, 9 Jul 2022 11:31:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
Message-ID-Hash: XK4TMNZPHTPRNAQ25WE5B5UDU2PHLV2F
X-Message-ID-Hash: XK4TMNZPHTPRNAQ25WE5B5UDU2PHLV2F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XK4TMNZPHTPRNAQ25WE5B5UDU2PHLV2F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0wOSAxMTowMiwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IENvcnJlY3Rpb24+
IFRoZXNlIGZ1bmN0aW9ucyB3b3JrIG9uIGludGVnZXJzLg0KPg0KPiBTbyB0aGV5IGdvIGFzOg0K
PiBpbnQxNiBkYXRhID0gaHRvYmUxNihsZTMydG9oKGludDMyIGRhdGEpKQ0KPiBPciB0aGUgYXNz
b2NpYXRlIGZ1bmN0aW9ucywNCj4gaHRvbmwsIGh0b25zDQo+DQo+IFNvIHlvdSBuZWVkIHRvIGFs
cmVhZHkgaGF2ZSBjb252ZXJ0ZWQgeW91ciBmbG9hdHMgdG8gaW50cy4uLg0KPiBJZiBpbiBkb3Vi
dCwgdGVzdCB0aGVtIGZpcnN0IG9uIGEgc2luZ2xlIGRhdGEuLi4NCj4gU29ycnkgYWJvdXQgdGhl
IGNvbmZ1c2lvbi4NCj4NCj4gTmlrb3MNCj4NCj4NCk15IHF1ZXN0aW9uIHdvdWxkIGJlLS13aHk/
DQoNClVIRCBhbmQgR251IFJhZGlvIGFscmVhZHkgZG8gdGhlc2UgY29udmVyc2lvbnMgZm9yIHlv
dS4NCg0KVGhlICpzaW5nbGUqIGNhc2Ugd2hlcmUgYmVpbmcgYWJsZSB0byBzZW5kIHNhbXBsZSBk
YXRhIGFzIGJpZy1lbmRpYW4gDQpTQzE2IHdpdGhvdXQgYW55IGludGVydmVuaW5nIGNvbnZlcnNp
b25zIGlzIGZyb20gYSBmaWxlLsKgwqAgQW55dGhpbmcgdGhhdCANCmludm9sdmVzIGNvbXB1dGF0
aW9uLXdpdGgtc2FtcGxlcw0KIMKgIG9uIHRoZSBob3N0IHJlcXVpcmVzLCBuZWNlc3NhcmlseSwg
dGhhdCB0aG9zZSBzYW1wbGVzIGJlIGluIGEgZm9ybWF0IA0KdW5kZXJzdG9vZCBieSB0aGUgQ1BV
IG9uIHRoZSBob3N0Lg0KDQpGdXJ0aGVyLCBpZiB0aGVyZSBhcmUgYm90dGxlbmVja3MsIEkgd291
bGQgd2FudCB0byBhYnNvbHV0ZWx5IGNvbmZpcm0gDQp0aGF0IHRoZSBtYWpvciBib3R0bGVuZWNr
IGluIHRoZSBVSEQgZHJpdmVyIGlzIGluIGRvaW5nIGNvbnZlcnNpb24gdG8gDQpiaWctZW5kaWFu
IHdpcmUgZm9ybWF0IGJlZm9yZQ0KIMKgIHZlbnR1cmluZyBkb3duIHRoZSByb2FkIG9mIG1ha2lu
ZyB0aGF0IGF2YWlsYWJsZSAiZGlyZWN0bHkiLsKgwqDCoMKgIEkgDQpoYXZlIGxvc3QgdHJhY2sg
b2YgdGhpcyB0aHJlYWQsIGJ1dCBteSByZWNvbGxlY3Rpb24gaXMgdGhhdCB0aGlzIGZpbGUgDQpv
cmlnaW5hdGVzIGluIGEgY2FwdHVyZSBmcm9tIGEgSGFja1JGDQogwqAgd2hvc2UgYWJzb2x1dGUt
bWF4aW11bSBzYW1wbGUtcmF0ZSBpcyAyMGU2U1BTLsKgwqAgVGhhdCdzIGEgcmF0ZSB0aGF0IA0K
aXMgKmVhc2lseSogaGFuZGxlZCBieSB0aGUgZXhpc3RpbmcgVUhEICJzdGFjayIgd2l0aG91dCBy
ZXNvcnRpbmcgdG8gDQp0aGlzIHR5cGUgb2Ygb3B0aW1pemF0aW9uLCBJTUhPLg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
