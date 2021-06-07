Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B10639E69C
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 20:25:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B827B383FB8
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 14:25:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EV9cRaz/";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 619EE383FA6
	for <USRP-users@lists.ettus.com>; Mon,  7 Jun 2021 14:24:51 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id l7so13337935qtk.5
        for <USRP-users@lists.ettus.com>; Mon, 07 Jun 2021 11:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=BXbMs6xb+oXlkZX4GN7SzPwvcrAa8KD4zHVqTIKljPI=;
        b=EV9cRaz/iceWZ9bbUUA8a/vTGxTHshauAlBDmvFOi7iQOlvnQKwWVhmxDvZMxtNtPX
         owhcVZlj8iw14cLRWOOjuPI0ynY2srk+CVoGFyQId4U3deMajkqZpLi4PDpg58wkiZM3
         1R5x+CZ68Jh7CxYwb2syWUHcMAftIAUeMpvQFF7AXszSqubJWtFbaYEMZWD+acpQArad
         dGI4+Af1ccV2RwY4EKp6ncRJvCJedVR0AgI0xXXRz6A7iYvg2hbvRWetT/OzNeMMtKJP
         eCIlNH98Yr5RFGmqbDm4W5yDu92G7zqjKIbrAc6bZqtUJ6uRPvZW+IJAS2aO1uv5Awn1
         jShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=BXbMs6xb+oXlkZX4GN7SzPwvcrAa8KD4zHVqTIKljPI=;
        b=S9fRZqUtJjXAcmv/YYa9qK8jrJQ7unnOEFUWZE1YeRCGrSnYOUTL0oaEbpom5Mz5Rm
         g7OGQqxEbq2/mNaHF46WlECPqvBdk0UowCFWLx8VnRYvhYV3iRttFSbuht76tfHY4oVk
         sjEMnRiMV/AKqhsWbb9xphz6ZNNXuf6NASlLUixyEOIfd8CqVNWDSHAENh8+F4I644pz
         IYn6qXrMhtsNdC8OFp1pW/9k+gdE/PgDHrVLCQvAaLS24Y7xxvo7S7QBaHS6tik3q9ec
         FMtKviwl8XJge4Rj2YJvwpNLW9oX+wGCU45p5A7D0Ej9Ie6OIviS3j0GkLnELzrnPdK9
         LyVg==
X-Gm-Message-State: AOAM532WLzJ21RrCbdVu6G0IDM5mSUgtLfQVpUx5H/4HcEeRhqlrSy8d
	4lZGYot5wRpOLH6phrUG+tj6swXE0eaubw==
X-Google-Smtp-Source: ABdhPJzqHtRxyPlQ9j5QYoxmveT5qXn/4ysWp/gMmcxAITBx0CPaWokNLDUUaX16BPTdY4TFQOt9MQ==
X-Received: by 2002:a05:622a:13ce:: with SMTP id p14mr3278444qtk.261.1623090290894;
        Mon, 07 Jun 2021 11:24:50 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 104sm9341825qta.90.2021.06.07.11.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 11:24:50 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 7 Jun 2021 14:24:49 -0400
