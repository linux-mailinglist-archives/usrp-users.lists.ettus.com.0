Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D68B6E4F27
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 19:22:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3DE838439C
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 13:22:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681752175; bh=N+rTEfT72965xVsPhp3uvBzYZ/ZOdQO2tNoBWRgrGxM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aqZPmed3iRR5YrNqZERS9tEpFOTtPLiC0KRNHxO3dorxY8kCjSJmFuFnJfSekBs1z
	 on0ZtZgEWsx1vUILKxvvsBC5u1Ba3XlA3LcF09aWVpbQUrePXY1El4ZD1fmYa/dRde
	 rLhol1APnMw3bah1403emWfLXsQM3/jmyUW4rpeDKVJ9Qr/LYEKqbrcvVyzHCzFOF2
	 xGyprJIq01bw+EbR4XpTJxCb+1EYeAPbEi72bFHiLAd3haT0mLjG2q1PTQLliQAmg6
	 MOQOaBhvbHOSEmXNGSZFYAHytZrJjHqpUA5c1wRAva4zuSiry5nqDeocjSRrlUje2i
	 2fBEpaRHtT48Q==
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id D77FD384246
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 13:22:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="4KGuux+3";
	dkim-atps=neutral
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-2f86ee42669so1655497f8f.2
        for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 10:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1681752143; x=1684344143;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gr0JBUJtOvtgvML9PtWYMl0g2qtESup2pnXOmTMI05E=;
        b=4KGuux+3brSKve7vuoteEmoMK/cMPIUJxRWc9wkrRyS0lM0rxuHu/wzVsCfXf+ybiN
         mjIbe4ev8wDGBkRhJdFUGRjvPXGSewFUGzGkfld0VRk8YPFKLSwBOwwZvvPEXvDyiXyV
         UXQtbmPmexYk0XaC2TGry4+8mKDf5H6KrQ3ZjvNk5BJ2zk1l2W7B7GAfcQLvbPFoYZqr
         fNsAV3r4ENaK/QcbE2Up1Btqy6KwxCBFL+njDXbWQ4/yoMB5loSLR/H3Kfv5IZQafV0y
         mOyb/y1vfNPqwLpxHEthhko5o0RSW0k/E54Wjieor+I/7r1Z5Zy5KGUETkIcHqKVdChr
         hjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681752143; x=1684344143;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gr0JBUJtOvtgvML9PtWYMl0g2qtESup2pnXOmTMI05E=;
        b=YBSkt+167cAtVKeSJypKGHvbqH4GVLtq+41bJBXb3IzaHYBe8/O+1vEdFJUpxyM7I5
         R1jIIWZAa4sEnbr9hjFuS495p9WfV0CmLgcfLBqV/Vc30SUwi6hsU5tITB5pynY1i7zZ
         +ZoPXnvZXjLgTiDRvCoSGgfmIwun/IALjEwmdaEuCsafjuH/tNth9Pn7kwyRv1rU3PdB
         lhaDC9V525qTYshqqaJgmejgQ9OnTjCkfSIXMgzpHgs49N/Bvvc/IEahMHaFTloSeA3q
         RNc7DgDeHW45LWVE9nKayqPgFyegD1RIsHyq78IcL4PRI8/b3bkTtVGDyvRpJ0KgunVv
         h5hA==
X-Gm-Message-State: AAQBX9dCigBpMgEuqeZdqtZy95+Iyw/jjhGuibZjpNT6KyQxo9ly+hjn
	jM4qMxZvGImaM3u5ptoUWs6fUGiGHCACnZK0j4tb/Q==
X-Google-Smtp-Source: AKy350Zi6VRr5taRpQoXlOcZ2s1ihSZXc0G1XuNEVTIarzaHSovRhWFkmimXOiJ+chRGOd7ebRpA1A==
X-Received: by 2002:adf:e98b:0:b0:2ef:19f4:823e with SMTP id h11-20020adfe98b000000b002ef19f4823emr6461043wrm.49.1681752142685;
        Mon, 17 Apr 2023 10:22:22 -0700 (PDT)
Received: from ?IPV6:2a00:1398:9:fb03:ff83:1873:1461:432e? ([2a00:1398:9:fb03:ff83:1873:1461:432e])
        by smtp.gmail.com with ESMTPSA id n21-20020a7bcbd5000000b003ede3e54ed7sm12491645wmi.6.2023.04.17.10.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 10:22:22 -0700 (PDT)
