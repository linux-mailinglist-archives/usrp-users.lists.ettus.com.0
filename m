Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 876C9493C0E
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jan 2022 15:42:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CF0C3854D0
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jan 2022 09:42:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NK06CcoA";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5917E384B5C
	for <usrp-users@lists.ettus.com>; Wed, 19 Jan 2022 09:41:34 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id o80so8074106yba.6
        for <usrp-users@lists.ettus.com>; Wed, 19 Jan 2022 06:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1fYgM9OKBdQgy4X6F6Ek7TfXv501AqOAzcXi/lk8N/0=;
        b=NK06CcoAVAz5dGlndJUO3ZQzR8nVx8vCsxUv7TzhR/NUDVr+yka40/r865Kfa6kmtJ
         rZAhxL5TIlxVytwZM5LSmT0TizdiGdmWC7QM+1KZF13hmnD46SR6yRsnLSEE1GAlhSNd
         Hqgy9Lq4ZHCYBKDrFr3SdGTMVgg972wzGYYQKS1ry2IFJ7c2kYvKSYPqc1lJJSzS5KXz
         /3bhwScAB0Jwo+0HbvQFno9jLTDW21vQtozLUJSLJgIeTKLYTvFW0Hfdp9gItjccs5K8
         Z6V6bpWBZhixgGtwNWCLKEDguThsP+kiUYXsV38FhF6q4Uf1sbN+poSniuPgf2oyRQkm
         wUVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1fYgM9OKBdQgy4X6F6Ek7TfXv501AqOAzcXi/lk8N/0=;
        b=H3tE8sNgKeqt3p+8UVOAc6kB3u6wQm554hMBo52weNbgKeARKICaV38KWZ4Y9DbOyS
         PxMiPq4ixDqcXw+Ca7ZbpYF+kSxFyyhHqSk9z6Y6w90KzS7PBgVSeohycgtX1/3L5zAN
         qy+PwFdgINYsYBdVDCBjzI/mG72Z07ZscWEcF/nPYhGng0+XwGk9elIiFHWeCyIS9PFZ
         T1f9YnpPhCRSqdIJZFKnSb8rzE/GIqz2fDLBNCuDNmwXD0OofqORGIqXc2a930lHd528
         RuPP3q2CevGBbbskUKUrLUVYaHpNTrQZXa8PoSrDT7x+BySyW33O0JJoMXGOGg2wV15Q
         KZxA==
X-Gm-Message-State: AOAM533jrBxMZNPpp+XNW0n06nI0yhfhalV6Z0+06S8fmHL200jmAktQ
	GBlSilhbNTGq9cxJDgvPWnte/kYnkIh5QgIE7oFBRQ==
X-Google-Smtp-Source: ABdhPJwOrpMCLCQaQ3ZscgbOEIf7hfoPXrBQuugONJPDkfgjC5bS3HfWovIaOUMn8yHEU7ecWGY/Etf2Qu0SFA3+2vE=
X-Received: by 2002:a25:f206:: with SMTP id i6mr38296987ybe.750.1642603293417;
 Wed, 19 Jan 2022 06:41:33 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <C5BFBDFE-99E4-4876-86F7-475DA7A390D2@gmail.com>
