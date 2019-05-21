Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 447B4259DD
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 23:21:47 +0200 (CEST)
Received: from [::1] (port=58100 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTCCZ-00045O-8a; Tue, 21 May 2019 17:21:39 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:40092)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <marcus.mueller@ettus.com>)
 id 1hTCC1-00040i-RA
 for USRP-users@lists.ettus.com; Tue, 21 May 2019 17:21:35 -0400
Received: by mail-wr1-f53.google.com with SMTP id f10so4789902wre.7
 for <USRP-users@lists.ettus.com>; Tue, 21 May 2019 14:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=m5R0S6VMyH8LVX6gE3i+7ZEllOAf9PqUNf4j1sHR/uE=;
 b=l+/9+QWNWwmI5JJVT5zpuNwuuAq6ufzRNjZiWqttf+LPnn0tyUCCgLn3H/zTqK2Qj6
 zMY1dc7OliizZGZ6kyJbSTDb9g1b4jr154AKn2QUm1Qh7Vb5IZiKxGBRbDhSWAKcG6qm
 CIXOC/IulGn7VEMTPmwoAvM0xfInNmwZ9PYtBHLNcxCsGL2O0eNa77dYFFrOiynW2KC7
 q3zzylX1QfD8JFj/q1QqsD2H/aFbbzULbqtupbBdhpPoHa5yhE38hKHSNtfMmV2AireF
 ExDe9j7c3ee5ZkyMm+wT903u+zNMAMi3GBETo2YiJUNKSx12HRld1DrwIw4P8jLDos6V
 tpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=m5R0S6VMyH8LVX6gE3i+7ZEllOAf9PqUNf4j1sHR/uE=;
 b=iqDlsWWHxPzaG+61N4d4Kd9KEFhtTIAvXbGdoz1EbN/MLdpCfS8I8yVJWYOZ4V691f
 DjHmKgwXtm4cA20s1TWNnHcofPJ2CfP72jVwNMsLEZ/IirosdHuHr7VllVs38vcqthSa
 Zf+n5bRG2I19/BuP9h4NVQGoz28gsSZbxNorFpNHLXjINPNzswIZYfwAElwjPrp4LcV2
 EJeuW/qk/2/mOK1mNjfYlZEGERMHt/YdI7vQtdsNg+FLiB14xUexTJcDtNs+V8rOZz/o
 te0+kAD/riSp29x9cvB6j41FpHzOUviBkqefm2ByQYJRoz08J0lu73VnGF7BKTHKIjLn
 vGWg==
X-Gm-Message-State: APjAAAXujMfsKiPaMBD2x4aBwWP6mbYgIXJtbDp7foLBW9APAK0yhpcC
 9XM6j2Y5KUc1XrCwnegrN4LVkr/m
X-Google-Smtp-Source: APXvYqw+mciFNY/d74rXQFEhXrOMwgY/8LdfaZvbKFB1wIBByAjmP+CSx7iqF11KKy+Ma6XH/+5bDw==
X-Received: by 2002:adf:efc3:: with SMTP id i3mr35560344wrp.45.1558473624721; 
 Tue, 21 May 2019 14:20:24 -0700 (PDT)
Received: from workhorse.lan (ip-37-201-4-220.hsi13.unitymediagroup.de.
 [37.201.4.220])
 by smtp.googlemail.com with ESMTPSA id j206sm6250797wma.47.2019.05.21.14.20.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 14:20:24 -0700 (PDT)
Message-ID: <40288cfce222e4cc01de551dbe26236b4bcb66d1.camel@ettus.com>
To: MASDR GS <masdrgs@gmail.com>
Date: Tue, 21 May 2019 23:20:23 +0200
In-Reply-To: <CAH2gDtmfdzkjpGZP7VYBjECiFTWjfpN+23wHAQfwaSoCASfu+A@mail.gmail.com>
References: <CAH2gDtmquSDVaR3yyZWW8Ri-KmXnxrREL6oPEnDWKejkiDGN9w@mail.gmail.com>
 <b1c1fd3ce159c46e19c09f914a1312315e5171e0.camel@ettus.com>
 <CAH2gDtmfdzkjpGZP7VYBjECiFTWjfpN+23wHAQfwaSoCASfu+A@mail.gmail.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Running network mode on E310 and N300
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Cc: USRP-users@lists.ettus.com
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

