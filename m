Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6598A568F05
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jul 2022 18:24:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B023D383B39
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jul 2022 12:24:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657124669; bh=CQgBxtCTPbcD8dT0wP9IM7r/UKg3Z2GVPjVVXIa+2XE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EtyGmKPuaWV3tLB3VR6cssbjUT3HuLavp6GttLEaAEB5+Q8yhMjXX/KmZxdTvykyT
	 hLpyTN4M7nnn9lUfEsKxoO+q2rqbEu5WFX2JMM3Hs5GFXnGLm/X9rk+j/BAHQ1JKKm
	 zv9KS/H01xU9aDC7DQIu+f1KCFbu3AM238w2OIURdNHaP3axIIK3y9i/s6ryLFAHTy
	 Jw4S3o36ZZXW2HV289Jopgc7MECBPx5IxDAc0DUZpWJlNp9dXRPyZhVpprfw35JLiu
	 dBFUdPpIayKPWlLAq5WQH/72TAhB9xUnNKNDR0u7zcQ4D/h6kX4MDC+jl9FmhKlkAQ
	 0trjgdDm0MCnw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id A836A383964
	for <usrp-users@lists.ettus.com>; Wed,  6 Jul 2022 12:21:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iTtHspRR";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id lg18so8189669ejb.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Jul 2022 09:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ld36rvVDpVvm8w2kbSztZWG745UxBa2SZR2bzYyileE=;
        b=iTtHspRRDt5LVSjH6QqNVEd2Km56gTRghWQGB6llyzp5FJMM+NvKh9ZUVT82/w3Vrs
         uS2Pyybcflor7MyO7gsjcpENKoSAcQ1Qb8vxDjR3mJCUMBrNnofdUBYAPm703lP54MIk
         9Hcg4Q+QnaXBNbvmXcOxJuufFas6+E6Z3YHAi/RyXpHESd8gMobMX16j1JWsOs2rNn5r
         Y/jWtNumoRJ5daKYeb8KsZPfBiUZL5Y7XK4GbiB7MW6M+jRMjY0TuRbO/poSTjlTgzZN
         JMn6ZZbWdaeE5M80uWaX2Q3nU9AOe0mVIb5oeWU1onaJewlCNO3BTSN8dZ2rwEHu+7KB
         fHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ld36rvVDpVvm8w2kbSztZWG745UxBa2SZR2bzYyileE=;
        b=bsMok1aNSxqTWWhUtQyA5GG7B+91Ni7n2jWDYkggBAmJtyX+5rfYwr9cc5igtdCwK6
         OGFc3bNgapMDhlhQsuzkVUiEED0Vy0F4Bbk1Zf+AA5S1eixmiNvDCknloeYgOPmjfyHl
         0UqsmGwsghg+uf1gWNfu3VO6hnRJTfeIH/Pkhf4xFGfQQ2UBCdpB2p96OeJwU8Ig5YKE
         AEX60XKywuRi8EgyJT+qbfvy/jowSgZY0Pp1t3d2l1HPwS0dwQq6e5LVExodJUn9Iuzy
         +okCkwR3OCpsE9GzD0JOyU4vcjxCZnVxrclpLquXWYrPsSnxhu4Zl35v35lt/7myHFh7
         KvSQ==
X-Gm-Message-State: AJIora/qgDcvMCWeOvU3Q7L3BDXsIJmiH31g1atbArTtIjuYUVbS3Pg/
	8fkpSpJJPY3fdRNAI3yVrDDiYOPM+m8un+y0AE+kYXL8
