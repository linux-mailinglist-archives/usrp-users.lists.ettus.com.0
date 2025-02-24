Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C410DA42058
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 14:19:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C2793862FD
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 08:19:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740403197; bh=PQG/hTKheDyjxIwkSkVLAdjFTLeY+uLKCQML+bPDsas=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qDIk3qER1f5i03atUb33H5b1r76IccAW3isDDNmpLFlMnGLw81C/g3ITz4ra8GOzq
	 eSTTBYu9gjUBKDoOlr+8cNrdHYsq2F+akdW0iPHwlapJhkcvE4lKWQLvE8dUJDoxbU
	 CEK1xytaD0QmZA4yV8WRqWloupzeFkoQV5Py/qx75ytAkNrJlfLpZBp2w2P8jv2T0+
	 ZRhr15Bm9LtsO2ZwvprNo3HwQoDwbeOha8ExuhJa3cpHmq8+9fS4ORs7Xw1FurWV+E
	 wrmyh78hGeYHNzcGkH6e12mBHXs0IZYh2CaPRaj7UElb+B9CVv1FtEFtPHtsE5oFGr
	 4s3QutXyuyHAQ==
Received: from omta33.uswest2.a.cloudfilter.net (omta33.uswest2.a.cloudfilter.net [35.89.44.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 09764384E0C
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 08:18:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="rymFDz3H";
	dkim-atps=neutral
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id mU22t2sVmWuHKmYMJtsZ3F; Mon, 24 Feb 2025 13:18:55 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id mYMEt1SY06YSOmYMHtaI5c; Mon, 24 Feb 2025 13:18:55 +0000
X-Authority-Analysis: v=2.4 cv=La466Cfi c=1 sm=1 tr=0 ts=67bc71bf
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=vnREMb7VAAAA:8 a=etiEgX_XAAAA:8
 a=kVywuAJEAAAA:8 a=RoQW9buJb9pefATZnrAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-1zhkmE011UA:10 a=MLbIUA-Bjd6y1alW9qBG:22 a=26tcdy2dAj9m90MLnbb2:22
 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wtBm8fhPVTFxs8274yOYuVRCs0lryVWWTcoZLJCzAk4=; b=rymFDz3HGUR9h25pkH4F+dC52n
	mVurrOTBbBowPRUsI5W6S3HITbKz+K3cE5Ih2hTihTkHjabJ80T3WH1uS7VbPjXKrZOm47xpsXhrj
	X48bD2nFhNX8G9KlMf1gBXccQM/hJZjFqx2ZqjHfaZb2VOYKkRA/Jo0MKXFadEBnMLY3lKh7V5Ju3
	yr0SrCYh59zEsWOBW0DygmKUPsKjWCpHNw62gkZDH/JfCM5cGkxG27UoKoujdVKD9KWAx+ws60uf6
	Qt5N6DlWE4IDby5SlYSzqiRdWmr5h/AXAK7GEzExnpI9j2fpazAmyY5LF9bSZavVc2xZ7VN9KM3+R
	uObVghJw==;
Received: from [::1] (port=56796 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tmYMC-0007zf-0O;
	Mon, 24 Feb 2025 08:18:48 -0500
MIME-Version: 1.0
Date: Mon, 24 Feb 2025 08:18:48 -0500
From: kavinraj@atindriya.co.in
To: Martin Braun <martin.braun@ettus.com>
In-Reply-To: <CAFOi1A41-FWe+NdLk4JVHgNScKgsEx-9qo5sc-MqTZWLCTqAgw@mail.gmail.com>
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
 <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
 <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
 <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com>
 <594aa31a69b35f8e23be755e5075d740@atindriya.co.in>
 <CAFOi1A6cNimH2QuNARK_Ls6bss_cWj1Mty0--WHDet69fO4xiA@mail.gmail.com>
 <5503a163d7cf84d2043aa19a5d1e3c6b@atindriya.co.in>
 <CAFOi1A41-FWe+NdLk4JVHgNScKgsEx-9qo5sc-MqTZWLCTqAgw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <908f86e0166baf69aade586271bc5918@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfPymLZioEljndHuvb9odfYulkxCT97EhwixYtW30e/uefPFQBlypzJRoCF6xdVdTLJhFmCTq3dLZ06tOQsvWp+/9m/f6vn+Rpgk70NlmaZPdgOPAfRpi
 yMzolGGJ6uVe3wmE/bmvs0kwTTo7S+AxVZTatfawGgtQsdMjrTk+FPWkhGBfsc4nXd4jv7YXQukJIiiNET2n3zuslOl8rj2pPCk=
Message-ID-Hash: JZF5BSCZZDNLD37EMCFCZJAWKHTO5KGT
X-Message-ID-Hash: JZF5BSCZZDNLD37EMCFCZJAWKHTO5KGT
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JZF5BSCZZDNLD37EMCFCZJAWKHTO5KGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICAgICAgd2hpbGUoMSkNCiAgICAgew0KICAgICAgICAgdWhkX3VzcnBfZ2V0X3RpbWVf
bm93KHVzcnAsIG1ib2FyZCwgJmZ1bGxfc2VjcywgJmZyYWNfc2Vjcyk7DQogICAgICAgICB1aGRf
dXNycF9zZXRfY29tbWFuZF90aW1lKHVzcnAsIGZ1bGxfc2VjcyAsIGZyYWNfc2VjcyArIDFlLTYs
IA0KbWJvYXJkKTsNCiAgICAgICAgIGVycm9yID0gdWhkX3VzcnBfc2V0X2dwaW9fYXR0cih1c3Jw
LCBiYW5rLCAiT1VUIiwgMHgwMSwgbWFzazEsIA0KbWJvYXJkKTsNCiAgICAgICAgIHVoZF91c3Jw
X2NsZWFyX2NvbW1hbmRfdGltZSh1c3JwLCAwKTsNCiAgICAgICAgIHVoZF91c3JwX2dldF90aW1l
X25vdyh1c3JwLCBtYm9hcmQsICZmdWxsX3NlY3MsICZmcmFjX3NlY3MpOw0KICAgICAgICAgdWhk
X3VzcnBfc2V0X2NvbW1hbmRfdGltZSh1c3JwLCBmdWxsX3NlY3MgLCBmcmFjX3NlY3MgKyAxZS0z
LCANCm1ib2FyZCk7DQogICAgICAgICBlcnJvciA9IHVoZF91c3JwX3NldF9ncGlvX2F0dHIodXNy
cCwgYmFuaywgIk9VVCIsIDB4MDAsIG1hc2sxLCANCm1ib2FyZCk7DQogICAgICAgICB1aGRfdXNy
cF9jbGVhcl9jb21tYW5kX3RpbWUodXNycCwgMCk7DQogICAgIH0NCg0KDQogICBXaGV0aGVyIHRo
aXMgYyBjb2RlIGlzIGNvcnJlY3Qgb3Igbm90Pw0KDQpUaGFua3MuDQoNCg0KDQpPbiAyMDI1LTAy
LTI0IDA4OjE0LCBNYXJ0aW4gQnJhdW4gd3JvdGU6DQo+IEFzc3VtaW5nIHRfaGlnaCBpcyBhIHVo
ZDo6dGltZV9zcGVjX3QgdGhhdCBtYXJrcyB0aGUgc3RhcnQgdGltZSBvZg0KPiB5b3VyIEhJR0gg
c3RhdGUsIHNpbXBseSBkbw0KPiANCj4gYXV0byB0X2xvdyA9IHRfaGlnaCArIDFlLTY7DQo+IA0K
PiBhbmQgdGhlbiB1c2UgdF9sb3cgZm9yIHlvdXIgc2Vjb25kIHRpbWVkIGNvbW1hbmQ6DQo+IA0K
PiB1c3JwLT5zZXRfY29tbWFuZF90aW1lKHRfaGlnaCk7DQo+IHVzcnAtPnNldF9ncGlvX2F0dHIo
Lyogc2V0IHlvdXIgcGluIGhpZ2ggKi8pOw0KPiB1c3JwLT5zZXRfY29tbWFuZF90aW1lKHRfbG93
KTsNCj4gDQo+IHVzcnAtPnNldF9ncGlvX2F0dHIoLyogc2V0IHlvdXIgcGluIGxvdyAqLyk7DQo+
IA0KPiAtLU0NCj4gDQo+IE9uIE1vbiwgRmViIDI0LCAyMDI1IGF0IDk6NDXigK9BTSA8a2F2aW5y
YWpAYXRpbmRyaXlhLmNvLmluPiB3cm90ZToNCj4gDQo+PiBIaSwNCj4+IFdoYXQgaXMgdGhlIG1p
bmltdW0gdGltZSB0byB0b2dnbGUgdGhlIEdQSU8gcGluPw0KPj4gSSB3YW50IHRvIG1ha2UgdGhl
IEdQSU8gcGluIGhpZ2ggZm9yIDFtaWNyb3NlY29uZCBhbmQgbG93IGZvcg0KPj4gMW1pbGxpc2Vj
b25kcy4gSG93IGkgYWNoaWV2ZSB0aGlzIHRocm91Z2ggY29kZT8NCj4+IA0KPj4gVGhhbmtzLg0K
Pj4gDQo+PiBPbiAyMDI1LTAyLTI0IDAxOjU3LCBNYXJ0aW4gQnJhdW4gd3JvdGU6DQo+Pj4gWW91
IGRvbid0IHNwZWNpZnkgYSBkZWxheSwgeW91IHNlbmQgb25lIHRpbWVkIGNvbW1hbmQgdG8gbWFr
ZSB0aGUNCj4+IHBpbg0KPj4+IGdvIEhJR0gsIGFuZCBhbm90aGVyIHRpbWVkIGNvbW1hbmQgdG8g
bWFrZSBpdCBnbyBMT1cuIEFuZCB0aGUgdHdvDQo+Pj4gY29tbWFuZC10aW1lcyBzaG91bGQgYmUg
InlvdXIgZGVsYXkiIGFwYXJ0Lg0KPj4+IA0KPj4+IFRoaXMgbWF5IGhlbHA6DQo+Pj4gDQo+PiAN
Cj4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1wcEQwNlpFVG5layZ0PTc1cyZwcD15
Z1VQWjNKamIyNGdkWE55Y0NCbmNHbHYNCj4+PiANCj4+PiAtLU0NCj4+PiANCj4+PiBPbiBTYXQs
IEZlYiAyMiwgMjAyNSBhdCAxMjoxMuKAr1BNIDxrYXZpbnJhakBhdGluZHJpeWEuY28uaW4+DQo+
PiB3cm90ZToNCj4+PiANCj4+Pj4gSGksDQo+Pj4+IEhvdyB0byBnaXZlIHRoZSBkZWxheSBpbg0K
Pj4+PiB1aGRfdXNycF9zZXRfY29tbWFuZF90aW1lKHVoZF91c3JwX2hhbmRsZQ0KPj4+PiBoLGlu
dDY0X3QgZnVsbF9zZWNzLGRvdWJsZSBmcmFjX3NlY3Msc2l6ZV90IG1ib2FyZCkgZnVuY3Rpb24/
DQo+Pj4+IA0KPj4+PiBPbiAyMDI1LTAyLTIyIDAwOjEwLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6
DQo+Pj4+PiBPbiAyMS8wMi8yMDI1IDIzOjU2LCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4gd3Jv
dGU6DQo+Pj4+Pj4gSGksDQo+Pj4+Pj4gQ2FuIEkgdXNlIHVzbGVlcCgxKSBvciBhbnkgb3RoZXIg
dGVjaG5pcXVlIGlzIHRoZXJlIGZvciBHUElPIC4NCj4+Pj4+PiANCj4+Pj4+IFlvdSBtaWdodCBi
ZSBhYmxlIHRvIHVzZSB0aW1lZCBjb21tYW5kczoNCj4+Pj4+IA0KPj4+Pj4gDQo+Pj4+IA0KPj4+
IA0KPj4gDQo+IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3RpbWVkY21kcy5o
dG1sI3RpbWVkY21kc19nZW5fY21kcw0KPj4+Pj4gDQo+Pj4+PiBCdXQgc2luY2UgdXNsZWVwKCkg
Y2Fubm90IGd1YXJhbnRlZSBhbnkga2luZCBvZiBtYXhpbXVtIHBlcmlvZA0KPj4+PiB0aGF0DQo+
Pj4+PiB5b3VyIHByb2Nlc3Mgd2lsbCBnbyB0byBzbGVlcCwgaXQgaXMgYW4gdW5yZWxpYWJsZQ0K
Pj4+Pj4gbWV0aG9kIHdoZW4gcHJlY2lzaW9uIGFuZCByZXBlYXRhYmxlIHRpbWluZyBvZiBBTlkg
a2luZCBvZg0KPj4+PiAiZG9pbmcNCj4+Pj4+IHN0dWZmIHdpdGggZXh0ZXJuYWwgaGFyZHdhcmUi
IGlzIHJlcXVpcmVkLiAgRXZlbiBpZg0KPj4+Pj4gdXNsZWVwKCkgYXQgbWljcm9zZWNvbmQtc2Nh
bGUgaW50ZXJ2YWxzICpXQVMqIHJlbGlhYmxlIGFuZA0KPj4+Pj4gcmVwZWF0YWJsZSwgdGhlcmUn
cyBubyBndWFyYW50ZWUgYWJvdXQgYWxsIHRoZSAqb3RoZXIqIHRoaW5ncw0KPj4+Pj4gdGhhdCBh
cmUgcmVxdWlyZWQgdG8gbGF1bmNoIGEgY29tbWFuZCBvdmVyIGENCj4+Pj4gbGF0ZW5jeS1ub3Qt
Z3VhcmFudGVlZA0KPj4+Pj4gYnVzIHRvIHRoZSBleHRlcm5hbCBoYXJkd2FyZSwgaW5jbHVkaW5n
IGtlcm5lbC1sYXllcg0KPj4+Pj4gVVNCIGRyaXZlcnMsIGV0YywgZXRjLg0KPj4+Pj4gDQo+Pj4+
PiANCj4+Pj4+PiANCj4+Pj4+PiBPbiAyMDI1LTAyLTIxIDIzOjM3LCBNYXJjdXMgRC4gTGVlY2gg
d3JvdGU6DQo+Pj4+Pj4+IE9uIDIxLzAyLzIwMjUgMjM6MjIsIGthdmlucmFqQGF0aW5kcml5YS5j
by5pbiB3cm90ZToNCj4+Pj4+Pj4+IEhpLA0KPj4+Pj4+Pj4gVGhhbmtzIGZvciBhbnN3ZXJpbmcu
DQo+Pj4+Pj4+PiBDYW4geW91IGV4cGxhaW4gbWUgY2xlYXJseT8NCj4+Pj4+Pj4+IA0KPj4+Pj4+
Pj4gVGhhbmtzLg0KPj4+Pj4+PiBJJ2Qgc3VnZ2VzdCwgYXQgYSBtaW5pbXVtLCBsb29raW5nIGF0
IHRoZSBNQU4gcGFnZSBmb3INCj4+IHVzbGVlcCgpLg0KPj4+Pj4+PiANCj4+Pj4+Pj4gDQo+Pj4+
Pj4+PiANCj4+Pj4+Pj4+IA0KPj4+Pj4+Pj4gDQo+Pj4+Pj4+PiBPbiAyMDI1LTAyLTIxIDIzOjEx
LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+Pj4+Pj4+Pj4gT24gMjEvMDIvMjAyNSAyMzowNSwg
a2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPj4+Pj4+Pj4+PiBIaSwNCj4+Pj4+Pj4+
Pj4gSW4gVVNSUCBCMjA1bWluaS1pIEkgYW0gYWJsZSB0byBhY2Nlc3MgdGhlIEdQSU8gUGluLiBJ
DQo+Pj4+IGhhdmUgdG8NCj4+Pj4+Pj4+Pj4gY3JlYXRlIGEgUHVsc2UgaW4gdGhlIEdQSU8gcGlu
LiBJIHdhbnQgdG8gbWFrZSBoaWdoIHRoZQ0KPj4gZ3Bpbw0KPj4+PiBwaW4NCj4+Pj4+Pj4+Pj4g
Zm9yIDFtaWNyb3NlY29uZCBhbmQgbG93IGZvciA5OTltaWNyb3NlY29uZHMuIEhvdyB0bw0KPj4g
YWNoaWV2ZQ0KPj4+PiB0aGlzDQo+Pj4+Pj4+Pj4+IHRpbWluZ3MgdGhyb3VnaCBjb2RpbmcuIENh
biB5b3UgZ2l2ZSBtZSB0aGUgc29sdXRpb24gZm9yDQo+Pj4+IHRoaXM/DQo+Pj4+Pj4+Pj4+IA0K
Pj4+Pj4+Pj4+PiBJbiBjb2RpbmcgYWZ0ZXIgbWFraW5nIGhpZ2ggSSBhbSBnaXZpbmcgdXNsZWVw
KDEpIGZ1bmN0aW9uDQo+Pj4+IGJ1dA0KPj4+Pj4+Pj4+PiB3aGVuIEkgYW0gY2hlY2sgaW4gdGhl
IG9zY2lsbG9zY29wZSBpdCBpcyBzaG93aW5nDQo+Pj4+IDY0bWljcm9zZWNvbmRzLg0KPj4+Pj4+
Pj4+PiBIb3c/DQo+Pj4+Pj4+Pj4+IA0KPj4+Pj4+Pj4+PiANCj4+Pj4+Pj4+PiBCZWNhdXNlIGFu
IGFwcGxpY2F0aW9uLWxhbmQgcHJvZ3JhbSBleGVjdXRpbmcgb24gYW4gb3JkaW5hcnkNCj4+Pj4+
Pj4+PiBnZW5lcmFsLXB1cnBvc2Ugb3BlcmF0aW5nIHN5c3RlbSBpcyB1bmxpa2VseSB0byBiZSBh
YmxlIHRvDQo+Pj4+Pj4+Pj4gYWNoaWV2ZSByZXBlYXRhYmxlLCAxdXNlYy1zY2FsZSB0aW1pbmcu
ICBUaGlzIGhhcyBub3RoaW5nIHRvDQo+Pj4+IGRvLA0KPj4+Pj4+Pj4+IHBlciBzZSwgd2l0aCBV
SEQgb3IgVVNSUHMsIGJ1dCByYXRoZXIsIHRvIHVuZGVyc3RhbmRpbmcNCj4+Pj4+Pj4+PiBob3cg
YXBwbGljYXRpb25zIGV4ZWN1dGUgaW4gYSBnZW5lcmFsLXB1cnBvc2Ugb3BlcmF0aW5nDQo+Pj4+
IHN5c3RlbQ0KPj4+Pj4+Pj4+IHRoYXQgaXNuJ3QgcnV0aGxlc3NseSBvcHRpbWl6ZWQgZm9yICJo
YXJkIiByZWFsLXRpbWUgdGFza3MuDQo+Pj4+Pj4+Pj4gDQo+Pj4+Pj4+Pj4gDQo+Pj4+Pj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+Pj4+Pj4+
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4+Pj4+Pj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8NCj4+Pj4gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+Pj4+Pj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0bw0KPj4gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4+
Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
