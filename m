Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C0121D8EA
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 16:49:30 +0200 (CEST)
Received: from [::1] (port=37670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1juzlm-0003Em-6g; Mon, 13 Jul 2020 10:49:26 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:42055)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1juzli-00036n-Mf
 for usrp-users@lists.ettus.com; Mon, 13 Jul 2020 10:49:22 -0400
Received: by mail-qk1-f173.google.com with SMTP id 145so12385910qke.9
 for <usrp-users@lists.ettus.com>; Mon, 13 Jul 2020 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=z++wqJ60qe8EC7Bg5ePxeLy70MDy5USdYIMp1JLwDmU=;
 b=dltUS+bbKCN5/iZDuUVAxVAu8ue4UcEa8X6Ddo4Ogh48XZQjJloT3cGV4JdFuHeJsu
 6YTryBx5Ce218qERp2g1AdKIdbyKZnrzbFIUIm/y1ZQXmPsvDI75CvbjKPXKvLo2IL+p
 AHdeG1ovOSdTLku+ZgUworvqQrbQjm0V5bu11rSiyOC7O7gMe1AwH5/KeJs+dVNnXUmy
 YrbW9bMrbxRyMSQJ26yPLMWc2mICwJY3/AgMhiYoJ0obv15I/9tKqKw6YaTYb31kJUg/
 bgF4gf5GrjfAFB7hSMgBNqHXF8Rqk4Mkl0WvUHwK6sveganFKy7ikrJhovMzt4udh8yU
 c1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=z++wqJ60qe8EC7Bg5ePxeLy70MDy5USdYIMp1JLwDmU=;
 b=DlUf7+3VPpJWAKFjdLHBIoWP//DM1j3vCkaWVqL8PX6UrrT0qdNYxHYRSUgjFudemG
 3rl0g3Rngk6/bOq96xAwz1lfmcuMPjnpL0jx4mQb7D9TzErCcqb/48CQm/vi7TvjinXm
 cmjsu48z5kBY6lp3Pjhu3W+sHlxjgH4FpCjs1yGWq2QMswHfywOfrClWXQ1c8qWTV0p6
 /oIl9ZxwUsYlGZpMDGWb/eXCp3WqGGGN5u7summQap+tRMD1JkLr4/drLS0oJPVZyxwP
 esXr80spgYQf1vi4pCrzoZz0dkwPFmCEuFnQZ1hIXjpZQ6umb1P1cPEboqD9Q7plCkfD
 AcSA==
X-Gm-Message-State: AOAM530G89eEm0M8ePmdz2zhG1rBkgUgR8i12ubgnwDIg3sNL1yve1d4
 HynugJL7EEKwFyYczXTxo5zobSHf
X-Google-Smtp-Source: ABdhPJwPjH20Emn/ZUcEgVHv2L89DTm/eK5zmHjwtxmw9zgqS6b9SzRD6jHoFhXcwX6trwpXI3GPMA==
X-Received: by 2002:a37:6150:: with SMTP id v77mr81930785qkb.173.1594651721630; 
 Mon, 13 Jul 2020 07:48:41 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id a185sm18245851qkg.3.2020.07.13.07.48.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Jul 2020 07:48:41 -0700 (PDT)
Message-ID: <5F0C7448.8000505@gmail.com>
Date: Mon, 13 Jul 2020 10:48:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Larry Dodd <101science@gmail.com>
CC: usrp-users@lists.ettus.com
References: <5F0BD209.2090502@gmail.com>
 <4A711BC0-C326-4A33-90AA-4E5D44461FCF@gmail.com>
In-Reply-To: <4A711BC0-C326-4A33-90AA-4E5D44461FCF@gmail.com>
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

