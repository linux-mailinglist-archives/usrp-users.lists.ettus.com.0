Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA655992DB0
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 15:48:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E16338584D
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 09:48:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728308912; bh=f7rUitn1c3gKuYlr/XsF0Ek0lWYu8RCZuZrHuznsfI4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=s9E18tvghhqRPllFGGgbSLwn4f/6kSImqirfch0/t4qqWVUHAQy5AzII4WHKCiPPB
	 vHBDBsuRluqSmSWLqBgc2JlBmkj4zDm1Kq9RifBN2FD+ICqif5aqZDEUOJQ2UPGTFS
	 MfW25ER7Nka8m5+QgZ++0g0Zz17cDEkg1vu1Y1YDOJTjF+qxRtWOVcW5cXNXc4U62F
	 YSM08jt7g0ynWD+ARUwg1IoEuuus634oN0mbl67+eC/Okh1wmx7OkGFTz7Ml1bcHvh
	 3WD0Pa6627LWtBHUlidc/mekRxVdTtPUdMvgPaBms6hYtapVqrdE2VbkT4IAABDn9k
	 oiiQ3UKEW6vWw==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 63AB738545D
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 09:47:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gmecY9tg";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-458366791aaso20017741cf.1
        for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2024 06:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728308840; x=1728913640; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uMhFNv+coNocg9SWToI93e7m1HeSEQBd3SQpsTFY3LE=;
        b=gmecY9tgpwOvNV2yPi3V2mnt6qoDNIYjxls0s98YXYzgMOaDAqv2uhxaz1O4i8kuXd
         fZpp/2Hv9Dv3KENxxRLXVrHIuzoBhBBYvym1xPLKdWiXXA3OwUJUcK5H/bi8HP1aF53f
         GPjkJQU1jpIaOz7jxkK0DrdQErJceQq4yviHxcGuNRgNSZGaxFG4z4S2ZhZYjV1CTVVA
         zKzg9xHv/gjMWJOVcSStl2/Zncm5xse2fDIdIQgXK+eJIIfkv6XL9VeAQMMk82NzrdD9
         CDBHnSm6xQC37l8OZOrSHYeF8ZYQY71xlLPfxJuhiw90SvlS/v6T+B4bOXY43xbEPc0/
         ZPIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728308840; x=1728913640;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uMhFNv+coNocg9SWToI93e7m1HeSEQBd3SQpsTFY3LE=;
        b=VBXgPY/CHoLzv0OLcX7DoCqNnxhegWPJzXUn5g+KIFjLXHxDMVrLoTHFbfP514XD/E
         dRo9dRwmEq1SpH5W+VSP4OfRVBwREyTR28WtlJloGSVaTCYBL9Qo+9OKPaJIVry31MQX
         PMbEs60IvuMjJ0R6miX9ZC/9THbYIzKr3HD6RNg+HMxNmYCdua053HdLcaCeZKlCiAMx
         OEXGNtT5OUB3PLEeK4yG1bzHCenajA+Gr+gq66AddoXKbkLK6y1PlsHLmEeBN+2dxGQL
         c98MgV+K7M8ptCKHRG+i0V3q1pkYyjp9uwPNIBrFLhSk8ZgAjCgAaTAkp7zYrL2vc30C
         AD8w==
X-Gm-Message-State: AOJu0YwFFwmhNbkaC5GO+hp4OTxXaf8fkvY/7RbPZKi+mwTek9rOkuxd
	W4fPE9BToQkXpvVjpysrYBJw+gGX8cq4ae/eiWRxVTIG3ubfBHdpks1mxg==
X-Google-Smtp-Source: AGHT+IG8qJL0blCtORQcDMOdkEY9csxp7jzvWIahwdtv26CnGibQiwR9HL0NfAmr6IiQ1XcnMGavsw==
X-Received: by 2002:ac8:58d0:0:b0:45d:9357:1cca with SMTP id d75a77b69052e-45d9ba46f56mr179529481cf.14.1728308840362;
        Mon, 07 Oct 2024 06:47:20 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45da74b1ec5sm26480601cf.12.2024.10.07.06.47.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 06:47:20 -0700 (PDT)
Message-ID: <33837a06-b432-4a0f-85cb-0151411bc3c0@gmail.com>
Date: Mon, 7 Oct 2024 09:47:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAG16vQWrq0sFEs=C6jBSnm9uCdC=cmtWAQ-LV=1iiXkhYqGXLQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAG16vQWrq0sFEs=C6jBSnm9uCdC=cmtWAQ-LV=1iiXkhYqGXLQ@mail.gmail.com>
Message-ID-Hash: 4336JIUG47ORRMYVBSGL3TPF2WTFZCLX
X-Message-ID-Hash: 4336JIUG47ORRMYVBSGL3TPF2WTFZCLX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Antena selection with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4336JIUG47ORRMYVBSGL3TPF2WTFZCLX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMTAvMjAyNCAwODowNCwgTWFyaWEgTXXDsW96IHdyb3RlOg0KPiBIaSBhbGwsDQo+DQo+
IFdlIGFyZSB1c2luZyBVSEQgNC4wIHdpdGggUkZOb0MgYW5kIEdOVVJhZGlvIGluIGFuIEUzMjAg
ZGV2aWNlLg0KPg0KPiBXZSd2ZSBhbHdheXMgdXNlZCB0aGUgUkYtQSBhbnRlbm5hIGNoYW5uZWwg
d2l0aG91dCBwcm9ibGVtcywgYnV0IG5vdyANCj4gd2UgYXJlIHRyeWluZyB0byB1c2UgdGhlIFJG
LUIgY2hhbm5lbCBhbmQgYXJlIHVuc3VyZSBob3cgdG8gY29uZmlndXJlIA0KPiB0aGUgcmZub2Mg
cmFkaW8gYmxvY2sgdG8gZG8gdGhhdC4NCj4gV2UgaGF2ZSBhbHNvIHRyaWVkIHRvIHB1dCBib3Ro
IGNoYW5uZWxzIHJlY2VpdmluZyBhbmQgdHJhbnNtaXR0aW5nIGJ1dCANCj4gb25seSB0aGUgUkYt
QSBMRURzIGFyZSBvbi4gV2UgZG8gdGhlIHNhbWUgd2l0aCB0aGUgVUhEIHNvdXJjZSBibG9jaywg
DQo+IGFuZCBpdCB3b3JrcyB0aGF0IHdheS4NCj4gSG93IGNhbiB3ZSBjb25maWd1cmUgdGhlIFJG
Tm9DIHJhZGlvIGJsb2NrIHNlY29uZCBjaGFubmVsPw0KPg0KPiBLaW5kIFJlZ2FyZHMsDQo+DQo+
IE1hcmlhDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCklmIHlvdSBsb29rIGF0IHRoZSByZm5vY19yeF90b19maWxlLmNw
cCBleGFtcGxlLCBpdCBoYXMgdHdvIHBhcmFtZXRlcnMgDQpvbiB0aGUgY29tbWFuZCBsaW5lOg0K
DQoicmFkaW8taWQiDQoNCmFuZCAicmFkaW8tY2hhbiINCg0KVGhhdCBjb3JyZXNwb25kIHRvIHRo
ZSBwYXJhbWV0ZXJzIHlvdSBuZWVkIHdoZW4gdXNpbmcgUkZOb0MNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