SG0sIGlmIHlvdSBoYXZlIHRvIHByb3ZpZGUgYSB1bmlmb3JtIGludGVyZmFjZSwgYnV0IG5lZWQg
dG8gdXNlCmRpZmZlcmVudCB2ZXJzaW9ucyBvZiBVSEQgdW5kZXJuZWF0aDogV2hhdCBhYm91dCBz
aW1wbHkgYnVpbGRpbmcgdHdvCmlkZW50aWNhbCBsaWJyYXJpZXMgdGhhdCB1c2UgdGhlIHR3byBu
ZWNlc3NhcnkgdmVyc2lvbnMgb2YgVUhELCBhbmQKb25seSBydW50aW1lLWxpbmsgKHBsdWdpbi1z
dHlsZSkgZWl0aGVyIHNoYXJlZCBvYmplY3QgYXQgcnVuIHRpbWUsCmRlcGVuZGluZyBvbiB3aGlj
aCBVU1JQIHlvdSBuZWVkIHRvIHRhbGsgdG8/CgpCZXN0IHJlZ2FyZHMsCk1hcmN1cwpPbiBNb24s
IDIwMTktMDUtMjAgYXQgMTI6NDUgLTEwMDAsIE1BU0RSIEdTIHdyb3RlOgo+IEhpIE1hcmN1cywK
PiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgcmVzcG9uc2UuIFVuZm9ydHVuYXRlbHkgb3VyIE4zMDBz
IGhhdmUgUmV2IEgKPiBtb3RoZXJib2FyZHMgc28gdmVyc2lvbiAzLjEyIGRvZXNuJ3Qgc2VlbSB0
byBiZSBhbiBvcHRpb24gZm9yIHVzLgo+IAo+IFJlZ2FyZGluZyBvdXIgYXBwbGljYXRpb24sIHdl
IGhhdmUgYmVlbiB1c2luZyB0aGUgRTMxMHMgZm9yIG91cgo+IHdhdmVmb3JtIGFwcGxpY2F0aW9u
IGRldmVsb3BtZW50IG92ZXIgdGhlIHBhc3QgZmV3IHllYXJzIGFuZCByZWNlbnRseQo+IHJlY2Vp
dmVkIHR3byBuZXcgTjMwMHMgdG8gcHJvdmlkZSBpbXByb3ZlZCBwZXJmb3JtYW5jZSBpbiBuZXR3
b3JrCj4gbW9kZS4gIFdlIGFyZSBjdXJyZW50bHkgd29ya2luZyB3aXRoIG9uZSBsaWNlbnNlIGZv
ciBhIHNvZnR3YXJlCj4gZGV2ZWxvcG1lbnQgdG9vbCB0aGF0IHJlc3RyaWN0cyB1cyB0byBuZXR3
b3JrIG1vZGUgb25seSBkdWUgdG8KPiBsaWNlbnNpbmcgcmVzdHJpY3Rpb25zLiAgT25lIG9mIG91
ciBwcm9qZWN0IG9iamVjdGl2ZXMgaXMgdG8gZGV2ZWxvcAo+IHBvcnRhYmxlLCBoYXJkd2FyZSBh
Z25vc3RpYyB3YXZlZm9ybSBhcHBsaWNhdGlvbnMgc28gdGhhdCB3ZSBjYW4KPiBjb25jZWl2YWJs
eSB1c2Ugb3VyIGFwcGxpY2F0aW9ucyBvbiB2YXJpb3VzIFNEUiBwbGF0Zm9ybXMuICBUaGVyZWZv
cmUKPiB3ZSdkIGxpa2UgdG8gaGF2ZSB0aGUgZmxleGliaWxpdHkgdG8gc3dpdGNoIGJldHdlZW4g
Ym90aCB0aGUgZTMxMCBhbmQKPiBOMzAwIGZvciBkZXZlbG9wbWVudCBwdXJwb3NlcyBhbmQgZGVt
b25zdHJhdGUgc29mdHdhcmUgcG9ydGFiaWxpdHkuIAo+IEFwcHJlY2lhdGUgYW55IHN1Z2dlc3Rp
b25zL2ZlZWRiYWNrIG9uIGFsdGVybmF0aXZlIG9wdGlvbnMgeW91IG1heQo+IGhhdmUgdGhhdCB3
b3VsZCBhbGxvdyB1cyB0byB1c2UgYm90aCBTRFJzIGZyb20gb25lIGhvc3QgbWFjaGluZS4gIAo+
IAo+IAo+IAo+ICAgICAKPiAKPiBPbiBTdW4sIE1heSAxOSwgMjAxOSBhdCA4OjM0IEFNIE1hcmN1
cyBNw7xsbGVyIDwKPiBtYXJjdXMubXVlbGxlckBldHR1cy5jb20+IHdyb3RlOgo+ID4gSGkhCj4g
PiAKPiA+IE5ldHdvcmsgbW9kZSBvbiBFMzEwIHdhcyBoaWdobHkgdW5kZXNpcmFibGUgKHJlbGlh
YmxlIHJhdGVzIGJlbG93Cj4gPiAyTVMvcykgYW5kIG5vdCBjb21wYXRpYmxlIHdpdGggUkZOb0Ms
IGFuZCBoZW5jZSBoYXMgYmVlbiBkaXNhYmxlZAo+ID4gaW4KPiA+IHJlY2VudCB2ZXJzaW9ucyBv
ZiBVSEQuIEkndmUgYWx3YXlzIGNvbnNpZGVyZWQgTmV0d29yayBNb2RlIG9uIHRoZQo+ID4gRTMx
MAo+ID4gdG8gYmUgYSB0ZXN0aW5nIHRvb2wsIG5vdCBzb21ldGhpbmcgeW91J2Qgd2FudCB0byBk
byBmb3Igc3RyZWFtaW5nLAo+ID4gdG8KPiA+IGJlIGNvbXBsZXRlbHkgaG9uZXN0IQo+ID4gCj4g
PiBUaGUgTjMwMCdzIG5ldHdvcmsgaW50ZXJmYWNpbmcgaXMgZnVuZGFtZW50YWxseSBkaWZmZXJl
bnQgYW5kCj4gPiBvcHRpbWl6ZWQKPiA+IGZvciBuZXR3b3JrIHN0cmVhbWluZy4gVGhlIHR5cGlj
YWwgdXNlIGNhc2UgZm9yIHRoZSBOMzAwIHdvdWxkIHVzZQo+ID4gb25lCj4gPiBvZiB0aGUgKHVw
IHRvIDEwR2IvcykgU0ZQKyBwb3J0cyBmb3IgbmV0d29yayBzYW1wbGUgc3RyZWFtaW5nLCBhbmQK
PiA+IHRoZQo+ID4gMUdiL3MgUko0NSBldGhlcm5ldCBwb3J0IHRvICJ0YWxrIiB0byB0aGUgQVJN
IGhvc3QgaW5zaWRlLCBmb3IKPiA+IGNvbnRyb2wuIAo+ID4gVmVyc2lvbnMgb2YgVUhEIHN1cHBv
cnRpbmcgdGhlIE4zMDAgc3RhcnQgYXQgMy4xMi4wLjAgKGJ1dCBvbmx5IGZvcgo+ID4gaGFyZHdh
cmUgcmV2aXNpb25zIHVwIHRvIG1vdGhlcmJvYXJkIHJldmlzaW9uIEc7IHlvdSdsbCBuZWVkCj4g
PiAzLjEzLjAuMgo+ID4gZm9yIHRoYXQpOyBzdGFydGluZyB3aXRoIDMuMTMuMC4wLCB0aGVyZSBp
cyBubyBuZXR3b3JrIG1vZGUgb24gdGhlCj4gPiBFMzEwLgo+ID4gSSdsbCBiZSBob25lc3QgYW5k
IHNheTogd2hpbGUgdGhpcyBzb3VuZHMgbGlrZSB5b3UgY291bGQgYmUgdXNpbmcKPiA+IDMuMTIu
MC4wIHRvIHJ1biB5b3VyIEUzMTAgaW4gbmV0d29yayBtb2RlIGFuZCBzdGlsbCB1c2UgeW91ciBO
MzAwCj4gPiAoZ2l2ZW4gaXQncyBub3QgcmV2IEcgb3IgbGF0ZXIpLCB0aGF0IHdvdWxkIGJlIGEg
c3Vib3B0aW1hbAo+ID4gc29sdXRpb24KPiA+IGNvbnNpZGVyaW5nIHRoZSBOM3h4IGltcHJvdmVt
ZW50cyB0aGF0IHdlcmUgaW50cm9kdWNlZCB3aXRoIDMuMTMuCj4gPiBhbmQKPiA+IDMuMTQuMC4w
Lgo+ID4gCj4gPiBTbywgbWF5YmUgeW91IGNvdWxkIGVsYWJvcmF0ZSBvbiB0aGUgYXBwbGljYXRp
b24geW91J3JlIGhhdmluZyBmb3IKPiA+IHRoZQo+ID4gRTMxMCBuZXR3b3JrIG1vZGUgaW4gY29t
YmluYXRpb24gd2l0aCBOMzAwPyBUaGVyZSBtaWdodCBiZSBhbiBlYXN5Cj4gPiB3YXkKPiA+IGFy
b3VuZCB0aGUgb2JzdGFjbGUgeW91J3JlIGVuY291bnRlcmluZywgYnV0IEkgZG9uJ3QgcmVhbGx5
IGtub3cKPiA+IHdoYXQKPiA+IHlvdSdyZSBwbGFubmluZyB0byBkbyBmcm9tIGhlcmUuCj4gPiAK
PiA+IEJlc3QgcmVnYXJkcywKPiA+IE1hcmN1cwo+ID4gCj4gPiBPbiBXZWQsIDIwMTktMDUtMTUg
YXQgMTI6NTMgLTEwMDAsIE1BU0RSIEdTIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+ID4gPiBXb3Vs
ZCBpdCBiZSBwb3NzaWJsZSB0byBydW4gbmV0d29yayBtb2RlIG9uIGJvdGggRTMxMCBhbmQgTjMw
MAo+ID4gdXNpbmcKPiA+ID4gdGhlIGxhdGVzdCBVSEQgZHJpdmVyIHYzLjE0LjA/Cj4gPiA+IAo+
ID4gPiBUaGUgTjMwMCByZXF1aXJlcyB2My4xMi4wIG9yIGdyZWF0ZXIgdG8gcnVuIGhvc3QgbW9k
ZSBhbmQgSQo+ID4gY3VycmVudGx5Cj4gPiA+IGhhdmUgcmVsZWFzZS00IHdpdGggYSBVSEQgdmVy
c2lvbiB2My45LjIgb24gdGhlIEUzMTAuIEJ1dCB0aGUKPiA+ID4gY29uZGl0aW9uIHRvIHJ1biBu
ZXR3b3JrIG1vZGUgaXMgdGhhdCB0aGUgVUhEIGRyaXZlcnMgb2YgcmFkaW8KPiA+IGFuZAo+ID4g
PiBob3N0IG1hY2hpbmUgbXVzdCBtYXRjaC4gSSBjb3VsZG4ndCBmaW5kIGFueSBpbmZvcm1hdGlv
biBvbiBob3cKPiA+IHRvCj4gPiA+IHVwZGF0ZSB0aGUgRTMxMCBVSEQgZHJpdmVycyBkaXJlY3Rs
eSwgYnV0IEkgaGF2ZSB0cmllZCBjcmVhdGluZyBhCj4gPiBTREsKPiA+ID4gdmVyc2lvbiB1c2lu
ZyByZWxlYXNlLTQgYnVpbGRpbmcgVUhEIHYzLjE0LjAgYnV0IHdhc24ndAo+ID4gc3VjY2Vzc2Z1
bAo+ID4gPiBydW5uaW5nIG5ldHdvcmsgbW9kZSB3aXRoIEUzMTAuIEFueSBzdWdnZXN0aW9ucyBv
ciBoZWxwIHdvdWxkIGJlCj4gPiA+IHJlYWxseSBhcHByZWNpYXRlZC4KPiA+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKPiA+ID4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiA+ID4gCj4gPiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KPiA+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQo=
