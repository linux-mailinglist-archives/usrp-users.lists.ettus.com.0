Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B74A42072
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 14:23:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BF77386316
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 08:23:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740403388; bh=NMUArKcnxxfrPhSkfWcz1k8x2fGLE/gJNiK6D8uPX+w=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=adD1kXhG7HuAMuOkGLxXG6nNo3BT1XkNTu+HrnHbmI/oOLO47HVdLF4fMalJui6qN
	 oRspOvvJt2RZx5xpe1V8LagEZPJmACLQkUMvCGCcBFOfa0t4MOM1N8c0TPMpuJwrOP
	 lLaTHPMbLMtYAjE/ZTpDgla7lvDvaqIrhZjbudavfVBS1uwKKo5FBWihOPSAMOWLwo
	 PR87Gz/d18jxOLB4/pxR4CfjyWm1oaa8iq2YUm5GcqtUFUJ5Ewtgqks+tAM5PJVFEN
	 qIki3F840rM7m6XsGbdM2waEkuxfKapt/mn2U6u+ni6eJ9XssJK/4hWPhEvwlOA0QR
	 beW7ISIqJuZAw==
Received: from omta033.useast.a.cloudfilter.net (omta033.useast.a.cloudfilter.net [44.202.169.32])
	by mm2.emwd.com (Postfix) with ESMTPS id A404E384E13
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 08:22:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="GmO2xJO0";
	dkim-atps=neutral
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id mEhBt9XHuXshwmYPVtXsT5; Mon, 24 Feb 2025 13:22:13 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id mYPRtiki7NMSlmYPTtXUTK; Mon, 24 Feb 2025 13:22:12 +0000
X-Authority-Analysis: v=2.4 cv=K9DpHDWI c=1 sm=1 tr=0 ts=67bc7285
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=kVywuAJEAAAA:8 a=etiEgX_XAAAA:8
 a=UGmXJMKWaRGo9wyA64gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=26tcdy2dAj9m90MLnbb2:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/MlgKsOvTHJQdpirhbYYJOjotqdfnKh0TeEoRA10ILc=; b=GmO2xJO01F5RKByiTwDRPIIOko
	tofUjlosujw3u6LYNDkCLK+y+F12P50l7DokFK2dAn0ZdBLTEd3rKXGK2CBBN3m6X7St5D0WDoaiG
	VnitE8Vn5+y/A17ODnrJQOzLujA4aIpe7GW4RWI/GTdvV6QuioT4Il2e5ecE0rwobUEqhNWj1S1j/
	bsUDDbSn3WXzBAT1tAzEBsb94Nie8K5GgspqX7aaPIABhYyHakasaRuQozzSr3uil5ISFBzNKbAx+
	lEFtJ6uzGJAZ0mqzayNDwHlSGqG41Yk3IjoNwffT/yMeLJuQWOtWhg48jC5PHwbdaan9+cf/Cy3GT
	iwvT+LJQ==;
