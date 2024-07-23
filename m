Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F4B93A4C8
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 19:16:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 098DF385A58
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 13:16:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721754979; bh=epm2VyT2o0kYWaVFxQniBBNTsSQi8rjMwRvGL0bRxhw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gOwQxrFItiK2D2wIbFTMYTOzT19JJE9LVZKA7w+yXJ2V70xnOZ+4umSOAXWRKKdOj
	 do/fMiiHwqAXaNt6HYhb7N/Q6ZqiUksckHy3NMB/tFlCY69sgijJmXRNyoQUwcpXEz
	 9FmtdfUGMbgRJ+RZJcmklzMQ+1b00fGJWmkOZFhZ2HpA/ORzfsib5Y3cZvnBzeZCId
	 4Y1WnG2aBcyM67ug7wB/LojFBh9Zad0XPYEiF15/qxqZK3XHF+U0Vw5ntOQ8XPOzpe
	 5Shw4wh10klAfo/1WnMyU+TbJ3+0ss3V0/+ja0zEShc37XTa92QnM8InAWmdJYBxjZ
	 monUb11GXlbAQ==
Received: from mx-p1.obspm.fr (mx-p1.obspm.fr [145.238.193.20])
	by mm2.emwd.com (Postfix) with ESMTPS id 632403859DD
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 13:15:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=obspm.fr header.i=@obspm.fr header.b="joU1NxS2";
	dkim-atps=neutral
X-AuthUser: lecoq
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=obspm.fr; s=mail;
	t=1721754922; bh=KLWgRP3obbP61p8AJ+TxCWIkHtXLWxhSWdntLU2E1lk=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=joU1NxS2rwvJls3JRFpsP2E9LxwMAADNzYUgOLg+NlU8BzNmZP3aUK++Lc39y7xry
	 ZRaLLiwQhX0EVVvJDz8aC1vJwfEzugzLe+CjRSAFjfcaTvpryS4KwDxAB2OJuqfWro
	 jtRZtKoW4OIhO6pKVaRko2fTqPe71GANJvEB20mS46brmkVQlCvtxGgrFTrQKZTpcj
	 0X3UkA0NJ6gB9Oz2qESb1KzNG6lOSHN9Eq9fGO0UqFe9Jfh6wrms12x8Lfk7S54qFP
	 TCSCb6FIQUVEdPKIVH5VnAV0407YL2tAArHH5eioOhSAsfErzO1A4oV6lUnY0Z6SrL
	 CkxeScMtLesJg==
Received: from [192.168.1.30] (lfbn-lyo-1-372-175.w2-7.abo.wanadoo.fr [2.7.201.175])
	(authenticated bits=0)
	by mx-p1.obspm.fr (8.15.2/8.15.2/DIO Observatoire de Paris - 15/04/10) with ESMTPSA id 46NHFLZw1288562
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 19:15:22 +0200
Message-ID: <66fc4d80-c059-405a-9a14-3f7f53e747f1@obspm.fr>
Date: Tue, 23 Jul 2024 19:15:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com>
 <116ed2b0-3e83-410b-8075-01f1afa25037@gmail.com>
 <CAFOi1A4Z+P_VX5X37=BCg47xCvQh7vOTF72ydOhn8xrUxvTROg@mail.gmail.com>
 <848ee7e8-827c-43db-9497-519cd809cc57@gmail.com>
