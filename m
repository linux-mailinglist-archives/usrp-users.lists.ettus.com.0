Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBFC524DA7
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 15:00:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E15373845B7
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 09:00:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652360430; bh=EHqQ/5pXfEVIcrm5yQHpPSRaYxN8Bw6UoHSQzBSY4FM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pWxVbaUDbI+eNZL/vsoEyaNGl0gTv5pHMTD3pZy8B/KfVszrWdsdlPg6FTsjg5VY6
	 dLG1nLGD4xOJZ+P6RFTG67FMWMsOi7Pp+1+i87KrfKrVTjrehDObTBuhaG/eqaHNAt
	 2Om9qUK/rAm+UOn/2rfoOb+Xhx60HRqMsTX+WwJgIqHyu6W88fXDLAYehzHTqTRRtZ
	 YZifYiG3DqY0jX1zqhNM3CFbB7KmkkvFvp+ZjiDz/rDT7gTsq8VvaRAIQv7VYJqN5C
	 DFlAowAO0v2oEvYBRmpAggKh3iSyKYi1mqy5CcvepoOBHJG+selNVOPK4a1LqKx8nN
	 lYM0BzJteumzQ==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 2857D3843D0
	for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 08:59:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gIW3KvPt";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id c1so4482313qkf.13
        for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 05:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4Pegv0X9JyikPft1aQeizMRajWwXg0QUWLyZubdzFsI=;
        b=gIW3KvPt4dYwDzmbBGe4loP+5LGGWT0Sh9BQDZ+yWfAGdbQ2eELAocE0GyjwT0De7F
         EDwtMZvcCzpwHbLzXZwiYgHkghRpyrVDDEtEeQjLHP+WvDVicF1rbhfgelik4onzpto0
         GxP3TZyzLidLslhHEyAjFrhJx7rr4q+/YhPzKxxdGivrdtu9jz6y86iN83WpppXvlYZ+
         2yLWVAKKLPUeQf/VZdqAGeE12dyhIzitubzZFDQ+ssXHyZhIkXmnYCop7IRMGOPjsRNX
         vfze0Gw3TaioivRV0kXj/9n76UOn+zNyOKDWNPmXk7O5gUSu+e9UrHUdd30GfgIZ6Bc4
         +FXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4Pegv0X9JyikPft1aQeizMRajWwXg0QUWLyZubdzFsI=;
        b=uzRMFiRd4yaPyVjQkYPqwWOMXOQ6B8KC1sApn1rMO9R15iEtpDNmm7MDSXwVR0vurm
         trF70a4HC4t608iEM9t6n33OjzJ+1wMylQFoVNCh254ZaMeXEYocfHH3eRCy5ndN6RED
         8tWCbU+jZH+aCEg0GGkyhJhWzySpGHMhIK4EYZZak7omZaVRMTfUs4itwx17nrsV07Gx
         2Vk2lJ2aSq6ssoyEtYTRBeLR/ermNYQP7Pibo/2dw6YfndNZs2cQwWVBwnqLe22Y1LAC
         0sSo4WtYBp1uIKu86njIt8zEAWSJhnJKcamYnH4a1Jrk8NxoO2fsDf3CENaVKXrVQA0Y
         B/9Q==
X-Gm-Message-State: AOAM531h9Q4V0bbJp4ULsSNX1XwKmAy3PUtUpOd3vehF2rka2rNqcTH5
	57srChRfPmulGD73dli+DpU=
X-Google-Smtp-Source: ABdhPJypd2dOGIC1J4DosgzVGWcQPomluwyBAoyjLQF/+nN/zmtdDV1AfF9ocQHLPyX3JuyQ3uf3GA==
X-Received: by 2002:a37:dc87:0:b0:6a0:afd3:d0c with SMTP id v129-20020a37dc87000000b006a0afd30d0cmr12374925qki.677.1652360369393;
        Thu, 12 May 2022 05:59:29 -0700 (PDT)
