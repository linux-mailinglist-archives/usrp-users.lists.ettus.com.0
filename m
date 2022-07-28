Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA8F584635
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 21:32:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 811D9383FA8
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 15:32:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659036734; bh=yy/yg7BtqIWb/gTbOkIU6OtGUfbMxIZd8UV06lpsZRg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kBw6M8LBPwMvYuN60RZkJceHmB78J0A29mvILOAuwsGW/V7dasPcG0OiIjYaArY5U
	 n+ch6yRQYID2GvlEEAHI9kBnolBfSytkiF7tP9fuPlcp39/5+DdaJr3VEX8+6BvjbW
	 8RHWKBE2diYp4wCT1Fn5d63QXPnzJNFsrXBeehry+HNHzVhDf41kXoOcoN1aRDRc7Y
	 OKrEwgGBqfY9DpJ7u+aXE+rUJxrqsuUcGeDR2849sp4ioRfCi6nl5K33d24oUaD7/E
	 xY9bvTdu5QiqFZWZSpG/TN61p9J0/TvPU3k0vdJoOUgK83uxyazmEfqM81+nevBegH
	 SRqYdtLQAEUMQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B1A2383E14
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 15:29:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Vnp6XYDq";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id c24so2189129qkm.4
        for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 12:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=vc/DmuHmPmFigkowWqdwkXbC8NVJLXg7nxw951+SXPs=;
        b=Vnp6XYDqTuiJpOrDUTlMwedR09NYK8Wgvadb5TpVd2HUhyqpoMjHbpALPUNSVTG5y8
         gbyFPqkIKHG2EV3vsXcd5rQXL/rpqwI360KJih6f35gZC4fJ1M3kLOb9m/uLOJakBW2V
         HiWaifsesrYUDvflGP3/xUSWypmELwAEk2gqPi+FKDcuJnES6xHXlubmoVTzweh6iUYQ
         sBscqD0dVpMRYs1UxLhaeB4/z2pKzYGqNvhR0y8Asp/UsdvdCEracDwr4fVQ6DPzbMgZ
         fSXYOsC2AK/mSmRe9K4dDpUvUN/861la2JdS/xxBhF77QsukUUmvP/S36jAGVTyz6EWC
         KKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=vc/DmuHmPmFigkowWqdwkXbC8NVJLXg7nxw951+SXPs=;
        b=eDImhfUmLO/yB9LaMHZu81if4XKbAQgk5lYyHWDw96WQNBGyzak3onBfXRcKxOLDAv
         A4mMMNtmKCNvJmV08soKkK/2DEdF2tIeW5fHt7JnAWagtk0J1drafNDkahkSnZFXMJQz
         3YNxVPrdRDZIh+EvTJNvvs1FOTn8zhiB5fun82YSvLe5m9EaPGcxh0jJ3+4M9AtVzYuu
         i2dHE2J81oSFTO53Q8U8roUtSJQxPV2pVmFrLvhvkk4kHPVf7WrMwsQp1sD63LILIkD+
         3/jmbZt0w9oDgq+xW+tIoJz5znjF/iMW+7VfOdHPZYFnpML8lf7EV6kHu/RZWw7yvp4L
         yjSg==
X-Gm-Message-State: AJIora84Qh+7yW3uVxuVw+sjOaT4d1Zqbj+qB3Ha5pHbqh2il7NoAnAQ
	Beigthyy4kg/uAZVaY0IYC3h0UfL3z4=
X-Google-Smtp-Source: AGRyM1s6jJKkHIF77HN/+OPK6T51A5R7v6DQ0iGJwoKngHFmIBqRP0gPeeRCyyXB4ecYoqRIV3FjvA==
X-Received: by 2002:a05:620a:25d4:b0:6a8:d56c:5c75 with SMTP id y20-20020a05620a25d400b006a8d56c5c75mr303984qko.81.1659036588974;
        Thu, 28 Jul 2022 12:29:48 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bb35-20020a05622a1b2300b0031f286f868dsm863057qtb.92.2022.07.28.12.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 12:29:48 -0700 (PDT)
Message-ID: <7ad575e5-eda0-d55b-b942-ad39b5b0c018@gmail.com>
Date: Thu, 28 Jul 2022 15:29:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>,
 usrp-users@lists.ettus.com
