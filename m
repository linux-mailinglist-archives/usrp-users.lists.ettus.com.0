Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 166B0705BFD
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 02:35:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 329BF384C0C
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 20:35:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684283756; bh=Howu2HIkyU4DcchmpguWgIMb/Y1aE3pE5sCpAMH6PLU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N+3anUHiyyvvMywe894yNne5Kpdw3eKAaVux6BtCUe+HUT46zPRTbq0SfKH51a6Fd
	 j5x5D5rtR+ufl+xxVveNGp/eGL08t3HBsUVjP5nrjquGh1ZsL4OnRbO12trZQ6Xv5G
	 2BffbgOsNqYlaktVgE+N7Hdh7/tsPNEfzIMO+1UNnG6vcD8JMON2CJ5DCFR5BtdGoH
	 2Z/1YygIEL+Lry7O6Eh8mjAiaf1aU9VTcBNvQMogA2dzXO/mEFhJ67nS8HoTsur/A8
	 d4LeYe653DJircQtjihKcWGvemYo4QQx/JzjRg25OsIevWWUPs0EBBX/1j3KhQrNL8
	 4BRFchEibjOhg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 30AC0384B70
	for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 20:34:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NqrijqKD";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-3f389c21fe8so1871181cf.3
        for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 17:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684283696; x=1686875696;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HJCSD/Xjw4GQ3HOXOGQgACZCCgnDk1UHX8m9joA9vmM=;
        b=NqrijqKDY1dcQ8yRNbwGWqAHCQRBC6pIDfKRnQmhxuviqDOwIt7myJ3MgFidWTvibr
         SAZSZ3vuOrhXD9tAwQ/PXjvL9PqUguBJWgSxJYyV1cT2RMwXam2uumWQSmri0dui3b2n
         KYygS6xXABGFAwBINlGmhKecNAyZ/xGgsPgYY+atmK+SLxhkORExTv0VHX3rDo1RXeZQ
         AICYnWu3Bgr8zzhM/giOZSdy8duUREHQ5vHP9BJlooXk9KwytN1vWfzFYR4pcZfJRQzl
         7gmB2SCnjzw7r3vRxGEvz1Ml7ot4lt8FyVFnvnRBoa8S9Hd4MtK3r8RTYHxcRd5AP+M+
         0Z2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684283696; x=1686875696;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HJCSD/Xjw4GQ3HOXOGQgACZCCgnDk1UHX8m9joA9vmM=;
        b=bABsy0wsK4KRvlvzQ82fJGC7OTwBcS8jBx95Nc4S4sCqZNpOIRVpNJB8pndurqIGGl
         u+TXKZvb/nmbeijPT+XRII5sByug1Mb4VFKXwXf5reO/a+JkCSxY2MTolbNC/WjJFncn
         am1eTpjEG1jsHzz2HkQqeGHXze7wW6e9nEr3A52yys8yNOf394V2C5M1zy4Ka4HmUdyT
         gHLTSVjo3Q/n1coA8Z6wcf5EwL/yPAJyOotCUnvWvhu+XtrvemK5i32X4DV/s9RQZdbQ
         4My2w4GWZOsjQRfD28iMqtgdBd5MXBIo9/Q3EReTWY4OC50+1NEAZVeXY5QHjGEUNwQ1
         DYKw==
X-Gm-Message-State: AC+VfDwZWdl91p0neVl2vXlT/+bcA5YnJRWV4BpUBGRNB+GlRKSEemVS
	8CWc0Y28rRPYqNsfRYegAV6T34nksF4=
X-Google-Smtp-Source: ACHHUZ6/UWaAqq7UHTx8pUQAIfSUNu7WMhnD0dflvVJR1qECIdH8SvuRyTu+YFMk18px9Se+i53rBQ==
X-Received: by 2002:a05:622a:594:b0:3f5:6af9:d535 with SMTP id c20-20020a05622a059400b003f56af9d535mr2399319qtb.43.1684283696383;
        Tue, 16 May 2023 17:34:56 -0700 (PDT)