Received: from [192.168.2.162] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id m5-20020a378a05000000b0069fc13ce1ddsm2945772qkd.14.2022.05.12.05.59.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 05:59:28 -0700 (PDT)
Message-ID: <1ec218ac-86dd-555d-623d-dc918a382b7d@gmail.com>
Date: Thu, 12 May 2022 08:59:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dobler, Anton" <anton.dobler@unibw.de>,
 =?UTF-8?Q?C=c3=a9dric_Hannotier?= <cedric.hannotier@ulb.be>
References: <1652294738824.26535@unibw.de>
 <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
 <1652297098503.13596@unibw.de>
 <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
 <20220512085008.t5jsg4uojzhalmiz@barbe> <1652360244186.66576@unibw.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1652360244186.66576@unibw.de>
Message-ID-Hash: K45D2WQQVFB2DPVQZB6BSXPJV4KGYYBR
X-Message-ID-Hash: K45D2WQQVFB2DPVQZB6BSXPJV4KGYYBR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC, UHD4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K45D2WQQVFB2DPVQZB6BSXPJV4KGYYBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0xMiAwODo1NywgRG9ibGVyLCBBbnRvbiB3cm90ZToNCj4gVGhhbmsgeW91IGZv
ciB0aGF0IGluZm9ybWF0aW9uLiBDYW4gSSBzYWZlbHkgdXNlIG9uZSBvZiB0aGUgZGVmYXVsdCBp
bWFnZXMgb3IgaXMgdGhlcmUgZGFuZ2VyIHRvIGJyaWNrIHRoZSBkZXZpY2UgaWYgdGhlIFNIQTI1
NiBkb2VzIG5vdCBtYXRjaCBlYWNoIG90aGVyPw0KPiBCUiwNCj4gQW50b24NCkkgaGF2ZSBhIHF1
ZXJ5IGluIHRvIEV0dHVzIHRvIHNlZSB3aGF0J3MgdXAgd2l0aCB0aGUgVUhENC4wIHJlcG8uwqAg
SSANCndvdWxkIHBlcmhhcHMgdXBncmFkZSB0byBhIG5ld2VyIFVIRCBpZiBwb3NzaWJsZSwgc2lu
Y2UgSSBoYXZlIG5vdCBoYWQNCiDCoCBhbnkgcmVwb3J0cyBvZiBTSEEyNTYgc3VtIG1pc21hdGNo
ZXMgb24gb3RoZXIgVUhEIHZlcnNpb25zLg0KDQoNCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBWb246IEPDqWRyaWMgSGFubm90aWVyIDxjZWRyaWMuaGFubm90
aWVyQHVsYi5iZT4NCj4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDEyLiBNYWkgMjAyMiAxMDo1MA0K
PiBBbjogTWFyY3VzIEQuIExlZWNoDQo+IENjOiBEb2JsZXIsIEFudG9uOyBkaXNjdXNzLWdudXJh
ZGlvQGdudS5vcmc7IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IEJldHJlZmY6IFJlOiBS
Rk5vQywgVUhENC4wDQo+DQo+IE9uIDExLzA1LzIyIDE1OjMzLCBNYXJjdXMgRC4gTGVlY2ggd3Jv
dGU6DQo+PiBPbiAyMDIyLTA1LTExIDE1OjI0LCBEb2JsZXIsIEFudG9uIHdyb3RlOg0KPj4+IEkg
dXNlIGEgbjMxMCBhbmQgaGF2ZSB0d28gMTBnaWdiaXQgZm9yIGRhdGEgc3RyZWFtaW5nIGFuZCBv
bmUgMWdpZ2JpdA0KPj4+IGZvciBtYW5hZ2luZyB0aGUgZGV2aWNl4oCmIHRoZSBzdHJhbmdlIHRo
aW5nIGFib3V0IGl0IGlzIHRoYXQgdGhlIGV4YW1wbGUNCj4+PiBmbG93Z3JhcGggd2l0aCByeCBy
YWRpbyBkb3duY29udmVydGVyIGFuZCByeCBzdHJlYW1lciB3b3JrcyB3aXRob3V0IGFueQ0KPj4+
IHByb2JsZW1z4oCmDQo+Pj4gSSBydW4gdGhlIGFwcGxpY2F0aW9uIG9uIHRoZSBob3N0IHBj4oCm
DQo+Pj4gV2hhdCBpcyB0aGF0IHJlY2VpdmVyIHByb2ZpbGUgZXJyb3IgYWJvdXQ/DQo+Pj4NCj4+
PiBXaGF0IGNhbiBJIGRvIGFib3V0IHRoZSBzaGEyNTYgZXJyb3I/IEkgYWxzbyB0aGluayB0aGUg
cHJvYmxlbSBpcyByYXRoZXINCj4+PiBkdWUgdG8gbXkgc2V0dXAg4oCmDQo+PiBZb3UgbWlnaHQg
dHJ5IHVwZ3JhZGluZyB0byBuZXdlciByZWxlYXNlIG9mIFVIRC4gICBJIHdvdWxkIGFsc28gc3Vn
Z2VzdA0KPj4gY29udGludWluZyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHVzcnAtdXNlcnMgbWFp
bGluZyBsaXN0LCB3aGVyZSB0aGVyZSdzIGENCj4+IGJpdCBtb3JlIFJGTk9DDQo+PiAgICBhY3Rp
dml0eSBhbmQgZXhwZXJ0aXNlLg0KPj4NCj4+IEkgZG9uJ3Qga25vdyB3aGF0IHRvIHN1Z2dlc3Qg
YWJvdXQgdGhlIFNIQTI1NiBlcnJvci4gIFBvc3NpYmx5IHlvdXINCj4+IGluc3RhbGxhdGlvbiBk
b2Vzbid0IGhhdmUgdGhlIGNvcnJlY3QgU0hBMjU2IHRvb2xzLCBvciB5b3VyIGZpbGVzeXN0ZW0g
aXMNCj4+IHRydW5jYXRpbmcgdGhlIGZpbGVzPw0KPj4gICAgVGhlIGltYWdlc19kb3dubG9hZGVy
IGFwcGxpY2F0aW9uIHVzZXMgdGhlIFB5dGhvbiBwYWNrYWdlICJoYXNobGliIi4NCj4+IFBlcmhh
cHMgdGhhdCBpcyBmYWlsaW5nIGluIHNvbWUgd2F5IGluIHlvdXIgaW5zdGFsbGF0aW9uPw0KPiBU
aGUgU0hBMjU2IGVycm9yIHNlZW1zIGxlZ2l0Lg0KPiBJZiB5b3UgY29tcGFyZSB0aGUgaGFzaCBi
ZXR3ZWVuIHRoZSBkb3dubG9hZGVkIHppcCBhbmQgdGhlIG1hbmlmZXN0LA0KPiB0aGV5IGRvIG5v
dCBtYXRjaC4NCj4NCj4gRXhwZWN0ZWQgaGFzaCBmb3IgImUzeHhfZTMxMF9zZzFfZnBnYV9kZWZh
dWx0IiBbMV06DQo+IDg5Y2I2OTg1MTg0ZDQxZDQyYmM1YmRlODdhZGRiNTQzMmY1MWEwNjcxNzVj
MWVjNDg1NjhhOGMwMzAwOGNiZGENCj4NCj4gc2hhMjU2c3VtIG9mIGRvd25sb2FkZWQgemlwIFsy
XToNCj4gNzNjYWQzY2Q1MjcxZDM4OGRlMjcxYWNjZDE1MDQ1ZGFjYThkNjFjODUwYTVjYzk0NTli
ZDM4ZGMwY2I2ODkzYw0KPg0KPg0KPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFy
Y2gvdWhkL2Jsb2IvYjM4YzlkODM3MjAxNDgyODQyYjAwZTFhZjg1OGNiY2Y1MTc5MWMxNy9pbWFn
ZXMvbWFuaWZlc3QudHh0DQo+IFsyXSBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9j
YWNoZS9lM3h4L3VoZC0yY2JhNjViL2UzeHhfZTMxMF9zZzFfZnBnYV9kZWZhdWx0LWcyY2JhNjVi
LnppcA0KPg0KPj4+IFRoYW5rIHlvdSwNCj4+Pg0KPj4+IEJSDQo+Pj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQo+Pj4gKlZvbjoqIERpc2N1c3MtZ251cmFkaW8NCj4+PiA8ZGlzY3Vzcy1nbnVyYWRpby1ib3Vu
Y2VzK2FudG9uLmRvYmxlcj11bmlidy5kZUBnbnUub3JnPiBpbSBBdWZ0cmFnIHZvbg0KPj4+IE1h
cmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+DQo+Pj4gKkdlc2VuZGV0Oiog
TWl0dHdvY2gsIDExLiBNYWkgMjAyMiAyMDo1NDoxNQ0KPj4+ICpBbjoqIGRpc2N1c3MtZ251cmFk
aW9AZ251Lm9yZzsgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+PiAqQmV0cmVmZjoqIFJl
OiBSRk5vQywgVUhENC4wDQo+Pj4gT24gMjAyMi0wNS0xMSAxNDo0NSwgRG9ibGVyLCBBbnRvbiB3
cm90ZToNCj4+Pj4gRGVhciBDb21tdW5pdHksDQo+Pj4+DQo+Pj4+DQo+Pj4+IEkgdHJ5IHRvIHNl
dCB1cCBhIGJhc2ljIGZsb3dncmFwaCBpbiBHUkMgY29uc2lzdGluZyBvdXQgb2YgYSBudWxsDQo+
Pj4+IHNvdXJjZSwgYSB0eCBzdHJlYW1lciBhbmQgRFVDIGFuZCBhIFRYIHJhZGlvLg0KPj4+Pg0K
Pj4+Pg0KPj4+PiBJIHVzZSBVSEQ0LjAgYW5kIEdSMy44LjIuDQo+Pj4+DQo+Pj4+DQo+Pj4+IEhv
d2V2ZXIsIEkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3IgbWVzc2FnZToNCj4+Pj4NCj4+Pj4NCj4+
Pj4gL1J1bnRpbWVFcnJvcjogUnVudGltZUVycm9yOiBFcnJvciBkdXJpbmcgUlBDIGNhbGwgdG8g
YGluaXQnLiBFcnJvcg0KPj4+PiBtZXNzYWdlOiBSdW50aW1lRXJyb3I6IFJlY2VpdmVyIHByb2Zp
bGUgb3V0IG9mIHJhbmdlIFJGIGJhbmR3aWR0aC4vDQo+Pj4+DQo+Pj4+DQo+Pj4+IEkgdHJpZWQg
ZGlmZmVyZW50IHNldHRpbmdzIGZvciBzYW1wbGUgcmF0ZSwgZXRjLiBidXQgc3RpbGwgSSBnZXQN
Cj4+Pj4gdGhhdCBlcnJvci4gSSBhdHRhY2hlZCB0aGUgdXNlZCBmbG93Z3JhcGguDQo+Pj4+DQo+
Pj4+DQo+Pj4+DQo+Pj4+DQo+Pj4+IFRoZSBzZWNvbmQgcXVlc3Rpb24gaXMgd2l0aCByZWdhcmRz
IHRvIHRoZSBkZWZhdWx0IGZwZ2EgaW1hZ2VzLiBXaGVuDQo+Pj4+IEkgZG93bmxvYWQgdGhlIGlt
YWdlcyBJIGdldCB0aGUgZm9sbG93aW5nIGVycm9yOg0KPj4+Pg0KPj4+Pg0KPj4+PiAvW0VSUk9S
XSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBtYXRjaCBtYW5pZmVzdCBmb3IgaHR0cHM6Ly9m
aWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUvZTN4eC91aGQtMmNiYTY1Yi9lM3h4X2UzMTBf
c2cxX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAhLw0KPj4+PiAvMDExMzcga0IgLyAwMTEzNyBr
QiAoMTAwJSkgZTN4eF9lMzEwX3NnM19mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlwLw0KPj4+PiAv
W0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBtYXRjaCBtYW5pZmVzdCBmb3IgaHR0
cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUvZTN4eC91aGQtMmNiYTY1Yi9lM3h4
X2UzMTBfc2czX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAhLw0KPj4+PiAvMTAxODMga0IgLyAx
MDE4MyBrQiAoMTAwJSkgZTN4eF9lMzIwX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAvDQo+Pj4+
IC9bRVJST1JdIERvd25sb2FkZWQgU0hBMjU2IGRvZXMgbm90IG1hdGNoIG1hbmlmZXN0IGZvciBo
dHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9lM3h4L3VoZC0yY2JhNjViL2Uz
eHhfZTMyMF9mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlwIS8NCj4+Pj4gLzIwNzI5IGtCIC8gMjA3
Mjkga0IgKDEwMCUpIG4zeHhfbjMxMF9mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlwLw0KPj4+PiAv
W0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBtYXRjaCBtYW5pZmVzdCBmb3IgaHR0
cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUvbjN4eC91aGQtMmNiYTY1Yi9uM3h4
X24zMTBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+Pj4+IC8xNDM0NSBrQiAvIDE0MzQ1
IGtCICgxMDAlKSBuM3h4X24zMDBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcC8NCj4+Pj4gL1tF
UlJPUl0gRG93bmxvYWRlZCBTSEEyNTYgZG9lcyBub3QgbWF0Y2ggbWFuaWZlc3QgZm9yIGh0dHBz
Oi8vZmlsZXMuZXR0dXMuY29tL2JpbmFyaWVzL2NhY2hlL24zeHgvdWhkLTJjYmE2NWIvbjN4eF9u
MzAwX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAhLw0KPj4+PiAvMjcyODUga0IgLyAyNzI4NSBr
QiAoMTAwJSkgbjN4eF9uMzIwX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAvDQo+Pj4+IC9bRVJS
T1JdIERvd25sb2FkZWQgU0hBMjU2IGRvZXMgbm90IG1hdGNoIG1hbmlmZXN0IGZvciBodHRwczov
L2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9uM3h4L3VoZC0yY2JhNjViL24zeHhfbjMy
MF9mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlwIS8NCj4+Pj4NCj4+Pj4gV2hhdCBjYW4gSSBkbyB0
byBzb2x2ZSB0aGF0IHByb2JsZW0/DQo+Pj4+DQo+Pj4+DQo+Pj4+DQo+Pj4+IEFueSBoZWxwIHdv
dWxkIGJlIG1vcmUgdGhhbiB3ZWxjb21lIQ0KPj4+Pg0KPj4+Pg0KPj4+PiBUaGFua3MsDQo+Pj4+
DQo+Pj4+DQo+Pj4+IEJSLA0KPj4+Pg0KPj4+Pg0KPj4+PiBBbnRvbg0KPj4+Pg0KPj4+IFdoYXQg
dHlwZSBvZiBVU1JQPyAgQXJlIHlvdSBydW5uaW5nIHRoaXMgb24gdGhlIGRldmljZSBpdHNlbGYs
IG9yIG92ZXIgYQ0KPj4+IG5ldHdvcmsgY29ubmVjdGlvbj8gIElmIG92ZXIgYSBuZXR3b3JrIGNv
bm5lY3Rpb24sIHdoYXQgdHlwZSBvZg0KPj4+IGNvbm5lY3Rpb24/DQo+Pj4NCj4+Pg0KPj4+IFRo
ZSBTSEEyNTYgZXJyb3JzIG1lYW5zIHRoYXQgdGhlcmUncyBhIHByb2JsZW0gd2l0aCB0aGUgcmVw
b3NpdG9yeSwgb3INCj4+PiB0aGF0IHlvdXIgYWNjZXNzIHRvIHRoZSByZXBvc2l0b3J5IGlzIGNv
cnJ1cHRpbmcgZmlsZXMsIG9yIHRoZXkncmUgYmVpbmcNCj4+PiBjb3JydXB0ZWQgb24NCj4+PiAg
ICB5b3VyIHN5c3RlbSBhcyB0aGV5IGFycml2ZS4gICBJIGhhdmVuJ3QgKmhlYXJkKiB0aGF0IHRo
ZSByZXBvc2l0b3J5DQo+Pj4gaGFzIGFueSBwcm9ibGVtcyBmb3IgdGhhdCByZWxlYXNlIG9mIFVI
RC4NCj4+Pg0KPj4+DQo+IC0tDQo+DQo+IEPDqWRyaWMgSGFubm90aWVyDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
