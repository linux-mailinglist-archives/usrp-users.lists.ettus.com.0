Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4FE48E300
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 04:37:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB603384E77
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 22:37:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XSsPHmWl";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id CB7EF384E13
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 22:36:29 -0500 (EST)
Received: by mail-qk1-f173.google.com with SMTP id 82so9695177qki.10
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 19:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=hqQ9YGNgOUJkk7O+3+s+pPY3qkTQ25fiva1hEGiRNM4=;
        b=XSsPHmWlJWt4cCTWbSTQmdQ4IB7SxsHk+DcKmIFpqGrcyqoJGOjMhDd3dczZLgLX+6
         dxmmZIDpALNrNmcOG7P1EsjAg1PhBVWB3gDuGxhbfQgeAwIO/6uKHJvmmBCo8B0o3nmt
         WAg5FhvO73ufIT2GpHohVd7GweG0KsNo5CqIfH6ovU64Y5CNOQKqWvoxYYaQgZgErvB0
         IwR4hC+A1Y73u6tVFAOpZXby30FwmLJoyhkI6ttas+uuE4RbVlVbOFHQ9OPP1/ywII3l
         g1ac7jX8uKB16Suh3QHGtnQT54fytZkg6BArk5PWacnR9me/TPv/AgXG9VNJxLL0q9nn
         PegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hqQ9YGNgOUJkk7O+3+s+pPY3qkTQ25fiva1hEGiRNM4=;
        b=M3gUeALEaNNWdhML0jwToKvOBN5jg95B//b3zyvwycxZwOnwsV4lKyBOJC98bs6N2A
         4O+qQGXwUMvD3BATEJESDiIJXoddGbLZH2R4UMiPerlSZJVOgGNto+QVLiQGGkXD4fjW
         twKWCZayuie7134vuM2rCkNYEX/Rk3xzPmwIelXIBMbAQx4Ng6tE53r0APsQWtUXWV45
         /2xLUSBFrbax3RQ/xbszosuArTr9P5JljkzeE3sakco78GlDdJxWaT8+lz2wLe46q+dJ
         Zc5IBMAVFiWD1EINl3NG6s99CE1NDeJkFMjqjVvSXl0UhJvKNn0cJlk8n5m7DNIbALPT
         E3ZA==
X-Gm-Message-State: AOAM530FvN770sezJ/MIWwJeA4chM9O4PmR/gP6yjMcxNmfZ80XLD+rh
	zGbZafeeSlosTZ5nrFVWfEKYxCxxtxLi7A==
X-Google-Smtp-Source: ABdhPJyB5mUqOVJQSqgJHZb0wPNTCVgnsmcJrUbmoHsp19nxrG4r+Slfrjp+TzuOmzhN7dGr+p4z7g==
X-Received: by 2002:a05:620a:4622:: with SMTP id br34mr5439035qkb.372.1642131388914;
        Thu, 13 Jan 2022 19:36:28 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id e2sm3487625qty.14.2022.01.13.19.36.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 19:36:28 -0800 (PST)
Message-ID: <3653a0cd-0e80-aeda-daa5-1d14bb96cac3@gmail.com>
Date: Thu, 13 Jan 2022 22:36:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BL3PR16MB4476E7A5D8EFD323A338B19AB7539@BL3PR16MB4476.namprd16.prod.outlook.com>
 <3045d25c-427b-fd9c-b626-ac792718e498@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3045d25c-427b-fd9c-b626-ac792718e498@ettus.com>
