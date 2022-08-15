Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A9F59275C
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 03:10:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E1B3381024
	for <lists+usrp-users@lfdr.de>; Sun, 14 Aug 2022 21:10:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660525832; bh=WJfnPNHCr4WnZWrIdn/+EPn9db8caDVBXIKi3+nrMhY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IbIY7GoLs02AEHMqekqYusSZvgQLV+3xRXk1V88tqwbqZhbLpTMOs/ZIdW52qMK5n
	 HQpfAMZtOEWkD9B7FphYLBv35mGQbQamvgVQ5JFqjMij5HwRN2w6MFp6RE626/uQFq
	 Vuz7NvkxhXApYoquvT3mLqwQrd21YR7QwX9CKkZoH3/yrJsFOhpiKiymelIGjrtRIu
	 xfflN3YUl+t6Ni5DWF7l7sVZ4CWMqDYIJLp4j5kBH7Pb7GPqKGYpz1vSVRAm+D5rb1
	 WfEGN+lRhuODkqhKvLnnfB/2MMIR5t1jeiHmdbHmT8o9ahZ2cds201QbBECXEfxUyP
	 ChxOw2Unvexyw==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E321C381024
	for <usrp-users@lists.ettus.com>; Sun, 14 Aug 2022 21:09:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A/PhBl8y";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id b2so4653001qkh.12
        for <usrp-users@lists.ettus.com>; Sun, 14 Aug 2022 18:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=8NTfJX/yjlWpeCjWqn73qNSItM3lmiVSK79/xqRwx50=;
        b=A/PhBl8yTgkU44ZR7Xc0MFugflpyXI5sWii67eNuIFLGmZAUuWeKp1iC4WLtVdnD7H
         LNoY7r6SyBBFSLRQ5XVsmvMZFegKt8s8X/or8pycOsPWCMx1TOkiquEZySbWZIiryici
         kE8ZBwftpKHwrBeOQAG1zmjF7DCGw/gd872KsZHOvDGJo4t3BiFRc42LtGHR8QAg9/pN
         djqRgqvuRkWTxOKMUPfKGevCawzbytftSSza9SfyeRfHckMzKmbCuAfYeiYY0J9sSSIm
         LWa4Nq2IOIeAP00qqCJtpm0s7cWjE0KZyKpr7DUN+LXJMuD8JU4DT27/w5LL5Gg1c/e9
         MgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=8NTfJX/yjlWpeCjWqn73qNSItM3lmiVSK79/xqRwx50=;
        b=cJilAMlVKDB1Ye1EN0nZxbHVgCPgnB3MZfM0XWAGNmA2tN7F8heVGCFkLUszA25DWx
         KAMXKKX10tYtr0VSB03AHWDgnMKPXPwF8YuWi5vgUtqNfP1tUixfsyeXY1IQXmduad5l
         2/4O7X07NmteFILRO//qVBkSlshjcU9ZY2vTLVhGktO3cNweIBavhtPRD9JuS3dkCDs3
         iUAkX6ydUv6LBd81016Tb6n2r+onbIFsyhaioZGNbI9ijnvS1MzetJi8DDCdJZ3/SKkE
         6j/BNITiF9s8t2bYfouj7EyZTdF+ld65bCt/zyPgvaOtuK6i0x2gVZ8MJUj+dI3FqrLS
         CGrw==
X-Gm-Message-State: ACgBeo2fFBkH8pjdinDHskMu77gagRIL9tWFFVLogDss4kLA1bbzNjR/
	Pr3+ZQPdPExTBn2OFonbx1jOxo37tEs=
X-Google-Smtp-Source: AA6agR6bF+YH89SyQTdiJagDGlPhowjlzeE3S/US//hHO1BiZtqAsQUywtfyX2K8C60kAiwnf44wIw==
X-Received: by 2002:a05:620a:40cb:b0:6bb:49a1:e854 with SMTP id g11-20020a05620a40cb00b006bb49a1e854mr55174qko.219.1660525778530;
        Sun, 14 Aug 2022 18:09:38 -0700 (PDT)