Content-Language: en-US
From: Yann Le Coq <yann.lecoq@obspm.fr>
In-Reply-To: <848ee7e8-827c-43db-9497-519cd809cc57@gmail.com>
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mx-p1.obspm.fr [145.238.193.20]); Tue, 23 Jul 2024 19:15:22 +0200 (CEST)
X-Virus-Scanned: clamav-milter 0.103.10 at mx-p1
X-Virus-Status: Clean
Message-ID-Hash: OASZ6Y4YKDJYYGP6ZJUHL445GPQMRGA4
X-Message-ID-Hash: OASZ6Y4YKDJYYGP6ZJUHL445GPQMRGA4
X-MailFrom: yann.lecoq@obspm.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OASZ6Y4YKDJYYGP6ZJUHL445GPQMRGA4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCklmIHlvdSBoYXZlbid0IGRvbmUgaXQgYWxyZWFkeSAoSSBhbSBub3Qgc3VyZSBmcm9t
IHlvdXIgb3JpZ2luYWwgcG9zdCksIA0KeW91IG1heSB3YW50IHRvIHRyeSB1c2luZyBpc29sY3B1
IHRvIHJlbW92ZSBtb3N0IGNvcmVzIGZyb20gdGhlIGdlbmVyYWwgDQpPUyB1c2UsIGFuZCBkZWRp
Y2F0ZSB0aGVtIHRvIHRoZSB0aHJlYWRzIGluIHlvdXIgcHJvY2VzcyB0aGF0IHByb2R1Y2UgDQp0
aGUgc2FtcGxlcy4gVXNpbmcgY29yZSBhZmZpbml0eSBmb3IgdGhhdCwgYXMgd2VsbCBhcyB0byBw
cmV2ZW50IHRoZSANCnNjaGVkdWxlciBmcm9tIGp1bXBpbmcgc2VtaS1yYW5kb21seSBhIHRocmVh
ZCBmcm9tIG9uZSBjb3JlIHRvIGFub3RoZXIgDQpvbmUsIHdlIGdvdCB2ZXJ5IHNpZ25pZmljYW50
IGltcHJvdmVtZW50cyBvdmVyIGEgc2ltaWxhciBzaXR1YXRpb24gd2hlcmUgDQoiVSIgd291bGQg
b2NjdXIgcmFuZG9tbHkgZnJvbSB0aW1lIHRvIHRpbWUuDQoNCkFsc28sIGFzIG1lbnRpb25lZCBp
biB0aGUgb25saW5lICJ0aXBzIGFuZCB0cmlja3MiLCBkZS1hY3RpdmF0aW5nIA0KaHlwZXJ0aHJl
YWRpbmcgaXMgYW4gaW1wb3J0YW50IG1vdmUgaW4gdGhhdCBkaXJlY3Rpb24sIGFuZCBvbmNlIGl0
IGlzIA0KZG9uZSwgdXNpbmcgY3B1LWZyZXEtc2V0IHRvIGZvcmNlIGFsbCByZWxldmFudCBjb3Jl
cyBhdCBtYXggc3BlZWQgaXMgDQphbHNvIHVzZWZ1bCAoYW5kIHNvIGZhciB3ZSBoYXZlbid0IGJs
b3duIHVwIGFueXRoaW5nIGFmdGVyIG1vbnRocyBvZiANCmNvbnRpbnVvdXMgdXNlLi4uKS4NCg0K
Tm90ZSB0aGF0IGluIG91ciBjYXNlLCB0aGVzZSB0cmlja3Mgd2VyZSBwcm92ZW4gZWZmaWNpZW50
IG9uIGEgR251UmFkaW8gDQpwcm9jZXNzLCB3aGljaCBpcyBoaWdobHkgbXVsdGktdGhyZWFkZWQu
IFdlIGRpZCwgaG93ZXZlciwgc3BlbmQgDQpzaWduaWZpY2FudCB0aW1lIGZpbmUgdHVuaW5nIGJ5
IGhhbmQgdGhlIGFsbG9jYXRpb24gb2YgdGhyZWFkcyB0byBjb3JlcyANCnRvIG9wdGltaXplIHRo
ZSBmaW5hbCByZXN1bHQuIEFzIHlvdXIgbWFjaGluZSBoYXMgbWFueSBjb3JlcywgSSBndWVzcyBp
dCANCmNvdWxkIGJlIHNpbWlsYXJseSB1c2VmdWwgaW4geW91ciBjYXNlLg0KDQpCZXN0LA0KDQot
WWFubg0KDQpMZSAyMy8wNy8yMDI0IMOgIDEzOjExLCBNYXJjdXMgRC4gTGVlY2ggYSDDqWNyaXTC
oDoNCj4gT24gMjMvMDcvMjAyNCAwNTo0OCwgTWFydGluIEJyYXVuIHdyb3RlOg0KPj4gQ2hlY2sg
dGhpcyBvdXQ6IA0KPj4gaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2Iv
bWFzdGVyL2hvc3QvZXhhbXBsZXMvcmZub2MtZXhhbXBsZS9pY29yZXMveDMxMF9yZm5vY19pbWFn
ZV9jb3JlLnltbCNMMTYtTDM1DQo+Pg0KPj4gVW5pdCBpcyBieXRlcy4gWW91IGNhbiB0cnkgYW5k
IGluY3JlYXNlIGl0IGJ1dCB5b3UgbWlnaHQgaGF2ZSB0byANCj4+IHJlbW92ZSBzdHVmZiBmcm9t
IHRoZSBkZXNpZ24uDQo+Pg0KPj4gTm90ZSB0aGF0IEkgdGhpbmsgb2YgdGhlbSBhcyAidHggYnVm
ZmVycyIgKGJlY2F1c2Ugc3RyZWFtZXIgLT4gU0VQIC0+IA0KPj4gVFggcmFkaW8gaXMgd2hlcmUg
dGhleSBnZXQgdXNlZCkgYnV0IEknbSBhIHJhZGlvIGd1eSwgbm90IGFuIEZQR0EgZ3V5Lg0KPj4N
Cj4+IC0tTQ0KPiBUaGFua3MsIE1hcnRpbi4NCj4NCj4gSSB3aWxsIG9waW5lIHRoYXQgaW5jcmVh
c2luZyB0aGUgYnVmZmVycyBvbiB0aGUgcmFkaW8gbWF5IG5vdCBoZWxwIA0KPiB3aXRoICJVIiBw
cm9ibGVtcywgc2luY2Ugc2FpZCBwcm9ibGVtIGlzIGFib3V0DQo+IMKgIHRoZSBob3N0IGJlaW5n
IHVuYWJsZSB0byBkZWxpdmVyIHNhbXBsZXMgaW4gdGltZS7CoCBOb3QgY2xlYXIgdGhhdCANCj4g
bWFraW5nIHRoZSBidWZmZXJzIGJpZ2dlciBvbiB0aGUgKnJhZGlvKg0KPiDCoCB3aWxsIGhlbHAg
d2l0aCB0aGF0Lg0KPg0KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
