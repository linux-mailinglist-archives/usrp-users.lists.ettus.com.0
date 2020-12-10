Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA642D58DB
	for <lists+usrp-users@lfdr.de>; Thu, 10 Dec 2020 12:05:40 +0100 (CET)
Received: from [::1] (port=40150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knJlP-0005VS-MI; Thu, 10 Dec 2020 06:05:35 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:44238)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <saptarshiv2hazra@gmail.com>)
 id 1knJlM-0005LP-8K
 for usrp-users@lists.ettus.com; Thu, 10 Dec 2020 06:05:32 -0500
Received: by mail-lj1-f169.google.com with SMTP id m13so6171811ljo.11
 for <usrp-users@lists.ettus.com>; Thu, 10 Dec 2020 03:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=O9PUftXuZ9AV/OjK7dskxqMSw1CCYXME6MR+F0sjW9c=;
 b=fkEGW5OEQ3bq6vFJgIuDDr6cPRDxEusUiBdBaO2HTVb8N+xA/yS1eGc4oFdDvztgIl
 QPHumLoVeOU0SFCsbTUI0FmYbcWtKTzG/iTH0eqG61VzMHV/8FNe1EJSkPh31zqZa+8D
 Fo+whyS2N/i37gIUpD3PEjHSX5tldk5G4o6/INfs14HKgW49dm8v9bxuXAzJGBTT61HK
 I8ivulXayvCAT/CiX2bkO9+hstTQFddxpjkzzIMThukULzgblgJOxAQg8vub8bnNKgHM
 gUnrsXaUhdvTapIWpAePiTywGjhMEMGSBwfJwbRAg630A6Ri95qkyg33znIx6fKBK718
 706Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=O9PUftXuZ9AV/OjK7dskxqMSw1CCYXME6MR+F0sjW9c=;
 b=Ja6J3DmlOqfCSVG6jWKdYAqEEtaTnBoktwKzYPYj2CJHLSynHeHGleH2icivOnu+DY
 +KmfphsHZ+oUCDkbTK93rTjdFh0klUkyhi2BoJFl/ZyvIspJGsw7yiQ8le0a09DesnPv
 tNfL26CvAHCwx4gaopBqst6mWPACqyLjCBbGeaWOQ/UtFTx8fj/nIVdr3JxFwaMJbuCw
 Z5T1SX5BPVPLWSJ9TutvlHfsy6X5UlIcKwHlLzBp5yQjWbdJe9Htip4m3/wlw77NQxJt
 2+9WYTAY6m3vNVLumNzFefUTtkxrizQmhWAr9ToTzcQq6phJJpwBHk9WL2PDCuAaX3Nl
 VIEA==
X-Gm-Message-State: AOAM531nfds78hhyNYXfCriOS1oQ63rBEW7W5FqNwtFO4MrsQMP88dXP
 bZ01bs01sbMnrxAxLjSVMb0=
X-Google-Smtp-Source: ABdhPJzRZc35k6ZLYY0Yu6+Ixm09RSVotBcsQSvbwpHsQuWiNp6Jh+CssFEq6mkI89dyue0BVagShg==
X-Received: by 2002:a2e:9bd1:: with SMTP id w17mr2822691ljj.339.1607598290668; 
 Thu, 10 Dec 2020 03:04:50 -0800 (PST)
Received: from [10.112.2.45] (ymer.sics.se. [193.10.64.23])
 by smtp.gmail.com with ESMTPSA id f22sm565013ljn.113.2020.12.10.03.04.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Dec 2020 03:04:49 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
In-Reply-To: <090bdea2-209c-1bd9-5251-a1fdabc5a6ca@elitecoding.org>
Date: Thu, 10 Dec 2020 12:04:48 +0100
Cc: usrp-users@lists.ettus.com
Message-Id: <37AF97CD-5156-4B5E-AA9D-0C4E738449E6@gmail.com>
References: <7A9E93AA-5955-4874-94DC-AEA1FE4339FD@gmail.com>
 <59356f83-3ab3-0916-676e-f049a417141c@elitecoding.org>
 <B77978B7-CAE3-447D-81CB-12049C556CBD@gmail.com>
 <090bdea2-209c-1bd9-5251-a1fdabc5a6ca@elitecoding.org>
