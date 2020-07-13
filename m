Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8611A21CDD5
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 05:39:24 +0200 (CEST)
Received: from [::1] (port=32772 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jupJK-0007CC-9x; Sun, 12 Jul 2020 23:39:22 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:43241)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1jupJG-000730-Ar
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 23:39:18 -0400
Received: by mail-qk1-f177.google.com with SMTP id c30so10956426qka.10
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 20:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=PU/up3VRkD0mQdmJ541QzlPtdgBRTwHB1lBk5WFqpsY=;
 b=Pk7pZ54qnQmawAkoQGEXBktj2LdIyTKVsj7DKtWePzyQfWjPigONdsS5LyLGYNCUtp
 oFWJb9bddh3Viv991j7Gslgi4ZcK4mhN85va9Z55UYvj4wT/h6PzWOY+W3U1ViRnA4jQ
 gjjcIYPYqJdoIWJjvynLbE51rHUDqC3dO5Lwfv1mFrUzj+YNeZiwLnfswRl46o1ZLJ0K
 0CCp1u7avJcR6q8iuWceOl/knuzGtM3UBYS3tnXeb4X+JJIEJHz8NgwVP+30yU67DgUy
 pZxWgve9OvRFTOxlR8efSl+XwY5skm8t/3YnopL4SEd7uEDSOikPadmZBHLIOwno6ZRL
 Q2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=PU/up3VRkD0mQdmJ541QzlPtdgBRTwHB1lBk5WFqpsY=;
 b=ADA0GvaOLOwa3kwJt4+9A/DqdRCwuoZpjtGpyH2epFmaroKYSXvmXzzaJr0i45IPCt
 O9v41XTs+xki6INaaLehDPpha2TAkzpHPT63t+mp5bVLfT/oyHz2qGq3qENzihv96C2J
 FG3FdkF0jw4dtvM5xEV0L1tftvL79cYgkAlWy/XgRHaOJToru00gZ01RwA9ttme9JRSp
 fz0WoBHB3xA0mN2ysuUrm+H1YaJJz62S4zIys6PYTahQSnLglwf6FL8fZdJXunz44Qyz
 aMrLt0pvftYeuDurNOTOatIeQaariZdId2W7odtNHIEC0uXVfWw3qsJoYMAWmM/LTlwn
 xHbA==
X-Gm-Message-State: AOAM531IcbcCWtpY2ULehFh6bdXh1UeV08fDQufLx0a6ZZAjTAg1bnYV
 jnJY5HIECsY62ytymx/bjFv65QN5rjk=
X-Google-Smtp-Source: ABdhPJxwRZ4nDeuMCI2Dz7Yjub7G+soTR8cH/AHC5b+aPXXcd15yQGiMC8QtZW4VoOIXvt4gTsLQuw==
X-Received: by 2002:a37:4b50:: with SMTP id y77mr13490043qka.136.1594611517269; 
 Sun, 12 Jul 2020 20:38:37 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id u71sm14120299qka.40.2020.07.12.20.38.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 20:38:36 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jul 2020 23:38:35 -0400
Message-Id: <4A711BC0-C326-4A33-90AA-4E5D44461FCF@gmail.com>
References: <5F0BD209.2090502@gmail.com>
Cc: usrp-users@lists.ettus.com
In-Reply-To: <5F0BD209.2090502@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] B210 GNU HF Spectrum Analyzer
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
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

