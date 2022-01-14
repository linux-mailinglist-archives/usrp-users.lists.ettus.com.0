Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DDB48EC3A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 16:08:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7044F385529
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:08:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T8Gkbusi";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 503DF384F4A
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 10:07:26 -0500 (EST)
Received: by mail-qt1-f173.google.com with SMTP id 14so3521793qty.2
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 07:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=+Z22pGnoRYMzyb6hQyIt2j3xWGRCv5SKx7C+AY6zE1U=;
        b=T8Gkbusi3OvZtCQMJklYiKtpFB9YZofm79xbROM+hZlewsFAp9abCRAZcJVenIy/1B
         RWiBRbqp+gSVJUOl5R9rzUkPsetbzO4tEtbjefn3Wkxcd8j0xCvvGy6t1dXrPcQ+kPyT
         41n9ip/LbSHh/mcRpL/r9a3R6oLJtGOLbggQJP9tl5dp+SbpE9qkjWceODGSJbZgG7Lx
         WQI0Kak1HJRezGBW7y4t5m4756tNHCPiljp1RW9Roe04VEMeyVgXD8K8t3zleNuNMfkO
         LhtvN2iWkvbvHo3gOuZdt1ZH0CMWbm6ieAM6Lkw92oq4C79nZPj0m1BY4wzuz7LhvWVU
         BTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=+Z22pGnoRYMzyb6hQyIt2j3xWGRCv5SKx7C+AY6zE1U=;
        b=42x4Pvg1DE59ZQ9Mk00RfejVMd3bGSZphiuBwbk2NDPNZv/CTvbsmlDQb0FlNI/b1O
         +JBhsmUuC8L9WTVNl9N71qd+2n+ldKskhg6dbJP6nA2ZM6SNdNSRO8NnMTGt+2Xz4rl1
         gZs434ujwmBskLPEeIJbq5zSzI0BzvALY8/rYt2nj+3WokbS3ZGknU1eipP4Ds5z1xJn
         YOUMuBu9rOsnICjSypRZLTnWwWu5rag0Sa5cwMUh8d1ipoI1mqapbnSv2+DxE3U7OO6T
         KqGGSPbOaHDoy2E70npkNG3V8fFm2+e5hU/WwqUZIgf7mT0AZtXbCwYeyTNi6hf7nA3/
         Qahg==
X-Gm-Message-State: AOAM533UMOE0lwfHZ8A9+wNEQCBJQvblPQRYgMdNOLkcucOAh5HE//nE
	qvf+T3WHDEZ5Yi2jS46ZYB4RFFotdvs=
X-Google-Smtp-Source: ABdhPJwvRfgapcRvy0QleBg0dRg75t73kzGSNnFAJPhqAm5191XAwv15XwOOZC0MJiHCjELUCBvJug==
X-Received: by 2002:ac8:5ccc:: with SMTP id s12mr7885219qta.430.1642172845532;
        Fri, 14 Jan 2022 07:07:25 -0800 (PST)
Received: from smtpclient.apple ([2600:380:407d:5347:5c46:c86d:a4da:e916])
        by smtp.gmail.com with ESMTPSA id d17sm3959276qtx.96.2022.01.14.07.07.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 07:07:25 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 Jan 2022 10:07:23 -0500