Message-ID: <ec37c932-d4c2-d041-4c1d-8702a7125cf2@ettus.com>
Date: Mon, 17 Apr 2023 19:22:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Olo <olo1618@protonmail.com>, usrp-users@lists.ettus.com
References: <Yu8hM_nJsK57X9mKULaNxA3ktU1VuFvAmcjSBfYHr51gCh0-g_iRiIDS2DEqd407uvQRTpvYDpGrdgSqPj7aAXldawHHt9Jy1pObZ0sSmL8=@protonmail.com>
 <8cae38a1-0ad3-9068-6b65-8b5f393a1d06@ettus.com>
 <JaDOCsRwwatoAKbv5J5w7Uun7c4c2pencic3hlDQYpJ6HciTMtVOHvrMfeVazlUJEWWcytc-I8F0xLxUUEXFRihZrRVgnMa-6w9RW0HCMi8=@protonmail.com>
 <3cd6376e-aa3e-cdae-f95a-984415815653@ettus.com>
 <MvZHNFwZSeGKCetok4pcrlHTjmn5iAptkcncAHgCsndf-fWlU7avtDJsVXpoNSm2c5EfG147XlgNOHuVZBXLB1DXcZetjKiFiTAnUaWqAok=@protonmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <MvZHNFwZSeGKCetok4pcrlHTjmn5iAptkcncAHgCsndf-fWlU7avtDJsVXpoNSm2c5EfG147XlgNOHuVZBXLB1DXcZetjKiFiTAnUaWqAok=@protonmail.com>