To: Julian Arnold <julian@elitecoding.org>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [USRP-users] Receiving on multiple subdevs using USRP B210
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
From: Saptarshi Hazra via USRP-users <usrp-users@lists.ettus.com>
Reply-To: saptarshiv2hazra@gmail.com
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

SGkgSnVsaWFuLAoKSSBtYWRlIHR3byBtaXN0YWtlcyBpbiBteSBmbG93IGdyYXBoIHRoYXTigJlz
IHdoeSBJIHdhcyBub3QgYWJsZSB0byAgcmVjZWl2ZSB0aGUgbWVzc2FnZXM6CjEuIEkgc2V0IHRo
ZSBCVyB0byAxME1Ieiwgc2hvdWxkIGhhdmUgYmVlbiAyME1Iei4KMi4gSSBkaWQgbm90IGNvbm5l
Y3QgdGhlIG91dHB1dCBvZiB0aGUgZGVjb2RlciB0byBteSBkZXRlY3Rvci4gUmVhbGx5IHNpbGx5
IG1pc3Rha2UuIEkganVzdCByZWFsaXNlZCBpdCBub3cuCgpUaGFua3MgYSBsb3QgZm9yIHlvdXIg
aGVscC4KClNpbmNlcmVseSwKU2FwdGFyc2hpCgo+IE9uIDkgRGVjIDIwMjAsIGF0IDIzOjIzLCBK
dWxpYW4gQXJub2xkIDxqdWxpYW5AZWxpdGVjb2Rpbmcub3JnPiB3cm90ZToKPiAKPiBTYXB0YXJz
aGksCj4gCj4gT2ssIEkgc2VlLCB5b3UgZGlkIG5vdCBzZXQgc2V0IGFuYWxvZyBmaWx0ZXIgYmFu
ZHdpZHRoIG9mIHlvdXIgVVNSUCB0byA1IE1IeiBidXQgeW91ciBzaWduYWwgaGFzIDUgTUh6IGJh
bmR3aWR0aC4gVGhpcywgaW4gY29tYmluYXRpb24gd2l0aCB0aGUgMjAgTUh6IE1DUiBzaG91bGQg
dGhlbiBiZSBhYnNvbHV0ZWx5IGZpbmUuCj4gCj4gSSdtIHN0aWxsIG5vdCBzdXJlIGhvdyB5b3Ug
YXJlIHRyeWluZyB0byBkZXRlY3QgeW91ciBzaWduYWwuIE1heWJlIHlvdSBjb3VsZCBzaGFyZSB0
aGUgcmVsZXZhbnQgcGFydHMgb2YgeW91IGZsb3ctZ3JhcGggaGVyZT8KPiAKPiBJIGp1c3QgdGVz
dGVkIHdoYXQgSSB0aGluZyB5b3UgYXJlIGRvaW5nIChzZWUgYXR0YWNoZWQgaW1hZ2Ugb2YgZmxv
dy1ncmFwaCkgYW5kIGFzIGZhciBhcyBJIGNhbiB0ZWxsLCBpdCBpcyB3b3JraW5nIGFzIGV4cGVj
dGVkLgo+IEknbSBmZWVkaW5nIGluIGEgdG9uZSBhdCAyLjQ4IEdIeiBvbiBjaGFubmVsIEEgYW5k
IGEgdG9uZSBhdCAyLjQ3NSBHSHogb24gY2hhbm5lbCBCLiBBZnRlciB0aGUgbWVzc2FnZSBzdHJv
YmUgdHJpZ2dlcmVkCj4gKHBtdC50b19wbXQoeyJjaGFuIjowLCAibG9fZnJlcSI6Mi40NzVlOSwg
ImRzcF9mcmVxIjogLTVlNn0pKQo+IEkgcmVjZWl2ZSBib3RoIHRvbmVzIGp1c3QgZmluZS4KPiBJ
J20gdXNpbmcgR05VIFJhZGlvIDMuOC4yIGFuZCBVSEQgMy4xNS4KPiAKPiBDaGVlcnMsCj4gSnVs
aWFuCj4gCj4gCj4gT24gMTIvOS8yMCA3OjAzIFBNLCBzYXB0YXJzaGl2MmhhenJhQGdtYWlsLmNv
bSB3cm90ZToKPj4gSGkgSnVsaWFuLAo+PiBUaGFua3MgZm9yIHlvdXIgcmVwbHkuCj4+IEkgYW0g
YmFzaWNhbGx5IHRyeWluZyB0byByZWNlaXZlIHNpZ25hbHMgb2YgQlcgNU1IeiBhdCB0d28gZGlm
ZmVyZW50IGNlbnRyZSBmcmVxdWVuY2llcyAoMi40NzVHSHogYW5kIDIuNDhHSHopIHVzaW5nIHRo
ZSB0d28gc3ViZGV2cyBvZiB0aGUgQjIxMC4KPj4gVGhlIG1hc3RlciBjbG9jayByYXRlIGdldHMg
c2V0IHRvIDIwTUh6IHdoaWNoIG1ha2VzIG1lIGFzc3VtZSB0aGF0IHRoZSBhbmFsb2cgYmFuZHdp
ZHRoIGZvciB0aGUgVVNSUCBzb3VyY2UgaXMgMjAgTUh6Lgo+PiBXaXRoIGEgY2VudHJlIGZyZXF1
ZW5jeSBvZiAyLjQ3NUdIeiwgaXQgc2hvdWxkIGNvdmVyIGZyb20gMi40NjVHSHogdG8gMi40ODVH
SHouCj4+IFRoZSBtYWluIHByb2JsZW0gSSBoYXZlIGRpZmZpY3VsdHkgdW5kZXJzdGFuZGluZyBp
cyB3aHkgaXQgd29ya3MgaW4gQ2FzZSAxIGFuZCB3aHkgaXQgYmVoYXZlcyByYW5kb21seSBpbiBD
YXNlIDIuCj4+IFRoYW5rcywKPj4gU2FwdGFyc2hpCj4+PiBPbiA5IERlYyAyMDIwLCBhdCAxNTo0
OSwgSnVsaWFuIEFybm9sZCA8anVsaWFuQGVsaXRlY29kaW5nLm9yZz4gd3JvdGU6Cj4+PiAKPj4+
IFNhcHRhcnNoaSwKPj4+IAo+Pj4gSSdtIG5vdCBlbnRpcmVseSBzdXJlIEkgZnVsbHkgdW5kZXJz
dGFuZCB3aGF0IHlvdSBhcmUgZG9pbmcuIFlvdSBwcm9iYWJseSBuZWVkIHRvIHByb3ZpZGUgc29t
ZSBtb3JlIGRldGFpbHMuCj4+PiAKPj4+IEhvd2V2ZXIsIGluIGdlbmVyYWwsIGRlcGVuZGluZyBv
biB3aGF0IHlvdSBtYXN0ZXItY2xvY2stcmF0ZSBpcywKPj4+IGRvaW5nIGEgNU1IeiBzaGlmdCBp
biB0aGUgRFNQIGRvZXMgbm90IG1ha2UgbXVjaCBzZW5zZSBpZiB5b3VyCj4+PiBzYW1wbGUtcmF0
ZSBhbmQgeW91ciBhbmFsb2cgYmFuZHdpZHRoIGFyZSBvbmx5IDUgTUh6LiBUaGVyZSBpcyBqdXN0
IG5vIHNpZ25hbCBhdCB5b3VyIDVNSHogb2Zmc2V0IHlvdSBjb3VsZCBwb3NzaWJseSBzaGlmdCBk
b3duIHRvIGJhc2UtYmFuZC4KPj4+IAo+Pj4gQ2hlZXJzLAo+Pj4gSnVsaWFuCj4+PiAKPj4+IE9u
IDEyLzkvMjAgMTA6NDEgQU0sIFNhcHRhcnNoaSBIYXpyYSB2aWEgVVNSUC11c2VycyB3cm90ZToK
Pj4+PiBIaSwKPj4+PiBJIGFtIHRyeWluZyB0byByZWNlaXZlIG9uIHR3byBkaWZmZXJlbnQgY2Vu
dHJlIGZyZXF1ZW5jaWVzICgyLjQ3NWU5IGFuZCAyLjQ4ZTkpIHVzaW5nIHRoZSB0d28gcmVjZWl2
ZXIgY2hhaW5zIG9uIEIyMTAuIFNpbmNlIHRoZXkgYXJlIGNsb3NlIGJ5LCBJIHRob3VnaHQgIGNh
biByZWNlaXZlIHRoZW0gYnkgc2V0dGluZyB0aGUg4oCcZHNwX2ZyZXHigJ0gcGFyYW1ldGVyLgo+
Pj4+IENhc2UgMToKPj4+PiBTdWJkZXY6IEE6QSBvciBBOkIKPj4+PiBOY2hhbm5lbCA6IDEKPj4+
PiBDZW50cmUgRnJlcXVlbmN5OiAyLjQ3NWU5Cj4+Pj4gU2FtcGxpbmcgUmF0ZTogNWU2Cj4+Pj4g
Qlc6IDVlNgo+Pj4+IElmIEkgdXNlIHRoZSBjb21tYW5kIHBvcnQgdGhlIFVTUlAgc291cmNlIGJs
b2NrIHRvIHBhc3MgYSBwbXQgZGljdGlvbmFyeToKPj4+PiBwbXQudG9fcG10KHvigJxsb19mcmVx
4oCdOjIuNDc1ZTksIOKAnGRzcF9mcmVx4oCdOiAtNWU2fSkKPj4+PiBJIGFtIGFibGUgdG8gcmVj
ZWl2ZSByYWRpbyBwYWNrZXRzIHNlbnQgYnkgbm9kZXMgb24gMi40OGU5IEh6Cj4+Pj4gQ2FzZSAy
Ogo+Pj4+IFN1YmRldjogQTpBICBBOkIKPj4+PiBOY2hhbm5lbCA6IDIKPj4+PiBTYW1wbGluZyBS
YXRlOiA1ZTYKPj4+PiBDZW50cmUgRnJlcXVlbmN5IDE6IDIuNDc1ZTkKPj4+PiBDZW50cmUgRnJl
cXVlbmN5IDI6IDIuNDc1ZTkKPj4+PiBCVzogNWU2Cj4+Pj4gSSB1c2UgdGhlIHBtdCBkaWN0aW9u
YXJ5Ogo+Pj4+IHBtdC50b19wbXQoe+KAnGNoYW7igJ06MCwg4oCcbG9fZnJlceKAnToyLjQ3NWU5
LCDigJxkc3BfZnJlceKAnTogLTVlNn0pCj4+Pj4gV2hlbiBJIGRvIHRoaXMgc29tZXRpbWVzIEkg
cmVjZWl2ZSBkYXRhIGZyb20gbm9kZXMgdHJhbnNtaXR0aW5nIG9uIDIuNDhlOUh6LiAgYW5kIHNv
bWV0aW1lcyBvbiAyLjQ3NUh6LiBUaGUgYmVoYXZpb3VyIGJlY29tZXMgZW50aXJlbHkgcmFuZG9t
Lgo+Pj4+IEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgYW55IGhlbHAgaW4gZmlndXJpbmcgb3V0
IGhvdyB0byByZWNlaXZlIHNpbXVsdGFuZW91c2x5IG9uIHRoZXNlIHR3byBjZW50cmUgZnJlcXVl
bmNpZXMuCj4+Pj4gVGhhbmtzLAo+Pj4+IFNhcHRhcnNoaQo+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKPj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IDxwbXRf
dHVuZS5wbmc+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCg==