TWFyY3VzClN0cmljdGx5IHJlY2VpdmluZyBKdXBpdGVyIHN0b3JtcyBhbmQgc29sYXIgZmxhcmVz
LiBBcyBhIFJhZGlvIEpvdmUgbWVtYmVyIGZvciBhIGNvdXBsZSB5ZWFycyBub3cgd2UgaGF2ZSBy
ZWNvcmRlZCBtYW55IEp1cGl0ZXIgc3Rvcm1zIGluIHRoZSAxNSB0byAzMCBNSHogcmFuZ2UuIFRo
ZXkgYXJlIGdlbmVyYWxseSBvZiB0aHJlZSB0eXBlcy4gUyBidXJzdHMsIEwgYnVyc3RzIGFuZCBO
IGV2ZW50cy4gV2Ugc2VuZCB0aGUgU0RSIGRhdGEgc3RyZWFtIHRvIFJhZGlvIFNreSBTcGVjdHJv
Z3JhcGggc29mdHdhcmUuIFRoZSBmaWxlcyBhcmUgYXJjaGl2ZWQgZm9yIHN0dWR5IGJ5IE5BU0Eg
c2NpZW50aXN0cyBhbmQgb3RoZXIgcmVzZWFyY2hlcnMuIEp1cGl0ZXJzIG1vb24gSW8gcGxheXMg
YW4gaW1wb3J0YW50IHJvbGwgaW4gZGlyZWN0aW5nIHRoZXNlIHN0b3JtIGltcHVsc2VzIHRvIGVh
cnRoLiBXZSBoYXZlIHNwZWNpYWwgc29mdHdhcmUgdGhhdCBwcmVkaWN0cyB0aGUgcHJvYmFiaWxp
dHkgb2YgcmVjZWl2aW5nIHRoZSBzdG9ybXMgYmFzZWQgb24gRWFydGgsIEp1cGl0ZXIsIGFuZCBJ
byBvcmJpdGFsIHBvc2l0aW9ucy4gSSBjYW4gc2VuZCB5b3Ugc2FtcGxlIHNwZWN0cm9ncmFtcyBp
ZiBkZXNpcmVkLiBXZSBhbHNvIHN0dWR5IGlvbm9zcGhlcmljIGV2ZW50cywgZ2FsYWN0aWMgYmFj
a2dyb3VuZCBub2lzZSwgYW5kIHNvbWUgY2VsZXN0aWFsIHNjaW50aWxsYXRpb25zLiBZZXMgUkZJ
IGlzIGEgcHJvYmxlbSBidXQgdGhlcmUgYXJlIHNvZnR3YXJlIG1pdGlnYXRpb24gdGVjaG5pcXVl
cy4gIApMYXJyeSwgSzRMRUQgCgo+IE9uIEp1bCAxMiwgMjAyMCwgYXQgMTE6MTYgUE0sIE1hcmN1
cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IO+7v09uIDA3
LzEyLzIwMjAgMTA6NTkgUE0sIExhcnJ5IERvZGQgd3JvdGU6Cj4+IE1hcmN1cwo+PiBPayBUaGFu
a3MgZm9yIHRoZSBpbmZvcm1hdGlvbiBNYXJjdXMuICBJIGhhdmUgYm90aCBhIFNweXZlcnRlciBh
bmQgSGFtLWl0LXVwIGFscmVhZHkuIEkgbWF5IGdldCBhbiBOMjEwIGV2ZW50dWFsbHkuIFRoZSBY
IHNlcmllcyB1bmZvcnR1bmF0ZWx5IGFyZSBvdXQgb2YgbXkgZnVuZGluZyByYW5nZS4gSSBhcHBy
ZWNpYXRlIHlvdXIgZXhwZXJ0aXNlIGFuZCBhZHZpY2UuIFRoYW5rcyEKPj4gTGFycnksIEs0TEVE
Cj4+IAo+IEluY2lkZW50YWxseSwgd2hhdCBraW5kIG9mIHJhZGlvIGFzdHJvbm9teSBhcmUgeW91
IHBsYW5uaW5nIHRvIGRvIGF0IHRoYXQgZnJlcXVlbmN5IHJhbmdlPyAgSXQncyBtb3N0bHksIGFz
IHlvdSBtaWdodCBleHBlY3QsICJhIG1lc3MiLCBidXQKPiAgc29tZSBkaXNjcmV0ZSBmcmVxdWVu
Y2llcyBhcmUgYXZhaWxhYmxlIGZvciB0aGluZ3MgbGlrZSByaW9tZXRyeSwgYW5kIGxvb2tpbmcg
YXQgc29sYXIgYW5kIGp1cGl0ZXIgcmFkaW8gYnVyc3RzLi4uCj4gCj4gCj4+Pj4gT24gSnVsIDEy
LCAyMDIwLCBhdCAxMDowOCBQTSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWls
LmNvbT4gd3JvdGU6Cj4+PiAKPj4+IO+7v09uIDA3LzEyLzIwMjAgMDk6NDIgUE0sIExhcnJ5IERv
ZGQgd3JvdGU6Cj4+Pj4gTWFyY3VzCj4+Pj4gQWN0dWFsbHkgSSBkb27igJl0IGhhdmUgdGhlIEIy
MTAgb3IgdGhlIExGUlggeWV0IGFzIEkganVzdCBvcmRlcmVkIHRoZW0gYnV0IHRoYXTigJlzIGFs
bCBJIG9yZGVyZWQuIERvIEkgbmVlZCB0byBjYW5jZWwgdGhlIG9yZGVyPwo+Pj4+IExhcnJ5LCBL
NExFRAo+Pj4gVGhlIExGUlggd2lsbCBiZSBvZiBubyB1c2UgdG8geW91IHVubGVzcyB5b3UgaGF2
ZSBhIHBsYXRmb3JtIHRoYXQgaXQgY2FuIHBsdWcgaW4gdG8uCj4+PiAKPj4+IEknZCBrZWVwIHRo
ZSBCMjEwIHBhcnQgb2YgdGhlIG9yZGVyLCBhbmQgb3JkZXIgYSBIYW1JdFVwIG9yIFNweVZlcnRl
ciB1cGNvbnZlcnRlciBtb2R1bGUsIHdoaWNoIHVwLWNvbnZlcnRzIEhGIGZyZXF1ZW5jaWVzIHRv
Cj4+PiAgYSBoaWdoZXIgcmFuZ2UgdGhhdCB0aGUgQjIxMCBjYW4gdHVuZSB0by4KPj4+IAo+Pj4g
SGFtaVR1cCBpcyBzb2xkIGJ5IE5vb0VsZWMsIGFuZCB0aGUgU3B5VmVydGVyIGlzIHNvbGQgYnkg
aHR0cHM6Ly9haXJzcHkuY29tL3NweXZlcnRlci1yMi8KPj4+IAo+Pj4gQWdhaW4sIHRoZSBMRlJY
IGlzIGEgImRhdWdodGVyY2FyZCIsIHdoaWNoIGlzIHVzZWQgaW4gdmFyaW91cyBVU1JQUyB0aGF0
IHVzZSB0aGUgZGF1Z2h0ZXItY2FyZCBhcmNoaXRlY3R1cmUsIGxpa2UgdGhlIFVTUlAxLCBVU1JQ
MiwKPj4+ICBOMnh4LCBYM3h4LCBCMTAwLCBhbmQgRTEwMC4KPj4+IAo+Pj4gQnV0IHRoZSBCMjEw
IGlzIGFuIGV4Y2VsbGVudCBtYWNoaW5lLCBpdCdzIGp1c3QgdGhhdCBpdCBkb2Vzbid0IHR1bmUg
ZG93biB0byBIRiBmcmVxdWVuY2llcy4gIEJ1dCB3aXRoIHRoZSBhZGRpdGlvbiBvZiBhIChmYWly
bHkgY2hlYXAsIElNSE8pCj4+PiAgdXAtY29udmVydGVyLCB5b3UgY2FuIGV4cGxvcmUgdGhlIHRl
cnJpdG9yeSB5b3UncmUgaW50ZXJlc3RlZCBpbiBxdWl0ZSBuaWNlbHkuCj4+PiAKPj4+IEluIHRl
cm1zIG9mIHNvZnR3YXJlLCBpdCByZWFsbHkgZGVwZW5kcyBvbiB3aGF0IHlvdSB3YW50IHRvICpk
byouIElmIHlvdSBqdXN0IHdhbnQgYW4gaW50ZWdyYXRlZCBGRlQgZGlzcGxheSB0aGF0IGNhbiBj
b3ZlciB5b3VyIDE1TUh6Cj4+PiAgb2YgYmFuZHdpZHRoLCB5b3UgY2FuIHVzZSB0aGUgdWhkX2Zm
dCBhcHBsaWNhdGlvbiwgYW5kIGhhdmUgaXQgc2FtcGxlIGF0IDE1TXNwcy0tdGhpcyBhc3N1bWVz
IHlvdXIgY29tcHV0ZXIgaXMgYWJsZSB0byAia2VlcCB1cCIKPj4+ICBhdCB0aGF0IHJhdGUtLWEg
Z29vZCBVU0IzIGNvbnRyb2xsZXIgd2lsbCBiZSByZXF1aXJlZCwgYW5kIGEgZ29vZCBtdWx0aS1j
b3JlIG1hY2hpbmUgdG8gZ28gd2l0aCBpdC4KPj4+IAo+Pj4gCj4+Pj4+PiBPbiBKdWwgMTIsIDIw
MjAsIGF0IDg6MDYgUE0sIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4g
d3JvdGU6Cj4+Pj4+IO+7v1RoZSBCMjEwIGlzIHNlbGYgY29udGFpbmVkIGFuZCB0dW5lcyBkb3du
IHRvIDUwTWh6IGF0IHRoZSBsb3dlc3QuIFRoZSBMRlJYIGlzIGZvciBvdGhlciB0eXBlcyBvZiBV
U1JQcy4gU28gZmlyc3QgdGhpbmdzIGZpcnN0LCB3aGF0IHR5cGUgb2YgVVNSUCBkbyB5b3UgaGF2
ZT8KPj4+Pj4gCj4+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+Pj4gCj4+Pj4+PiBPbiBKdWwg
MTIsIDIwMjAsIGF0IDc6NDMgUE0sIExhcnJ5IERvZGQgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+Pj4+IAo+Pj4+Pj4g77u/SSBuZWVkIHRvIHNl
dCB1cCBhIEdOVSBIRiBzcGVjdHJ1bSBhbmFseXplciB3aXRoIGEgd2F0ZXJmYWxsIHVzaW5nIG15
IEIyMTAsIExOQSwgYW5kIExGUlggZGF1Z2h0ZXIgYm9hcmQuIFRoZSB0YXJnZXQgd291bGQgYmUg
YSAxNSB0byAzMCBNSHogKG9yIHdpZGVyKSBpbnN0YW50YW5lb3VzIHNwZWN0cnVtIGZvciBSYWRp
byBBc3Ryb25vbXkgd29yay4gUmF0aGVyIHRoYW4gcmUtY3JlYXRpbmcgc29tZXRoaW5nIHRoYXQg
YWxyZWFkeSBleGlzdHMgd2hlcmUgY291bGQgSSBnZXQgYSBzaW1pbGFyIEdOVSBmbG93Z3JhcGg/
IFNpbmNlIEkgYW0gYnJhbmQgbmV3IHRvIFVTUlAgYW55IGFkdmljZSBpcyB2ZXJ5IHdlbGNvbWUu
Cj4+Pj4+PiBUaGFua3MsCj4+Pj4+PiBMYXJyeSwgSzRMRUQKPj4+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdAo+Pj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4+IGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
Cg==