Received: from [::1] (port=56886 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tmYPO-00082K-1W;
	Mon, 24 Feb 2025 08:22:07 -0500
MIME-Version: 1.0
Date: Mon, 24 Feb 2025 08:22:07 -0500
From: kavinraj@atindriya.co.in
To: Martin Braun <martin.braun@ettus.com>
In-Reply-To: <CAFOi1A4rwyzhAWPuNZouL964usyrmED+0N7HTpFDS-5A0Gau-g@mail.gmail.com>
References: <2165ec090211cdd30453512262418412@atindriya.co.in>
 <CAFOi1A4rwyzhAWPuNZouL964usyrmED+0N7HTpFDS-5A0Gau-g@mail.gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <9ebc494d1aeb7d245f22d8b606afe03b@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfFAqj363f72ba4zcY94pTTKxZMPadliebvgYn1AJZzJTnfnwLqMXL7EfTfyjhq9UQ+9gCu28vfIX/1ZhhBfF9Dp+ZCu4wc8ya56wjsKNF7o51AFfHROu
 kFzMpN7a55X+/JI4/KUTj/+zt1NgfkB4vQZd0MCmMsyoHA0zACniRiGGU8bdLbhe0idc7EXPWpeJ97Jn8sAjisQrkjw0Sywv4vQ=
Message-ID-Hash: IUIBC52SEQQNGBYZ4ETWDHKCDXRJRSD4
X-Message-ID-Hash: IUIBC52SEQQNGBYZ4ETWDHKCDXRJRSD4
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG: GPIO Toggling
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUIBC52SEQQNGBYZ4ETWDHKCDXRJRSD4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICBDYW4geW91IGdpdmUgbWUgdGhlIGNvcnJlY3RlZCBjIGNvZGUgZm9yIG15IGFwcGxp
Y2F0aW9uPw0KDQpUaGFua3MuDQoNCg0KDQpPbiAyMDI1LTAyLTI0IDA4OjE3LCBNYXJ0aW4gQnJh
dW4gd3JvdGU6DQo+IE9uIE1vbiwgRmViIDI0LCAyMDI1IGF0IDEwOjQy4oCvQU0gPGthdmlucmFq
QGF0aW5kcml5YS5jby5pbj4gd3JvdGU6DQo+IA0KPj4gSGksDQo+PiBJIGhhdmUgd3JpdHRlbiBh
IGMgY29kZSBmb3IgR1BJTyB0b2dnbGluZyBpbiBVU1JQIEIyMDVtaW5pLWkNCj4+IGJvYXJkLg0K
Pj4gVGhlIHBpbiBzaG91bGQgYmUgaGlnaCBmb3IgMW1pY3Jvc2Vjb25kcyBhbmQgbG93IGZvciAx
bWlsbGlzZWNvbmRzLg0KPj4gSQ0KPj4gaGF2ZSBnaXZlbiB0aGUgYyBjb2RlIHRvIHZlcmlmeSB3
aGV0aGVyIGl0IGlzIGNvcnJlY3Qgb3Igbm90Pw0KPj4gDQo+PiB3aGlsZSgxKQ0KPj4gew0KPj4g
dWhkX3VzcnBfZ2V0X3RpbWVfbm93KHVzcnAsIG1ib2FyZCwgJmZ1bGxfc2VjcywNCj4+ICZmcmFj
X3NlY3MpOw0KPj4gdWhkX3VzcnBfc2V0X2NvbW1hbmRfdGltZSh1c3JwLCBmdWxsX3NlY3MgLCBm
cmFjX3NlY3MgKw0KPj4gMWUtNiwNCj4+IG1ib2FyZCk7DQo+IA0KPiBUaGlzIHdvbid0IHdvcmss
IHlvdSBuZWVkIHRvIHNldCB0aGlzIGluIHRoZSBmdXR1cmUgZnJvbSAidGltZSBub3ciLg0KPiAN
Cj4+IGVycm9yID0gdWhkX3VzcnBfc2V0X2dwaW9fYXR0cih1c3JwLCBiYW5rLCAiT1VUIiwgMHgw
MSwNCj4+IG1hc2sxLA0KPj4gbWJvYXJkKTsNCj4+IHVoZF91c3JwX2NsZWFyX2NvbW1hbmRfdGlt
ZSh1c3JwLCAwKTsNCj4+IHVoZF91c3JwX2dldF90aW1lX25vdyh1c3JwLCBtYm9hcmQsICZmdWxs
X3NlY3MsDQo+PiAmZnJhY19zZWNzKTsNCj4+IHVoZF91c3JwX3NldF9jb21tYW5kX3RpbWUodXNy
cCwgZnVsbF9zZWNzICwgZnJhY19zZWNzICsNCj4+IDFlLTMsDQo+PiBtYm9hcmQpOw0KPiANCj4g
U2FtZSBoZXJlLg0KPiANCj4+IGVycm9yID0gdWhkX3VzcnBfc2V0X2dwaW9fYXR0cih1c3JwLCBi
YW5rLCAiT1VUIiwgMHgwMCwNCj4+IG1hc2sxLA0KPj4gbWJvYXJkKTsNCj4+IHVoZF91c3JwX2Ns
ZWFyX2NvbW1hbmRfdGltZSh1c3JwLCAwKTsNCj4+IH0NCj4gDQo+IEdldCB0aGUgdGltZSAibm93
IiBvdXRzaWRlIG9mIHRoZSBsb29wLCBhbmQgdXNlIHRoYXQgYXMgYSBiYXNlDQo+IHJlZmVyZW5j
ZS4gV2hlbiB5b3UndmUgZml4ZWQgdGhhdCwgSSByZWNvbW1lbmQgeW91IGNvbm5lY3QgaXQgdG8g
YW4NCj4gb3NjaWxsb3Njb3BlIGZvciB2ZXJpZmljYXRpb24uDQo+IA0KPiAtLU0NCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
