Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 290B621D93B
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 16:53:15 +0200 (CEST)
Received: from [::1] (port=37710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1juzpS-0003bv-0n; Mon, 13 Jul 2020 10:53:14 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:33263)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1juzpO-0003Wp-Kr
 for usrp-users@lists.ettus.com; Mon, 13 Jul 2020 10:53:10 -0400
Received: by mail-qt1-f179.google.com with SMTP id 6so10131726qtt.0
 for <usrp-users@lists.ettus.com>; Mon, 13 Jul 2020 07:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=IpR8RfPXDUZlvsy4LfIWw3NWlhriT6ZxYkoN977TYmc=;
 b=gWvhP3YEabswm1HhCxkFTHjD88ulEPMVOAWREOvql/fZWloHHT/VtpNSxE048CXJDa
 2R1v/qxhf3IuVTVnq+qcpsrFNx0YYuYPy/4H1xxRSuRc+yBbHGvp8JQKy4pPFH/yfO/7
 ZivrZtVaX/rLfT9VXGbDHg2rDgvtMN/oS6ChkqcVmZTZQE+HppcvqYvi4LFkJAK5x0ZJ
 pssYt+SFSU8A63BqWBNtP10SuSfzmvAANl44joO1s7K7JcaJ232Y6ASSp1YTesB9UoQ/
 hlqimlKSbIBwsW4+Q938XEhMjVZb8QnHk7C+WIrs9d1kUmc4aO2KtvJZ430g0ZLtjKQY
 zmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=IpR8RfPXDUZlvsy4LfIWw3NWlhriT6ZxYkoN977TYmc=;
 b=oV8A1S2GXsZkeaK7IpMmA/7i84OMURx6Ou/aXyryxr6J+dx7HvtghZYWLmtYdcCeVL
 BKodRotB364amjLHpPD17QWrhcbmTNBkLcu/R2FezKPb1N1/oXZ12mZJQy0839T4wpZU
 FNfeLRtTvB4Axf+ZiGUM9sO5zUmrW8EEG8fr4z65amcDqbK0J7iJQCr/Fdtj3RhzOn8C
 3OBv8cXC9G1exQBoxH1ll32u35tvoFt2zktn8t+W3armS4Gg863JJfrN4tUWTaJkzXUo
 eKwiDfyRz/Z8aTNiYTPrgb4dPsl2xpRr+hUtfhmNonxikXw+FzvOyWoiOPOxAlVOlLxZ
 V4eQ==
X-Gm-Message-State: AOAM533vljJdR89HEBTPM/xxMIMVPAbpAZ1Ke1hyRlPQqCtQtqmS/B2M
 jEpaPZgtUiX6bjksy+MlO9P8H7Apvq8=
X-Google-Smtp-Source: ABdhPJxImzPrxBWfbjJCj+qXzFxS8WpExHTlRySsZwDN0dCoPUwXuylQbXaQwMHbP/i6IIh0Dl4N1A==
X-Received: by 2002:ac8:396c:: with SMTP id t41mr84369463qtb.45.1594651949473; 
 Mon, 13 Jul 2020 07:52:29 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id h47sm20699997qtc.7.2020.07.13.07.52.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jul 2020 07:52:28 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 13 Jul 2020 10:52:27 -0400
Message-Id: <0A856ED6-E913-4330-8DF4-29304F2456BE@gmail.com>
References: <5F0C7448.8000505@gmail.com>
Cc: usrp-users@lists.ettus.com
In-Reply-To: <5F0C7448.8000505@gmail.com>
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