Message-Id: <B52BDAD1-90A3-48D5-A817-C899C6556A21@gmail.com>
References: <2b2c4d7b-ead1-3769-ceec-2c745e8408f6@gmail.com>
In-Reply-To: <2b2c4d7b-ead1-3769-ceec-2c745e8408f6@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: RZQVEIQW7LZFCPU4FXAGKVA5BDXX6HIZ
X-Message-ID-Hash: RZQVEIQW7LZFCPU4FXAGKVA5BDXX6HIZ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RZQVEIQW7LZFCPU4FXAGKVA5BDXX6HIZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIE1hcmN1cywgSeKAmXZlIGJlZW4gc2NvdXJpbmcgdGhlIFJ1YmlrcyBjdWJlIHRoYXQg
aXMgdGhlIGtub3dsZWRnZSBiYXNlIGZvciBhYm91dCBhIHdlZWsgbm93LiBJ4oCZdmUgYWxzbyB3
YXRjaGVkIHRoZSBEYW4gQmFrZXIgR1JDT04yMDE5IHRhbGsgYW5kIGZvbGxvd2VkIHRoZSByZWZl
cmVuY2VzIHRoZXJlIGFzIHdlbGwuDQoNClRoZSByZWZlcmVuY2UgeW91IGxpbmtlZCBpcyB2ZXJ5
IGhlbHBmdWwgaW4gYSBsb3Qgb2YgY2FzZXMsIGJ1dCBpbiB0aGlzIG9uZSBpdCBkb2VzbnQgYWRk
cmVzcyAoYW55d2hlcmUgSeKAmXZlIHNlZW4pIHRoYXQgaW4gb3JkZXIgdG8gaGF2ZSB0aGUgZGV2
aWNlIG9wZXJhdGUgd2l0aCBsb2NhbCBvc2NpbGxhdG9yIHNoYXJpbmcgYmV0d2VlbiBSRiAwIGFu
ZCBSRiAxLCBwaHlzaWNhbGx5IGNvbm5lY3RpbmcgdGhlIHJhZGlvIGJhY2sgdG8gaXRzZWxmIG5l
ZWRzIHRvIGJlIGRvbmUuIEnigJl2ZSBzZWVuIHBsZW50eSBvZiB0aGluZ3MgYWJvdXQg4oCcZXh0
ZXJuYWwgTE/igJ0gYnV0IHRvIG1lIHRoYXQgdGVybSBpcyBhIGxpdHRsZSBjb25mdXNpbmcgYmVj
YXVzZSBpdCBzb3VuZHMgbGlrZSBpdOKAmXMgZXh0ZXJuYWwgTE8gdG8gdGhlIGRldmljZS4gDQoN
CkkgZ3Vlc3MgSSB3YXMganVzdCB0aGlua2luZyBpdCBtaWdodCBiZSBhIGdvb2QgaWRlYSB0byBs
ZXQgTjMyMSB1c2VycyBrbm93IHRoYXQgaW4gb3JkZXIgdG8gYWNoaWV2ZSBwaGFzZSBjb2hlcmVu
Y2UgYmV0d2VlbiBJTlRFUk5BTCBjaGFubmVscywgaXTigJlzIGdvaW5nIHRvIGJlIG1vcmUgd29y
ayB0aGFuIGEgQjIxMC4gDQoNCkp1c3QgbXkgMiBjZW50cy4gDQoNCjxlbmQgdHJhbnNtaXNzaW9u
Pg0KDQo+IE9uIEphbiAxNCwgMjAyMiwgYXQgMDk6MzYsIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/T24gMjAyMi0wMS0xNCAwMToxMSwg
UGF1bCBBdHJlaWRlcyB3cm90ZToNCj4+IEkgYW0gdHJ5aW5nIHRvIGNvbmZpZ3VyZSB0aGUgTjMy
MSB0byB0YWtlIHNvbWUgVFggcGhhc2UgbWVhc3VyZW1lbnRzIGJldHdlZW4gUkYwIGFuZCBSRjEN
Cj4+IEkgaGF2ZSB1cGRhdGVkIHRoZSBmaWxlIHN5c3RlbSB0byB0aGUgbGF0ZXN0IHJlbGVhc2Ug
dXNpbmcgdGhlIEtCIGd1aWRhbmNlLg0KPj4gDQo+PiBNeSBob3N0L3NvZnR3YXJlIHNpZGUgaXM6
DQo+PiBHTlVSYWRpbyAzLjkuNQ0KPj4gVUhEIDQuMS4wLjUNCj4+IFVidW50dSAyMC4wNA0KPj4g
DQo+PiBNeSBnci11aGQgYmxvY2sgaGFzIHRoZSBMTyBzZXR0aW5nczoNCj4+IENoYW5uZWwgMCBl
eHBvcnQgPSB0cnVlDQo+PiBDaGFubmVsIDAgTE8gPSBpbnRlcm5hbA0KPj4gDQo+PiBDaGFubmVs
IDEgZXhwb3J0ID0gZmFsc2UNCj4+IENoYW5uZWwgMSBMTyA9IGV4dGVybmFsDQo+PiANCj4+IE9u
IHRoZSBoYXJkd2FyZSBzaWRlIGFtIEkgdW5kZXJzdGFuZGluZyB0aGUgTE8gZGlhZ3JhbSBjb3Jy
ZWN0bHkgdGhhdCBpbiBvcmRlciB0byBhY2hpZXZlIHRoZSBoaWdoZXN0IHBoYXNlIGFjY3VyYWN5
IGJldHdlZW4gY2hhbm5lbHMgaSBuZWVkIHRvIHNoYXJlIHRoZSBMTyBiZXR3ZWVuIHRoZSB0cmFu
c21pdCBwb3J0cyBvZiBSRjAgYW5kIFJGMT8NCj4+IElmIHNvLCB3b3VsZCBJIGRvIHRoYXQgYnkg
cGh5c2ljYWxseSBjb25uZWN0aW5nIHRoZSBUWCBMTyBPVVQwIChyZWFsbHkgMC0zKSB0byBUWCBM
TyBJTjE/DQo+PiANCj4+IEFtIEkgbWlzc2luZyBhbnl0aGluZyBvYnZpb3VzIGZvciB0aGUgc2V0
dGluZ3MgYW5kL29yIGlzIHRoZXJlIGEgbW9yZSBkZXNpcmFibGUgd2F5IHRvIGRvIHRoaXM/DQo+
PiANCj4+IFRoYW5rcw0KPj4gDQo+PiA8ZW5kIHRyYW5zbWlzc2lvbj4NCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBUaGlz
IEtCIGFydGljbGUgbWF5IGJlIG9mIHNvbWUgaGVscDoNCj4gDQo+IGh0dHBzOi8va2IuZXR0dXMu
Y29tL1VTUlBfTjMyMC9OMzIxX0xPX0Rpc3RyaWJ1dGlvbg0KPiANCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
