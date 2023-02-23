Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4AC6A02AD
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 07:11:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76676383D94
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 01:11:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677132693; bh=5cy0Fd97Qc0EYDnjgsehIy9PdIHcRUlrpvHWi4rw8gw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kFt2bd1JJcgbYCYXSYs1/7ktokcDzVCNRmz1eQ1I1OuFjZGDHLb1oXq0tUiay623f
	 YJMFrKofTZCjiM0q1BFsrohhXKqPVwEsKLouG44Z/gOKbtFVwePgIaNaQc7NGyjHKO
	 Q430dccmelyN7fj0yhYnTxr92HR5qpD1Dmen4W66Nk8c7j4qnwYDHTUl9sH6Ux6QUE
	 PvVrUWEehQtHLbAjgzXMywhyIfI8iBa6MGE7hRGjzy23ytIfW07+zDX8PEIo6ffQlk
	 ZGOfWC1O6OI4HNO+YrNoaeqTF4CsK7GXdkDk938r4BdarcTyuPjPVFrIstQyeF/gPw
	 YONpDvRQOaO2w==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F4B8383D94
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 01:11:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iXFSzGr0";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id h19so7150121qtk.7
        for <usrp-users@lists.ettus.com>; Wed, 22 Feb 2023 22:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EyEMdc4UYumZ3EQbixWNXAouPnfO7xb+dgeRpgP5ioI=;
        b=iXFSzGr0HQYqRXHq9sqiZdg5hVoqB1RgZnEALuHpnVprFLwFMS4/+S4fg4xvYZZ1dB
         J94iOlwJcvcrbefvka7ofkYVLIfvbeYZmNzv0M5beecMu/6ldNV97FivmkWprmqgO6YL
         bKpi4iqQBMvnijiilLESIBtZVTH4oSI6acGwub41N87nsqB27OhPmS8zNcF0VdQLGfzg
         +MnLBd8qRssls6REQxxBjEFMDJDHmD7ZTjRtSbYU+ILpXknnSvP5xujg/9zRp+O6BxZD
         f1OStqV67IOYCne7Xazps0dTQwOsW5UlnBSV4zTEu2fo5K9TddS9UVHM0d5XQSYcaFg2
         GU0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EyEMdc4UYumZ3EQbixWNXAouPnfO7xb+dgeRpgP5ioI=;
        b=CP22Ac9r3Pw7bfvdQoW7ExX01p7Suw1JcXE/yePur4uqYE4IALnS5Yb0zVLJ1XAcUn
         L6J08OrM5eFy6wKkcq+SOXqORGTBcThC7ItwlXMRajEkXnUvvBhHtfWe121DKXuVJ+pH
         /Za06Uau/LpKfgwyWpNHpDU7V+/vBWTmKcYRjy5R6Erv3Q11XAWNdeJrW/II4aneKbso
         6m7VKJKU6aBlvzpc0RC3jH1dS8zwx60YRyaqfTxGWZYNlfyvTdsVuhyZ1HspUWstv7f1
         dIJTLmxCfowVPW6OMaKpMaOHPgkIVRSKBvG+zjf9JBO9m/y2lA3+5XNIJgxAXGlCOoNw
         iGkg==
X-Gm-Message-State: AO0yUKVJ5DqpAhf+ppM64ceEGXdkyICbH4hOUc7Ajpq4jZ98aK5IIVur
	VdTqODmVobJYOygxExBrFCwMb5U7zOk=
X-Google-Smtp-Source: AK7set95OOUeTg+w5SUTlZZ639Ez83X4qvdbh3xbCGaMtrLax1V4LnUIiAQ813Z98oRf7TNWTKSVuw==
X-Received: by 2002:a05:622a:1114:b0:3a7:e625:14f with SMTP id e20-20020a05622a111400b003a7e625014fmr16800294qty.9.1677132687686;
        Wed, 22 Feb 2023 22:11:27 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id d20-20020ac85454000000b003a530a32f67sm5965982qtq.65.2023.02.22.22.11.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 22:11:27 -0800 (PST)
