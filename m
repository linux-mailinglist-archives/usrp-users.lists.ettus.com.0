Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3390F13166D
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 18:03:16 +0100 (CET)
Received: from [::1] (port=49342 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioVma-0007Kc-Ml; Mon, 06 Jan 2020 12:03:12 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:34956)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ioVmW-0007H9-J2
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 12:03:08 -0500
Received: by mail-qk1-f175.google.com with SMTP id z76so40384857qka.2
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 09:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=cFQUj4GS/I+8SKa1UiRswPGAFulLAYrn7N5847ebCHQ=;
 b=UmWB05Erq/Z3sHUeF+cfdFCWOARmWV6+49mBt2GsQzPT53nru6D40hjVsVDrR1KkWW
 WpbMIjZdz5aFfw2VzrO9jwW9fzTGOMar9O1nzimVNlulFVZM5mUohpRum++3QIUMIdU5
 ZijQtDfn/JKjxsbeJwYNHMJPbzXZ/bGTB1CKF9APIvFWi7vacTQl6Z6Gru/Sl5uS8qcI
 ZlfATvRz1OoVGRdYjQiG314o1Rh+84qqDW4PAVRAwI0N9edKPM9uSAKhLdIgzSOH3MsS
 K5bxwHJJvtAFie5FEHkQQoGnrTMY/9KGJnCLk0IJuohvZAuLkpgCqT9X/iM3GNgTFKL4
 xN5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=cFQUj4GS/I+8SKa1UiRswPGAFulLAYrn7N5847ebCHQ=;
 b=ZcvBj3CmKqdhkKK3UP2ZX9ILp3tkzlrF9Mw+pA1ame0DniZG/eFruMxnKUOOnzNA7f
 GF2VxykHTbbDhZDJ9XcMcGaCWdZYm9rKPoTveM0MFPc/2p+WzGTSEqIBAY5ijJ7e2EvS
 ibV26nXUIfY4uviAmvb33zfoyxce1m61N3q5vZOZsDrYEeUkGc90amVULo0Fiy2uI12G
 jBsJKtUHPgdD5GT239tsWH+mSIRlmqErNDq9teG/HcyHYX/eT4UUJELDycmBtaghz5lZ
 YeqFeRXvTfkE89NURl0P3seodBgU6f9QhZ5vXMDOwhXXOw9NG6q7tm8PH3ZUs/wxzhqP
 I1jg==
X-Gm-Message-State: APjAAAWipyRK9sJH/7tFSlOA6p4nyQhyM7T9bfhO3WWkzJMadg356E3A
 IBHHVBTOt+mciVNB3qzzgMD9X+SWn0U=
X-Google-Smtp-Source: APXvYqy8bNOVpyeX5/+7T1778Jq3PhmInCB0dpThs9/0xmdyGtawhZ8+o4e58LwIyMNIyNzvp47Y7g==
X-Received: by 2002:a37:a614:: with SMTP id p20mr85457005qke.183.1578330147655; 
 Mon, 06 Jan 2020 09:02:27 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id t3sm23766467qtc.8.2020.01.06.09.02.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jan 2020 09:02:26 -0800 (PST)
Message-ID: <5E136822.2070206@gmail.com>
Date: Mon, 06 Jan 2020 12:02:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
 <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
 <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
 <4b2494fd-23d6-f6ae-fa58-f3fc80a46537@ihf.tu-bs.de>