TWFyY3VzCkZhbnRhc3RpYy4gV2hpY2ggU0RSIGRvIHlvdSB1c2Ugd2l0aCBHTlUgUmFkaW8/Ckxh
cnJ5Cgo+IE9uIEp1bCAxMywgMjAyMCwgYXQgMTA6NDggQU0sIE1hcmN1cyBELiBMZWVjaCA8cGF0
Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IO+7v09uIDA3LzEyLzIwMjAgMTE6Mzgg
UE0sIExhcnJ5IERvZGQgd3JvdGU6Cj4+IE1hcmN1cwo+PiBTdHJpY3RseSByZWNlaXZpbmcgSnVw
aXRlciBzdG9ybXMgYW5kIHNvbGFyIGZsYXJlcy4gQXMgYSBSYWRpbyBKb3ZlIG1lbWJlciBmb3Ig
YSBjb3VwbGUgeWVhcnMgbm93IHdlIGhhdmUgcmVjb3JkZWQgbWFueSBKdXBpdGVyIHN0b3JtcyBp
biB0aGUgMTUgdG8gMzAgTUh6IHJhbmdlLiBUaGV5IGFyZSBnZW5lcmFsbHkgb2YgdGhyZWUgdHlw
ZXMuIFMgYnVyc3RzLCBMIGJ1cnN0cyBhbmQgTiBldmVudHMuIFdlIHNlbmQgdGhlIFNEUiBkYXRh
IHN0cmVhbSB0byBSYWRpbyBTa3kgU3BlY3Ryb2dyYXBoIHNvZnR3YXJlLiBUaGUgZmlsZXMgYXJl
IGFyY2hpdmVkIGZvciBzdHVkeSBieSBOQVNBIHNjaWVudGlzdHMgYW5kIG90aGVyIHJlc2VhcmNo
ZXJzLiBKdXBpdGVycyBtb29uIElvIHBsYXlzIGFuIGltcG9ydGFudCByb2xsIGluIGRpcmVjdGlu
ZyB0aGVzZSBzdG9ybSBpbXB1bHNlcyB0byBlYXJ0aC4gV2UgaGF2ZSBzcGVjaWFsIHNvZnR3YXJl
IHRoYXQgcHJlZGljdHMgdGhlIHByb2JhYmlsaXR5IG9mIHJlY2VpdmluZyB0aGUgc3Rvcm1zIGJh
c2VkIG9uIEVhcnRoLCBKdXBpdGVyLCBhbmQgSW8gb3JiaXRhbCBwb3NpdGlvbnMuIEkgY2FuIHNl
bmQgeW91IHNhbXBsZSBzcGVjdHJvZ3JhbXMgaWYgZGVzaXJlZC4gV2UgYWxzbyBzdHVkeSBpb25v
c3BoZXJpYyBldmVudHMsIGdhbGFjdGljIGJhY2tncm91bmQgbm9pc2UsIGFuZCBzb21lIGNlbGVz
dGlhbCBzY2ludGlsbGF0aW9ucy4gWWVzIFJGSSBpcyBhIHByb2JsZW0gYnV0IHRoZXJlIGFyZSBz
b2Z0d2FyZSBtaXRpZ2F0aW9uIHRlY2huaXF1ZXMuCj4+IExhcnJ5LCBLNExFRAo+IFRoYW5rcywg
TGFycnkuCj4gCj4gWWVzLCBJJ20gZmFtaWxpYXIgd2l0aCBhbGwgb2YgdGhhdC4gIEkndmUgYmVl
biBkb2luZyByYWRpbyBhc3Ryb25vbXkgb24gYW5kIG9mZiBzaW5jZSAxOTg2LCBhbmQgc3RhcnRl
ZCB1c2luZyBTRFIvR251IFJhZGlvIGZvciBpdCBpbiAyMDA0Lgo+IAo+IEkgZGlkIHNvbWUgd29y
ayBmb3IgTmF0dXJhbCBSZXNvdXJjZXMgQ2FuYWRhIG9uIHJpb21ldGVycyBhIGNvdXBsZSBvZiB5
ZWFycyBhZ28sIGFuZCBoYXZlIGJlZW4gaW52b2x2ZWQgaW4gcmlvbWV0ZXIgZGV2ZWxvcG1lbnQg
d2l0aAo+ICBHbnUgUmFkaW8gc2luY2UgMjAxMCBvciBzby4KPiAKPiAKPj4gCj4+Pj4gT24gSnVs
IDEyLCAyMDIwLCBhdCAxMToxNiBQTSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdt
YWlsLmNvbT4gd3JvdGU6Cj4+PiAKPj4+IO+7v09uIDA3LzEyLzIwMjAgMTA6NTkgUE0sIExhcnJ5
IERvZGQgd3JvdGU6Cj4+Pj4gTWFyY3VzCj4+Pj4gT2sgVGhhbmtzIGZvciB0aGUgaW5mb3JtYXRp
b24gTWFyY3VzLiAgSSBoYXZlIGJvdGggYSBTcHl2ZXJ0ZXIgYW5kIEhhbS1pdC11cCBhbHJlYWR5
LiBJIG1heSBnZXQgYW4gTjIxMCBldmVudHVhbGx5LiBUaGUgWCBzZXJpZXMgdW5mb3J0dW5hdGVs
eSBhcmUgb3V0IG9mIG15IGZ1bmRpbmcgcmFuZ2UuIEkgYXBwcmVjaWF0ZSB5b3VyIGV4cGVydGlz
ZSBhbmQgYWR2aWNlLiBUaGFua3MhCj4+Pj4gTGFycnksIEs0TEVECj4+Pj4gCj4+PiBJbmNpZGVu
dGFsbHksIHdoYXQga2luZCBvZiByYWRpbyBhc3Ryb25vbXkgYXJlIHlvdSBwbGFubmluZyB0byBk
byBhdCB0aGF0IGZyZXF1ZW5jeSByYW5nZT8gIEl0J3MgbW9zdGx5LCBhcyB5b3UgbWlnaHQgZXhw
ZWN0LCAiYSBtZXNzIiwgYnV0Cj4+PiAgc29tZSBkaXNjcmV0ZSBmcmVxdWVuY2llcyBhcmUgYXZh
aWxhYmxlIGZvciB0aGluZ3MgbGlrZSByaW9tZXRyeSwgYW5kIGxvb2tpbmcgYXQgc29sYXIgYW5k
IGp1cGl0ZXIgcmFkaW8gYnVyc3RzLi4uCj4+PiAKPj4+IAo+Pj4+Pj4gT24gSnVsIDEyLCAyMDIw
LCBhdCAxMDowOCBQTSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4g
d3JvdGU6Cj4+Pj4+IO+7v09uIDA3LzEyLzIwMjAgMDk6NDIgUE0sIExhcnJ5IERvZGQgd3JvdGU6
Cj4+Pj4+PiBNYXJjdXMKPj4+Pj4+IEFjdHVhbGx5IEkgZG9u4oCZdCBoYXZlIHRoZSBCMjEwIG9y
IHRoZSBMRlJYIHlldCBhcyBJIGp1c3Qgb3JkZXJlZCB0aGVtIGJ1dCB0aGF04oCZcyBhbGwgSSBv
cmRlcmVkLiBEbyBJIG5lZWQgdG8gY2FuY2VsIHRoZSBvcmRlcj8KPj4+Pj4+IExhcnJ5LCBLNExF
RAo+Pj4+PiBUaGUgTEZSWCB3aWxsIGJlIG9mIG5vIHVzZSB0byB5b3UgdW5sZXNzIHlvdSBoYXZl
IGEgcGxhdGZvcm0gdGhhdCBpdCBjYW4gcGx1ZyBpbiB0by4KPj4+Pj4gCj4+Pj4+IEknZCBrZWVw
IHRoZSBCMjEwIHBhcnQgb2YgdGhlIG9yZGVyLCBhbmQgb3JkZXIgYSBIYW1JdFVwIG9yIFNweVZl
cnRlciB1cGNvbnZlcnRlciBtb2R1bGUsIHdoaWNoIHVwLWNvbnZlcnRzIEhGIGZyZXF1ZW5jaWVz
IHRvCj4+Pj4+ICBhIGhpZ2hlciByYW5nZSB0aGF0IHRoZSBCMjEwIGNhbiB0dW5lIHRvLgo+Pj4+
PiAKPj4+Pj4gSGFtaVR1cCBpcyBzb2xkIGJ5IE5vb0VsZWMsIGFuZCB0aGUgU3B5VmVydGVyIGlz
IHNvbGQgYnkgaHR0cHM6Ly9haXJzcHkuY29tL3NweXZlcnRlci1yMi8KPj4+Pj4gCj4+Pj4+IEFn
YWluLCB0aGUgTEZSWCBpcyBhICJkYXVnaHRlcmNhcmQiLCB3aGljaCBpcyB1c2VkIGluIHZhcmlv
dXMgVVNSUFMgdGhhdCB1c2UgdGhlIGRhdWdodGVyLWNhcmQgYXJjaGl0ZWN0dXJlLCBsaWtlIHRo
ZSBVU1JQMSwgVVNSUDIsCj4+Pj4+ICBOMnh4LCBYM3h4LCBCMTAwLCBhbmQgRTEwMC4KPj4+Pj4g
Cj4+Pj4+IEJ1dCB0aGUgQjIxMCBpcyBhbiBleGNlbGxlbnQgbWFjaGluZSwgaXQncyBqdXN0IHRo
YXQgaXQgZG9lc24ndCB0dW5lIGRvd24gdG8gSEYgZnJlcXVlbmNpZXMuICBCdXQgd2l0aCB0aGUg
YWRkaXRpb24gb2YgYSAoZmFpcmx5IGNoZWFwLCBJTUhPKQo+Pj4+PiAgdXAtY29udmVydGVyLCB5
b3UgY2FuIGV4cGxvcmUgdGhlIHRlcnJpdG9yeSB5b3UncmUgaW50ZXJlc3RlZCBpbiBxdWl0ZSBu
aWNlbHkuCj4+Pj4+IAo+Pj4+PiBJbiB0ZXJtcyBvZiBzb2Z0d2FyZSwgaXQgcmVhbGx5IGRlcGVu
ZHMgb24gd2hhdCB5b3Ugd2FudCB0byAqZG8qLiBJZiB5b3UganVzdCB3YW50IGFuIGludGVncmF0
ZWQgRkZUIGRpc3BsYXkgdGhhdCBjYW4gY292ZXIgeW91ciAxNU1Iego+Pj4+PiAgb2YgYmFuZHdp
ZHRoLCB5b3UgY2FuIHVzZSB0aGUgdWhkX2ZmdCBhcHBsaWNhdGlvbiwgYW5kIGhhdmUgaXQgc2Ft
cGxlIGF0IDE1TXNwcy0tdGhpcyBhc3N1bWVzIHlvdXIgY29tcHV0ZXIgaXMgYWJsZSB0byAia2Vl
cCB1cCIKPj4+Pj4gIGF0IHRoYXQgcmF0ZS0tYSBnb29kIFVTQjMgY29udHJvbGxlciB3aWxsIGJl
IHJlcXVpcmVkLCBhbmQgYSBnb29kIG11bHRpLWNvcmUgbWFjaGluZSB0byBnbyB3aXRoIGl0Lgo+
Pj4+PiAKPj4+Pj4gCj4+Pj4+Pj4+IE9uIEp1bCAxMiwgMjAyMCwgYXQgODowNiBQTSwgTWFyY3Vz
IEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToKPj4+Pj4+PiDvu79UaGUg
QjIxMCBpcyBzZWxmIGNvbnRhaW5lZCBhbmQgdHVuZXMgZG93biB0byA1ME1oeiBhdCB0aGUgbG93
ZXN0LiBUaGUgTEZSWCBpcyBmb3Igb3RoZXIgdHlwZXMgb2YgVVNSUHMuIFNvIGZpcnN0IHRoaW5n
cyBmaXJzdCwgd2hhdCB0eXBlIG9mIFVTUlAgZG8geW91IGhhdmU/Cj4+Pj4+Pj4gCj4+Pj4+Pj4g
U2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+Pj4+IAo+Pj4+Pj4+PiBPbiBKdWwgMTIsIDIwMjAsIGF0
IDc6NDMgUE0sIExhcnJ5IERvZGQgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPiB3cm90ZToKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IO+7v0kgbmVlZCB0byBzZXQgdXAgYSBH
TlUgSEYgc3BlY3RydW0gYW5hbHl6ZXIgd2l0aCBhIHdhdGVyZmFsbCB1c2luZyBteSBCMjEwLCBM
TkEsIGFuZCBMRlJYIGRhdWdodGVyIGJvYXJkLiBUaGUgdGFyZ2V0IHdvdWxkIGJlIGEgMTUgdG8g
MzAgTUh6IChvciB3aWRlcikgaW5zdGFudGFuZW91cyBzcGVjdHJ1bSBmb3IgUmFkaW8gQXN0cm9u
b215IHdvcmsuIFJhdGhlciB0aGFuIHJlLWNyZWF0aW5nIHNvbWV0aGluZyB0aGF0IGFscmVhZHkg
ZXhpc3RzIHdoZXJlIGNvdWxkIEkgZ2V0IGEgc2ltaWxhciBHTlUgZmxvd2dyYXBoPyBTaW5jZSBJ
IGFtIGJyYW5kIG5ldyB0byBVU1JQIGFueSBhZHZpY2UgaXMgdmVyeSB3ZWxjb21lLgo+Pj4+Pj4+
PiBUaGFua3MsCj4+Pj4+Pj4+IExhcnJ5LCBLNExFRAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdAo+Pj4+Pj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+Pj4+PiBodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
