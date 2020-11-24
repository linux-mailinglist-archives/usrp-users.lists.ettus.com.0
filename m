Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5059B2C312C
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 20:49:00 +0100 (CET)
Received: from [::1] (port=35026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kheJ9-0001DS-47; Tue, 24 Nov 2020 14:48:59 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:36306)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kheJ4-00015f-PM
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 14:48:54 -0500
Received: by mail-qk1-f175.google.com with SMTP id u184so46368qkf.3
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 11:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=PC5Js3gpofUdNqSbD6+MnstEU3XIblTr3qwScyDhxUI=;
 b=DLYfYmfLZeM1WOGS20M0L+CvulA4k0XdKofpw0M8h8XomrYCZdebXEmSH56uTS2b7/
 wdtMxtdfvxlg+XolaSI+FGDFvbidYWq3kVk1iD6lKqNBr5p5AdA6T6kUJmIrF2ON9lVG
 doW1CVYHYYcAZKpq5ieF5B4VAxOFIUksUum2AjA7UjHoadBrlX0anAO94tGVaZukIjkX
 YfiNQpoLXIBPR6gagpiALB9zPKkWt2xOMYQoHKMAjDaAM3CHshyCCwcv4PHGjvQhI137
 PO0DgXv9rrFWwjosw7r5ZB3SrNuNilqLdy9VHX+Xxe8AWFEczBlr7Z75AT4e+XYzQ+UK
 smEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=PC5Js3gpofUdNqSbD6+MnstEU3XIblTr3qwScyDhxUI=;
 b=mcjTppaXZUPBxLLKG3/f1oitJDSRmctUx891O3QeQmuHiheYkx8PGc6hnjiwUoWpaZ
 jRyScWzuiDsnREpwTQLoP/xhTy+L8WYycIGgXfJPFpYaz1KYcSNXozh80+eVMqvusosP
 5HDRjxv2aA+heINWjg7qNtC//Y/BTwla0NJrYKPOC/AleWP5u6WHq6Qt3DwH8skv/K3e
 5AEOs9OiodEiJM+iZrrLPAXcyQxafRzHck48BhKpFBrRl6aT1gSD6+EmL1JMIlcSZoIt
 Dbpl65+lmXY+FRZy3Ge3h8IIWY9vVOF2ahKJfy69w17DHWXSi5VR8c/AGTf8RMB76Q/D
 owmw==
X-Gm-Message-State: AOAM533A5BC6Gb0WNscBHItJewks5idD0BkmMmiX1qejmJPKFAoZC6qL
 QnUWvKLDDtb+cEA1skAFjQPSjE0exMg=
X-Google-Smtp-Source: ABdhPJxemo1V33ADESHYYFs3E65TBGO1qsQmBWS2bXBRjll2u3Avo8RvUfTkny45MMj0mEJlv/7jog==
X-Received: by 2002:a05:620a:2202:: with SMTP id
 m2mr6462702qkh.251.1606247293934; 
 Tue, 24 Nov 2020 11:48:13 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 199sm139968qkm.62.2020.11.24.11.48.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Nov 2020 11:48:13 -0800 (PST)
Message-ID: <5FBD637C.6080102@gmail.com>
Date: Tue, 24 Nov 2020 14:48:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Luke Whittlesey <luke.whittlesey@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CA+ce6i3ka5am6USYVrzeh17K-vgXBJL5iB-rYz+382JobXi0dg@mail.gmail.com>
 <10B10E99-CD7E-49AF-9FC6-F1D6620BD96F@gmail.com>
 <CA+ce6i2Qc0Y9g=U+g_6mHmmwOwXi77wbs76uKWnCHu=rcxb+bQ@mail.gmail.com>
In-Reply-To: <CA+ce6i2Qc0Y9g=U+g_6mHmmwOwXi77wbs76uKWnCHu=rcxb+bQ@mail.gmail.com>
Subject: Re: [USRP-users] Carrier frequency jumps on E310
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

