Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 635B1A40571
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 05:22:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F016385AB3
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 23:22:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740198134; bh=//BttZ7gC5joYrHwWzx/frN93c9giC8qxvPUfvyQtw8=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cWrA3XLBai93w/95hitty1WO0+U+v6EdbtEbqVVdlBk+E/wDhWYxqWVnwwgEp2VEr
	 ev3WGWXEOfk0OMIARfFWd9Gof07wq8EXIbSz1+jLNcGKCd7Rj8uc/eThdEgQsZKoXm
	 BOkdefhmOu1EdxeWjyWUnbKgWjJa0XzJ5JN+5NEnr5j7Tr+ByLPmITAHlfWFxPJG8N
	 WHzQaY95Hlxokp/gHnQMEHBwGsEmBxuwNy4O+Yi5TG9NnlmHvL3ML1o1B38xpdO2+8
	 YSzr7w67YfjV1vCs9UUqAOL3DTO5l1sjXsXWR8HMX0ec2SM7QAOFJs3LxCtnih07qo
	 9z0m7RBIa5QDw==
Received: from omta039.useast.a.cloudfilter.net (omta039.useast.a.cloudfilter.net [44.202.169.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 83A863855CA
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 23:22:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="EFfPZDTt";
	dkim-atps=neutral
Received: from eig-obgw-6005a.ext.cloudfilter.net ([10.0.30.201])
	by cmsmtp with ESMTPS
	id lL77tQFwJVkcRlh1lt1Vta; Sat, 22 Feb 2025 04:22:09 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id lh1htyJngvt5Ylh1jtzvXj; Sat, 22 Feb 2025 04:22:09 +0000
X-Authority-Analysis: v=2.4 cv=c9JgQg9l c=1 sm=1 tr=0 ts=67b950f1
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=kVywuAJEAAAA:8 a=etiEgX_XAAAA:8
 a=50BE3Q_YSSnPM9OSgHQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=26tcdy2dAj9m90MLnbb2:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rdJ5Llp+aG1Y/a5AcHUGs3TQ5GsbvIhYEi22rg4mTsE=; b=EFfPZDTtSKZYX+t6NmTb1JxItB
	YCYBvcEvRJQ7VnJAsJ+uqEIXlJKTLYUzqsXHkIJZ9Vek4MxZNU/JMpzso+ei70vEV0MpppS2f9JRC
	t8gTkjGovCeQ2qnXT5y+dBekLFae0YzWK8xMMpTAPy/5N2SlhAGnX9txNxWfXXNgmx/JWKevusPxS
	9hAVz+Sw3bqXCbAOCw901p8ACj7BtK8VrAEzUg/xbbyXsrksCxH0pEUKVUJGn9LqDy70J3cIoE7Vy
	Wnhoz2EsYzITKZ5nvaBmHn935oOegEeCfLXpvF+OyqilWGD1Ir9Sgjba/Fgeg6XGogzYM93Y08rEt
	3swzKd6A==;
Received: from [::1] (port=48458 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tlh1c-0001I6-27;
	Fri, 21 Feb 2025 23:22:04 -0500
MIME-Version: 1.0
Date: Fri, 21 Feb 2025 23:22:04 -0500
From: kavinraj@atindriya.co.in
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
X-Sender: kavinraj@atindriya.co.in
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.atindriya.co.in
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - atindriya.co.in
X-Get-Message-Sender-Via: server.atindriya.co.in: authenticated_id: kavinraj@atindriya.co.in
X-Authenticated-Sender: server.atindriya.co.in: kavinraj@atindriya.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4xfHV1a/lBVYAHEXZhVhgVQx6KuopLehxs7CoRFAPZT61uLKbAanxQXby6Ng5rzq16elvOeV/rRVLjW1rB0DHxrAaITL/Ydrou9HydIqSoKZkcftg9ob27
 d94jH/91aXN2WBi02TfeeHzKQL+vqOEdXo31poMwmaOeHwIBCYrvnNGaQE99KnVHJ1R2C7bJyGtIA76WBZPVOSS3RGNEDAueafI=
Message-ID-Hash: MLCIFTMWQWGATHMJDKFXWO3SWSCIFFZF
X-Message-ID-Hash: MLCIFTMWQWGATHMJDKFXWO3SWSCIFFZF
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MLCIFTMWQWGATHMJDKFXWO3SWSCIFFZF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogIFRoYW5rcyBmb3IgYW5zd2VyaW5nLg0KICBDYW4geW91IGV4cGxhaW4gbWUgY2xlYXJs
eT8NCg0KVGhhbmtzLg0KDQoNCg0KT24gMjAyNS0wMi0yMSAyMzoxMSwgTWFyY3VzIEQuIExlZWNo
IHdyb3RlOg0KPiBPbiAyMS8wMi8yMDI1IDIzOjA1LCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4g
d3JvdGU6DQo+PiBIaSwNCj4+IMKgwqAgSW4gVVNSUCBCMjA1bWluaS1pIEkgYW0gYWJsZSB0byBh
Y2Nlc3MgdGhlIEdQSU8gUGluLiBJIGhhdmUgdG8gDQo+PiBjcmVhdGUgYSBQdWxzZSBpbiB0aGUg
R1BJTyBwaW4uIEkgd2FudCB0byBtYWtlIGhpZ2ggdGhlIGdwaW8gcGluIGZvciANCj4+IDFtaWNy
b3NlY29uZCBhbmQgbG93IGZvciA5OTltaWNyb3NlY29uZHMuIEhvdyB0byBhY2hpZXZlIHRoaXMg
dGltaW5ncyANCj4+IHRocm91Z2ggY29kaW5nLiBDYW4geW91IGdpdmUgbWUgdGhlIHNvbHV0aW9u
IGZvciB0aGlzPw0KPj4gDQo+PiDCoMKgIEluIGNvZGluZyBhZnRlciBtYWtpbmcgaGlnaCBJIGFt
IGdpdmluZyB1c2xlZXAoMSkgZnVuY3Rpb24gYnV0IHdoZW4gDQo+PiBJIGFtIGNoZWNrIGluIHRo
ZSBvc2NpbGxvc2NvcGUgaXQgaXMgc2hvd2luZyA2NG1pY3Jvc2Vjb25kcy4gSG93Pw0KPj4gDQo+
PiANCj4gQmVjYXVzZSBhbiBhcHBsaWNhdGlvbi1sYW5kIHByb2dyYW0gZXhlY3V0aW5nIG9uIGFu
IG9yZGluYXJ5IA0KPiBnZW5lcmFsLXB1cnBvc2Ugb3BlcmF0aW5nIHN5c3RlbSBpcyB1bmxpa2Vs
eSB0byBiZSBhYmxlIHRvDQo+IMKgIGFjaGlldmUgcmVwZWF0YWJsZSwgMXVzZWMtc2NhbGUgdGlt
aW5nLsKgIFRoaXMgaGFzIG5vdGhpbmcgdG8gZG8sIHBlciANCj4gc2UsIHdpdGggVUhEIG9yIFVT
UlBzLCBidXQgcmF0aGVyLCB0byB1bmRlcnN0YW5kaW5nDQo+IMKgIGhvdyBhcHBsaWNhdGlvbnMg
ZXhlY3V0ZSBpbiBhIGdlbmVyYWwtcHVycG9zZSBvcGVyYXRpbmcgc3lzdGVtIHRoYXQgDQo+IGlz
bid0IHJ1dGhsZXNzbHkgb3B0aW1pemVkIGZvciAiaGFyZCIgcmVhbC10aW1lIHRhc2tzLg0KPiAN
Cj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
