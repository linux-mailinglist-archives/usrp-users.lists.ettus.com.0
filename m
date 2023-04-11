Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 081326DD132
	for <lists+usrp-users@lfdr.de>; Tue, 11 Apr 2023 06:53:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AF8C383B75
	for <lists+usrp-users@lfdr.de>; Tue, 11 Apr 2023 00:53:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681188830; bh=oggkM7L1kY/bfEg0qPHKvXksjpJpxo0EwNsGYHTDbVY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZF5cPuV/2A9kAZjzO9rO4Cc0nYHmnQXd61mfEiHbxCwI4OTVnGuLsziaswoL1TM5b
	 BpKCsDGXlfeLgLzFMBM60rx79khknq9jRtQ6FwizeNaLkpIonhsea910iQkBOtHgO0
	 KoUpDwns6ObwZIyutLL+yxhWX5EOJIe/XBY8kMjbd1QoTj8HVkzJGxrVdpC3YlDcXO
	 PT+f+7ryaKAEghkWWG8prNMbY7NgDu9l67AzFDoQ/bTacFWkECY4WHZUSBYlGz4NIy
	 ato3dYHxmUWV6txwOep0JGIHUpwXaBjScSmTFQME6vG5iscDCHZpeqVyhMvFWoG4BW
	 tpky55dA6nIKQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C51AD383B75
	for <usrp-users@lists.ettus.com>; Tue, 11 Apr 2023 00:53:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CVHbB1hP";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id u4so4721167qvj.10
        for <usrp-users@lists.ettus.com>; Mon, 10 Apr 2023 21:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681188824; x=1683780824;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pFFnx5l4/43YbQ2bIBmG3wgXnl+mKp3zFu48Fslbb3s=;
        b=CVHbB1hP/nfhcCAQiIrWi03UFhynH//PHvBQTHUIgo0B8/j+lDVvhXuaeS+JJIye2c
         pZTCvcn3Qpd4J+iw6OhcPb1oFmQrk10BCSEIsuj+Clf+rHcpu0aBoZQH3sAKShcWLnMD
         77A70doBt2mY4EPL/a0iSwu9mxVwF9fqYepr/RUEICloC9yIj5uVd0PcjyFisZJNUZNC
         qN/FlF36YBWpxxjSzWHMZ1aNgQ10qOLcMLmmIV3YNp6XTKyfbys6I0CwmnXiFVizszqY
         GZwo3hKjPCbsXib7FTnVUKCAgF2vK9GSc8LdhFFNtBZaQA3zC4nIpBWjtVuG1vfP+EJS
         u/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681188824; x=1683780824;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pFFnx5l4/43YbQ2bIBmG3wgXnl+mKp3zFu48Fslbb3s=;
        b=BCc0jpup5nzqG2hJc7muRAp5LD8uLqkIGRe6lqoyAdnhbvHq7ixAYFVxhyhS/7xGa2
         gaLSvvfAtu/3I2LFGhscGsq9cPI8X4GiIZ7spy/lx2QjlAe6ZPFDBqb8S4Af+y9Ru1yW
         belwYyvM1Sg63OGSxoEGw9ycVPSodItyLyp5e9qsgi88kF57ped0WNfAy2zm2UUiZAsO
         ZutuGawjZap9yZwr7vBvbQYQUKfJTw5ZoSe/wSbUu6CsCknm36vjKNXiNXuUa3JVo3IF
         LPbs5Q1FV8sve7F7kFUyOSRNmiVFZaOgmRCMaKFrETiE5iBnHUiJVyipORbeQP7wnGkf
         FMYg==
X-Gm-Message-State: AAQBX9dstQiM7TkOdaSLR3GtDEJEsvrHEO1wSIiMoEbCDo+Nsid/U8oV
	Tuad0g5VTOqeolvrEG4ed4xTQ3sRPZI=
X-Google-Smtp-Source: AKy350aZLd5fUyix3wI2SwI6tmYYgk9p2ErPLNBdXuEO6t4SG/yYTjU16qOMEmofZmWxUI5YvMsKdg==
X-Received: by 2002:a05:6214:20a3:b0:5e5:c0c2:c656 with SMTP id 3-20020a05621420a300b005e5c0c2c656mr1656963qvd.48.1681188823936;
        Mon, 10 Apr 2023 21:53:43 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id l4-20020a37f904000000b007422eee8058sm3714607qkj.125.2023.04.10.21.53.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 21:53:43 -0700 (PDT)
