Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42C2A9BB8
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 19:18:39 +0100 (CET)
Received: from [::1] (port=58096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kb6Jn-0002Di-Pt; Fri, 06 Nov 2020 13:18:35 -0500
Received: from mail-qv1-f45.google.com ([209.85.219.45]:46660)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kb6Jk-00028y-BB
 for USRP-users@lists.ettus.com; Fri, 06 Nov 2020 13:18:32 -0500
Received: by mail-qv1-f45.google.com with SMTP id r12so862266qvq.13
 for <USRP-users@lists.ettus.com>; Fri, 06 Nov 2020 10:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=UhVFC0Pk1MRn7FuLqv/zjr0qI6IR0U3qJLHyKJmjunM=;
 b=GOMQ2Y3T6IxRA+BzhHPWESaOdp4WnRFEtu85Mh0p3k2DF+DBrVVmYhF0WTK3j51aPL
 p14kFr+bsBD2g/wQ4SubAHz9teEqdpbgGqfVEP12QCcHENfwwJ8AXJAkJyGWB5mlM74m
 2ifJQKt17GytT6w20IAsHsEr9+KOEMy0Tt3MkeRpOZzX0NYj3aGL7p5qeck9Dad5SXc4
 WwFPSHPeMS9f5PW3dE7tsq2nj3ubBOye1HaURHbK2MSKeDw8CgfSk4fEXPif7Lv3BLqr
 2Trp+qwrXRpUqtHfawCKnkL2NRDm3RGanM3dkvGYARnSlSnz9qmRTshmZ4y90JPkHZ45
 Opaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=UhVFC0Pk1MRn7FuLqv/zjr0qI6IR0U3qJLHyKJmjunM=;
 b=aKN2l0xAuaME2tGa98FtBpez+hZ1WHCGn+0EDFYKZl3Q42MvooEPc17x18bAZIlOh8
 SeeSyGQ9B/3p2vesNmFMipXm+W4YyL8EeqBBksc2K6tjZneALvKTUZdHBJFTsWB3O+u9
 tUY6UIl9EThToTp8UqtqsPd1n+P45oT9e7imWt9KPjKUK3GIzDQFmT7sn2hv5xYc5NAT
 e36C9JCcazVYRzrCJprEMZTpijoWXSMtib3cHYSyLEvgj4PQFB3p8CLw9fW1capa+Pe+
 T6Mm9o4K9vpsY73b2dcrWHzZzu55a3KLMIVRNcDg2mBb8FcCd5kJboEEizn4f4qo90/N
 rWdg==
X-Gm-Message-State: AOAM533a/fhnWuPp9Y16/ZZOJiKeAlkTUpg67EV5omMXdG6REeT1zdec
 vS4qUtJuOQvoo2PK+oXUf0NyPENpQBw=
X-Google-Smtp-Source: ABdhPJyGIIGxX+xBK4qeYZhLrI0o/fOmdUTs+NfxqDsZVNCcRuVORksd+uJL0Nu+I4Uwv7ferjO/uQ==
X-Received: by 2002:a05:6214:184c:: with SMTP id
 d12mr2845084qvy.11.1604686671536; 
 Fri, 06 Nov 2020 10:17:51 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id m25sm1033508qki.105.2020.11.06.10.17.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 10:17:51 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 6 Nov 2020 13:17:50 -0500
Message-Id: <0F1966AE-CCC9-46A6-B184-22FF25A9A724@gmail.com>
References: <d848c9f0b4b84b34d90d138b5e96c383@femto-st.fr>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <d848c9f0b4b84b34d90d138b5e96c383@femto-st.fr>
To: jeanmichel.friedt@femto-st.fr
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] B210 drops one sample every 2^32 samples !
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

RG8geW91IHNlZSB0aGUgc2FtZSB0aGluZyBvbiBvdGhlciBwbGF0Zm9ybXM/IFdoYXQgYWJvdXQg
bmV3ZXIvb2xkZXIgVUhEIHZlcnNpb25zPwoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBOb3Yg
NiwgMjAyMCwgYXQgNToyOSBBTSwgSk0gRnJpZWR0IHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/V2hpbGUgYW5hbHl6aW5nIEdQUyB0aW1p
bmcgY2FwYWJpbGl0aWVzIG9mIGduc3Mtc2RyIGFzIGRlc2NyaWJlZCBhdAo+IGh0dHBzOi8vZ2l0
aHViLmNvbS9nbnNzLXNkci9nbnNzLXNkci9pc3N1ZXMvNDQyCj4gd2UgaGF2ZSBiZWNvbWUgY29u
dmluY2VkIHRoYXQgdGhlIEIyMTAgdHJhbnNmZXJyaW5nIGRhdGEgdXNpbmcgbGlidWhkIDMuMTUg
IAo+IGRyb3BzIG9uZSBzYW1wbGVzIGV2ZXJ5IDJeMzIgKGkuZSBvbmUgc2FtcGxlIGV2ZXJ5IDQy
OTQ5NjcyOTYpLiBUaGlzIGNvbmNsdXNpb24gCj4gd2FzIHJlYWNoZWQgYnkgY2hhbmdpbmcgdGhl
IHNhbXBsaW5nIHJhdGUgYW5kIG9ic2VydmluZyB0aGF0IHRoZSB0aW1lIHNoaWZ0IGluIAo+IHRo
ZSBHUFMgdGltaW5nIGNhcGFiaWxpdHkgd2FzIGp1bXBpbmcgYnkgb25lIHNhbXBsZSBwZXJpb2Qg
ZXZlcnkgNDI5NDk2NzI5NiAKPiBhY3F1aXNpdGlvbnMgKGkuZS4gMzYgbWludXRlcyBhdCAyIE1T
L3Mgb3IgNTcgbWludXRlcyBhdCAxLjI1IE1TL3MpLiBUaGlzIGlzc3VlIAo+IGlzIE5PVCBvYnNl
cnZlZCB3aXRoIGFuIFgzMTAgc3RyZWFtaW5nIGRhdGEgdG8gdGhlIHNhbWUgbGlidWhkIHNvdXJj
ZS4KPiBXZSBoYXZlIG5vIGlkZWEgaG93IHRvIGFkZHJlc3Mgb3Igc29sdmUgdGhlIHByb2JsZW0s
IGJ1dCBhbnkgaGludCBhdCBob3cgdG8gY29ycmVjdAo+IHRoZSBpc3N1ZSB3b3VsZCBiZSB3ZWxj
b21lLgo+IAo+IFRoYW5rIHlvdSwgSmVhbi1NaWNoZWwKPiAKPiBbMV0gcnVubmluZyBvbiBhIFJh
c3BiZXJyeSBQaTQgd2l0aCBhIDY0LWJpdCBrZXJuZWwgYW5kIDY0LWJpdCBsaWJyYXJpZXMvdG9v
bGNoYWluIGNvbXBpbGVkIAo+IHdpdGggQnVpbGRyb290Cj4gCj4gLS0KPiBKTSBGcmllZHQsIEZF
TVRPLVNUIFRpbWUgJiBGcmVxdWVuY3ksIDI2IHJ1ZSBkZSBsJ0VwaXRhcGhlLCAyNTAwMCBCZXNh
bmNvbiwgRnJhbmNlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20K