T24gMTEvMjQvMjAyMCAwMjozOCBQTSwgTHVrZSBXaGl0dGxlc2V5IHdyb3RlOgo+IEknbSBpbiB0
aGUgcHJvY2VzcywgYnV0IGl0J3MgYSBsZW5ndGh5IHByb2Nlc3MuIFRoZXJlIGlzIHNvbWV0aGlu
Zwo+IG1lc3NlZCB1cCB3aXRoIHRoZSBDIEFQSSBpbiAzLjE1LCBzbyBpdCBkb2Vzbid0IHdvcmsg
Zm9yIG1lIGFzIGEKPiBzaW1wbGUgZHJvcCBpbiByZXBsYWNlbWVudC4gV291bGQgaXQgYmUgd2lz
ZSB0byB0cnkgdG8ganVtcCBzdHJhaWdodAo+IHRvIDQuMD8KVGhlIGp1bXAgdG8gNC4wIG1pZ2h0
IGJlIG1vcmUgdHJhdW1hdGljLgoKCj4gT24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMjo0MCBQTSBN
YXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+PiBSJkQgc3Vn
Z2VzdCB1cGRhdGluZyB0byBhIFVIRCAzLjE1IGVudmlyb25tZW50IGZpcnN0Lgo+Pgo+PiBTZW50
IGZyb20gbXkgaVBob25lCj4+Cj4+PiBPbiBOb3YgMjQsIDIwMjAsIGF0IDE6NTQgUE0sIEx1a2Ug
V2hpdHRsZXNleSA8bHVrZS53aGl0dGxlc2V5QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4g77u/
SSdtIHNlZWluZyB0aGlzIG9uIHR3byBFMzEwcyB0aGF0IGFyZSBhIGZldyB5ZWFycyBvbGQuIEkg
anVzdCBzd2FwcGVkCj4+PiB0aGUgc2QgY2FyZCBpbnRvIGEgYnJhbmQtbmV3IEUzMTAgYW5kIEkg
YW0gTk9UIHNlZWluZyB0aGUgZnJlcXVlbmN5Cj4+PiBqdW1wcy4gU28sIHNhbWUgZXhhY3Qgc29m
dHdhcmUsIGJ1dCBkaWZmZXJlbnQgYWdlZCBFMzEwcy4gSXMgdGhlcmUKPj4+IHBvc3NpYmx5IGEg
ZGlmZmVyZW5jZSBpbiBoYXJkd2FyZSBsZWFkaW5nIHRvIHRoaXM/Cj4+Pgo+Pj4+IE9uIFR1ZSwg
Tm92IDI0LCAyMDIwIGF0IDE6MDQgUE0gTHVrZSBXaGl0dGxlc2V5Cj4+Pj4gPGx1a2Uud2hpdHRs
ZXNleUBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSSB3b3VsZCBzYXkgdGhleSBhcmUgcHJv
cG9ydGlvbmFsIHRvIGZyZXF1ZW5jeS4gQXR0YWNoZWQgaXMgd2hhdCBpdAo+Pj4+IGxvb2tzIGxp
a2UgYXQgNUdIei4gVGhlcmUgYXJlIGp1bXBzIG9mIDQwMEh6IGFuZCAyMjBIei4KPj4+Pgo+Pj4+
PiBPbiBUdWUsIE5vdiAyNCwgMjAyMCBhdCAxMTo1MCBBTSBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBUcnkgYXQgbG93ZXIgYW5kIGhp
Z2hlciBmcmVxdWVuY2llc+KAlGFyZSB0aGUganVtcHMgdGhlIHNhbWUgb3IgcHJvcG9ydGlvbmFs
IHRvIGZyZXF1ZW5jeT8KPj4+Pj4KPj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+Pgo+Pj4+
Pj4gT24gTm92IDI0LCAyMDIwLCBhdCAxMToyNyBBTSwgTHVrZSBXaGl0dGxlc2V5IHZpYSBVU1JQ
LXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4g
77u/T24gdGhlIEUzMTAgSSdtIHNlZWluZyBkaXNjcmV0ZSBqdW1wcyBpbiB0aGUgY2Fycmllci4g
VGhlIGNhcnJpZXIgd2lsbAo+Pj4+Pj4gaW50ZXJtaXR0ZW50bHkganVtcCBhcm91bmQgaW4gc3Rl
cHMgb2YgYWJvdXQgNTBIei4gU29tZXRpbWVzIGl0IHdpbGwKPj4+Pj4+IGp1bXAgYnkgYWJvdXQg
MjAwSHouIEkndmUgYXR0YWNoZWQgYSB3YXRlcmZhbGwgZGlzcGxheSwgYnV0IEkgZG9uJ3QKPj4+
Pj4+IGtub3cgaWYgYXR0YWNobWVudHMgd2lsbCBtYWtlIGl0IHRocm91Z2guCj4+Pj4+Pgo+Pj4+
Pj4gTXkgc2V0dXAgaXM6Cj4+Pj4+PiBFMzEwIFNHMwo+Pj4+Pj4gVUhEMy4xMSB1c2luZyB0aGUg
Qy1hcGkKPj4+Pj4+IFRpbWluZyBSZWZlcmVuY2UgaXMgImludGVybmFsIgo+Pj4+Pj4gQ2VudGVy
IEZyZXF1ZW5jeSAxR0h6Cj4+Pj4+PiBJL1Egc2lnbmFsIGlzIGEgc3RyZWFtIG9mIDEsMC4uLiBm
b3IgYSBDVyBhdCB0aGUgY2Fycmllcgo+Pj4+Pj4KPj4+Pj4+IEkgY2FuIHNlZSB0aGUgc2FtZSB0
aGluZyB3aGVuIEkgc2V0IHRoZSB0aW1lc291cmNlIHRvICJncHNkbyIsIGJ1dCBJCj4+Pj4+PiB3
b3VsZG4ndCBleHBlY3QgaXQgd2hlbiBJIHNldCBpdCB0byAiaW50ZXJuYWwiLiBNeSBndXQgc2F5
cyB0aGF0IHRoaXMKPj4+Pj4+IGlzIGJlaW5nIGNhdXNlZCBieSBzb21lIHRpbWVzb3VyY2UgY29y
cmVjdGlvbiBsb29wLiBJZiB0aGlzIGlzIHRoZQo+Pj4+Pj4gY2FzZSBpcyB0aGVyZSBhIHdheSB0
byBkaXNhYmxlIHRoaXM/Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmsgeW91Cj4+Pj4+PiA8ZTMxMC1sby1m
cmVxdWVuY3ktc2hpZnRzMi5wbmc+Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4+
IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