Message-ID: <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
Date: Tue, 11 Apr 2023 00:53:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230411011218.5513E4D94B@mail.futurelabusa.com>
Message-ID-Hash: BIY57CRYWN2KYPXPNDDEGGTKZY3NXHOE
X-Message-ID-Hash: BIY57CRYWN2KYPXPNDDEGGTKZY3NXHOE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIY57CRYWN2KYPXPNDDEGGTKZY3NXHOE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTAvMDQvMjAyMyAyMToxMiwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gVGhlIGZvbGxvd2lu
ZyBzdGVwcyBoYWQgbm8gaW1wYWN0Og0KPg0KPiBhKSBEb24ndCB1c2UgYSBzd2l0Y2ggYnV0IGRv
IGEgcG9pbnQtdG8tcG9pbnQgY29ubmVjdGlvbiBiZXR3ZWVuIHRoZSBjb21wdHVlcidzIE5JQyBh
bmQgdGhlIE4zMTAuDQo+IGIpIEFkanVzdCBuZXR3b3JrIGJ1ZmZlcnMgYW5kIHJpbmcgYnVmZmVy
IHBlciByZWNvbW1lbmRhdGlvbnMgKGFjdHVhbGx5LCB0aGUgbmV0d29yayBidWZmZXJzIHNldHRp
bmcgd2FzIGFsd2F5cyBiZWluZyBkb25lKS4NCj4NCj4gSW5jcmVhc2luZyB0aGUgTVRVIHRvIDkw
MDAgaGFkIGEgc2lnbmlmaWNhbnQgaW1wYWN0LiBBbiBvY2Nhc2lvbmFseSB1bmRlcnJ1biBpcyBz
dGlsbCBleHBlcmllbmNlZCwgYnV0IGFuIGhvdXIgb3IgdHdvIG9mIGNvbnRpbnVvdXMgdHJhbnNt
aXNzaW9uIGlzIHBvc3NpYmxlLg0KPg0KPiBJIGFtIHdvbmRlcmluZyBpZiB0aGlzIGlzIG5vdCBh
biBpc3N1ZSBvbiB0aGUgY29tcHV0ZXIgc2lkZSBidXQgb24gdGhlIHJhZGlvIHNpZGUuIElzIHRo
ZSBOMzEwIGluY2FwYWJsZSBvZiBzdXBwb3J0aW5nIDF4IDEwIEdicHMgc3RyZWFtcyB3aXRoIGEg
TVRVIG9mIDE1MDA/ICBQZXJoYXBzLg0KPg0KPiBJIHdpbGwgZG8gc29tZSBjb21wdXRlci10by1j
b21wdXRlciB0ZXN0aW5nIHRvIHNlZSBpZiB0aGUgcHJvYmxlbSBjYW4gYmUgcmVwcm9kdWNlZCB0
aGVyZS4NCj4NCj4gSmltDQpFdmVuIG5vbi1TRFIgYXBwbGljYXRpb25zIHRlbmQgdG8gdXNlIGp1
bWJvLWZyYW1lcyBmb3IgY29udGludW91cyANCnRyYWZmaWMgYXQgMTBHYml0LsKgIEknbSBzb3Jy
eSB0aGF0IEkgZGlkbid0IGNsdWUgaW4gdG8gdGhhdA0KIMKgIGluIHRoZSBmaXJzdCByb3VuZC4N
Cg0KDQo+DQo+DQo+DQo+DQo+IEF0IDA4OjM5IFBNIDQvNy8yMDIzLCBNYXJjdXMgRC4gTGVlY2gg
d3JvdGU6DQo+PiBPbiAwNy8wNC8yMDIzIDIyOjEzLCBKaW0gU2NoYXR6bWFuIHdyb3RlOg0KPj4+
IFdlIGhhdmUgYmVlbiB1bmFibGUgdG8gZXN0YWJsZSAxMDAlIHJlbGlhYmxlIGNvbm5lY3Rpb25z
IHRvIGFuIE4zMTAgVVNSUCByYWRpbyB0aHJvdWdoIGl0cyAxMCBHYml0IGV0aGVybmV0IGZyb20g
TGludXguIFdoYXQgaGFwcGVucyBpcyB0aGF0IGl0IHdvcmtzIGZpbmUgZm9yIGEgcGVyaW9kIG9m
IHRpbWUgLSAzMCB0byA2MCBtaW51dGVzLCB0eXBpY2FsbHkuIFRoZW4gd2Ugc2VlIGEgY291cGxl
IG9mIFUncyBpbiB0aGUgb3V0cHV0LiBVbmZvcnR1bmF0ZWx5LCB0aGF0IGlzIGZhdGFsIGZvciBv
dXIgYXBwbGljYXRpb24uDQo+Pj4NCj4+PiBVc2luZyB0aGUgdW5tb2RpZmllZCB0eF9zYW1wbGVz
X2Zyb21fZmlsZSBvciBvbmUgbW9kaWZpZWQgdG8gdXNlIHNlcGFyYXRlIHRocmVhZHMgdG8gcmVh
ZCBkYXRhIGZyb20gdGhlIGZpbGUgYW5kIHRvIHNlbnQgaXQgb3ZlciB0aGUgc29ja2V0IHRvIHRo
ZSByYWRpbywgdGhlIHN5bXB0b21zIGFyZSB0aGUgc2FtZS4NCj4+Pg0KPj4+IEFsbCB0aGUgZXZp
ZGVuY2UgaXMgdGhhdCB0aGUgYXBwbGljYXRpb24gaXMgc2VuZGluZyBkYXRhIGNvbnRpbnVvdXNs
eSB3aXRob3V0IGFueSBkZWxheXMuIEFsc28sIHRoZSAibmV0d29yayIgaGFzIG5vIGRldmljZXMg
b24gaXQgZXhjZXB0IGZvciB0aGUgaG9zdCBjb21wdXRlciwgYSBoaWdoIHBlcmZvcm1hbmNlIDEw
RyBzd2l0Y2gsIGFuZCB0aGUgTjMxMCByYWRpby4NCj4+Pg0KPj4+IFdlIGFyZSB3b25kZXJpbmcg
aWYgdGhpcyBjb3VsZCBiZSBhIExpbnV4ICJmZWF0dXJlIi4gV2Ugd291bGQgbGlrZSB0byB0cnkg
aW5jcmVhc2luZyB0aGUgc29ja2V0IHByaW9yaXR5IHdpdGggU09fUFJJT1JJVFkuIEhvd2V2ZXIs
IHdlIGFyZSBub3QgZmluZGluZyBhbnkgaG9va3MgaW4gdGhlIFVIRCBzb2Z0d2FyZSBmb3IgdGhp
cy4NCj4+Pg0KPj4+IFN1Z2dlc3Rpb25zPw0KPj4+DQo+Pj4gVGhhbmtzIQ0KPj4+IEppbQ0KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBIYXZl
IHlvdSBpbmNyZWFzZWQgdGhlIHJpbmcgYnVmZmVycyBvbiB5b3VyIGNhcmQ/DQo+Pg0KPj4gaHR0
cHM6Ly9rYi5ldHR1cy5jb20vVVNSUF9Ib3N0X1BlcmZvcm1hbmNlX1R1bmluZ19UaXBzX2FuZF9U
cmlja3MjSW5jcmVhc2luZ19SaW5nX0J1ZmZlcnMNCj4+DQo+PiBBbHNvLCBhZGp1c3QgdGhlIG5l
dHdvcmsgYnVmZmVyczoNCj4+DQo+PiBodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX0hvc3RfUGVy
Zm9ybWFuY2VfVHVuaW5nX1RpcHNfYW5kX1RyaWNrcyNBZGp1c3RfTmV0d29ya19CdWZmZXJzDQo+
Pg0KPj4gSGF2ZSB5b3UgdHJpZWQgYSBkaXJlY3QgY29ubmVjdGlvbi0td2l0aG91dCB0aGUgc3dp
dGNoP8OCIMOCIMOCICBKdXN0IHRvIGVsaW1pbmF0ZSBpdC7DgiAgQmVmb3JlIHlvdSBzYXkgIm9o
LCBpdCdzIG5vdCB0aGUgc3dpdGNoIiwNCj4+IMOCICBtYW55ICJoaWdoIHBlcmZvcm1hbmNlIiAx
MEcgc3dpdGNoZXMgaGF2ZSBhIGxlc3MtdGhhbi1pZGVhbCBzd2l0Y2hpbmcgZmFicmljLg0KPj4N
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fIFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20g
PC94LWZsb3dlZD4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