T24gMDcvMTIvMjAyMCAxMTozOCBQTSwgTGFycnkgRG9kZCB3cm90ZToKPiBNYXJjdXMKPiBTdHJp
Y3RseSByZWNlaXZpbmcgSnVwaXRlciBzdG9ybXMgYW5kIHNvbGFyIGZsYXJlcy4gQXMgYSBSYWRp
byBKb3ZlIG1lbWJlciBmb3IgYSBjb3VwbGUgeWVhcnMgbm93IHdlIGhhdmUgcmVjb3JkZWQgbWFu
eSBKdXBpdGVyIHN0b3JtcyBpbiB0aGUgMTUgdG8gMzAgTUh6IHJhbmdlLiBUaGV5IGFyZSBnZW5l
cmFsbHkgb2YgdGhyZWUgdHlwZXMuIFMgYnVyc3RzLCBMIGJ1cnN0cyBhbmQgTiBldmVudHMuIFdl
IHNlbmQgdGhlIFNEUiBkYXRhIHN0cmVhbSB0byBSYWRpbyBTa3kgU3BlY3Ryb2dyYXBoIHNvZnR3
YXJlLiBUaGUgZmlsZXMgYXJlIGFyY2hpdmVkIGZvciBzdHVkeSBieSBOQVNBIHNjaWVudGlzdHMg
YW5kIG90aGVyIHJlc2VhcmNoZXJzLiBKdXBpdGVycyBtb29uIElvIHBsYXlzIGFuIGltcG9ydGFu
dCByb2xsIGluIGRpcmVjdGluZyB0aGVzZSBzdG9ybSBpbXB1bHNlcyB0byBlYXJ0aC4gV2UgaGF2
ZSBzcGVjaWFsIHNvZnR3YXJlIHRoYXQgcHJlZGljdHMgdGhlIHByb2JhYmlsaXR5IG9mIHJlY2Vp
dmluZyB0aGUgc3Rvcm1zIGJhc2VkIG9uIEVhcnRoLCBKdXBpdGVyLCBhbmQgSW8gb3JiaXRhbCBw
b3NpdGlvbnMuIEkgY2FuIHNlbmQgeW91IHNhbXBsZSBzcGVjdHJvZ3JhbXMgaWYgZGVzaXJlZC4g
V2UgYWxzbyBzdHVkeSBpb25vc3BoZXJpYyBldmVudHMsIGdhbGFjdGljIGJhY2tncm91bmQgbm9p
c2UsIGFuZCBzb21lIGNlbGVzdGlhbCBzY2ludGlsbGF0aW9ucy4gWWVzIFJGSSBpcyBhIHByb2Js
ZW0gYnV0IHRoZXJlIGFyZSBzb2Z0d2FyZSBtaXRpZ2F0aW9uIHRlY2huaXF1ZXMuCj4gTGFycnks
IEs0TEVEClRoYW5rcywgTGFycnkuCgpZZXMsIEknbSBmYW1pbGlhciB3aXRoIGFsbCBvZiB0aGF0
LiAgSSd2ZSBiZWVuIGRvaW5nIHJhZGlvIGFzdHJvbm9teSBvbiAKYW5kIG9mZiBzaW5jZSAxOTg2
LCBhbmQgc3RhcnRlZCB1c2luZyBTRFIvR251IFJhZGlvIGZvciBpdCBpbiAyMDA0LgoKSSBkaWQg
c29tZSB3b3JrIGZvciBOYXR1cmFsIFJlc291cmNlcyBDYW5hZGEgb24gcmlvbWV0ZXJzIGEgY291
cGxlIG9mIAp5ZWFycyBhZ28sIGFuZCBoYXZlIGJlZW4gaW52b2x2ZWQgaW4gcmlvbWV0ZXIgZGV2
ZWxvcG1lbnQgd2l0aAogICBHbnUgUmFkaW8gc2luY2UgMjAxMCBvciBzby4KCgo+Cj4+IE9uIEp1
bCAxMiwgMjAyMCwgYXQgMTE6MTYgUE0sIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBn
bWFpbC5jb20+IHdyb3RlOgo+Pgo+PiDvu79PbiAwNy8xMi8yMDIwIDEwOjU5IFBNLCBMYXJyeSBE
b2RkIHdyb3RlOgo+Pj4gTWFyY3VzCj4+PiBPayBUaGFua3MgZm9yIHRoZSBpbmZvcm1hdGlvbiBN
YXJjdXMuICBJIGhhdmUgYm90aCBhIFNweXZlcnRlciBhbmQgSGFtLWl0LXVwIGFscmVhZHkuIEkg
bWF5IGdldCBhbiBOMjEwIGV2ZW50dWFsbHkuIFRoZSBYIHNlcmllcyB1bmZvcnR1bmF0ZWx5IGFy
ZSBvdXQgb2YgbXkgZnVuZGluZyByYW5nZS4gSSBhcHByZWNpYXRlIHlvdXIgZXhwZXJ0aXNlIGFu
ZCBhZHZpY2UuIFRoYW5rcyEKPj4+IExhcnJ5LCBLNExFRAo+Pj4KPj4gSW5jaWRlbnRhbGx5LCB3
aGF0IGtpbmQgb2YgcmFkaW8gYXN0cm9ub215IGFyZSB5b3UgcGxhbm5pbmcgdG8gZG8gYXQgdGhh
dCBmcmVxdWVuY3kgcmFuZ2U/ICBJdCdzIG1vc3RseSwgYXMgeW91IG1pZ2h0IGV4cGVjdCwgImEg
bWVzcyIsIGJ1dAo+PiAgIHNvbWUgZGlzY3JldGUgZnJlcXVlbmNpZXMgYXJlIGF2YWlsYWJsZSBm
b3IgdGhpbmdzIGxpa2UgcmlvbWV0cnksIGFuZCBsb29raW5nIGF0IHNvbGFyIGFuZCBqdXBpdGVy
IHJhZGlvIGJ1cnN0cy4uLgo+Pgo+Pgo+Pj4+PiBPbiBKdWwgMTIsIDIwMjAsIGF0IDEwOjA4IFBN
LCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToKPj4+PiDv
u79PbiAwNy8xMi8yMDIwIDA5OjQyIFBNLCBMYXJyeSBEb2RkIHdyb3RlOgo+Pj4+PiBNYXJjdXMK
Pj4+Pj4gQWN0dWFsbHkgSSBkb27igJl0IGhhdmUgdGhlIEIyMTAgb3IgdGhlIExGUlggeWV0IGFz
IEkganVzdCBvcmRlcmVkIHRoZW0gYnV0IHRoYXTigJlzIGFsbCBJIG9yZGVyZWQuIERvIEkgbmVl
ZCB0byBjYW5jZWwgdGhlIG9yZGVyPwo+Pj4+PiBMYXJyeSwgSzRMRUQKPj4+PiBUaGUgTEZSWCB3
aWxsIGJlIG9mIG5vIHVzZSB0byB5b3UgdW5sZXNzIHlvdSBoYXZlIGEgcGxhdGZvcm0gdGhhdCBp
dCBjYW4gcGx1ZyBpbiB0by4KPj4+Pgo+Pj4+IEknZCBrZWVwIHRoZSBCMjEwIHBhcnQgb2YgdGhl
IG9yZGVyLCBhbmQgb3JkZXIgYSBIYW1JdFVwIG9yIFNweVZlcnRlciB1cGNvbnZlcnRlciBtb2R1
bGUsIHdoaWNoIHVwLWNvbnZlcnRzIEhGIGZyZXF1ZW5jaWVzIHRvCj4+Pj4gICBhIGhpZ2hlciBy
YW5nZSB0aGF0IHRoZSBCMjEwIGNhbiB0dW5lIHRvLgo+Pj4+Cj4+Pj4gSGFtaVR1cCBpcyBzb2xk
IGJ5IE5vb0VsZWMsIGFuZCB0aGUgU3B5VmVydGVyIGlzIHNvbGQgYnkgaHR0cHM6Ly9haXJzcHku
Y29tL3NweXZlcnRlci1yMi8KPj4+Pgo+Pj4+IEFnYWluLCB0aGUgTEZSWCBpcyBhICJkYXVnaHRl
cmNhcmQiLCB3aGljaCBpcyB1c2VkIGluIHZhcmlvdXMgVVNSUFMgdGhhdCB1c2UgdGhlIGRhdWdo
dGVyLWNhcmQgYXJjaGl0ZWN0dXJlLCBsaWtlIHRoZSBVU1JQMSwgVVNSUDIsCj4+Pj4gICBOMnh4
LCBYM3h4LCBCMTAwLCBhbmQgRTEwMC4KPj4+Pgo+Pj4+IEJ1dCB0aGUgQjIxMCBpcyBhbiBleGNl
bGxlbnQgbWFjaGluZSwgaXQncyBqdXN0IHRoYXQgaXQgZG9lc24ndCB0dW5lIGRvd24gdG8gSEYg
ZnJlcXVlbmNpZXMuICBCdXQgd2l0aCB0aGUgYWRkaXRpb24gb2YgYSAoZmFpcmx5IGNoZWFwLCBJ
TUhPKQo+Pj4+ICAgdXAtY29udmVydGVyLCB5b3UgY2FuIGV4cGxvcmUgdGhlIHRlcnJpdG9yeSB5
b3UncmUgaW50ZXJlc3RlZCBpbiBxdWl0ZSBuaWNlbHkuCj4+Pj4KPj4+PiBJbiB0ZXJtcyBvZiBz
b2Z0d2FyZSwgaXQgcmVhbGx5IGRlcGVuZHMgb24gd2hhdCB5b3Ugd2FudCB0byAqZG8qLiBJZiB5
b3UganVzdCB3YW50IGFuIGludGVncmF0ZWQgRkZUIGRpc3BsYXkgdGhhdCBjYW4gY292ZXIgeW91
ciAxNU1Iego+Pj4+ICAgb2YgYmFuZHdpZHRoLCB5b3UgY2FuIHVzZSB0aGUgdWhkX2ZmdCBhcHBs
aWNhdGlvbiwgYW5kIGhhdmUgaXQgc2FtcGxlIGF0IDE1TXNwcy0tdGhpcyBhc3N1bWVzIHlvdXIg
Y29tcHV0ZXIgaXMgYWJsZSB0byAia2VlcCB1cCIKPj4+PiAgIGF0IHRoYXQgcmF0ZS0tYSBnb29k
IFVTQjMgY29udHJvbGxlciB3aWxsIGJlIHJlcXVpcmVkLCBhbmQgYSBnb29kIG11bHRpLWNvcmUg
bWFjaGluZSB0byBnbyB3aXRoIGl0Lgo+Pj4+Cj4+Pj4KPj4+Pj4+PiBPbiBKdWwgMTIsIDIwMjAs
IGF0IDg6MDYgUE0sIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4+Pj4+PiDvu79UaGUgQjIxMCBpcyBzZWxmIGNvbnRhaW5lZCBhbmQgdHVuZXMgZG93biB0
byA1ME1oeiBhdCB0aGUgbG93ZXN0LiBUaGUgTEZSWCBpcyBmb3Igb3RoZXIgdHlwZXMgb2YgVVNS
UHMuIFNvIGZpcnN0IHRoaW5ncyBmaXJzdCwgd2hhdCB0eXBlIG9mIFVTUlAgZG8geW91IGhhdmU/
Cj4+Pj4+Pgo+Pj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+Pj4KPj4+Pj4+PiBPbiBKdWwg
MTIsIDIwMjAsIGF0IDc6NDMgUE0sIExhcnJ5IERvZGQgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+IO+7v0kgbmVlZCB0byBz
ZXQgdXAgYSBHTlUgSEYgc3BlY3RydW0gYW5hbHl6ZXIgd2l0aCBhIHdhdGVyZmFsbCB1c2luZyBt
eSBCMjEwLCBMTkEsIGFuZCBMRlJYIGRhdWdodGVyIGJvYXJkLiBUaGUgdGFyZ2V0IHdvdWxkIGJl
IGEgMTUgdG8gMzAgTUh6IChvciB3aWRlcikgaW5zdGFudGFuZW91cyBzcGVjdHJ1bSBmb3IgUmFk
aW8gQXN0cm9ub215IHdvcmsuIFJhdGhlciB0aGFuIHJlLWNyZWF0aW5nIHNvbWV0aGluZyB0aGF0
IGFscmVhZHkgZXhpc3RzIHdoZXJlIGNvdWxkIEkgZ2V0IGEgc2ltaWxhciBHTlUgZmxvd2dyYXBo
PyBTaW5jZSBJIGFtIGJyYW5kIG5ldyB0byBVU1JQIGFueSBhZHZpY2UgaXMgdmVyeSB3ZWxjb21l
Lgo+Pj4+Pj4+IFRoYW5rcywKPj4+Pj4+PiBMYXJyeSwgSzRMRUQKPj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0Cj4+Pj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4+PiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20K
