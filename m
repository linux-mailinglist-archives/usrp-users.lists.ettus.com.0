Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B1118A32C
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 20:29:52 +0100 (CET)
Received: from [::1] (port=56658 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEeNx-0004PN-8z; Wed, 18 Mar 2020 15:29:49 -0400
Received: from mail-pg1-f170.google.com ([209.85.215.170]:35864)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cinaed.simson@gmail.com>)
 id 1jEdvH-0000Vx-Lw
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 15:00:11 -0400
Received: by mail-pg1-f170.google.com with SMTP id z72so4341508pgz.3
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 11:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=nsPJOHeSCIbWNswMSk7Zf7yoV9MIuU2tra6ICaITT7A=;
 b=M/0XeQ3SwcdJKtCxUUwymXhtBamnFX7d1Ery0k8pZqXNbXS4yNW6ffaPtKqyZOtXwI
 KjI1tzwzLaCcSonziHWll2GgACnevrJ64U0N0+f08RuVn3rmZ9gfJfuGdN1HoWH4gCyX
 TcaHr7wp4XzsVj7x1oci2tIeYnF3eBBv789kiiJ4FHgqKwxg6fHBEbYWvHINgf4mMiex
 SV0Jm9L0G0H08bzSqNAclwlHOLa2tTV1vAXo1C8Sfkc2gxA8Rh4MOrAy7yVMPbB6/LW0
 3Vi0PyupNwN3A7xULYwYh407SaUDjeUS1q9lEDdL+Bet/aEgEk9/bzQL9PtJH2/SJ18F
 Tn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language;
 bh=nsPJOHeSCIbWNswMSk7Zf7yoV9MIuU2tra6ICaITT7A=;
 b=N3EZuY9DN0uw/3JGjA3onHqsUimCYf48W1nzdq94XFW0bcaXWrYbIYEHV86Q5es6cw
 pbq7DXXAxYJKE39CSzlPJ2vGlS0jrCf6AN4FO08D1NB4cP96q0DNa5toX+QaoKINt9IQ
 DnTx3ZzZh4Jkw+j6TnzG3auDBeMBGbS7XPqCkqDuWd3c1Bt8xAf+xQlmSXGa0A7SFxzL
 G9qFf4aPfWkY4xh9UmFoBeEu5Al3rNHg8X12UExhpO5MOiLRIx+vnh/MyGxUvrHoaTXh
 dHphoAm14MGKq3N0C7h6/XR4n4RqqnMw3dsxofLAQ434/dOnkYpl/xLqfQ1/JwLsyI8V
 P6TA==
X-Gm-Message-State: ANhLgQ16Sp/occybqH9SyB6bv7qR9gn0q+ydDI8n8Dnglp85c0mbhBTR
 0tIaaw1zfX/Eb8aV8fjDbiBRCfs=
X-Google-Smtp-Source: ADFU+vtime08cCxAfk9Ab3rZq3jkukKy6RfRIpjFzIv/jix1zLLRL4tbA0QRtlDqtOG9r4wYFSz/jw==
X-Received: by 2002:a62:30c3:: with SMTP id w186mr5609141pfw.245.1584557970452; 
 Wed, 18 Mar 2020 11:59:30 -0700 (PDT)
Received: from [10.0.0.16] (c-76-103-30-197.hsd1.ca.comcast.net.
 [76.103.30.197])
 by smtp.gmail.com with ESMTPSA id w9sm7613731pfd.94.2020.03.18.11.59.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Mar 2020 11:59:29 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
 <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
 <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
 <CAKaLowTQ3GEHZgksydU0pVm1ewHQjR810ZcVZObfLedX9w53+w@mail.gmail.com>
 <00072490-e939-e531-5917-aa617f204ada@ettus.com>
 <CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com>
Autocrypt: addr=cinaed.simson@gmail.com; keydata=
 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
 tgKEmwfIndcGZvKmEA==
Message-ID: <f57b84f3-22dd-629a-cfa3-4e3bbe01cf5e@gmail.com>
Date: Wed, 18 Mar 2020 11:59:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 18 Mar 2020 15:29:45 -0400
Subject: Re: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB
 3.0 although Linux driver are loaded
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
From: Cinaed Simson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cinaed Simson <cinaed.simson@gmail.com>
Content-Type: multipart/mixed; boundary="===============6191012469783853836=="
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

This is a multi-part message in MIME format.
--===============6191012469783853836==
Content-Type: multipart/alternative;
 boundary="------------1EFA49218C2FD89C6997F271"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1EFA49218C2FD89C6997F271
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