Message-Id: <CFCA6582-65A0-42FC-9A0B-9CCDD06A36F3@gmail.com>
References: <2f98f5900d5144c79e511d32856ae76e@erdc.dren.mil>
In-Reply-To: <2f98f5900d5144c79e511d32856ae76e@erdc.dren.mil>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 2ZPASOETRDVBLJNYU6QKTEFVC7GCQH7X
X-Message-ID-Hash: 2ZPASOETRDVBLJNYU6QKTEFVC7GCQH7X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_samples_from_file warnings for ettus x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZPASOETRDVBLJNYU6QKTEFVC7GCQH7X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RG9lcyB0aGUgZXJyb3IgaGFwcGVuIGF0IGxvd2VyIHNhbXBsZQ0KUmF0ZXM/ICBJ4oCZbSB0aGlu
a2luZyB0aGF0IHBlcmhhcHMgdGhlIHR4X3NhbXBsZXNfZnJvbV9maWxlIGV4YW1wbGUgaGFzbuKA
mXQgYmVlbiBwcm9wZXJseSBjb252ZXJ0ZWQgdG8gdGhlIG5ld2VyIFJGTk9DIGluZnJhc3RydWN0
dXJlIHRoYXTigJlzIHVuZGVybmVhdGguIA0KDQpTZW50IGZyb20gbXkgaVBob25lDQoNCj4gT24g
SnVuIDcsIDIwMjEsIGF0IDE6MzIgUE0sIFdvbHNpZWZmZXIsIENhcmwgTC4gRVJEQy1SREUtQ1JM
LU5IIENJViB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3Rl
Og0KPiANCj4g77u/SGVsbG8gYWxsLA0KPiANCj4gV2hpbGUgdHJ5aW5nIHRvIGNvbmZpcm0gaWYg
dGhlIHgzMTAgKFVCWC0xNjApIGNhbiB3b3JrIHdpdGggYSBzaW5nbGVtb2RlIGZpYmVyIG9wdGlj
IDEwR2JlIEkgaGF2ZSBiZWVuIHVzaW5nIHRoZSB0eF9zYW1wbGVzX2Zyb21fZmlsZSBhbmQgcnhf
c2FtcGxlc190b19maWxlLiBUaGUgcnhfc2FtcGxlX2Zyb21fZmlsZSBzZWVtcyB0byBnbyBvdmVy
IGFscmlnaHQgd3JpdGluZyA1MDBtcyB3b3J0aCBvZiBkYXRhIGRvd24gYXQgMjAwTXNwcywgYnV0
IHRoZSBUeCBzaWRlIGdpdmVzIG1lIHR3byB3YXJuaW5ncyB0aGF0IEkgaGF2ZSBub3QgYmVlbiBh
YmxlIHRvIHRyYWNrIGRvd24gaW4gZG9jdW1lbnRhdGlvbiBvciBvbiBtZXNzYWdlIGJvYXJkcy4g
QXMgYW4gYXNpZGUgaW4gcmVhZG91dCB5b3UnbGwgc2VlIGEgZmV3IHVuZGVyZmxvd3MgYXMgd2Vs
bCAtIHdoaWxlIEkgZGlkIG1vc3Qgb2YgdGhlIHBlcmZvcm1hbmNlIHVwZ3JhZGVzIChhc2lkZSBm
cm9tIERQREsgd2hpY2ggaXMgc3RpbGwgcGVuZGluZyksIEknbSBjYWxsaW5nIHNhbXBsZXMgZnJv
bSBmaWxlIGZyb20gYW4gb2xkZXIgSERELCBJJ20gdXBncmFkaW5nIG92ZXIgdG8gYW4gU1NEIGlu
IG5leHQgZGF5IG9yIHR3byBzbyBJIGFtIGJhbmtpbmcgb24gdGhhdCBtaXRpZ2F0aW5nIHRoYXQg
aXNzdWUsIGhlbmNlIHdoeSBJJ20gYWxzbyBsaW1pdGVkIHRvIGFib3V0IDUwMG1zIGF0IGEgdGlt
ZSB0byB0ZXN0DQo+IA0KPiBQUyBhbnlvbmUgaGF2ZSBleHBlcmllbmNlIHVzaW5nIHRoZSBzaW5n
bGUgbW9kZSBmaWJlciBvcHRpYyBjYWJsaW5nIGFuZCB0cmFuc2NlaXZlciBvdmVyIDEwR2JlPyBN
b3N0IG9mIEV0dHVzIGxpdGVyYXR1cmUgc2F5cyB0aGV5J3ZlIG9ubHkgdGVzdGVkIG92ZXIgbXVs
dGltb2RlLCBidXQgdGhlIGxvbmdlciBkaXN0YW5jZXMgYWxsb3R0ZWQgYnkgdXNpbmcgc2luZ2xl
IG1vZGUgbWFrZSBpdCBhbiBhcHBlYWxpbmcgb3B0aW9uIGZvciBteSBzeXN0ZW0uDQo+IA0KPiAN
Cj4gJCAuL3R4X3NhbXBsZXNfZnJvbV9maWxlIC0tYXJncyAnYWRkcj0xOTIuMTY4LjQwLjInIC0t
ZmlsZSB1c3JwX3NhbXBsZXMuZGF0IC0tZnJlcT0yNDAwMDAwMDAwIC0tbG8tb2Zmc2V0IDEwMDAw
MCAtLWdhaW4gMCAtLXJhdGUgMjAwMDAwMDAwDQo+IA0KPiBDcmVhdGluZyB0aGUgdXNycCBkZXZp
Y2Ugd2l0aDogYWRkcj0xOTIuMTY4LjQwLjIuLi4NCj4gW0lORk9dIFtVSERdIGxpbnV4OyBHTlUg
QysrIHZlcnNpb24gOS4zLjA7IEJvb3N0XzEwNzQwMDsgVUhEXzQuMC4wLkhFQUQtcmVsZWFzZQ0K
PiBbSU5GT10gW1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UuLi4NCj4gW0lORk9d
IFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDgwMDAgYnl0ZXMuDQo+IFtJTkZPXSBbWDMwMF0g
UmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNCj4gVXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoNCj4g
IERldmljZTogWC1TZXJpZXMgRGV2aWNlDQo+ICBNYm9hcmQgMDogWDMxMA0KPiAgUlggQ2hhbm5l
bDogMA0KPiAgICBSWCBEU1A6IDANCj4gICAgUlggRGJvYXJkOiBBDQo+ICAgIFJYIFN1YmRldjog
VUJYIFJYDQo+ICBSWCBDaGFubmVsOiAxDQo+ICAgIFJYIERTUDogMQ0KPiAgICBSWCBEYm9hcmQ6
IEINCj4gICAgUlggU3ViZGV2OiBVbmtub3duICgweGZmZmYpIC0gMA0KPiAgVFggQ2hhbm5lbDog
MA0KPiAgICBUWCBEU1A6IDANCj4gICAgVFggRGJvYXJkOiBBDQo+ICAgIFRYIFN1YmRldjogVUJY
IFRYDQo+ICBUWCBDaGFubmVsOiAxDQo+ICAgIFRYIERTUDogMQ0KPiAgICBUWCBEYm9hcmQ6IEIN
Cj4gICAgVFggU3ViZGV2OiBVbmtub3duICgweGZmZmYpIC0gMA0KPiANCj4gU2V0dGluZyBUWCBS
YXRlOiAyMDAuMDAwMDAwIE1zcHMuLi4NCj4gQWN0dWFsIFRYIFJhdGU6IDIwMC4wMDAwMDAgTXNw
cy4uLg0KPiANCj4gU2V0dGluZyBUWCBGcmVxOiAyNDAwLjAwMDAwMCBNSHouLi4NCj4gU2V0dGlu
ZyBUWCBMTyBPZmZzZXQ6IDAuMTAwMDAwIE1Iei4uLg0KPiBBY3R1YWwgVFggRnJlcTogMjQwMC4w
MDAwMDAgTUh6Li4uDQo+IA0KPiBTZXR0aW5nIFRYIEdhaW46IDAuMDAwMDAwIGRCLi4uDQo+IEFj
dHVhbCBUWCBHYWluOiAwLjAwMDAwMCBkQi4uLg0KPiANCj4gQ2hlY2tpbmcgVFg6IFRYTE86IGxv
Y2tlZCAuLi4NCj4gW1dBUk5JTkddIFswL1JhZGlvIzBdIEF0dGVtcHRpbmcgdG8gc2V0IHRpY2sg
cmF0ZSB0byAwLiBTa2lwcGluZy4NCj4gVVUNCj4gRG9uZSENCj4gDQo+IFtXQVJOSU5HXSBbUkZO
T0M6OkdSQVBIOjpERVRBSUxdIENhbm5vdCBmb3J3YXJkIGFjdGlvbiB0eF9ldmVudCBmcm9tIDAv
UmFkaW8jMDpJTlBVVF9FREdFOjAsIG5vIG5laWdoYm91ciBmb3VuZCENCj4gDQo+IA0KPiANCj4g
Q2FzZXkgV29sc2llZmZlcg0KPiBSZXNlYXJjaCBFbGVjdHJpY2FsIEVuZ2luZWVyIC0gU2lnbmF0
dXJlIFBoeXNpY3MgQnJhbmNoDQo+IENvbGQgUmVnaW9ucyBSZXNlYXJjaCAmIEVuZ2luZWVyaW5n
IExhYm9yYXRvcnkNCj4gNzIgTHltZSBSZCwgSGFub3ZlciBOSCAwMzc1NQ0KPiAoNjAzKSA2NDYt
NDI1NCAob2ZmaWNlKQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