Message-ID-Hash: KZPWIKYBIMQAVT25XWJBSR5ETBOMDLTX
X-Message-ID-Hash: KZPWIKYBIMQAVT25XWJBSR5ETBOMDLTX
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD in Qt c++ windows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZPWIKYBIMQAVT25XWJBSR5ETBOMDLTX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T2gsIGludGVyZXN0aW5nLCBJIHdvdWxkIGhhdmUgZXhwZWN0ZWQgaXQgdG8gY3Jhc2ggKmluc2lk
ZSogb25lIG9mIHRoZXNlIA0KZnVuY3Rpb25zLiBIdWghDQoNCg0KT24gNC8xNy8yMyAxMzo1NCwg
T2xvIHdyb3RlOg0KPiBJdCBjcmFzaCBpbiAzN3RoIHJvdywgd2hpY2ggaXMgOg0KPiB1aGQ6OnVz
cnA6Om11bHRpX3VzcnA6OnNwdHIgdXNycCA9IHVoZDo6dXNycDo6bXVsdGlfdXNycDo6bWFrZShh
cmdzKTsNCj4NCj4NCj4NCj4gU2VudCB3aXRoIFByb3RvbiBNYWlsIHNlY3VyZSBlbWFpbC4NCj4N
Cj4gLS0tLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tLS0NCj4gT24gTW9uZGF5LCBBcHJpbCAx
N3RoLCAyMDIzIGF0IDEzOjQzLCBNYXJjdXMgTcO8bGxlciA8bWFyY3VzLm11ZWxsZXJAZXR0dXMu
Y29tPiB3cm90ZToNCj4NCj4NCj4+IEludGVyZXN0aW5nISBDYW4geW91IHJ1biBpdCBpbiBkZWJ1
Z2dlciwgdG8gc2VlIGluIHdoaWNoIGNhbGwvd2hlcmUNCj4+IGV4YWN0bHkgaXQgY3Jhc2hlcz8N
Cj4+DQo+PiBPbiA0LzE3LzIzIDExOjEwLCBPbG8gdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+Pg0K
Pj4+IEkgY29waWVkIGluaXRfdXNycC5jcHAgdG8gQ29uc29sZUFwcGxpY2F0aW9uIGluIHZpc3Vh
bCBzdHVkaW8gYW5kIGluDQo+Pj4gcHJvcGVydGllcyBJIHNldCBDb25maWd1cmF0aW9uIHByb3Bl
cnRpZXMgPj4gQy9DKysgPj4gQWRkaXRpb25hbA0KPj4+IEluY2x1ZGUgRGlyZWN0b3JpZXM6DQo+
Pj4gQzpcUHJvZ3JhbSBGaWxlc1xVSERcaW5jbHVkZQ0KPj4+IEQ6XEJvb3N0XGJvb3N0XzFfODJf
MA0KPj4+DQo+Pj4gQ29uZmlndXJhdGlvbiBwcm9wZXJ0aWVzID4+IExpbmtlciA+PiBHZW5lcmFs
Og0KPj4+IEM6XFVIRFxsaWINCj4+PiBEOlxCb29zdFxib29zdF8xXzgyXzBcbGliNjQtbXN2Yy0x
NC4zDQo+Pj4NCj4+PiBDb25maWd1cmF0aW9uIHByb3BlcnRpZXMgPj4gTGlua2VyID4+IElucHV0
Og0KPj4+IHVoZC5saWINCj4+Pg0KPj4+IEl0IGdvdCBtZToNCj4+PiBFeGNlcHRpb24gdGhyb3du
IGF0IDB4MDAwMDdGRkNDQUM2NDA2NSAodWhkLmRsbCkgaW4NCj4+PiBDb25zb2xlQXBwbGljYXRp
b24xLmV4ZTogMHhDMDAwMDAwNTogQWNjZXNzIHZpb2xhdGlvbiByZWFkaW5nIGxvY2F0aW9uDQo+
Pj4gMHgwMDAwMDAzOUExRjIwMDAwLg0KPj4+DQo+Pj4gSSB0aGluayB0aGVyZSB3aWxsIGJlIHBy
b2JsZW0gd2l0aCBteSBsaWJyYXJpZXMuIFRoZSBVSEQgSSBpbnN0YWxsZWQNCj4+PiB2aWEgYmlh
bmFyaWVzDQo+Pj4gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvdWhkL2xhdGVzdF9y
ZWxlYXNlLzQuMy4wLjAvV2luZG93cy0xMC14NjQvDQo+Pj4gYW5kIHRoZSBib29zdCBzYW1lDQo+
Pj4gaHR0cHM6Ly9zb3VyY2Vmb3JnZS5uZXQvcHJvamVjdHMvYm9vc3QvZmlsZXMvYm9vc3QtYmlu
YXJpZXMvMS44Mi4wLy4NCj4+Pg0KPj4+IFNlbnQgd2l0aCBQcm90b24gTWFpbCBodHRwczovL3By
b3Rvbi5tZS8gc2VjdXJlIGVtYWlsLg0KPj4+DQo+Pj4gLS0tLS0tLSBPcmlnaW5hbCBNZXNzYWdl
IC0tLS0tLS0NCj4+PiBPbiBNb25kYXksIEFwcmlsIDE3dGgsIDIwMjMgYXQgMTA6MTQsIE1hcmN1
cyBNw7xsbGVyDQo+Pj4gbWFyY3VzLm11ZWxsZXJAZXR0dXMuY29tIHdyb3RlOg0KPj4+DQo+Pj4+
IEhpIE9sbywNCj4+Pj4NCj4+Pj4gbm9ib2R5J3MgZ29pbmcgdG8gYmUgbWFkIGF0IHlvdSBiZWNh
dXNlIG9mIHlvdXIgRW5nbGlzaCwgd2hpY2gsIGJ5DQo+Pj4+IHRoZSB3YXksIGlzIHZlcnkgZ29v
ZCEgRW5nbGlzaCBpc24ndCBteSBmaXJzdCBsYW5ndWFnZSwgZWl0aGVyIDopDQo+Pj4+IFdlbGNv
bWUgdG8gdGhlIFVTUlAgZGV2ZWxvcGVyIGNvbW11bml0eS4NCj4+Pj4NCj4+Pj4gU28sIGxldCdz
IHRhY2tsZSB0aGlzIG9uZSBieSBvbmU6DQo+Pj4+DQo+Pj4+IElmIHlvdSB0YWtlIHRoZSBjb2Rl
IGZyb20gaW5pdF91c3JwLmNwcCBbMV0gYW5kIHRyeSB0byBjb21waWxlIGl0IGluDQo+Pj4+IHlv
dXIgcHJvamVjdCBpbnN0ZWFkIG9mIHlvdXIgb3duIGNvZGUsIGRvZXMgaXQgYWxzbyBzZWdmYXVs
dD8NCj4+Pj4NCj4+Pj4gSWYgbm90LCB0aGVuIHdlIG5lZWQgdG8gbG9vayBhdCB5b3VyIGNvZGUu
DQo+Pj4+DQo+Pj4+IElmIHllcywgdGhlbiB3ZSBuZWVkIHRvIGxvb2sgYXQgeW91ciBjb21waWxh
dGlvbiBzZXR0aW5ncy4gSSdtIG5vdCBhDQo+Pj4+IFdpbmRvd3MgdXNlciBteXNlbGYsIGJ1dCBJ
IHJlbWVtYmVyIChhdCBsZWFzdCBvbGRlcikgTVNWQyB3YXMgbm90DQo+Pj4+IGhhcHB5IHdoZW4g
eW91IG1peCBkZWJ1ZyBidWlsZHMgb2YgbGlicmFyaWVzIGFuZCByZWxlYXNlIGJ1aWxkcyBvZg0K
Pj4+PiBzb2Z0d2FyZSwgb3IgdmljZSB2ZXJzYS4NCj4+Pj4NCj4+Pj4gQmVzdCByZWdhcmRzLA0K
Pj4+PiBNYXJjdXMNCj4+Pj4NCj4+Pj4gWzFdDQo+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1
c1Jlc2VhcmNoL3VoZC90cmVlL1VIRC00LjMvaG9zdC9leGFtcGxlcy9pbml0X3VzcnANCj4+Pj4N
Cj4+Pj4gT24gMTcuMDQuMjMgMDk6MTgsIE9sbyB2aWEgVVNSUC11c2VycyB3cm90ZToNCj4+Pj4N
Cj4+Pj4+IEhlbGxvLA0KPj4+Pj4gSW0gdHJ5aW5nIHRvIHdvcmsgd2l0aCBteSBCMjEwIGluIFF0
LiBUaGUgdGhpbmcgaXMgSSBoYXZlIGFkZGVkIGluDQo+Pj4+PiAucHJvIGZpbGUgKHVzaW5nIHFt
YWtlKSBVSEQgKDQuMy4wLjApIGxpYiBhbmQgaW5jbHVkZSBoZWFkZXIgZmlsZXMNCj4+Pj4+IHRv
IG15IHByb2plY3Qgd2l0aCBib29zdCAoMS44Mi4wKSBsaWJyYXJ5IGFuZCBJIGNhbnQgZG8gcHJl
dHR5IG11dGNoDQo+Pj4+PiBhbnl0aGluZy4gSSB0cmllZCB0byBsaXN0IGFsbCBkZXZpY2VzIGFu
ZCBJIGNhbnQgZXZlbnQgc2V0DQo+Pj4+PiB1aGQ6OmRldmljZV9hZGRyX3QgaGludDsgYmVjYXVz
ZSBJIGdvdCBleGVwdGlvbiB0aGVyZSAoU3RvcHBlZCBpbg0KPj4+Pj4gdGhyZWFkIDAgYnk6IEV4
Y2VwdGlvbiBhdCAuLi4gcmVhZCBhY2Nlc3MgdmlvbGF0aW9uIC4uLikuIFRoZQ0KPj4+Pj4gZXhh
bXBsZXMgaW4gVUhEIGZvbGRlciB3b3JrcyBncmVhdC4gUGxlYXNlIGRvbnQgYmUgbWFkIGF0IG1l
IGJlY2F1c2UNCj4+Pj4+IG9mIG15IGVuZ2xpc2ggb3IgbGFjayBvZiBpbmZvIGJ1dCBJIGZlbGwg
bGlrZSBJbSByZWFsbHkgbG9zdCBhdCB0aGlzDQo+Pj4+PiBwb2ludC4NCj4+Pj4+DQo+Pj4+PiBt
eSBTVzoNCj4+Pj4+IC13aW5kb3dzIDEwDQo+Pj4+PiAtUXQgNS4xMi4yDQo+Pj4+PiAtbXN2YzIw
MTkgeDY0DQo+Pj4+PiAtdWhkIDQuMy4wLjANCj4+Pj4+IC1ib29zdCAxLjgyLjANCj4+Pj4+DQo+
Pj4+PiBUaGFua3MgZm9yIGFueSByZXNwb25zZS4NCj4+Pj4+IE9sbw0KPj4+Pj4NCj4+Pj4+IFNl
bnQgd2l0aCBQcm90b24gTWFpbCBodHRwczovL3Byb3Rvbi5tZS8gc2VjdXJlIGVtYWlsLg0KPj4+
Pj4NCj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQo+Pj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+Pj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tDQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