Message-ID: <5e289ae7-e5f1-f4dc-d5f9-c07dedd0a063@gmail.com>
Date: Thu, 23 Feb 2023 01:11:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BWMe9WEUqFt0F5ek40GaAZXxKAvTyVsq5MsADnQdB8Q@lists.ettus.com>
Message-ID-Hash: FLY4CSGNHRGPELE5YS6SHBPC2MXNGX6M
X-Message-ID-Hash: FLY4CSGNHRGPELE5YS6SHBPC2MXNGX6M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FLY4CSGNHRGPELE5YS6SHBPC2MXNGX6M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjMvMDIvMjAyMyAwMDo1NCwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSGVsbG8sDQo+DQo+IEkgY29ubmVjdGVkIDIgSG9ybiBhbnRlbm5hcyB0byBVU1JQcyBwb3J0
cyBhcyBUWCBhbmQgUlguIEkgbWFkZSB0aGUgDQo+IGRpYWdyYW0gb24gR05VIFJhZGlvLiBJIHRo
aW5rIGRpYWdyYW0gaXMgb2tleS4gQW5kIEkgbWVhc3VyZWQgdGhlIA0KPiBjb2F4aWFsIGNhYmxl
cyBpbiBWTkEuIFRoZXJlIGlzIG5vIHByb2JsZW0uDQo+DQo+IFdoZW4gSSByb3RhdGUgUlggYW50
ZW5uYSA0NSBkZWdyZWUgaW4gcm9sbCBheGlzLCBJIHNlZSAzIGRCIGRlY3JlYXNlIA0KPiBhbmQg
dGhpcyBpcyByaWdodC4NCj4NCj4gQnV0IHRoZSBwcm9ibGVtIGlzIHN0YXJ0aW5nIDE4MCBkZWdy
ZWUuIFdoZW4gSSByb3RhdGUgdGhlIFJYIGFudGVubmEgDQo+IDE4MCBkZWdyZWUsIEkgY2Fu4oCZ
dCBzZWUgdGhlIHNhbWUgdmFsdWUgYXMgYXQgMCBkZWdyZWUuIEl0IHNob3VsZCBiZSANCj4gdGhl
IHNhbWUgdmFsdWUgYXMgYXQgMCBkZWdyZWUuIEJ1dCB0aGVyZSBpcyAzLTRkQiBkaWZmZXJlbmNl
IGZvciANCj4gZXhhbXBsZSBUaGUgdmFsdWUgYXQgMCBkZWdyZWUgaXMgLTE3IGJ1dCBhdCAxODAg
ZGVncmVlIGxpa2UgLTIwLiBJIA0KPiBhbGlnbiB0aGUgYW50ZW5uYXMgd2l0aCBsYXNlciBwb2lu
dGVyLiBJIG1hZGUgdGhlIHNhbWUgbWVhc3VyZW1lbnQgDQo+IHdpdGggVk5BLCBWTkEgc2hvd3Mg
bWUgZXhhY3RseSB0aGUgc2FtZSB2YWx1ZXMgYXQgMCBhbmQgMTgwLiBCdXQgd2l0aCANCj4gU0RS
LCBJIHNlZSB0aGUgbWVhbmluZ2xlc3MgZGlmZmVyZW5jZS4NCj4NCj4gSSB0cmllZCBpdCBpbiBX
aW5kb3dzIGFuZCBMaW51eC4gTXkgdXNycCBpcyBVU1JQIEIyMDAuDQo+DQo+DQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCllvdXIg
U0RSIGhhcyBaRVJPIGlkZWEgd2hhdCB0aGUgb3JpZW50YXRpb24gb2YgeW91ciBhbnRlbm5hcyBp
cy4gSXQgaXMgDQpzaW1wbHkgc2VlaW5nIGluc3RhbnRhbmVvdXMgdm9sdGFnZXMgYXQgdGhlDQog
wqAgYW50ZW5uYSBpbnB1dCBwb3J0cy7CoMKgIFdoYXQgaXMgeW91ciBSWCBnYWluP8KgIFlvdXIg
VFggZ2Fpbj/CoCBIb3cgZmFyIA0KYXBhcnQgYXJlIHlvdXIgaG9ybiBhbnRlbm5hcz/CoCBXaGF0
IGZyZXF1ZW5jeQ0KIMKgIGFyZSB5b3Ugb3BlcmF0aW5nIGF0Pw0KDQpZb3UgbWF5IGJlIHNlZWlu
ZyBhIGxpdHRsZSBiaXQgb2Ygbm9uLWxpbmVhciBvcGVyYXRpb24gZWl0aGVyIGR1ZSB0byANCm92
ZXJsb2FkIG9uIHRoZSBSWCBwYXRoLCBvciBiZWNhdXNlIHlvdXIgZ2FpbiBzZXR0aW5nDQogwqAg
aXMgdG9vIGxvdy4NCg0KQSBiZXR0ZXIgdGVzdCB0byBjb252aW5jZSB5b3Vyc2VsZiB0aGF0IHRo
ZSBVU1JQIGlzICJzYW5lIiB3aXRoIHJlc3BlY3QgDQp0byBwb3dlci1sZXZlbCBtZWFzdXJlbWVu
dCBpcyB0byB1c2UgYSBjYWxpYnJhdGVkDQogwqAgbm9pc2Ugc291cmNlIGFuZCBhIHN0ZXAgYXR0
ZW51YXRvci0tYmVjYXVzZSB0aGF0IGVsaW1pbmF0ZXMgDQp1bmV4cGVjdGVkIGludGVyYWN0aW9u
cyBiZXR3ZWVuIHRoZSBhbnRlbm5hcyBhbmQgdGhlaXINCiDCoCBlbnZpcm9ubWVudC4NCg0KQWdh
aW4sIHRoZSBVU1JQIGlzIHNpbXBseSByZXBvcnRpbmcgd2hhdCBpdCBzZWVzIGF0IGl0cyBhbnRl
bm5hIGlucHV0cy7CoCANCkl0IGhhcyBubyBpZGVhIHdoYXQgeW91ciBhbnRlbm5hIG9yaWVudGF0
aW9ucyBhcmUsIG5vcg0KIMKgIGFueSBpbmZsdWVuY2Ugb3ZlciB0aGVpciBiZWhhdmlvciwgZXhj
ZXB0IHBlcmhhcHMgdGhhdCB0aGUgaW1wZWRhbmNlIA0KbWF0Y2ggbWF5IGJlIGJldHRlci93b3Jz
ZSB0aGFuIHlvdXIgVk5BLsKgIFlvdQ0KIMKgIGNvdWxkIGltcHJvdmUgdGhpcyBhIGJpdCBieSBp
bnNlcnRpbmcgYW4gYXR0ZW51YXRvciAocGVyaGFwcyAzZEIpIA0KaW50byB0aGUgVFggYW5kIFJY
IHBhdGhzLsKgIEluIGZhY3QsIHlvdXIgVk5BIG1heSBhbHJlYWR5DQogwqAgYmUgZG9pbmcgdGhp
cy4NCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