Received: from [192.168.2.149] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id g5-20020a37e205000000b0074df20fb43dsm233770qki.97.2023.05.16.17.34.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 17:34:55 -0700 (PDT)
Message-ID: <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com>
Date: Tue, 16 May 2023 20:34:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
Message-ID-Hash: YF6YCMRB3L2N2VECOBRY7A5DS4XG3VSE
X-Message-ID-Hash: YF6YCMRB3L2N2VECOBRY7A5DS4XG3VSE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YF6YCMRB3L2N2VECOBRY7A5DS4XG3VSE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMDUvMjAyMyAyMDozMSwgTWljaGFlbCBUb3Vzc2FpbnQgd3JvdGU6DQo+IEhpLA0KPg0K
PiBJIGFtIHRlc3RpbmcgdGhlIExPIHN5bmNoaW5nIG9uIGEgc2luZ2xlIE4zMjEgdXNpbmcgdGhl
IDIgVHggY2hhbm5lbHMgDQo+IG9uIHRoZSBOMzIxLg0KPg0KPiBJIGhhdmUgZm9sbG93ZWQgdGhl
IExPIHNldHVwIHN0ZXBzIGZyb20gdGhlIGtub3dsZWRnZSBiYXNlLCANCj4gaHR0cHM6Ly9rYi5l
dHR1cy5jb20vVVNSUF9OMzIwL04zMjFfTE9fRGlzdHJpYnV0aW9uLCB0byBkaXN0cmlidXRlIHRo
ZSANCj4gTE8uIChTYW1wbGUgUHl0aG9uIGNvZGUgdXNlZCBmb3Igc2V0dXAgYmVsb3cpDQo+DQo+
IEkgYW0gdXNpbmcgc2VwYXJhdGUgc3RyZWFtZXJzIGZvciBlYWNoIFR4IGNoYW5uZWwgYW5kIG5v
dGljaW5nIGEgZGVsYXkgDQo+IGJldHdlZW4gdGhlIDIgY2hhbm5lbHMgZXhlY3V0aW5nLg0KWWVh
aCwgdXNpbmcgc2VwYXJhdGUgc3RyZWFtZXJzLCB0aGUgY29kZSBkb2Vzbid0IGF0dGVtcHQgc3lu
Y2hyb25pemF0aW9uIA0KYWNyb3NzIHR3byBzdHJlYW1lcnMuwqAgWW91J2xsIG5lZWQgYSBzaW5n
bGUNCiDCoCB0d28tY2hhbm5lbCBzdHJlYW1lci0tdGhhdCdzIHRoZSAic3luY2hyb25pemF0aW9u
IHBhcmFkaWdtIiB0aGF0IGhhcyANCmJlZW4gaW4gVUhEIGZvciBvdmVyIGEgZGVjYWRlLi4uDQoN
Cj4NCj4gVGhlIFR4IGNoYW5uZWxzIGRvIG5vdCBhcHBlYXIgdG8gYmUgc3luY2hyb25pemVkLCB3
ZSdyZSBtZWFzdXJpbmcgDQo+IGFueXdoZXJlIGZyb20gMC41bnMgdG8gNG5zIG9mIGRlbGF5IGFj
cm9zcyB0aGUgY2hhbm5lbHMuDQo+DQo+IDEpIElzIHRoZXJlIGEgcmVjb21tZW5kZWQgcHJvY2Vz
cyBmb3Igc3luY2hyb25pemluZyAyIFR4IG91dHB1dCANCj4gY2hhbm5lbHMgYW5kIHRoZSBvdXRw
dXQgTE9zIG9uIHRoZSBOMzIxPw0KPiDCoCDCoCBhKSBXb3VsZCB1c2luZyBhIHNpbmdsZSBzdHJl
YW1lciBmb3IgYm90aCBUeCBjaGFubmVscyByZWR1Y2UgdGhlIA0KPiBleGVjdXRpb24gZGVsYXk/
DQo+DQo+IFRoYW5rcywNCj4NCj4gTWljaGFlbA0KPg0KPg0KPg0KPiAiIiIgU2FtcGxlIFB5dGhv
biBDb2RlIFVzZWQgZm9yIExPIFNldHVwICIiIg0KPg0KPiBpbXBvcnQgYXJncGFyc2UNCj4gaW1w
b3J0IGxvZ2dpbmcNCj4gaW1wb3J0IHN5cw0KPg0KPiBzeXMucGF0aC5hcHBlbmQoJy91c3IvbGli
L3B5dGhvbjMvZGlzdC1wYWNrYWdlcy8nKQ0KPg0KPiBpbXBvcnQgdWhkDQo+DQo+IGRlZiBtYWlu
KCk6DQo+IMKgIMKgIHBhcnNlciA9IGFyZ3BhcnNlLkFyZ3VtZW50UGFyc2VyKCkNCj4gwqAgwqAg
cGFyc2VyLmFkZF9hcmd1bWVudCgiLWEiLCAiLS1hcmdzIiwgZGVmYXVsdD0ibmFtZT1TRFIxIiwg
dHlwZT1zdHIpDQo+DQo+IMKgIMKgIGFyZ3MgPSBwYXJzZXIucGFyc2VfYXJncygpDQo+DQo+IMKg
IMKgIHVzcnAgPSB1aGQudXNycC5NdWx0aVVTUlAoYXJncy5hcmdzKQ0KPg0KPiDCoCDCoCB1c3Jw
LnNldF90eF9sb19zb3VyY2UoImV4dGVybmFsIiwgImxvMSIsIDApDQo+IMKgIMKgIHVzcnAuc2V0
X3R4X2xvX3NvdXJjZSgiZXh0ZXJuYWwiLCAibG8xIiwgMSkNCj4gwqAgwqAgdXNycC5zZXRfdHhf
bG9fZXhwb3J0X2VuYWJsZWQoVHJ1ZSwgImxvMSIsIDApDQo+DQo+IMKgIMKgIGh3X2xvX2V4cG9y
dF9wYXRoID0gDQo+ICdibG9ja3MvMC9SYWRpbyMwL2Rib2FyZC90eF9mcm9udGVuZHMvMC9sb3Mv
bG8xL2xvX2Rpc3RyaWJ1dGlvbi9MT19PVVRfMS9leHBvcnQnDQo+DQo+IMKgIMKgIGlmIHVzcnAu
Z2V0X3RyZWUoKS5leGlzdHMoaHdfbG9fZXhwb3J0X3BhdGgpOg0KPiDCoCDCoCDCoCDCoCB1c3Jw
LmdldF90cmVlKCkuYWNjZXNzX2Jvb2woaHdfbG9fZXhwb3J0X3BhdGgpLnNldChUcnVlKQ0KPg0K
Pg0KPiBpZiBfX25hbWVfXyA9PSAiX19tYWluX18iOg0KPiDCoCDCoCBsb2dnaW5nLmJhc2ljQ29u
ZmlnKGZvcm1hdD0nJShhc2N0aW1lKXMgWyUobGV2ZWxuYW1lKXNdOiANCj4gJShtZXNzYWdlKXMn
LCBsZXZlbD1sb2dnaW5nLkRFQlVHKQ0KPiDCoCDCoCBtYWluKCkNCj4NCj4gIiIiIEVuZCBvZiBD
b2RlICIiIg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
