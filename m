Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D91B592731
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 02:59:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F8C838140B
	for <lists+usrp-users@lfdr.de>; Sun, 14 Aug 2022 20:59:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660525164; bh=NevrZ5jeN89mbmm9t9y94FxRpkkcjj50OOjUq5ezzpo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KFz3ontbFEQ7jiSSDU1HIAFdFNRb9ZkwoTnLipcBgzaL9lTmKqgSwvyHtWNoE9aKW
	 IpLFmOzhuCD4bL6hl1TM+2WvjEZO5ChJNxR0wzZpqNOjal4YtoSq9UfUxTxEktcWr4
	 8fnqu95P+JoIFO6h3laCAd/fNNJNPzfuKHO1YPdaXqTXPK1lUGHX4jbW4umF3JL4Vt
	 BW0l2fuYsinJxwTkGH7JuAJOdGJdyakDWIAldhDqqDVbWO8ufXSyPmjTF57KrllcqZ
	 YwrRL9J0brsckyMrwU21BA/Q8bDMxvsR1vQ+9dGh5zsSYCQrrJi52vhlsA8yv+aidF
	 hZbH1TL7FCuiA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C96043812FB
	for <usrp-users@lists.ettus.com>; Sun, 14 Aug 2022 20:58:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RIC4hjVB";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id dc19so11155426ejb.12
        for <usrp-users@lists.ettus.com>; Sun, 14 Aug 2022 17:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=jihmDpUJRFywYl8z8OCGOCnP1oj5R7TIwNVYITEMiGA=;
        b=RIC4hjVBf/4wD2KYleX6pnJSXuxzqyX9OYg5ht1vZ7frkCUPihdb5xN6MKA9xr07Bo
         40AOihOeyPoJf45KftRds7Hlbfl7HeX2kNoil2uPDq19OrZHo5hczuT9Py2sr1VsVuQb
         Z9mdkO3mzKyRG9bw2g8Rw7iLcsF/3+5v5tO7vTjDpYLo+ACHKAZBUw+2cPQguvwrUE7R
         3UjLI6E3Br34wD2JjsUzKgPRAo2SNLcdQhXopfcO9YUsjdYco1Ct704Edm3IOzRYBQ5Q
         7nkG61545a8Vc6RBswRilHZwA3GbdNMgbg9TAvy/hGUYYNZInqfHCOKnnwTGn8ePU2vo
         VStA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=jihmDpUJRFywYl8z8OCGOCnP1oj5R7TIwNVYITEMiGA=;
        b=QqPd27Tu3PolF20NSpN/O3h9bhxHeCwPIm4LSkef6mGjvEt9DGs+SWoSfkFwcNxv1u
         W+2xLBMzn4yTfUQwCc0o53QmXLe2AGsN4bzWac3H7VrO3p5Fs+/tlEBXlRqVf1ynD0L0
         xYyXlqx3hSDoEUocnURoVisDAmUs2ES58CE4lzk1Dm/tAgFx+cKp19TtI/nLiIq0CHDu
         5/xi3hHkO/kmaJNw3Zz7f1TXxPUit6uaE/xtqv00M8ep1hSL/6L8xXvj3tWZDyt3rDB0
         /vnTVp9RAbo4xafUuEiHdd9N0YIl8elgtBzS5xex7Jmg2pQmYXoDbEGgRBl9EjWt3Ybo
         5F6g==
X-Gm-Message-State: ACgBeo2Xj9jH7tGZAfZHqraMk4/ENxEQlNnSRFP3+YaTirsu6iHbelzE
	cjXT+7tc0q0U3VqWn9yON7O4GLReo9JaQwHSik/sGp7W
X-Google-Smtp-Source: AA6agR4qDpAXLkUakKtdjXtrnRc6OqknsQDrUlU9+1TdPTptNGUDHL/9dtACNmiOXhO+i+s9JP+yiVjV9J/0+S4XE2Q=
X-Received: by 2002:a17:907:d07:b0:72e:ec79:ad0f with SMTP id
 gn7-20020a1709070d0700b0072eec79ad0fmr9123273ejc.296.1660525089629; Sun, 14
 Aug 2022 17:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