QSBVU0IzIHBvcnQgaXPCoCBTdXBlclNwZWVkIHBvcnQuCgpGb3IgYSBxdWljayBjaGVjaywg
dHJ5CgrCoCBsc3VzYiAtdiB8IGdyZXAgNUdicHMKCnRvIGNvbmZpcm0geW91IGhhdmUgYXQg
bGVhc3QgMSB3b3JraW5nIFVTQjMgcG9ydC4KCkFuZCB0aGVuIHlvdSBjYW4gY2hlY2sgdGhl
IHBvcnQgc3BlZWQgd2hlcmUgdGhlIGRldmljZSBpcyBjb25uZWN0ZWQKdXNpbmcgbHN1c2Ig
LXYuCgotLSBDaW5hZWQKCgoKT24gMy8xOC8yMCA3OjM2IEFNLCBSb2RvbHBoZSBCZXJ0b2xp
bmkgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gTWFyY3VzLAo+IFVTQiBwbHVnIGlzIHJvdGF0
ZWQgKGZyb20gcm93IGlzIGF0IHRvcCksIGJ1dCB5ZXMgSSBnZXQgdGhlIGV4YWN0IHNhbWUK
PiBwb3J0IGFzIHlvdXIuCj4gVGhhbmsgeW91Cj4gUmVnYXJkcywKPiBSb2RvbHBoZQo+Cj4g
TGXCoG1lci4gMTggbWFycyAyMDIwIMOgwqAxNjoyMCwgTWFyY3VzIE3DvGxsZXIgdmlhIFVT
UlAtdXNlcnMKPiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzp1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4+IGEgw6ljcml0wqA6Cj4KPiAgICAgSGkgUm9kb2xwaGUs
Cj4KPiAgICAgY29uc2lkZXJpbmcgdGhpcyBpcyBhcyBjb25mdXNpbmcgdG8gbWUgYXMgdG8g
eW91OiBJIHRvb2sgYSBwaWN0dXJlCj4gICAgIG9mIG15Cj4gICAgIFVTQjMgcG9ydC4gV2hl
biBsb29raW5nIGF0IGFuIG9ibGlxdWUgYW5nbGUgYXQgeW91cnMsIGRvIHlvdSBzZWUgdGhl
Cj4gICAgIGZpdmUgZnJvbnQtcm93IGJyb256ZS9nb2xkIGNvbnRhY3RzIHNob3duIGluIHRo
ZSBhdHRhY2hlZCBwaG90bz8KPgo+ICAgICBCZXN0IHJlZ2FyZHMsCj4gICAgIE1hcmN1cwo+
Cj4gICAgIE9uIDE4LjAzLjIwIDE0OjMzLCBSb2RvbHBoZSBCZXJ0b2xpbmkgdmlhIFVTUlAt
dXNlcnMgd3JvdGU6Cj4gICAgID4gVGhhbmtzIHRvIGJvdGggb2YgeW91Lgo+ICAgICA+Cj4g
ICAgID4gVGhlIHBvcnQgaXMgYmxhY2ssIGJ1dCBpdCBoYXMgYmVlbiB3b3JraW5nIGZvciBm
ZXcgbW9udGhzIHVudGlsIEkKPiAgICAgPiBzaHV0ZG93biAvIGNoYW5nZSBzZXNzaW9uIChJ
IGNhbid0IGxvZyBiYWNrIHRvIHByZXZpb3VzIHNlc3Npb24gZm9yCj4gICAgID4gcmVhc29u
cykgc28gSSBiZWxpZXZlIHRoYXQgdGhlIHBvcnQgYnkgaXRzZWxmIGlzbid0IHRoZSBiYWQg
Z3V5Lgo+ICAgICA+Cj4gICAgID4gSXQga2VlcHMgYXBwZWFyaW5nIGFzIFVTQiAyICgiaGln
aC1zcGVlZCIpIHdoZW4gSSBwbHVnIGl0IGFuZAo+ICAgICBhbHNvIHdoZW4KPiAgICAgPiBJ
IHJ1biB1aGRfZmluZF9kZXZpY2VzCj4gICAgID4KPiAgICAgPiBAQ2VkcmljIEkgbWFkZSBz
dXJlIHRvIHBsdWcgYXQgbWF4IGJvdGggZW5kcwo+ICAgICA+Cj4gICAgID4gVGhhbmsgeW91
IGFnYWluCj4gICAgID4gUmVnYXJkcywKPiAgICAgPiBSb2RvbHBoZQo+ICAgICA+Cj4gICAg
ID4gTGXCoG1lci4gMTggbWFycyAyMDIwIMOgwqAxNTowMiwgQ2VkcmljIFJvdXggdmlhIFVT
UlAtdXNlcnMKPiAgICAgPiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzp1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgPG1haWx0bzp1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Pj4+IGEgw6ljcml0wqA6Cj4gICAgID4KPiAgICAgPsKgIMKgIMKgSGksCj4gICAgID4KPiAg
ICAgPsKgIMKgIMKgYmUgYWxzbyBzdXJlIHRvIHBsdWcgdGhlIGNhYmxlIGZpcm1seSBvbiBi
b3RoCj4gICAgID7CoCDCoCDCoGVuZHMuIEkndmUgc2VlbiBpdCBtb3JlIHRoYW4gb25jZSB3
aXRoIGEgY2FibGUKPiAgICAgPsKgIMKgIMKgImhhbGYtcGx1Z2dlZCIgYW5kIHRoZW4gaXQg
YmVjb21lcyB1c2IyLCBub3QgdXNiMy4KPiAgICAgPgo+ICAgICA+wqAgwqAgwqBNeSAyIGNl
bnRzLgo+ICAgICA+Cj4gICAgID7CoCDCoCDCoFJlZ2FyZHMsCj4gICAgID7CoCDCoCDCoEPD
qWRyaWMuCj4gICAgID4KPiAgICAgPsKgIMKgIMKgT24gMy8xOC8yMCAyOjU0IFBNLCBNYXJj
dXMgTcO8bGxlciB2aWEgVVNSUC11c2VycyB3cm90ZToKPiAgICAgPsKgIMKgIMKgPiBIaSBS
b2RvbHBoZSwKPiAgICAgPsKgIMKgIMKgPgo+ICAgICA+wqAgwqAgwqA+IGZpcnN0IG9mIGFs
bCwgY2hlY2sgd2hldGhlciB5b3UncmUgYWN0dWFsbHkgZGVhbGluZyB3aXRoIGEKPiAgICAg
VVNCMwo+ICAgICA+wqAgwqAgwqBwb3J0LiBJCj4gICAgID7CoCDCoCDCoD4ga25vdywgc291
bmRzIHN0cmFuZ2UsIGJ1dCBpZiBpdCdzIG5vdCBibHVlIGFuZCBkb2Vzbid0Cj4gICAgIGhh
dmUgbW9yZSB0aGFuCj4gICAgID7CoCDCoCDCoD4gZm91ciB2aXNpYmxlIGNvbnRhY3RzLCBp
dCdzIG5vdCBzdGFuZGFyZC1jb21wbGlhbnQgVVNCMy4KPiAgICAgVGhlIGZhY3QgdGhhdAo+
ICAgICA+wqAgwqAgwqA+IGl0J3MgYXR0YWNoZWQgdG8gYSB4SENJIGRvZXNuJ3QgaXRzZWxm
IG1lYW4gaXQgY2FuIGRvIFVTQjMuCj4gICAgID7CoCDCoCDCoD4KPiAgICAgPsKgIMKgIMKg
PiBUaGVuLCBJIGNhbid0IHF1aXRlIHJlbWVtYmVyIHdoZXRoZXIgdGhlIFVTQiBjb250cm9s
bGVyIG9uCj4gICAgIHRoZSBCMjAwCj4gICAgID7CoCDCoCDCoD4gd291bGQgZXZlbiByZWdp
c3RlciBhcyBVU0IzIGJlZm9yZSB0aGUgaW5pdGlhbCBmaXJtd2FyZSBpcwo+ICAgICBsb2Fk
ZWQuIFRyeQo+ICAgICA+wqAgwqAgwqA+IHRoZSBmb2xsb3dpbmc6IEluIG9uZSB0ZXJtaW5h
bCB3aW5kb3csIHJ1biBgZG1lc2cgLUh3eGAuCj4gICAgIFBsdWcgaW4gdGhlCj4gICAgID7C
oCDCoCDCoD4gVVNSUCwgYW5kIHNlZSBob3cgaXQgYXBwZWFycyBvbiB0aGUgYnVzIChpdCBz
ZWVtcywgYXMgVVNCMgo+ICAgICBoaWdoLXNwZWVkCj4gICAgID7CoCDCoCDCoD4gZGV2aWNl
KS4gQWZ0ZXIgdGhhdCwgaW4gYW5vdGhlciB0ZXJtaW5hbCwgeW91J2QgcnVuCj4gICAgID7C
oCDCoCDCoGB1aGRfZmluZF9kZXZpY2VzYCwKPiAgICAgPsKgIMKgIMKgPiBhbmQgc2VlIHdo
ZXRoZXIgdGhlIGRldmljZSByZS1lbnVtZXJhdGVzIGFzIFVTQjMKPiAgICAgU3VwZXJTcGVl
ZCBkZXZpY2UuCj4gICAgID7CoCDCoCDCoD4KPiAgICAgPsKgIMKgIMKgPiBCZXN0IHJlZ2Fy
ZHMsCj4gICAgID7CoCDCoCDCoD4gTWFyY3VzCj4gICAgID7CoCDCoCDCoD4KPiAgICAgPsKg
IMKgIMKgPiBPbiAxOC4wMy4yMCAxMzo0MywgUm9kb2xwaGUgQmVydG9saW5pIHZpYSBVU1JQ
LXVzZXJzIHdyb3RlOgo+ICAgICA+wqAgwqAgwqA+PiBIZWxsbyBSb24sIChJIHJlc2VuZCB0
aGUgZW1haWwsIEkgZm9yZ290IHRvICJyZXBseSB0byBhbGwiKQo+ICAgICA+wqAgwqAgwqA+
PiBUaGFuayB5b3UgZm9yIHlvdXIgcXVpY2sgZmVlZGJhY2suCj4gICAgID7CoCDCoCDCoD4+
Cj4gICAgID7CoCDCoCDCoD4+IE9rIEkgdW5kZXJzdGFuZC4gTW9yZSBpbmZvcm1hdGlvbiwg
bHNwY2kgZ2l2ZXMgbWUgOgo+ICAgICA+wqAgwqAgwqA+PiAwMDoxNC4wIFVTQiBjb250cm9s
bGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQQ0gKPiAgICAgVVNCIDMuMQo+
ICAgICA+wqAgwqAgwqB4SENJCj4gICAgID7CoCDCoCDCoD4+IEhvc3QgQ29udHJvbGxlciAo
cmV2IDEwKQo+ICAgICA+wqAgwqAgwqA+PiBTbyBJIGRvbid0IGdldCB3aHkgZG9lc24ndCBV
YnVudHUgZW5hYmxlcyBVU0IgMy4wIHdpdGgKPiAgICAgdGhlIEIyMTAuCj4gICAgID7CoCDC
oCDCoD4+Cj4gICAgID7CoCDCoCDCoD4+IE15IHByb2JsZW1zIGxvb2tzIGxpa2UgdGhpcyBv
bmUKPiAgICAgPsKgIMKgIMKgPj4KPiAgICAgPsKgIMKgCj4gICAgIMKgaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9waXBlcm1haWwvdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20vMjAxOC1K
dWx5LzA1NzMyMy5odG1sCj4gICAgID7CoCDCoCDCoD4+Cj4gICAgID7CoCDCoCDCoD4+IFRo
ZSBvdXRwdXQgb2YgbHN1c2IgLXQgaXMgc2ltaWxhciwgd2l0aCAiRHJpdmVyPShub25lKSIK
PiAgICAgPsKgIMKgIMKgPj4gQSBtZXNzYWdlIG9mIGFib3ZlIG1lbnRpb25lZCB0aHJlYWQg
c3VnZ2VzdHMgdG8gZW5hYmxlCj4gICAgIDMuMCBvcHRpb24gaW4KPiAgICAgPsKgIMKgIMKg
Pj4gQklPUywgaG93ZXZlciBJIGRvbid0IGhhdmUgc3VjaCBvcHRpb24uIEFuZCBldmVuIGlm
IEkgaGFkLCBJCj4gICAgID7CoCDCoCDCoGRpZG4ndCBub3QKPiAgICAgPsKgIMKgIMKgPj4g
Y2hhbmdlIGFueXRoaW5nIGJldHdlZW4gcmVib290IC8gc2Vzc2lvbiBzd2l0Y2ggc28gSQo+
ICAgICByZWFsbHkgZG9uJ3QKPiAgICAgPsKgIMKgIMKgPj4gdW5kZXJzdGFuZCB3aGVyZSB0
aGlzIHJlZ3Jlc3Npb24gaXMgY29taW5nIGZyb20uCj4gICAgID7CoCDCoCDCoD4+IEFsc28g
SSBkaWQgdGhlICJzb2x1dGlvbiIgbWVudGlvbmVkIGJ5IHRoZSBhdXRob3IgOgo+ICAgICA+
wqAgwqAgwqA+Pgo+ICAgICA+wqAgwqAgwqA+PiB1aGRfaW1hZ2VfbG9hZGVyIC0tYXJncz0i
dHlwZT1iMjAwLHJlc2V0Igo+ICAgICA+wqAgwqAgwqA+Pgo+ICAgICA+wqAgwqAgwqA+Pgo+
ICAgICA+wqAgwqAgwqA+PiBXaGljaCBkaWQgbm90IGltcHJvdmUgdGhlIHNpdHVhdGlvbi4K
PiAgICAgPsKgIMKgIMKgPj4KPiAgICAgPsKgIMKgIMKgPj4KPiAgICAgPsKgIMKgIMKgPj4g
VGhhbmsgeW91IGFnYWluCj4gICAgID7CoCDCoCDCoD4+Cj4gICAgID7CoCDCoCDCoD4+IFJv
ZG9scGhlCj4gICAgID7CoCDCoCDCoD4+Cj4gICAgID7CoCDCoCDCoD4+IExlwqBtZXIuIDE4
IG1hcnMgMjAyMCDDoMKgMTI6MDIsIFJvbiBFY29ub21vcyB2aWEgVVNSUC11c2Vycwo+ICAg
ICA+wqAgwqAgwqA+PiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiAgICAgPG1haWx0
bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgPG1haWx0bzp1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPj4KPiAgICAgPsKgIMKgIMKgPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQo+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+ICAgICA+wqAg
wqAgwqA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gICAgIDxtYWlsdG86
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pj4+IGEgw6ljcml0wqA6Cj4gICAgID7CoCDC
oCDCoD4+Cj4gICAgID7CoCDCoCDCoD4+wqAgwqAgwqBkbWVzZyBzaG91bGQgc2F5ICJuZXcg
U3VwZXJTcGVlZCBVU0IgZGV2aWNlIG51bWJlciBYCj4gICAgIHVzaW5nCj4gICAgID7CoCDC
oCDCoHhoY2lfaGNkIgo+ICAgICA+wqAgwqAgwqA+PsKgIMKgIMKgb3IgIm5ldyBTdXBlclNw
ZWVkIEdlbiAxIFVTQiBkZXZpY2UgbnVtYmVyIFggdXNpbmcKPiAgICAgeGhjaV9oY2QiCj4g
ICAgID7CoCDCoCDCoGlmIHlvdQo+ICAgICA+wqAgwqAgwqA+PsKgIMKgIMKgaGF2ZSBhIG5l
d2VyIGtlcm5lbC4KPiAgICAgPsKgIMKgIMKgPj4KPiAgICAgPsKgIMKgIMKgPj7CoCDCoCDC
oCJoaWdoLXNwZWVkIiBtZWFucyBVU0IgMi4wLgo+ICAgICA+wqAgwqAgwqA+Pgo+ICAgICA+
wqAgwqAgwqA+PsKgIMKgIMKgUm9uCj4gICAgID7CoCDCoCDCoD4+Cj4gICAgID7CoCDCoCDC
oD4+wqAgwqAgwqBPbiAzLzE4LzIwIDAzOjQxLCBSb2RvbHBoZSBCZXJ0b2xpbmkgdmlhIFVT
UlAtdXNlcnMKPiAgICAgd3JvdGU6Cj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgRGVhciBh
bGwsCj4gICAgID7CoCDCoCDCoD4+Pgo+ICAgICA+wqAgwqAgwqA+Pj7CoCDCoCDCoEkgaGF2
ZSBiZWVuIHVzaW5nIGEgVVNSUCBCMjEwIG9uIGEgbGFwdG9wIGZvciBtb250aHMKPiAgICAg
bm93LiBGb3IKPiAgICAgPsKgIMKgIMKgPj4+wqAgwqAgwqByZWFzb25zLCBJIHN3aXRjaGVk
IHRvIGFub3RoZXIgTGludXggc2Vzc2lvbiwgYW5kCj4gICAgIHVzaW5nIHRoaXMKPiAgICAg
PsKgIMKgIMKgPj4+wqAgwqAgwqBzZXNzaW9uIFVIRCBmYWlscyB0byB0YWxrIHRvIEIyMTAg
b3ZlciBVU0IgMy4wCj4gICAgID7CoCDCoCDCoD4+Pgo+ICAgICA+wqAgwqAgwqA+Pj7CoCDC
oCDCoGRtZXNnIHRlbGxzIG1lIGl0IGlzIHVzaW5nIHRoZSB4aGNpX2hjZCBkcml2ZXIgKHdo
aWNoIEkKPiAgICAgPsKgIMKgIMKgYmVsaWV2ZSBpcwo+ICAgICA+wqAgwqAgwqA+Pj7CoCDC
oCDCoHRoZSBkcml2ZXIgZm9yIFVTQiAzLjApLCBhbmQgaXMgYWxzbyBtZW50aW9uaW5nwqAK
PiAgICAgIm5ldyBoaWdoLXNwZWVkCj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgVVNCIiwg
d2hpY2ggbGVhZHMgbWUgdG8gdGhpbmsgdGhhdCBVU0IgMy4wIGxpbmsgaXMgd2VsbAo+ICAg
ICA+wqAgwqAgwqByZWNvZ25pemVkCj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgYW5kIGFj
dGl2ZToKPiAgICAgPsKgIMKgIMKgPj4+Cj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgWyDC
oDMwNi4xMzMwMjhdIHVzYiAxLTE6IG5ldyBoaWdoLXNwZWVkIFVTQiBkZXZpY2UKPiAgICAg
bnVtYmVyIDE2Cj4gICAgID7CoCDCoCDCoHVzaW5nCj4gICAgID7CoCDCoCDCoD4+PsKgIMKg
IMKgeGhjaV9oY2QKPiAgICAgPsKgIMKgIMKgPj4+wqAgwqAgwqBbIMKgMzA2LjI2MDM0OV0g
dXNiIDEtMTogTmV3IFVTQiBkZXZpY2UgZm91bmQsCj4gICAgIGlkVmVuZG9yPTI1MDAsCj4g
ICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgaWRQcm9kdWN0PTAwMjAKPiAgICAgPsKgIMKgIMKg
Pj4+wqAgwqAgwqBbIMKgMzA2LjI2MDM1MV0gdXNiIDEtMTogTmV3IFVTQiBkZXZpY2Ugc3Ry
aW5nczogTWZyPTEsCj4gICAgID7CoCDCoCDCoFByb2R1Y3Q9MiwKPiAgICAgPsKgIMKgIMKg
Pj4+wqAgwqAgwqBTZXJpYWxOdW1iZXI9Mwo+ICAgICA+wqAgwqAgwqA+Pj7CoCDCoCDCoFsg
wqAzMDYuMjYwMzUyXSB1c2IgMS0xOiBQcm9kdWN0OiBVU1JQIEIyMDAKPiAgICAgPsKgIMKg
IMKgPj4+wqAgwqAgwqBbIMKgMzA2LjI2MDM1NF0gdXNiIDEtMTogTWFudWZhY3R1cmVyOiBF
dHR1cyBSZXNlYXJjaCBMTEMKPiAgICAgPsKgIMKgIMKgPj4+wqAgwqAgwqBbIMKgMzA2LjI2
MDM1NV0gdXNiIDEtMTogU2VyaWFsTnVtYmVyOiAzMUI5Mjg5Cj4gICAgID7CoCDCoCDCoD4+
Pgo+ICAgICA+wqAgwqAgwqA+Pj7CoCDCoCDCoEhvd2V2ZXIsIHdoZW4gcnVubmluZyBhbnkg
dWhkIGNvbW1hbmQgbGluZSwgaXQgZmFpbHMKPiAgICAgdXNpbmcKPiAgICAgPsKgIMKgIMKg
VVNCIDMuMDoKPiAgICAgPsKgIMKgIMKgPj4+Cj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKg
W0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNS40LjAgMjAxNjA2MDk7Cj4g
ICAgID7CoCDCoCDCoEJvb3N0XzEwNTgwMDsKPiAgICAgPsKgIMKgIMKgPj4+wqAgwqAgwqBV
SERfMy4xNS4wLjAtcmVsZWFzZQo+ICAgICA+wqAgwqAgwqA+Pj7CoCDCoCDCoFtJTkZPXSBb
QjIwMF0gRGV0ZWN0ZWQgRGV2aWNlOiBCMjEwCj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKg
W0lORk9dIFtCMjAwXSBPcGVyYXRpbmcgb3ZlciBVU0IgMi4KPiAgICAgPsKgIMKgIMKgPj4+
Cj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgSSBoYXZlIGFsc28gdHJpZWQgd2l0aCBVSEQg
My4xNC4xLCBubyBpbXByb3ZlbWVudC4KPiAgICAgPsKgIMKgIMKgPj4+Cj4gICAgID7CoCDC
oCDCoD4+PsKgIMKgIMKgSSByZW1lbWJlciBoYXZpbmcgYSBzaW1pbGFyIGlzc3VlIChtYXli
ZSB0aGUgc2FtZT8pCj4gICAgIHRoYXQgaGFkCj4gICAgID7CoCDCoCDCoGJlZW4KPiAgICAg
PsKgIMKgIMKgPj4+wqAgwqAgwqBzb2x2ZWQgd2l0aCBzb21ldGhpbmcgcmVsYXRlZCB0byB1
ZGV2LCBidXQgSSBzYWRseQo+ICAgICBkaWRuJ3QKPiAgICAgPsKgIMKgIMKgdGFrZSBhbnkK
PiAgICAgPsKgIMKgIMKgPj4+wqAgwqAgwqBub3RlIG9mIHRoaXMuCj4gICAgID7CoCDCoCDC
oD4+Pgo+ICAgICA+wqAgwqAgwqA+Pj7CoCDCoCDCoERvIHlvdSBoYXZlIGFueSBoaW50Pwo+
ICAgICA+wqAgwqAgwqA+Pj4KPiAgICAgPsKgIMKgIMKgPj4+wqAgwqAgwqBUaGFuayB5b3Uu
Cj4gICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgUmVnYXJkcywKPiAgICAgPsKgIMKgIMKgPj4+
wqAgwqAgwqBSb2RvbHBoZQo+ICAgICA+wqAgwqAgwqA+Pj4KPiAgICAgPsKgIMKgIMKgPj4+
wqAgwqAgwqBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ICAgICA+wqAgwqAgwqA+Pj7CoCDCoCDCoFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4g
ICAgID7CoCDCoCDCoD4+PsKgIMKgIMKgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiAg
ICAgPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgPsKgIMKgIMKg
PG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRvOlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPj4KPiAgICAgPsKgIMKgIMKgPG1haWx0bzpVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPgo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gICAg
IDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pj4KPiAgICAgPsKgIMKgIMKg
Pj4+wqAgwqAKPiAgICAgPsKgIMKgCj4gICAgIMKgwqBodHRwOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAgICAgPsKg
IMKgIMKgPj7CoCDCoCDCoF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gICAgID7CoCDCoCDCoD4+wqAgwqAgwqBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+ICAgICA+wqAgwqAgwqA+PsKgIMKgIMKgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KPiAgICAgPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgPsKg
IMKgIMKgPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRv
OlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4KPiAgICAgPsKgIMKgIMKgPG1haWx0bzpV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPgo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4gICAgIDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pj4KPiAgICAgPsKg
IMKgIMKgPj7CoCDCoAo+ICAgICA+wqAgwqAKPiAgICAgwqDCoGh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+ICAg
ICA+wqAgwqAgwqA+Pgo+ICAgICA+wqAgwqAgwqA+Pgo+ICAgICA+wqAgwqAgwqA+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ICAgICA+wqAg
wqAgwqA+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+ICAgICA+wqAgwqAgwqA+PiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPgo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4g
ICAgIDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pgo+ICAgICA+wqAgwqAg
wqA+Pgo+ICAgICBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAgICAgPsKgIMKgIMKgPj4KPiAgICAgPsKgIMKg
IMKgPgo+ICAgICA+wqAgwqAgwqA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gICAgID7CoCDCoCDCoD4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKPiAgICAgPsKgIMKgIMKgPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+ICAgICA8
bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+ICAgICA8bWFpbHRvOlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gICAgIDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20+Pgo+ICAgICA+wqAgwqAgwqA+Cj4gICAgIGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+ICAgICA+
wqAgwqAgwqA+Cj4gICAgID4KPiAgICAgPgo+ICAgICA+wqAgwqAgwqBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ICAgICA+wqAgwqAgwqBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdAo+ICAgICA+wqAgwqAgwqBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+ICAgICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+ICAg
ICA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gICAgIDxtYWlsdG86VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Pgo+ICAgICA+wqAgwqAKPiAgICAgwqBodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KPiAgICAgPgo+ICAgICA+Cj4gICAgID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dAo+ICAgICA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+Cj4gICAgID4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gICAgID4KPiAgICAg
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAg
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiAgICAgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMu
Y29tCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo=
--------------1EFA49218C2FD89C6997F271
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>A USB3 port is  SuperSpeed port.</p>
    <p>For a quick check, try<br>
    </p>
    <p>  lsusb -v | grep 5Gbps</p>
    <p>to confirm you have at least 1 working USB3 port.<br>
    </p>
    <p>And then you can check the port speed where the device is
      connected using lsusb -v.</p>
    <p>-- Cinaed</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 3/18/20 7:36 AM, Rodolphe Bertolini
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Marcus,</div>
        <div>USB plug is rotated (from row is at top), but yes I get the
          exact same port as your.</div>
        <div>Thank you<br>
        </div>
        <div>Regards,</div>
        <div>Rodolphe<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Le mer. 18 mars 2020 à 16:20,
          Marcus Müller via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt; a
          écrit :<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          Rodolphe,<br>
          <br>
          considering this is as confusing to me as to you: I took a
          picture of my<br>
          USB3 port. When looking at an oblique angle at yours, do you
          see the<br>
          five front-row bronze/gold contacts shown in the attached
          photo?<br>
          <br>
          Best regards,<br>
          Marcus<br>
          <br>
          On 18.03.20 14:33, Rodolphe Bertolini via USRP-users wrote:<br>
          &gt; Thanks to both of you.<br>
          &gt; <br>
          &gt; The port is black, but it has been working for few months
          until I<br>
          &gt; shutdown / change session (I can't log back to previous
          session for<br>
          &gt; reasons) so I believe that the port by itself isn't the
          bad guy.<br>
          &gt; <br>
          &gt; It keeps appearing as USB 2 ("high-speed") when I plug it
          and also when<br>
          &gt; I run uhd_find_devices<br>
          &gt; <br>
          &gt; @Cedric I made sure to plug at max both ends<br>
          &gt; <br>
          &gt; Thank you again<br>
          &gt; Regards,<br>
          &gt; Rodolphe<br>
          &gt; <br>
          &gt; Le mer. 18 mars 2020 à 15:02, Cedric Roux via USRP-users<br>
          &gt; &lt;<a href="mailto:usrp-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:usrp-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;&gt;
          a écrit :<br>
          &gt; <br>
          &gt;     Hi,<br>
          &gt; <br>
          &gt;     be also sure to plug the cable firmly on both<br>
          &gt;     ends. I've seen it more than once with a cable<br>
          &gt;     "half-plugged" and then it becomes usb2, not usb3.<br>
          &gt; <br>
          &gt;     My 2 cents.<br>
          &gt; <br>
          &gt;     Regards,<br>
          &gt;     Cédric.<br>
          &gt; <br>
          &gt;     On 3/18/20 2:54 PM, Marcus Müller via USRP-users
          wrote:<br>
          &gt;     &gt; Hi Rodolphe,<br>
          &gt;     &gt;<br>
          &gt;     &gt; first of all, check whether you're actually
          dealing with a USB3<br>
          &gt;     port. I<br>
          &gt;     &gt; know, sounds strange, but if it's not blue and
          doesn't have more than<br>
          &gt;     &gt; four visible contacts, it's not
          standard-compliant USB3. The fact that<br>
          &gt;     &gt; it's attached to a xHCI doesn't itself mean it
          can do USB3.<br>
          &gt;     &gt;<br>
          &gt;     &gt; Then, I can't quite remember whether the USB
          controller on the B200<br>
          &gt;     &gt; would even register as USB3 before the initial
          firmware is loaded. Try<br>
          &gt;     &gt; the following: In one terminal window, run
          `dmesg -Hwx`. Plug in the<br>
          &gt;     &gt; USRP, and see how it appears on the bus (it
          seems, as USB2 high-speed<br>
          &gt;     &gt; device). After that, in another terminal, you'd
          run<br>
          &gt;     `uhd_find_devices`,<br>
          &gt;     &gt; and see whether the device re-enumerates as USB3
          SuperSpeed device.<br>
          &gt;     &gt;<br>
          &gt;     &gt; Best regards,<br>
          &gt;     &gt; Marcus<br>
          &gt;     &gt;<br>
          &gt;     &gt; On 18.03.20 13:43, Rodolphe Bertolini via
          USRP-users wrote:<br>
          &gt;     &gt;&gt; Hello Ron, (I resend the email, I forgot to
          "reply to all")<br>
          &gt;     &gt;&gt; Thank you for your quick feedback.<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; Ok I understand. More information, lspci
          gives me :<br>
          &gt;     &gt;&gt; 00:14.0 USB controller: Intel Corporation
          Cannon Lake PCH USB 3.1<br>
          &gt;     xHCI<br>
          &gt;     &gt;&gt; Host Controller (rev 10)<br>
          &gt;     &gt;&gt; So I don't get why doesn't Ubuntu enables
          USB 3.0 with the B210.<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; My problems looks like this one<br>
          &gt;     &gt;&gt;<br>
          &gt;     <a
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-July/057323.html</a><br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; The output of lsusb -t is similar, with
          "Driver=(none)"<br>
          &gt;     &gt;&gt; A message of above mentioned thread suggests
          to enable 3.0 option in<br>
          &gt;     &gt;&gt; BIOS, however I don't have such option. And
          even if I had, I<br>
          &gt;     didn't not<br>
          &gt;     &gt;&gt; change anything between reboot / session
          switch so I really don't<br>
          &gt;     &gt;&gt; understand where this regression is coming
          from.<br>
          &gt;     &gt;&gt; Also I did the "solution" mentioned by the
          author :<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; uhd_image_loader --args="type=b200,reset"<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; Which did not improve the situation.<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; Thank you again<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; Rodolphe<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt; Le mer. 18 mars 2020 à 12:02, Ron Economos
          via USRP-users<br>
          &gt;     &gt;&gt; &lt;<a
            href="mailto:usrp-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:usrp-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;<br>
          &gt;     &lt;mailto:<a
            href="mailto:usrp-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
          &gt;     &lt;mailto:<a
            href="mailto:usrp-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;&gt;&gt;
          a écrit :<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;     dmesg should say "new SuperSpeed USB
          device number X using<br>
          &gt;     xhci_hcd"<br>
          &gt;     &gt;&gt;     or "new SuperSpeed Gen 1 USB device
          number X using xhci_hcd"<br>
          &gt;     if you<br>
          &gt;     &gt;&gt;     have a newer kernel.<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;     "high-speed" means USB 2.0.<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;     Ron<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;     On 3/18/20 03:41, Rodolphe Bertolini via
          USRP-users wrote:<br>
          &gt;     &gt;&gt;&gt;     Dear all,<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     I have been using a USRP B210 on a
          laptop for months now. For<br>
          &gt;     &gt;&gt;&gt;     reasons, I switched to another Linux
          session, and using this<br>
          &gt;     &gt;&gt;&gt;     session UHD fails to talk to B210
          over USB 3.0<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     dmesg tells me it is using the
          xhci_hcd driver (which I<br>
          &gt;     believe is<br>
          &gt;     &gt;&gt;&gt;     the driver for USB 3.0), and is also
          mentioning  "new high-speed<br>
          &gt;     &gt;&gt;&gt;     USB", which leads me to think that
          USB 3.0 link is well<br>
          &gt;     recognized<br>
          &gt;     &gt;&gt;&gt;     and active:<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     [  306.133028] usb 1-1: new
          high-speed USB device number 16<br>
          &gt;     using<br>
          &gt;     &gt;&gt;&gt;     xhci_hcd<br>
          &gt;     &gt;&gt;&gt;     [  306.260349] usb 1-1: New USB
          device found, idVendor=2500,<br>
          &gt;     &gt;&gt;&gt;     idProduct=0020<br>
          &gt;     &gt;&gt;&gt;     [  306.260351] usb 1-1: New USB
          device strings: Mfr=1,<br>
          &gt;     Product=2,<br>
          &gt;     &gt;&gt;&gt;     SerialNumber=3<br>
          &gt;     &gt;&gt;&gt;     [  306.260352] usb 1-1: Product:
          USRP B200<br>
          &gt;     &gt;&gt;&gt;     [  306.260354] usb 1-1:
          Manufacturer: Ettus Research LLC<br>
          &gt;     &gt;&gt;&gt;     [  306.260355] usb 1-1:
          SerialNumber: 31B9289<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     However, when running any uhd
          command line, it fails using<br>
          &gt;     USB 3.0:<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     [INFO] [UHD] linux; GNU C++ version
          5.4.0 20160609;<br>
          &gt;     Boost_105800;<br>
          &gt;     &gt;&gt;&gt;     UHD_3.15.0.0-release<br>
          &gt;     &gt;&gt;&gt;     [INFO] [B200] Detected Device: B210<br>
          &gt;     &gt;&gt;&gt;     [INFO] [B200] Operating over USB 2.<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     I have also tried with UHD 3.14.1,
          no improvement.<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     I remember having a similar issue
          (maybe the same?) that had<br>
          &gt;     been<br>
          &gt;     &gt;&gt;&gt;     solved with something related to
          udev, but I sadly didn't<br>
          &gt;     take any<br>
          &gt;     &gt;&gt;&gt;     note of this.<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     Do you have any hint?<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;     Thank you.<br>
          &gt;     &gt;&gt;&gt;     Regards,<br>
          &gt;     &gt;&gt;&gt;     Rodolphe<br>
          &gt;     &gt;&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;   
           _______________________________________________<br>
          &gt;     &gt;&gt;&gt;     USRP-users mailing list<br>
          &gt;     &gt;&gt;&gt;     <a
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          &gt;     &lt;mailto:<a
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;     &lt;mailto:<a
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
          &gt;     &gt;&gt;&gt;   <br>
          &gt;      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;     &gt;&gt;   
           _______________________________________________<br>
          &gt;     &gt;&gt;     USRP-users mailing list<br>
          &gt;     &gt;&gt;     <a
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          &gt;     &lt;mailto:<a
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;     &lt;mailto:<a
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;&gt;<br>
          &gt;     &gt;&gt;   <br>
          &gt;      <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;&gt;
          _______________________________________________<br>
          &gt;     &gt;&gt; USRP-users mailing list<br>
          &gt;     &gt;&gt; <a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;     &gt;&gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;     &gt;&gt;<br>
          &gt;     &gt;<br>
          &gt;     &gt; _______________________________________________<br>
          &gt;     &gt; USRP-users mailing list<br>
          &gt;     &gt; <a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;     &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt;     &gt;<br>
          &gt; <br>
          &gt; <br>
          &gt;     _______________________________________________<br>
          &gt;     USRP-users mailing list<br>
          &gt;     <a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
          &lt;mailto:<a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a>&gt;<br>
          &gt;     <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt; <br>
          &gt; <br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list<br>
          &gt; <a href="mailto:USRP-users@lists.ettus.com"
            target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          &gt; <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------1EFA49218C2FD89C6997F271--


--===============6191012469783853836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6191012469783853836==--