Message-ID-Hash: NCRLPZ5TILCA3PEOPVONMRWKAHGP6JZQ
X-Message-ID-Hash: NCRLPZ5TILCA3PEOPVONMRWKAHGP6JZQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Retrieve USRP time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NCRLPZ5TILCA3PEOPVONMRWKAHGP6JZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0xMyAxODo1NiwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhpIE1pa2UsDQo+
DQo+DQo+IDEuIG1ha2luZyBhbm90aGVyIGlkZW50aWNhbCBvYmplY3Qgd2lsbCBqdXN0IGdpdmUg
eW91IGFub3RoZXIgY29weSBvZiANCj4gdGhlIHNhbWUgc21hcnQgcG9pbnRlciA6KQ0KPg0KPiAx
LiAmIDIuICYgMyBhcmUgc2FkbHkgYWxsIGluYWRlcXVhdGUgc29sdXRpb25zLCBiZWNhdXNlIHlv
dSBxdWVyeSB0aGUgDQo+IGRldmljZSB0aW1lIGF0IHNvbWUgcmFuZG9tbHkgdmFyeWluZyB0aW1l
IGFmdGVyIGEgc2FtcGxlIGhhcyBiZWVuIA0KPiBwcm9kdWNlZC4NCj4NCj4NCj4gVGhlIHJpZ2h0
IGFwcHJvYWNoIGlzIGFjdHVhbGx5IDQsIGJ1dCB3aXRob3V0IHlvdSBuZWVkaW5nIHRvIGNvcHkg
dGhlIA0KPiB0aGUgVUhEIFVTUlAgU291cmNlOiBUaGUgc291cmNlIGFscmVhZHkgdGFncyByeF90
aW1lIHdoZW5ldmVyIHRoZSANCj4gZGV2aWNlIHNlbmRzIHRpbWUtY29udGFpbmluZyBtZXRhZGF0
YSAod2hpY2ggaXQgc2hvdWxkIGRvIHdoZW5ldmVyIHlvdSANCj4gaXQgc2V0cyB0aGUgZGV2aWNl
IHRpbWUuDQo+DQo+DQo+IEluIHlvdXIgY3VzdG9tIGJsb2NrLCB5b3UganVzdCB3YXRjaCBmb3Ig
dGhlc2UgcnhfdGltZSB0YWdzLiBXaGVuIHlvdSANCj4gZmluZCBvbmUsIHlvdSBzYXZlIHRoZSB0
aW1lIChvciBiZXR0ZXIgZXZlbiwgdGlja3MpIGl0IGNvbnRhaW5zLCANCj4gdG9nZXRoZXIgd2l0
aCBpdHMgc2FtcGxlIG9mZnNldC4gV2hlbiB5b3UgbGF0ZXIgd29uZGVyIHdoYXQgdGltZSBhIA0K
PiBzcGVjaWZpYyBpdGVtIHdhcyByZWFkLCB5b3UganVzdCB1c2Ugbml0ZW1zX3JlYWQoMCkgb2Yg
eW91ciBibG9jayB0byANCj4gZ2V0IHRoZSBvZmZzZXQgb2YgdGhlIGZpcnN0IGl0ZW0gaW4geW91
ciAoZ2VuZXJhbF8pd29yaygpIGNhbGwsIGFuZCANCj4gY2FsY3VsYXRlIHRoZSB0aW1lLg0KPg0K
Pg0KPiBCZXN0IHJlZ2FyZHMsDQo+DQo+IE1hcmN1cw0KPg0KPiBPbiAxMy4wMS4yMiAyMzoyNCwg
TWljaGFlbCBCYXNzaSB3cm90ZToNCj4+IEhpIGFsbCwNCj4+DQo+PiBJJ20gdXNpbmcgR1IzLjkg
d2l0aCBVSEQ0LjEuMC4xLg0KPj4gSSBoYXZlIGEgZmxvd2dyYXBoIGNvbnRhaW5pbmcgYSBVSERf
VVNSUCBTb3VyY2UgYmxvY2ssIHdpdGggU3luYyANCj4+IHByb3BlcnR5IHNldCB0byAiUEMgQ2xv
Y2sgb24gTmV4dCBQUFMiIHNvIHRoYXQgdGhlIGRldmljZSB0aW1lIGlzIA0KPj4gc3luY2VkIHRv
IFBDIHN5c3RlbSB0aW1lIG9uIHRoZSBuZXh0IFBQUy4NCj4+DQo+PiBJIHdhbnQgdG8gdGhlbiwg
c29tZXdoYXQgZnJlcXVlbnRseSwgYWNjZXNzIHRoZSB1c3JwIHRpbWUgZnJvbSB3aXRoaW4gDQo+
PiBkb3duc3RyZWFtIGN1c3RvbSBDKysgYmxvY2tzLg0KPj4NCj4+IE9wdGlvbnMgdGhhdCBJJ3Zl
IGNvbnNpZGVyZWQ6DQo+PiAxLiBGcm9tIHRoZSBjdXN0b20gYysrIGJsb2NrIC0gbWFrZSBhbm90
aGVyIFVIRCBVU1JQIGRldmljZSBpbnN0YW5jZSANCj4+ICh0aG91Z2ggSSBkb24ndCB0aGluayB0
aGlzIGlzIHBvc3NpYmxlLCBhcyB0aGUgZGV2aWNlIGhhcyBhbHJlYWR5IA0KPj4gYmVlbiBhbGxv
Y2F0ZWQgdG8gdGhlIHNvdXJjZSBibG9jayk6DQo+PiDCoMKgwqAgdWhkOjpkZXZpY2VfYWRkcl90
IGRldmljZUFkZHJlc3MoIiIpOw0KPj4gwqAgwqAgdWhkOjp1c3JwOjptdWx0aV91c3JwOjpzcHRy
IHVzcnAgPSANCj4+IHVoZDo6dXNycDo6bXVsdGlfdXNycDo6bWFrZShkZXZpY2VBZGRyZXNzKTsN
Cj4+DQo+PiAyLiBGcm9tIHRoZSBjdXN0b20gYysrIGJsb2NrIC0gSnVzdCByZXRyaWV2ZSBjbG9j
ayBpbmZvIGZyb20gdGhlIA0KPj4gZGV2aWNlIGEgYml0IGxpa2UgdGhpcyAoYnV0IGl0J3MgdG9v
IHNsb3cpOg0KPj4gwqAgwqAgdWhkOjpkZXZpY2VfYWRkcl90IGRldjsNCj4+IMKgIMKgIGRldlsi
YWRkciJdID0gIjE5Mi4xNjguWFhYLlhYWCI7DQo+PiDCoCDCoCB1aGQ6OnVzcnBfY2xvY2s6Om11
bHRpX3VzcnBfY2xvY2s6OnNwdHIgY2xvY2sgPSANCj4+IHVoZDo6dXNycF9jbG9jazo6bXVsdGlf
dXNycF9jbG9jazo6bWFrZShkZXYpOw0KPj4gwqAgwqAgc3RkOjpjb3V0IDw8IGNsb2NrLT5nZXRf
dGltZSgpDQo+Pg0KPj4gMy4gRnJvbSB0aGUgY3VzdG9tIGMrKyBibG9jayAtIFNvbWVob3cgYWNj
ZXNzIHRoZSBhbHJlYWR5IGRpc2NvdmVyZWQgDQo+PiB1c3JwIGRldmljZSBmcm9tIHRoZSBVSERf
VVNSUCBzb3VyY2UgYmxvY2sgKG5vdCBzdXJlIGhvdyB0byBkbyB0aGlzKQ0KPj4NCj4+IDQuIENv
cHkgYW5kIG1vZGlmeSB0aGUgdXNycCBzb3VyY2UgY29kZSB0byBzZW5kIHRpbWUgYXMgYSBzdHJl
YW0gdGFnIA0KPj4gYWxvbmcgd2l0aCBlYWNoIHBhY2tldCAoc2VlbXMgbGlrZSBhIGxvdCBvZiB3
b3JrISkNCj4+IGEuIHBlcmhhcHMgdGhpcyBjb3VsZCBiZSBhY2hpZXZlZCB1c2luZyB0aGUgVUhE
X1VTUlAgU291cmNlIGJsb2NrIA0KPj4gc3RyZWFtIGFyZ3MgcHJvcGVydHkgLSB0aG91Z2ggd291
bGQgcmVxdWlyZSBtb2RzIHRvIHRoZSAueW1sPw0KPj4NCj4+IFRoYW5rcyBmb3IgeW91ciBoZWxw
IQ0KPj4gTWlrZQ0KPj4NCkFzIE1yLiBNdWVsbGVyIGhhcyBpbmRpY2F0ZWQsIFVIRCBhbHJlYWR5
IGluc2VydHMgdGltZSB0YWdzIGludG8gdGhlIA0Kc3RyZWFtLCBhbmQgdGFncyBpbiBnZW5lcmFs
IGFyZSBmYWlybHkgZWFzeSB0byBkZWFsIHdpdGg6DQoNCmh0dHBzOi8vd2lraS5nbnVyYWRpby5v
cmcvaW5kZXgucGhwL1N0cmVhbV9UYWdzDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