In-Reply-To: <C5BFBDFE-99E4-4876-86F7-475DA7A390D2@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 19 Jan 2022 09:41:22 -0500
Message-ID: <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: LZBCBVSIKOP6INMZGQSDRB6YKZO4XF35
X-Message-ID-Hash: LZBCBVSIKOP6INMZGQSDRB6YKZO4XF35
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZBCBVSIKOP6INMZGQSDRB6YKZO4XF35/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMTksIDIwMjIgYXQgMTowMCBBTSBQYXVsIEF0cmVpZGVzIDxtYXVkLmRpYjE5
ODRAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gT2ssIHNvIGp1c3QgY2lyY2xpbmcgYmFjayBvbiB0
aGlzLiBJdmUgZ290IGEgZGVjZW50IGhhbmRsZSBvbiB0aGUgUHl0aG9uIEFQSS4gSeKAmXZlIGNv
bmZpcm1lZCB0aGUgTE8gc2lnbmFsIGNvbWVzIG91dCBvZiB0aGUgcG9ydCBvbmNlIHRoZSBzcGxp
dHRlciBvdXRwdXQgaXMgZW5hYmxlZC4NCj4NCj4gUm9iIHlvdeKAmXJlIHNheWluZyB0aGF0IGZv
ciBzdXJlIGJvdGggY2hhbm5lbHMgbmVlZCB0byBiZSBleHRlcm5hbCBBTkQgZXhwb3J0ZWQ/IG1h
a2luZyB0aGUgc2V0dGluZ3M6DQo+IFRYIDA6DQo+IExPIHNvdXJjZSAgICAgPSBleHRlcm5hbA0K
PiBMTyBFeHBvcnRlZCA9IHRydWUNCj4gVFggMToNCj4gTE8gc291cmNlICAgICAgPSBleHRlcm5h
bA0KPiBMTyBFeHBvcnRlZCA9IHRydWUNClllcywgZXhjZXB0IGFzIHlvdSBwb2ludGVkIG91dCBi
ZWxvdywgTE8gRXhwb3J0ZWQgZm9yIFR4MSBpcyBub3QNCm5lZWRlZCBhbmQgbGlrZWx5IGRvZXMg
bm90aGluZy4NCg0KPg0KPiBSYWRpbyAjMCBUWCBMTyBPVVQgMCAgPSBlbmFibGVkDQo+IFJhZGlv
ICMxIFRYIExPIE9VVCAgMSA9IGVuYWJsZWQgKGZvciBkZWJ1ZykNCj4gKFdoZW4gSSBzZXQgVGhl
c2UgdGhleSB0dXJuIG9uIHRoZSBsaWdodHMgZm9yIHRoZSBMTyBvdXRzKQ0KPg0KPiBUaGUgZnJv
bnQgcGFuZWwgY2FibGUgc2hvdWxkIGNvbm5lY3QgVFggTE8gb3V0cHV0IDAgdG8gVFggTE8gSW5w
dXQgMQ0KWWVzDQoNCj4NCj4gTGlrZSB5b3Ugc2FpZCwgQWNjb3JkaW5nIHRvIHRoZSBibG9jayBk
aWFncmFtLCB0aGUgVFggTE8gaW5wdXQgMSBzaG91bGQgY29ubmVjdCBib3RoIGNoYW5uZWxzIHRv
IHRoZSAxeDIgc3BsaXR0ZXIgc28gSSBzaG91bGQgb25seSBuZWVkIDEgTE8gb3V0cHV0IHR1cm5l
ZCBvbi4gIElkIGxpa2UgdG8gcG9pbnQgb3V0IHRoYXQgaW4gdGhlIGJsb2NrIGRpYWdyYW0gaXQg
YWxzbyBkb2VzbuKAmXQgbG9vayBsaWtlIGl04oCZcyBwb3NzaWJsZSB0byBleHBvcnQgY2hhbm5l
bCAx4oCZcyBMTy4gVGhlIG9ubHkgY29ubmVjdGlvbiBpbiB0aGUgZGlhZ3JhbSBpcyBpbnRlcm5h
bC4NCg0KWWVzLCBTb21ld2hlcmUgaW4gdGhlIEV0dHVzIGRvY3VtZW50YXRpb24sIGl0IGluZGlj
YXRlcyB0aGF0IHRoaXMgaXMNCnRoZSBjYXNlIChJJ3ZlIGZvcmdvdHRlbiB3aGVyZSkuDQoNCj4N
Cj4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8gSGF2ZSB5b3UgZ290dGVuIHRoaXMgdG8gd29yaz8N
ClllcywgSSBoYXZlIGJlZW4gdXNpbmcgdGhpcyBpbiBhIDE2eDE2IHN5c3RlbSB3aXRoIDggTjMy
MSBkZXZpY2VzIGFsbA0KY29ubmVjdGVkIGJ5IGEgc2luZ2xlIExPIChhcmJpdHJhcmlseSBjaG9z
ZW4gTE8gZXhwb3J0IGNoYW5uZWwNCmRpc3RyaWJ1dGVkIHRvIGJvdGggVHggYW5kIFJ4IExPIGlu
cHV0cykuIEkndmUgYWxzbyB0ZXN0ZWQgaXQgb24NCnNtYWxsZXIgc3lzdGVtcyBhcyBzbWFsbCBh
cyA0eDQgKGFuZCBwb3NzaWJseSAyeDIgbGlrZSB5b3VyIGNhc2UsIGJ1dA0Kbm90IHBvc2l0aXZl
IG9uIHRoaXMpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
