Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21060A05D11
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 14:42:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63FF7384A98
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 08:42:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736343763; bh=gABC857rzq03acqJxnZJaTg0w86KOxFjLFz2nRCWJGY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0gTnldBmzLP/sI0X8RXDTrjEDau9gAnPpSPhsgSQcsD25x+QLaZPtD+DZwX1+Qe+0
	 MnHsCwOnn0GOFaPjSGzhxwYcHjAP3vaWw2IjPHc4QNNRvuVy1o5ywhwJPrkw8r6ydZ
	 h8e0I9mfqmwZ9Ubb604p/kSrhCHrmR+nWaZmskwDxSb0V8G7t8RXS4ok5hBx5PEzrk
	 wty3ZLG4TtFB7/MZkUKQFgeUKEpgSj663PUCP1O5ALnsWXKmCEIQvkCrBsVk2HNm3p
	 3i4CnUc9U8CucclBDyhqcOTXXr10wf1773YPARw7jnAJpAi4SWn2giKcMZXc/BQTFt
	 uduwIgyj55g4Q==
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by mm2.emwd.com (Postfix) with ESMTPS id F3358384A98
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 08:42:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="eoV486J6";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 0210B60134
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 14:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1736343720;
	bh=w/CKYE+StF6VE2n6d8O5A0oiVibeySoJZHDg2/aALh8=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=eoV486J6N88TBQ06gHRKQBWRN/Q5YxGpX2wUwSep0skhEOyQe/aOlEip3PlQ70jWl
	 j50beig+1Y00OvXaGgbthbTlA65winLGxAEWmXvPiM7BKHOlDD5xVycx1qBChXl8lu
	 HC4L41zNI8P4porC+D978GVYPdX3sDV455ELqQ92H4a1fVP8w2RZNp9J5wuo+hSkTM
	 MNt69Kh8LJAUpQhE+IFtA7D37rKJjICrUMH0MshyECrWUNZgSliNq0PLKhv45uB8ZW
	 Wb/9xFm6yp2zMVEnPod8plbCfCAwK9c6ft/We6OmbPwu5XnkVhYQqz+vo1XTD8tKjn
	 SU1iLb+49SqWA==