X-Google-Smtp-Source: AGRyM1vI9REPyYZAAbqLecvJUsHs/pXIjVTJyJ6E8y7xHLQyN+yNALkPDQEQuXF+QaDwYoZ2jDOwr8iET7KZ4fPdGKU=
X-Received: by 2002:a17:906:cc12:b0:72b:2ef:4a9d with SMTP id
 ml18-20020a170906cc1200b0072b02ef4a9dmr1199547ejb.40.1657124493521; Wed, 06
 Jul 2022 09:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
 <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com> <CAAxXO2Gzu2DFt7mkMJjYZrNk4X8g+TK7j3ymzpeehDX=NSjm4Q@mail.gmail.com>
 <CAA=S3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gmail.com>
 <a304c03d-1ee8-da48-2b17-c2b5784d1615@gmail.com> <CAA=S3PuHbtrUh3=ALwUw2ySJP14-LaNVrE2pNsuD9h_yTVXHpg@mail.gmail.com>
In-Reply-To: <CAA=S3PuHbtrUh3=ALwUw2ySJP14-LaNVrE2pNsuD9h_yTVXHpg@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 6 Jul 2022 19:21:22 +0300
Message-ID: <CAAxXO2Ek3wDqPtUs=YPpzgx6Etox79CSz46ZJr9iVNEoLp6vdA@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: MADZ3NNEI7O5TVCGZOPRS2MQQ76BKTI7
X-Message-ID-Hash: MADZ3NNEI7O5TVCGZOPRS2MQQ76BKTI7
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MADZ3NNEI7O5TVCGZOPRS2MQQ76BKTI7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGNhbiB0ZXN0IGFuZCBzZWUgd2hhdCB3b3JrcyBmb3IgeW91LiBObyBkYW1hZ2UgZG9uZSA6
KQ0KUmVzcGVjdGZ1bGx5IGkgdGhpbmsgdGhhdCBNYXJjdXMgbWlzdW5kZXJzdG9vZC4NCklmIHlv
dSBkaXZpZGUgYnkgbGFyZ2VzdCBudW1iZXIsIHlvdSB3aWxsIGVuZCB1cCBpbiB7LTEsICsxfS4g
SXQgd2lsbA0KYmUgYmFkIGlmIHlvdSB0cnkgdG8gZmxvb3Igb3IgY2VpbCB0aGF0OigNCllvdSBz
aG91bGQgZGl2aWRlIGJ5IHNtYWxsZXN0IG51bWJlciwgd2hpY2ggaXMgaXRzZWxmIGRpdmlkZWQg
YnkgMTAwLg0KVGhpcyB3YXkgeW91IGNhbiBiZSBhc3N1cmVkIHRoYXQgeW91ciBlcnJvciBmb3Ig
eW91ciBjZWlsIG9yIGZsb29yDQp3aWxsIGJlIDwgMSU6KQ0KWW91IHdhbnQgeW91ciBudW1iZXJz
IGluIFtpbmYsIDEwMF0sIFstMTAwLCAtaW5mXQ0KDQpOaWtvcw0KDQpPbiBXZWQsIEp1bCA2LCAy
MDIyIGF0IDEyOjAzIFBNIHNwIDxzdGFja3Byb2dyYW1lckBnbWFpbC5jb20+IHdyb3RlOg0KPg0K
PiBUaGFua3MhIEkgd2lsbCBleGFtaW5lIHlvdXIgdXNlZnVsIGRlc2NyaXB0aW9uLi4uDQo+DQo+
IE9uIFN1biwgSnVsIDMsIDIwMjIgYXQgODo0NSBQTSBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9u
YnJhdW5AZ21haWwuY29tPiB3cm90ZToNCj4+DQo+PiBPbiAyMDIyLTA3LTAzIDExOjI5LCBzcCB3
cm90ZToNCj4+DQo+PiBUaGFua3MhIFNvIEkgc2V0IHNjYWxlciB0byBhbiBhcHByb3ByaWF0ZSB2
YWx1ZSB0aGF0IGNlaWwgaXMgbm90IGVmZmVjdGVkIG15IGRhdGEuIEJ1dCBpbiBHbnVyYWRpbyBJ
IGNhbiBub3QgZmluZCBhbiBlYXN5IGNvbnZlcnQgc29sdXRpb24uDQo+PiBTbyBJIGRvIHRlc3Qg
YW5kIGVycm9yIHRvIGZpbmQgYSBzb2x1dGlvbi4NCj4+DQo+PiBUaGlzIGlzbid0IGV2ZW4gYSBH
bnUgUmFkaW8gb3IgVUhEIHByb2JsZW0sIGp1c3QgYSBnZW5lcmljIHByb2dyYW1taW5nL2FsZ29y
aXRobXMgdGhpbmcuICBOb3QgZXZlbiBEU1AuDQo+Pg0KPj4gTGV0J3Mgc2F5IHlvdXIgY29tcGxl
eC1mbG9hdCBmaWxlIGZyb20gYSBIYWNrUkYgaXMgTk9UIHNjYWxlZCBpbnRvIHstMS4wLCsxLjB9
LiAgIFRoZW4geW91IHNpbXBseSBsb29rIGF0IHRoZSBsYXJnZXN0IGFic29sdXRlIHZhbHVlIGFj
cm9zcw0KPj4gICB0aGUgd2hvbGUgZmlsZSBhbmQgZGl2aWRlIGFsbCB5b3VyIHZhbHVlcyBieSB0
aGF0IHZhbHVlLiBUaGVuIHlvdSd2ZSBwcmVzZXJ2ZWQgZHluYW1pYyByYW5nZSB3aXRob3V0IGNs
aXBwaW5nLCBhbmQgaXQgaXMgdGhlbiBpbiB0aGUNCj4+ICAgImV4cGVjdGVkIiBkb21haW4gb2Yg
Y29tcGxleC1mbG9hdHMgaW4gR251IFJhZGlvIChvciBVSEQgZm9yIHRoYXQgbWF0dGVyKS4NCj4+
DQo+PiBXZSdyZSB0YWxraW5nIGFib3V0IGZpbGVzIGhlcmUsIHNvIGl0J3Mgbm90IGxpa2UgeW91
IGhhdmUgdG8gInVuZGVyc3RhbmQiIHRoaXMgaXMgaW4gcmVhbC10aW1lLiBZb3UgY2FuIGRvIGEg
b25lLXRpbWUgY29udmVyc2lvbg0KPj4gIG9mIHRoZSBub3Qtc2NhbGVkLXRvLXstMS4wLCsxLjB9
IGZpbGUgaW50byB0aGF0IHJhbmdlLCBhbmQgdGhlbiBpdCdzIGluIHRoZSByaWdodCByYW5nZS4N
Cj4+DQo+PiBCdXQgbXkgKmd1ZXNzKiBpcyB0aGF0IGhhY2tyZiByZWNvcmRpbmcgdG9vbHMgaWYg
dGhleSdyZSB1c2luZyBjb21wbGV4LWZsb2F0IHdpbGwgaGF2ZSB0aGUgZmxvYXRpbmctcG9pbnQg
YWxyZWFkeSBzY2FsZWQgaW50byB7LTEuMCwrMS4wfSwgYW5kIGluDQo+PiAgaG9zdC1uYXRpdmUg
SUVFRS03NTQgZmxvYXRpbmctcG9pbnQgZm9ybWF0LiAgSSdkIGJlIG1pbGRseSBhc3RvbmlzaGVk
IGlmIGl0IHdlcmUgb3RoZXJ3aXNlLg0KPj4NCj4+DQo+Pg0KPj4gT24gU3VuLCBKdWwgMywgMjAy
MiBhdCAxOjQ0IEFNIE5pa29zIEJhbGthbmFzIDxuYmFsa2FuYXNAZ21haWwuY29tPiB3cm90ZToN
Cj4+Pg0KPj4+IE9uIFNhdCwgSnVsIDIsIDIwMjIgYXQgNjo1NCBQTSBNYXJjdXMgRCBMZWVjaCA8
cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPj4+ID4NCj4+PiA+IFRoZSBjb252ZW50
aW9uIGluIHRoZSBVSEQgYW5kIEdudVJhZGlvIHVuaXZlcnNlIGlzIHRoYXQgZmxvYXRzIGFyZSBz
Y2FsZWQgaW50byB7LTEuMCwrMS4wfS4NCj4+PiA+DQo+Pj4gPiBJZiB5b3Ugc2V0dXAgeW91ciBz
dHJlYW1lciB0byB1c2UgY29tcGxleCBmbG9hdCBDUFUgZm9ybWF0IGFuZCBzYzE2IHdpcmUgZm9y
bWF0IHlvdSBqdXN0IG5lZWQgdG8gc2NhbGUgeW91ciBjb21wbGV4IGZsb2F0cyBhcHByb3ByaWF0
ZWx5Lg0KPj4+DQo+Pj4gSnVzdCB0byBlbGFib3JhdGUgb24gdGhpcyBhIGJpdC4gSWYgeW91ciBk
YXRhIGlzIGxhcmdlIGVub3VnaCAoPj4xKQ0KPj4+IHRoZW4gKy0gMSB3b24ndCBtYWtlIGFueSBk
aWZmZXJlbmNlLi4uDQo+Pj4gSWYgaXQgaXMgKDwgMSkgdGhlbiBpdCB3aWxsIGJlIGEgYmlnIHBy
b2JsZW0uIFNjYWxlIGFjY29yZGluZ2x5OikNCj4+PiBZb3UgY2FuIHVzZSBlaXRoZXIgY2VpbCBv
ciBmbG9vci4gU2FtZSBlcnJvcjopDQo+Pj4NCj4+PiBOaWtvcw0KPj4+ID4NCj4+PiA+IFNlbnQg
ZnJvbSBteSBpUGhvbmUNCj4+PiA+DQo+Pj4gPiA+IE9uIEp1bCAyLCAyMDIyLCBhdCAxMDoyMiBB
TSwgTmlrb3MgQmFsa2FuYXMgPG5iYWxrYW5hc0BnbWFpbC5jb20+IHdyb3RlOg0KPj4+ID4gPg0K
Pj4+ID4gPiDvu79IaSwNCj4+PiA+ID4NCj4+PiA+ID4gSSBkb24ndCBrbm93IHZvbGtfMzJmY19j
b252ZXJ0XzE2IGljLiBEdW5ubyBpZiBpdCBjb252ZXJ0cyBiZXR3ZWVuIGJpZw0KPj4+ID4gPiBh
bmQgbGl0dGxlIGluZGlhbnM6KA0KPj4+ID4gPiBXaGVuIGNvbnZlcnRpbmcgYSBmbG9hdCB0byBp
bnQsIHlvdSBhbHdheXMgaGF2ZSB0byBjZWlsIG9yIGZsb29yIHRoZSBmbG9hdC4NCj4+PiA+ID4g
Q2VpbCBzb3VuZHMgYXMgZ29vZCBhcyBhbnkuIFlvdSBjYW4gZWFzaWx5IGNoYW5nZSB0aGF0IHRv
IGZsb29yIGlmIHlvdQ0KPj4+ID4gPiBydW4gaW50byBwcm9ibGVtcy4NCj4+PiA+ID4gU2luY2Ug
Y2xpYnMgbGUzMnRvKiB0YWtlIGludHMgYXMgYXJndW1lbnRzLCBJIHdvdWxkIGZpcnN0IGNvbnZl
cnQNCj4+PiA+ID4gZmxvYXQzMiB0byBpbnQzMiBmcm9tIGdudXJhZGlvIHNhdmUgdG8gZmlsZSwg
YW5kIHRoZW4gd29ycnkgYWJvdXQNCj4+PiA+ID4gdGhlIGluZGlhbnMgd2hlbiBpbXBvcnRpbmcg
dG8gdWhkLi4uDQo+Pj4gPiA+DQo+Pj4gPiA+IEhUSA0KPj4+ID4gPiBOaWtvcw0KPj4+ID4gPg0K
Pj4+ID4gPj4gT24gRnJpLCBKdWwgMSwgMjAyMiBhdCA4OjQyIEFNIHNwIGggPHN0YWNrcHJvZ3Jh
bWVyQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4gPiA+Pg0KPj4+ID4gPj4gSSByZWNvcmRlZCBhIGNv
bXBsZXggc2lnbmFsIGZpbGUsIEkgZGlkIGl0IHdpdGggSGFja1JGT05FLCAgRm9yIHNlbmRpbmcg
b24gVVNSUCBJIHdhbnQgdG8gdXNlIHRoZSBpbnQxNiBvcHRpb24gYXMgaW5wdXQsIE15IHF1ZXN0
aW9uIGlzIGhvdyBjYW4gY29udmVydCBhIGNvbXBsZXggZmxvYXQgMzIgc2lnbmFsIHRvIGNvbXBs
ZXggaW50IDE2IGZvciBVU1JQPw0KPj4+ID4gPj4gd2hhdCdzIHRoZSByZWxhdGlvbiBiZXR3ZWVu
IGNvbXBsZXggZmxvYXQgMzIgYW5kIGNvbXBsZXggaW50IDMyIGluIFVTUlA/DQo+Pj4gPiA+PiBJ
IGtub3cgdGhhdCBpbiBVU1JQIG51bWJlcnMgYXJlIGluIGZvcm1hdCBjb21wbGV4IGludCAxNiBh
bmQgYmlnLWVuZGlhbiBhbmQgaW4gR251cmFkaW8gbnVtYmVycyBpbiBmb3JtYXQgY29tcGxleCBm
bG9hdCAzMiBhbmQgbGl0dGxlLWVuZGlhbi4uLg0KPj4+ID4gPj4gaHR0cHM6Ly9maWxlcy5ldHR1
cy5jb20vbWFudWFsL3BhZ2VfY29udmVydGVycy5odG1sDQo+Pj4gPiA+PiBJIHVzZWQgdm9sayBs
aWIgYnV0IHRoZSBmbG9hdCB0aGF0IEkgZW50ZXJlZCBhcyBpbnB1dCwgaXMgY2VpbGVkIHRvIGJp
Z2dlciBpbnRlZ2Vycy4gSXMgdGhpcyBhIG1ldGhvZCB2YWxpZCBmb3IgY29udmVydGluZyBzaWdu
YWxzLi4uP09yIG15IGRhdGEgd2lsbCBiZSBjb3JydXB0ISEhDQo+Pj4gPiA+PiBUaGFua3MgaW4g
YWR2YW5jZS4NCj4+PiA+ID4+DQo+Pj4gPiA+Pg0KPj4+ID4gPj4+ICAgICAgIGx2XzE2c2NfdCog
b3V0cHV0VmVjdG9yOw0KPj4+ID4gPj4+DQo+Pj4gPiA+Pj4gICAgICAgbHZfMzJmY190KiBpbnB1
dFZlY3RvcjsNCj4+PiA+ID4+Pg0KPj4+ID4gPj4+ICAgICAgIGlucHV0VmVjdG9yLT5yZWFsKDI1
LjU1KTsNCj4+PiA+ID4+Pg0KPj4+ID4gPj4+ICAgICAgIGlucHV0VmVjdG9yLT5pbWFnKDQ1KTsN
Cj4+PiA+ID4+Pg0KPj4+ID4gPj4+ICAgICAgIHZvbGtfMzJmY19jb252ZXJ0XzE2aWMob3V0cHV0
VmVjdG9yLGlucHV0VmVjdG9yLDMyKTsNCj4+PiA+ID4+Pg0KPj4+ID4gPj4+ICAgICAgIHFEZWJ1
ZygpPDxvdXRwdXRWZWN0b3ItPnJlYWwoKTw8Ii0tLS0tIjsNCj4+PiA+ID4+DQo+Pj4gPiA+Pg0K
Pj4+ID4gPj4gVGhlIG91dHB1dDoNCj4+PiA+ID4+Pg0KPj4+ID4gPj4+IDI2IC0tLS0tDQo+Pj4g
PiA+Pg0KPj4+ID4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4+PiA+ID4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+Pj4gPiA+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Pj4gPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4gPiA+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gPiA+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+
DQo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