Received: from [192.168.2.163] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id y19-20020a37f613000000b006b5d0b9c5d8sm4843305qkj.116.2022.08.14.18.09.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Aug 2022 18:09:37 -0700 (PDT)
Message-ID: <197693ba-0552-12a1-a6bc-938be0ac2962@gmail.com>
Date: Sun, 14 Aug 2022 21:09:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
 <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com>
Message-ID-Hash: H2PMU6TNPVBAFRQXRXHGX7KYMHLGPHAC
X-Message-ID-Hash: H2PMU6TNPVBAFRQXRXHGX7KYMHLGPHAC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2PMU6TNPVBAFRQXRXHGX7KYMHLGPHAC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0xNCAyMDo1NywgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEFhYWFoLCBpdCdz
IHRoZSBkcmVhZGVkIG1heF9zYW1wc19wZXJfYnVmZmVyOigNCj4gWXVwLCB5b3UgbmVlZCB0byBt
YWtlIHlvdXIgcmVhZCBidWZmZXIgYWxpZ25lZCB0byBtYXhfc2FtcHNfcGVyX2J1ZmZlci4uLg0K
Pg0KPiBIVEgNCj4gTmlrb3MNCkknbGwgbm90ZSB0aGF0IHJ4X3NhbXBsZXNfdG9fZmlsZSB1c2Vz
Og0KDQogwqDCoMKgIHN0ZDo6dmVjdG9yPHNhbXBfdHlwZT4gYnVmZihzYW1wc19wZXJfYnVmZik7
DQoNCkZvciBpdHMgYnVmZmVyLsKgIEkgZG9uJ3Qga25vdyB3aGV0aGVyIHN0ZDo6dmVjdG9yIGFy
cmFuZ2VzIGZvciBhbGlnbm1lbnQuDQoNCg0KPg0KPiBPbiBTdW4sIEF1ZyAxNCwgMjAyMiBhdCA5
OjI0IFBNIDx3b3pueWNoQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBOaWtvcywNCj4+DQo+PiBUaGFu
a3MgZm9yIHRoZSByZXBseS4gSSB0cmFjZWQgaXQgdG8gdGhlIOKAnHJlY3bigJ0gY2FsbCB3aGlj
aCBoYXMgbGVmdCBtZSBwdXp6bGVkLiBJIGFkZGVkIGEgYnVuY2ggb2YgaW5zdHJ1bWVudGF0aW9u
IHRvIHNlZSBpZiBJIHdhcyB3YWxraW5nIG9mZiB0aGUgZW5kIG9mIG15IG1lbW9yeSB0aGF0IHdh
cyBhbGxvY2F0ZWQgdG8gdGhlIDE2LWJpdCBJL1EgYnVmZmVyLg0KPj4NCj4+IGNvbnN0IHN0ZDo6
aW50MzJfdCBzdGFydEluZGV4ID0gMipudW1fYWNjdW1fc2FtcHM7DQo+Pg0KPj4gY29uc3Qgc3Rk
OjppbnQzMl90IHJlbWFpbmluZ1NpemUgPSAyKnNhbXBsZUxlbmd0aC0oMipudW1fYWNjdW1fc2Ft
cHMpOw0KPj4NCj4+IHN0ZDo6Y291dCA8PCAiaXFbIiA8PCBzdGFydEluZGV4IDw8ICJdID0gIiA8
PCBpcVtzdGFydEluZGV4XTsNCj4+DQo+PiBzdGQ6OmNvdXQgPDwgIlx0IiA8PCByZW1haW5pbmdT
aXplOw0KPj4NCj4+IHN0ZDo6Y291dCA8PCAiXHQiIDw8IHN0YXJ0SW5kZXggKyByZW1haW5pbmdT
aXplOw0KPj4NCj4+IHN0ZDo6Y291dCA8PCAiXHQiIDw8IGJ1ZmZlclNpemUgPDwgc3RkOjplbmRs
Ow0KPj4NCj4+IG51bV9hY2N1bV9zYW1wcyArPSByeF9zdHJlYW0tPnJlY3YoJmlxW3N0YXJ0SW5k
ZXhdLCByZW1haW5pbmdTaXplLCBtZXRhLCA1LjAsIHRydWUpOw0KPj4NCj4+IEFuZCBJIGNhbiBn
ZXQgaXQgdG8gZmFpdGhmdWxseSBjcmFzaCBldmVyeSBzaW5nbGUgdGltZSB3aGVuIEkgZG9u4oCZ
dCBwYWQgbXkgYXJyYXkgb2YgMTYtYml0IGludGVnZXJzIGJ5IGFuIGFkZGl0aW9uYWwgMjE2NSBp
bnQxNnMuIEkgaW5jbHVkZWQgc29tZSBvdXRwdXQgaW5kaWNhdGluZyB3aGVyZSBJ4oCZdmUgc3Bl
Y2lmaWVkIGFzIHRoZSBzdGFydCBvZiB0aGUgYnVmZmVyIGZvciBpdCB0byB3cml0ZSB0bywgZm9s
bG93ZWQgYnkgdGhlIHJlbWFpbmluZyBzaXplLCBmb2xsb3dlZCBieSB0aGUgc3VtIG9mIHRoZSB0
d28ganVzdCB0byBtYWtlIHN1cmUgSSBjYW4gbWF0aCwgYW5kIGZpbmFsbHkgdGhlIGFjdHVhbCBy
ZXNlcnZlZCBidWZmZXIgc2l6ZSBwbHVzIHRoZSBwYWQgb2YgMjE2NCBpbnQxNnMuDQo+Pg0KPj4g
4oCmDQo+Pg0KPj4gaXFbMTE4MDQ4MF0gPSAwIDE5NTIwIDEyMDAwMDAgMTIwMjE2NA0KPj4NCj4+
IGlxWzExODU5MjBdID0gMCAxNDA4MCAxMjAwMDAwIDEyMDIxNjQNCj4+DQo+PiBpcVsxMTkxMzYw
XSA9IDAgODY0MCAxMjAwMDAwIDEyMDIxNjQNCj4+DQo+PiBpcVsxMTk2ODAwXSA9IDAgMzIwMCAx
MjAwMDAwIDEyMDIxNjQNCj4+DQo+PiBTZWdtZW50YXRpb24gZmF1bHQgKGNvcmUgZHVtcGVkKQ0K
Pj4NCj4+IElmIHlvdeKAmWxsIG5vdGljZSwgSeKAmXZlIHNwZWNpZmllZCBmb3IgaXQgdG8gc3Rh
cnQgYXQgaW5kZXggMTE5NjgwMCBhbmQgdGhhdCB0aGUgbnVtYmVyIG9mIHNhbXBsZXMgcGVyIGJ1
ZmZlciBiZWluZyBwYXNzZWQgdG8gcmVjdigpIGlzIDMyMDAuIEkgdGhpbmsgSeKAmW0ganVzdCBi
ZWluZyBkZW5zZSAvIG1pc2ludGVycHJldGluZyB0aGUgbnNhbXBzX3Blcl9idWZmICh0aGUgc2Vj
b25kIHBhcmFtZXRlciBvZiB0aGUg4oCccmVjduKAnSBjYWxsKSBiZWNhdXNlIGl0IHNlZW1zIGFz
IGlmIGl0IGlzIG5vdCByZXNwZWN0aW5nIHRoZSByZW1haW5pbmcgYnVmZmVyIHNpemUgdGhhdCBJ
IGFtIHNwZWNpZnlpbmcgYW5kIGF0dGVtcHRpbmcgdG8gd3JpdGUgYmV5b25kIHRoZSBib3VuZHMg
b2YgdGhlIG1lbW9yeSBJ4oCZdmUgYWxsb2NhdGVkIGZvciB0aGUgYnVmZmVyLg0KPj4NCj4+IElz
IHRoZXJlIHNvbWUgYWxpZ25tZW50IG9yIG1pbmltdW0gYnVmZmVyIHNpemUgdGhhdCBJ4oCZbSBu
b3QgYXdhcmUgb2Y/DQo+Pg0KPj4gVGhhbmtzLA0KPj4NCj4+IENocmlzDQo+Pg0KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