Date: Wed, 8 Jan 2025 14:41:59 +0100 (CET)
From: friedtj@free.fr
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <579037119.852925152.1736343719961.JavaMail.zimbra@free.fr>
In-Reply-To: <222163733.852695787.1736342369255.JavaMail.zimbra@free.fr>
References: <596764823.847657463.1736318858776.JavaMail.zimbra@free.fr> <e635f7c6-86d1-4818-a5c8-30c3990cceec@gmail.com> <222163733.852695787.1736342369255.JavaMail.zimbra@free.fr>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF133 (Linux)/9.0.0_GA_1337)
Thread-Topic: X310 clock signal for aliasing (BasicRX daughter board)
Thread-Index: Y/kApInRfWR2kaVVyqzx0qvlVX+iXgsbpEOh
Message-ID-Hash: UBH7C5IDMQUDE2VZBQI2W4J2VK4SWOYN
X-Message-ID-Hash: UBH7C5IDMQUDE2VZBQI2W4J2VK4SWOYN
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBH7C5IDMQUDE2VZBQI2W4J2VK4SWOYN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yZ2V0IHRoaXMgZW1haWwgcGxlYXNlIC4uLiBJIGp1c3QgbmVlZCB0byBsZWFybiBob3cgdG8g
dXNlIGEgZGlnaXRhbCBvc2NpbGxvc2NvcGUuDQpBbGlhc2luZyBlcnJvciwgYWxsIHdvcmtpbmcg
dmVyeSB3ZWxsLCBvdXRwdXQgY2xvY2sgaXMgYXQgdGhlIGRlc2lyZWQgZnJlcXVlbmN5Lg0KDQoN
Ci0tLS0tIE1haWwgb3JpZ2luYWwgLS0tLS0NCkRlOiAiZnJpZWR0aiIgPGZyaWVkdGpAZnJlZS5m
cj4NCsOAOiAidXNycC11c2VycyIgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KRW52b3nD
qTogTWVyY3JlZGkgOCBKYW52aWVyIDIwMjUgMTQ6MTk6MjkNCk9iamV0OiBbVVNSUC11c2Vyc10g
UmU6IFgzMTAgY2xvY2sgc2lnbmFsIGZvciBhbGlhc2luZyAoQmFzaWNSWCBkYXVnaHRlciBib2Fy
ZCkNCg0KSG9wZWZ1bGx5ICJsYXN0IiBxdWVzdGlvbjogDQpJIGhhdmUgc2V0IA0KdGhpcy0+Z2V0
X2lmYWNlKCktPnNldF9jbG9ja19lbmFibGVkKGRib2FyZF9pZmFjZTo6VU5JVF9SWCwgZmFsc2Up
Ow0KdG8gdHJ1ZSBhbmQgc3VyZWx5IGVub3VnaCAgSSBnZXQgYSBjb250aW51b3VzIGNsb2NrIG9u
IHRoZSBjbGtfcCBwaW4NCihKMzggcGluIDIgb2YgaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vc2No
ZW1hdGljcy9iYXNpY19kYnMvQmFzaWNSWC5wZGYpIA0Kd2hpY2ggbG9va3MgbGlrZSBhbiB1bmJh
bGFuY2VkIHNpZ25hbCBzaW5jZSBJIHByb2JlIGZyb20gYW4gb3NjaWxsb3Njb3BlDQpyZWZlcmVu
Y2VkIHRvIGdyb3VuZC4NCg0KSG93ZXZlciB0aGUgb3V0cHV0IHNpZ25hbCBmcmVxdWVuY3kNCjEv
IGFwcGVhcnMgdmVyeSB1bnN0YWJsZSAoYXJndWFibHkgZnJvbSBhbiBvc2NpbGxvc2NvcGUgdHJh
Y2UgZnJlcXVlbmN5DQptZWFzdXJlbWVudCksIHZhcnlpbmcgYnkgc2V2ZXJhbCBNSHogYXJvdW5k
IGEgbWVhbiB2YWx1ZQ0KMi8gdGhlIG1lYW4gdmFsdWUgaXMgbm90IHRoZSBvbmUgc2V0IHdpdGgg
ImRib2FyZF9jbG9ja19yYXRlPSIgZXZlbiB0aG91Z2gNCnRoaXMtPmdldF9pZmFjZSgpLT5nZXRf
Y2xvY2tfcmF0ZShkYm9hcmRfaWZhY2U6OlVOSVRfUlgpOw0KcHJvcGVybHkgcmV0dXJucyB0aGUg
dmFsdWUgcHJvZ3JhbW1lZCB3aXRoIHRoaXMgYXJndW1lbnQuIFdoZW4gc2V0dGluZw0KZGJvYXJk
X2Nsb2NrX3JhdGUgdG8gMjAwIE1IeiwgdGhlIG9zY2lsbG9zY29wZSByZWFkcyBzb21ldGhpbmcg
YmV0d2Vlbg0KMTYwIGFuZCAxNzAgTUh6LCB3aGVuIHNldHRpbmcgdG8gMTAwIE1IeiB0aGUgZnJl
cXVlbmN5IHJlYWRzIDg1IHRvIDg4IE1IeiwNCmFuZCB3aGVuIHNldHRpbmcgdG8gNTAgTUh6IHRo
ZSByZWFkaW5nIGlzIDQyIC0gNDQgTUh6Lg0KDQpJIHRob3VnaHQgbWF5YmUgdGhlIG1hc3RlciBj
bG9jayBzZXR0aW5nIHdvdWxkIGJlIGluY29ycmVjdCBidXQgMS8gbGlidWhkDQpyZXR1cm5zIDIw
MCBNSHogbWFzdGVyIGNsb2NrIGFuZCAyLyBhIHZhbHVlIG9mIDE4NC4zMiBNSHogd291bGQgbm90
IG1hdGNoDQp0aGUgb2JzZXJ2YXRpb25zIGFueXdheS4NCg0KSSBoYXZlIHJlYWQgdGhlIHNvdXJj
ZSBjb2RlIG9mIHRoZSBvdGhlciBib2FyZHMgZW5hYmxpbmcgc2V0X2Nsb2NrX2VuYWJsZWQoKQ0K
KGUuZy4gZGJfdHZyeC5jcHAgb3IgdHdpbnJ4X2N0cmwuY3BwKSBhbmQgbmVpdGhlciBzZWVtcyB0
byBzZXQgYW55IG90aGVyIHBhcmFtZXRlcg0KdGhhbiBfZGJfaWZhY2UtPnNldF9jbG9ja19lbmFi
bGVkKGRib2FyZF9pZmFjZTo6VU5JVF9UWCwgdHJ1ZSk7DQoNCkFtIEkgbWlzc2luZyBzb21lIGFk
ZGl0aW9uYWwgaW5pdGlhbGl6YXRpb24gc3RlcD8gUExMIGxvY2tpbmcgY29uZGl0aW9uPw0KDQpU
aGFua3MNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