In-Reply-To: <4b2494fd-23d6-f6ae-fa58-f3fc80a46537@ihf.tu-bs.de>
Subject: Re: [USRP-users] Libuhd issues - "uhd_find_devices: error while
 loading shared libraries"
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMDEvMDYvMjAyMCAwMzozNiBBTSwgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3
cm90ZToKPiBPaGggc29ycnksCj4ganVzdCByZWFkIHRoZSBlcnJvciBtZXNzYWdlIHByb3Blcmx5
IDpECj4gWW91IGhhdmUgYW4gZW1wdHkgZGV2aWNlIHN0cmluZyBpbiB5b3VyIHNvZnR3YXJlIHdo
ZW4gb3BlbmluZyBpdC4KVGhpcyBtaWdodCBiZSBhIHVkZXYgaXNzdWUuCgpNYWtlIGNlcnRhaW4g
dGhhdCB5b3UgaGF2ZSBhIGZpbGUsIDEwLXVzcnAucnVsZXMgICAgaW4gL2V0Yy91ZGV2L3J1bGVz
LmQKCgo+Cj4gQW0gMTAuMTIuMjAxOSB1bSAwMDowNiBzY2hyaWViIFNhZWlkIEhhc2hlbWk6Cj4+
IFRoYW5rIHlvdSBmb3IgeW91ciBhZHZpY2UgRmFiaWFuIQo+Pgo+PiBJdCBzZWVtcyB0aGVyZSBp
cyBubyBwYWNrYWdlIGNhbGxlZCBsaWJ1aGQsIGp1c3QgdGhlIGZvbGxvd2luZyB2ZXJzaW9uczoK
Pj4gbGlidWhkMDAzICAgICBsaWJ1aGQzLjE0LjAgIGxpYnVoZC1kZXYKPj4KPj4gU28gSSBkaWQ6
Cj4+Cj4+ICQgc3VkbyBkcGtnIC1QIGxpYnVoZDMuMTQuMAo+PiAoUmVhZGluZyBkYXRhYmFzZSAu
Li4gMjkxMjk5IGZpbGVzIGFuZCBkaXJlY3RvcmllcyBjdXJyZW50bHkgaW5zdGFsbGVkLikKPj4g
UmVtb3ZpbmcgbGlidWhkMy4xNC4wOmFtZDY0ICgzLjE0LjAuMC0wdWJ1bnR1MX50cnVzdHkxKSAu
Li4KPj4gUHVyZ2luZyBjb25maWd1cmF0aW9uIGZpbGVzIGZvciBsaWJ1aGQzLjE0LjA6YW1kNjQg
Cj4+ICgzLjE0LjAuMC0wdWJ1bnR1MX50cnVzdHkxKSAuLi4KPj4gUHJvY2Vzc2luZyB0cmlnZ2Vy
cyBmb3IgbGliYy1iaW4gKDIuMTktMHVidW50dTYuMTUpIC4uLgo+PiAkIHN1ZG8gYXB0LWdldCBp
bnN0YWxsIGxpYnVoZDMuMTQuMQo+Pgo+PiBBbmQgbm93IFVIRCB0b29scyB3b3JrLCBhbHNvIHdp
dGhpbiB0aGUgTFRFIHNvZnR3YXJlLCBidXQgdGhleSB3b24ndCAKPj4gZmluZCBteSBCMjEwIHNh
eWluZzoKPj4KPj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNC44LjQ7IEJv
b3N0XzEwNTQwMDsgCj4+IFVIRF8zLjE0LjEuMS1yZWxlYXNlCj4+IEVycm9yOiBMb29rdXBFcnJv
cjogS2V5RXJyb3I6IE5vIGRldmljZXMgZm91bmQgZm9yIC0tLS0tPgo+PiBFbXB0eSBEZXZpY2Ug
QWRkcmVzcwo+Pgo+PiBSZWdhcmRzLAo+PiBTYWVpZAo+Pgo+Pgo+Pgo+Pgo+PiBPbiBGcmksIERl
YyA2LCAyMDE5IGF0IDI6NTggQU0gRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyAKPj4g
PHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20+PiB3cm90ZToKPj4KPj4gICAgIFlvdSBoYXZlIGFuIG9sZCB2ZXJzaW9uIG9mIGxpYnVo
ZCBhbHJlYWR5IGluc3RhbGxlZC4gVW5pbnN0YWxsIGl0IAo+PiB1c2luZzoKPj4gICAgICQgc3Vk
byBkcGtnIC1QIGxpYnVoZAo+PiAgICAgVGhlbiByZXRyeSBpbnN0YWxsaW5nIGl0LiBTb21ldGlt
ZXMgbGlicmFyaWVzIGFyZSBub3QgZm91bmQgYW5kIHlvdQo+PiAgICAgaGF2ZQo+PiAgICAgdG8g
cnVuCj4+ICAgICAkIHN1ZG8gbGRjb25maWcKPj4gICAgIGJ1dCB0aGF0IGlzIHVzdWFsbHkgZG9u
ZSBieSBkcGtnLgo+Pgo+PiAgICAgQW0gMDYuMTIuMjAxOSB1bSAwMDozMSBzY2hyaWViIFNhZWlk
IEhhc2hlbWkgdmlhIFVTUlAtdXNlcnM6Cj4+ICAgICAgPiBIZWxsbyBldmVyeW9uZSwKPj4gICAg
ICA+Cj4+ICAgICAgPiBJIGhhdmUgYW4gSW50ZWwgTlVDIHJ1bm5pbmcgVWJ1bnR1IDE2LjA0IGFu
ZCBhIGxvdyBsYXRlbmN5IGtlcm5lbAo+PiAgICAgd2hpY2gKPj4gICAgICA+IEkgdXNlIGZvciBP
QUkgTFRFIHNvZnR3YXJlIG9uIHRvcCBvZiBVSEQuCj4+ICAgICAgPgo+PiAgICAgID4gQWZ0ZXIg
dXBkYXRpbmcgbXkgc3lzdGVtIHJlcG9zaXRvcmllcywgVUhEIGJyb2tlIHNvbWVob3cgd2l0aCB0
aGUKPj4gICAgICA+IGZvbGxvd2luZyByZXN1bHQ6Cj4+ICAgICAgPgo+PiAgICAgID4gbnVjOC0z
QG51YzgzLU5VQzhpN0JFSDp+JCB1aGRfZmluZF9kZXZpY2VzCj4+ICAgICAgPiB1aGRfZmluZF9k
ZXZpY2VzOiBlcnJvciB3aGlsZSBsb2FkaW5nIHNoYXJlZCBsaWJyYXJpZXM6Cj4+ICAgICAgPiBs
aWJ1aGQuc28uMy4xNC4xOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2gg
ZmlsZSBvcgo+PiAgICAgZGlyZWN0b3J5Cj4+ICAgICAgPgo+PiAgICAgID4gQXR0ZW1wdGluZyB0
byBtYW51YWxseSBpbnN0YWxsIHRoZSB2ZXJzaW9uIGNpdGVkIGluIHRoZSBlcnJvcgo+PiAgICAg
Z2l2ZXMgbWUgdGhpczoKPj4gICAgICA+Cj4+ICAgICAgPiBVbnBhY2tpbmcgbGlidWhkMy4xNC4x
OmFtZDY0ICgzLjE0LjEuMS0wdWJ1bnR1MX50cnVzdHkxKSAuLi4KPj4gICAgICA+IGRwa2c6IGVy
cm9yIHByb2Nlc3NpbmcgYXJjaGl2ZQo+PiAgICAgID4KPj4gL3Zhci9jYWNoZS9hcHQvYXJjaGl2
ZXMvbGlidWhkMy4xNC4xXzMuMTQuMS4xLTB1YnVudHUxfnRydXN0eTFfYW1kNjQuZGViCj4+Cj4+
ICAgICAgPiAoLS11bnBhY2spOgo+PiAgICAgID4gICB0cnlpbmcgdG8gb3ZlcndyaXRlCj4+ICAg
ICAnL3Vzci9zaGFyZS91aGQvcmZub2MvYmxvY2tzL2tlZXBfb25lX2luX24ueG1sJywKPj4gICAg
ICA+IHdoaWNoIGlzIGFsc28gaW4gcGFja2FnZSBsaWJ1aGQzLjE0LjA6YW1kNjQgCj4+IDMuMTQu
MC4wLTB1YnVudHUxfnRydXN0eTEKPj4gICAgICA+IGRwa2ctZGViOiBlcnJvcjogc3VicHJvY2Vz
cyBwYXN0ZSB3YXMga2lsbGVkIGJ5IHNpZ25hbCAoQnJva2VuIAo+PiBwaXBlKQo+PiAgICAgID4g
RXJyb3JzIHdlcmUgZW5jb3VudGVyZWQgd2hpbGUgcHJvY2Vzc2luZzoKPj4gICAgICA+IAo+PiAg
L3Zhci9jYWNoZS9hcHQvYXJjaGl2ZXMvbGlidWhkMy4xNC4xXzMuMTQuMS4xLTB1YnVudHUxfnRy
dXN0eTFfYW1kNjQuZGViCj4+ICAgICAgPiBFOiBTdWItcHJvY2VzcyAvdXNyL2Jpbi9kcGtnIHJl
dHVybmVkIGFuIGVycm9yIGNvZGUgKDEpCj4+ICAgICAgPgo+PiAgICAgID4KPj4gICAgICA+IFdv
dWxkIGFueW9uZSBoYXZlIGFueSByZWNvbW1lbmRhdGlvbnMgb24gd2hhdCB0byBkbyB0byBtYWtl
IHN1cmUKPj4gICAgIEkgaGF2ZQo+PiAgICAgID4gdGhlIHJpZ2h0IHZlcnNpb24gb2YgZXZlcnl0
aGluZyBwcmVzZW50Pwo+PiAgICAgID4KPj4gICAgICA+Cj4+ICAgICAgPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiAgICAgID4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKPj4gICAgICA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Cj4+ICAgICAgPiAKPj4gaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+ICAg
ICAgPgo+Pgo+PiAgICAgLS0gICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4+ICAgICBNLi1TYy4gRmFiaWFuIFNjaHdhcnRhdQo+PiAgICAgVGVj
aG5pc2NoZSBVbml2ZXJzaXTDpHQgQnJhdW5zY2h3ZWlnCj4+ICAgICBJbnN0aXR1dCBmw7xyIEhv
Y2hmcmVxdWVuenRlY2huaWsKPj4gICAgIFNjaGxlaW5pdHpzdHIuIDIyCj4+ICAgICAzODEwNiBC
cmF1bnNjaHdlaWcKPj4gICAgIEdlcm1hbnkKPj4KPj4gICAgIFRlbC46ICAgKzQ5LSgwKTUzMS0z
OTEtMjAxNwo+PiAgICAgRmF4OiAgICArNDktKDApNTMxLTM5MS0yMDQ1Cj4+ICAgICBFbWFpbDog
ZmFiaWFuLnNjaHdhcnRhdUBpaGYudHUtYnMuZGUKPj4gICAgIDxtYWlsdG86ZmFiaWFuLnNjaHdh
cnRhdUBpaGYudHUtYnMuZGU+Cj4+ICAgICBXV1c6IGh0dHA6Ly93d3cudHUtYnJhdW5zY2h3ZWln
LmRlL2loZgo+PiAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPj4KPj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiAgICAgVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPj4g
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCj4+Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20K