References: <dcdd176b-83bc-e4e4-0108-c0764738e0fb@gmail.com>
 <c9dd3975-7fc0-13f3-8cea-6591bc6ad687@gmail.com>
 <4fe95de3-ea01-0c59-04ce-a2d635f5dd2f@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4fe95de3-ea01-0c59-04ce-a2d635f5dd2f@gmail.com>
Message-ID-Hash: L7FUOA4MKFETD5EDJCJDJITANJWRP6SA
X-Message-ID-Hash: L7FUOA4MKFETD5EDJCJDJITANJWRP6SA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [WARNING] [MPM.RPCServer] A timeout event occured!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L7FUOA4MKFETD5EDJCJDJITANJWRP6SA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0yOCAxMDoxNywgR2l1c2VwcGUgU2FudGFyb21pdGEgd3JvdGU6DQo+IFllcywg
YnV0IHRoZSBsaW5rIHN0aWxsIGRvZXNuJ3Qgd29yaywgYW5kIEkgdGhpbmsgaXQncyBhIFVTUlAg
cHJvYmxlbS4NCj4NCj4gVG8gY2hlY2sgd2hldGhlciB0aGUgVVNSUCBpcyB3b3JraW5nLCBJIHRo
b3VnaHQgSSB3b3VsZCBkbyB0aGlzOg0KPg0KPiBOMzEwOiAuL3R4X3dhdmVmb3JtcyAtLWZyZXEg
OTE1ZTYgLS1yYXRlIDE1LjM2ZTYgLS1nYWluIDQwIC0td2F2ZS10eXBlIA0KPiBSQU1QIC0td2F2
ZS1mcmVxIDVlNg0KPg0KPiBCMjEwOiBzdWRvIC4vcnhfYXNjaWlfYXJ0X2RmdCAtLWZyZXEgOThl
NiAtLXJhdGUgMTUuMzZlNiAtLWdhaW4gMjAgDQo+IC0tYncgNWU2IC0tcmVmLWx2bCAtNjAgLS1h
cmdzICJzZXJpYWw9MzE3MjJDRiINCllvdXIgUlgtc2lkZSBnYWluIGlzIHF1aXRlIGxvdywgYWxz
byB1c2UgYSB3YXZlLXR5cGUgbGlrZSBDT1Mgb3IgU0lODQoNCkFsc28sIHlvdSdyZSBzcGVjaWZ5
aW5nIGEgdHVuZWQgZnJlcXVlbmN5IG9uIHRoZSBSWCBzaWRlIG9mIDk4TUh6LCANCnJhdGhlciB0
aGFuIDkxNU1Iei4NCg0KDQo+DQo+IEkgZG9uJ3Qgc2VlIGFueXRoaW5nIGluIHRoZSBzcGVjdHJ1
bS4NCj4NCj4gSWwgMjcvNy8yMiAxNDozOSwgTWFyY3VzIEQuIExlZWNoIGhhIHNjcml0dG86DQo+
PiBPbiAyMDIyLTA3LTI2IDE5OjM1LCBHaXVzZXBwZSBTYW50YXJvbWl0YSB3cm90ZToNCj4+PiBE
ZWFyIGNvbW11bml0eSwNCj4+Pg0KPj4+IEkgYW0gdHJ5aW5nIHRvIHVzZSBPcGVuQWlySW50ZXJm
YWNlIHdpdGggYW4gTjMxMCBhcyBnTkIuIEkgYW0gDQo+Pj4gd3JpdGluZyBvbiB0aGlzIG1haWwg
bGlzdCBiZWNhdXNlIEkgdGhpbmsgbXkgcHJvYmxlbSBpcyBjYXVzZWQgYnkgDQo+Pj4gdGhlIGNv
bmZpZ3VyYXRpb24gb2YgdGhlIE4zMTAuDQo+Pj4NCj4+PiBXaGVuIEkgcnVuIHRoZSBOMzEwIEkg
Z2V0IHZhcmlhYmxlIGVycm9ycy4gV2hlbiBJIHJ1biBpdCBmb3IgdGhlIA0KPj4+IGZpcnN0IHRp
bWUgYWZ0ZXIgYSBsb25nIHRpbWUgSSBnZXQgbm8gZXJyb3JzLg0KPj4+DQo+Pj4gQnV0IHdoZW4g
SSBydW4gaXQgYWZ0ZXIgYSBzaG9ydCB0aW1lIEkgZ2V0IHRoZXNlIHdhcm5pbmdzIGFuZCBlcnJv
cnMgDQo+Pj4gKG5vdCBhbHdheXMgYWxsIG9mIHRoZW0pOg0KPj4+DQo+Pj4gW1dBUk5JTkddIFtN
UE0uUlBDU2VydmVyXSBTb21lb25lIHRyaWVkIHRvIGNsYWltIHRoaXMgZGV2aWNlIGFnYWluIA0K
Pj4+IChGcm9tOiAxOTIuMTY4LjIwLjEpDQo+Pj4gW1dBUk5JTkddIFtNUE0uUlBDU2VydmVyXSBB
IHRpbWVvdXQgZXZlbnQgb2NjdXJlZCENCj4+PiBbV0FSTklOR10gW1JGTk9DOjpHUkFQSF0gT25l
IG9yIG1vcmUgYmxvY2tzIHRpbWVkIG91dCBkdXJpbmcgZmx1c2ghDQo+Pj4NCj4+PiB0ZXJtaW5h
dGUgY2FsbGVkIGFmdGVyIHRocm93aW5nIGFuIGluc3RhbmNlIG9mICd1aGQ6OnJ1bnRpbWVfZXJy
b3InDQo+Pj4gwqAgd2hhdCgpOsKgIFJ1bnRpbWVFcnJvcjogcnggeHBvcnQgdGltZWQgb3V0IGdl
dHRpbmcgYSByZXNwb25zZSBmcm9tIA0KPj4+IG1nbXRfcG9ydGFsDQo+Pj4gQWJvcnRlZA0KPj4+
DQo+Pj4gQW5kIHRoZXNlIGFyZSBqdXN0IGEgZmV3IGV4YW1wbGVzLg0KPj4+DQo+Pj4gSSBjb3Vs
ZCB0aGluayBvZiBpZ25vcmluZyB0aGVtLCB1c2luZyB0aGUgTjMxMCBvbmx5IGEgZmV3IG1pbnV0
ZXMgDQo+Pj4gYWZ0ZXIgdGhlIHByZXZpb3VzIHVzZS4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUg
ZGV2aWNlIGRvZXMgbm90IHNlZW0gDQo+Pj4gdG8gdHJhbnNtaXQgYW55dGhpbmcgb3ZlciB0aGUg
YWlyLCBldmVuIG9uIHRoZSBmaXJzdCB0cnkuIEkgc2F5IHRoaXMgDQo+Pj4gYmVjYXVzZSB1c2lu
ZyB0aGUgc2FtZSBjb25maWd1cmF0aW9uIGZpbGUgdGhhdCBJIHVzZSB3aXRoIGEgQjIxMCB0aGUg
DQo+Pj4gZ05CIGRvZXMgbm90IHdvcmssIHdoaWxlIHdpdGggdGhlIEIyMTAgaXQgd29ya3MgYW5k
IEkgY2FuIGNvbm5lY3QgDQo+Pj4gdGhlIHNtYXRocGhvbmUuDQo+Pj4NCj4+PiBJIGF0dGFjaCB0
aGUgbG9nIGZpbGUgb2YgT3BlckFpckludGVyZmFjZS4NCj4+Pg0KPj4+IEFsc28sIEkgZnJlcXVl
bnRseSBnZXQgdGhlIGNsYXNzaWMgIkwiIGluZGljYXRpbmcgb3ZlcmZsb3cgYWZ0ZXIgDQo+Pj4g
YWJvdXQgdGVuIHNlY29uZHMuDQo+Pj4NCj4+PiBJIGhhdmUgc29sdmVkIGEgc2ltaWxhciBwcm9i
bGVtIGJlZm9yZSAoSSByZXBvcnQgYSBwcmV2aW91cyBtYWlsKToNCj4+PiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0gDQo+Pj4NCj4+PiBJIGluc3RhbGxlZCB0aGUgVUhEIDQuMSB2ZXJzaW9uIGFuZCBm
b2xsb3dlZCB0aGlzIHR1dG9yaWFsOiANCj4+PiBodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX04z
MDAvTjMxMC9OMzIwL04zMjFfR2V0dGluZ19TdGFydGVkX0d1aWRlIA0KPj4+IGZvciB1cGRhdGlu
ZyB0aGUgTGludXggRmlsZSBTeXN0ZW0gYW5kIHVwZGF0aW5nIHRoZSBGUEdBIEltYWdlLg0KPj4+
IFdoZW4gSSB0cnkgYSBzaW1wbGUgZXhhbXBsZSBmaWxlOg0KPj4+IC4vcnhfYXNjaWlfYXJ0X2Rm
dCAtLWZyZXEgOThlNiAtLXJhdGUgNWU2IC0tZ2FpbiAyMCAtLWJ3IDVlNiANCj4+PiAtLXJlZi1s
dmwgLTMwDQo+Pj4gSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvcjoNCj4+PiBbV0FSTklOR10gWzAv
UmFkaW8jMF0gc2V0X3J4X2JhbmR3aWR0aCB0YWtlIG5vIGVmZmVjdCBvbiBBRDkzNzEuIA0KPj4+
IERlZmF1bHQgYW5hbG9nIGJhbmR3aWR0aCBpcyAxMDBNSHoNCj4+PiBJIGNhbm5vdCBmaW5kIGFu
eSB1c2VmdWwgaW5mb3JtYXRpb24gb25saW5lLCBhcGFydCBmcm9tIHRoaXMgDQo+Pj4gZGlzY3Vz
c2lvbjogDQo+Pj4gaHR0cHM6Ly93d3cubWFpbC1hcmNoaXZlLmNvbS91c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbS9tc2cwNTczNS5odG1sIA0KPj4+IHdoaWNoIGRpZCBub3QgaGVscCBtZS4NCj4+
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gDQo+Pj4NCj4+Pg0KPj4+IEFsdGhvdWdoIGluIHRoZSBm
b3J1bSBpdCB3YXMgdG9sZCB0byBtZSB0aGF0IHRoaXMgd2FzIGp1c3QgYSANCj4+PiB3YXJuaW5n
LCBJIGZpeGVkIGl0IGJ5IHVwZ3JhZGluZyB0aGUgdmVyc2lvbiBvZiBVSEQgdG8gNC4zLg0KPj4+
DQo+Pj4gQWxsIHRoaXMgc3VnZ2VzdHMgdG8gbWUgdGhhdCB0aGVyZSBpcyBzb21ldGhpbmcgbWVz
c2VkIHVwIGluIHRoZSANCj4+PiBpbml0aWFsIHNldHVwLg0KPj4+DQo+Pj4gRG9lcyBhbnlvbmUg
aGF2ZSBhbnkgaWRlYXMgYW5kIGNhbiBoZWxwIG1lPw0KPj4+DQo+PiBXaGVuIGFuIGFwcGxpY2F0
aW9uIHRlcm1pbmF0ZXMgYWJub3JtYWxseSwgdGhlIE4zMTAgZG9lc24ndCAia25vdyIgDQo+PiB0
aGF0IHRoZSBhcHBsaWNhdGlvbiBoYXMgImdvbmUgYXdheSIsIGFuZCB0YWtlcyBpdCBhIHdoaWxl
IHRvIG5vdGljZSwgDQo+PiBhbmQgcmVzZXQgaXRzIGludGVybmFsIHN0YXRlLg0KPj4gwqDCoCBN
YW55IG5ldHdvcmstYmFzZWQgYXBwbGljYXRpb25zIHRoYXQgdXNlIGNvbm5lY3Rpb25sZXNzIHBy
b3RvY29scyANCj4+IGxpa2UgVURQIGhhdmUgdGhlIHNhbWUgaXNzdWUsIGV2ZW4gb3V0c2lkZSBv
ZiB0aGUgU0RSIHVuaXZlcnNlLg0KPj4NCj4+IFRoZSBiYW5kd2lkdGggd2FybmluZyBpcyBqdXN0
IGEgd2FybmluZy7CoMKgIEl0IHdpbGwgaGF2ZSBsaXR0bGUgdG8gbm8gDQo+PiBlZmZlY3Qgb24g
eW91ciBhcHBsaWNhdGlvbi7CoCBUaGlzIGhhcyBiZWVuIGV4cGxhaW5lZCBpbiBwcmV2aW91cyBw
b3N0cy4NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