In-Reply-To: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 15 Aug 2022 03:57:58 +0300
Message-ID: <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com>
To: woznych@gmail.com
Message-ID-Hash: CO3HGIS6LD4CF4GWSNP2MBT6M6UOFUF3
X-Message-ID-Hash: CO3HGIS6LD4CF4GWSNP2MBT6M6UOFUF3
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CO3HGIS6LD4CF4GWSNP2MBT6M6UOFUF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWFhYWgsIGl0J3MgdGhlIGRyZWFkZWQgbWF4X3NhbXBzX3Blcl9idWZmZXI6KA0KWXVwLCB5b3Ug
bmVlZCB0byBtYWtlIHlvdXIgcmVhZCBidWZmZXIgYWxpZ25lZCB0byBtYXhfc2FtcHNfcGVyX2J1
ZmZlci4uLg0KDQpIVEgNCk5pa29zDQoNCk9uIFN1biwgQXVnIDE0LCAyMDIyIGF0IDk6MjQgUE0g
PHdvem55Y2hAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gTmlrb3MsDQo+DQo+IFRoYW5rcyBmb3Ig
dGhlIHJlcGx5LiBJIHRyYWNlZCBpdCB0byB0aGUg4oCccmVjduKAnSBjYWxsIHdoaWNoIGhhcyBs
ZWZ0IG1lIHB1enpsZWQuIEkgYWRkZWQgYSBidW5jaCBvZiBpbnN0cnVtZW50YXRpb24gdG8gc2Vl
IGlmIEkgd2FzIHdhbGtpbmcgb2ZmIHRoZSBlbmQgb2YgbXkgbWVtb3J5IHRoYXQgd2FzIGFsbG9j
YXRlZCB0byB0aGUgMTYtYml0IEkvUSBidWZmZXIuDQo+DQo+IGNvbnN0IHN0ZDo6aW50MzJfdCBz
dGFydEluZGV4ID0gMipudW1fYWNjdW1fc2FtcHM7DQo+DQo+IGNvbnN0IHN0ZDo6aW50MzJfdCBy
ZW1haW5pbmdTaXplID0gMipzYW1wbGVMZW5ndGgtKDIqbnVtX2FjY3VtX3NhbXBzKTsNCj4NCj4g
c3RkOjpjb3V0IDw8ICJpcVsiIDw8IHN0YXJ0SW5kZXggPDwgIl0gPSAiIDw8IGlxW3N0YXJ0SW5k
ZXhdOw0KPg0KPiBzdGQ6OmNvdXQgPDwgIlx0IiA8PCByZW1haW5pbmdTaXplOw0KPg0KPiBzdGQ6
OmNvdXQgPDwgIlx0IiA8PCBzdGFydEluZGV4ICsgcmVtYWluaW5nU2l6ZTsNCj4NCj4gc3RkOjpj
b3V0IDw8ICJcdCIgPDwgYnVmZmVyU2l6ZSA8PCBzdGQ6OmVuZGw7DQo+DQo+IG51bV9hY2N1bV9z
YW1wcyArPSByeF9zdHJlYW0tPnJlY3YoJmlxW3N0YXJ0SW5kZXhdLCByZW1haW5pbmdTaXplLCBt
ZXRhLCA1LjAsIHRydWUpOw0KPg0KPiBBbmQgSSBjYW4gZ2V0IGl0IHRvIGZhaXRoZnVsbHkgY3Jh
c2ggZXZlcnkgc2luZ2xlIHRpbWUgd2hlbiBJIGRvbuKAmXQgcGFkIG15IGFycmF5IG9mIDE2LWJp
dCBpbnRlZ2VycyBieSBhbiBhZGRpdGlvbmFsIDIxNjUgaW50MTZzLiBJIGluY2x1ZGVkIHNvbWUg
b3V0cHV0IGluZGljYXRpbmcgd2hlcmUgSeKAmXZlIHNwZWNpZmllZCBhcyB0aGUgc3RhcnQgb2Yg
dGhlIGJ1ZmZlciBmb3IgaXQgdG8gd3JpdGUgdG8sIGZvbGxvd2VkIGJ5IHRoZSByZW1haW5pbmcg
c2l6ZSwgZm9sbG93ZWQgYnkgdGhlIHN1bSBvZiB0aGUgdHdvIGp1c3QgdG8gbWFrZSBzdXJlIEkg
Y2FuIG1hdGgsIGFuZCBmaW5hbGx5IHRoZSBhY3R1YWwgcmVzZXJ2ZWQgYnVmZmVyIHNpemUgcGx1
cyB0aGUgcGFkIG9mIDIxNjQgaW50MTZzLg0KPg0KPiDigKYNCj4NCj4gaXFbMTE4MDQ4MF0gPSAw
IDE5NTIwIDEyMDAwMDAgMTIwMjE2NA0KPg0KPiBpcVsxMTg1OTIwXSA9IDAgMTQwODAgMTIwMDAw
MCAxMjAyMTY0DQo+DQo+IGlxWzExOTEzNjBdID0gMCA4NjQwIDEyMDAwMDAgMTIwMjE2NA0KPg0K
PiBpcVsxMTk2ODAwXSA9IDAgMzIwMCAxMjAwMDAwIDEyMDIxNjQNCj4NCj4gU2VnbWVudGF0aW9u
IGZhdWx0IChjb3JlIGR1bXBlZCkNCj4NCj4gSWYgeW914oCZbGwgbm90aWNlLCBJ4oCZdmUgc3Bl
Y2lmaWVkIGZvciBpdCB0byBzdGFydCBhdCBpbmRleCAxMTk2ODAwIGFuZCB0aGF0IHRoZSBudW1i
ZXIgb2Ygc2FtcGxlcyBwZXIgYnVmZmVyIGJlaW5nIHBhc3NlZCB0byByZWN2KCkgaXMgMzIwMC4g
SSB0aGluayBJ4oCZbSBqdXN0IGJlaW5nIGRlbnNlIC8gbWlzaW50ZXJwcmV0aW5nIHRoZSBuc2Ft
cHNfcGVyX2J1ZmYgKHRoZSBzZWNvbmQgcGFyYW1ldGVyIG9mIHRoZSDigJxyZWN24oCdIGNhbGwp
IGJlY2F1c2UgaXQgc2VlbXMgYXMgaWYgaXQgaXMgbm90IHJlc3BlY3RpbmcgdGhlIHJlbWFpbmlu
ZyBidWZmZXIgc2l6ZSB0aGF0IEkgYW0gc3BlY2lmeWluZyBhbmQgYXR0ZW1wdGluZyB0byB3cml0
ZSBiZXlvbmQgdGhlIGJvdW5kcyBvZiB0aGUgbWVtb3J5IEnigJl2ZSBhbGxvY2F0ZWQgZm9yIHRo
ZSBidWZmZXIuDQo+DQo+IElzIHRoZXJlIHNvbWUgYWxpZ25tZW50IG9yIG1pbmltdW0gYnVmZmVy
IHNpemUgdGhhdCBJ4oCZbSBub3QgYXdhcmUgb2Y/DQo+DQo+IFRoYW5rcywNCj4NCj4gQ2hyaXMN
Cj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
