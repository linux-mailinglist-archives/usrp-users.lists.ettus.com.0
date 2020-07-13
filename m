Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B930321CD77
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 05:00:13 +0200 (CEST)
Received: from [::1] (port=60800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1juohL-0005LI-TS; Sun, 12 Jul 2020 23:00:07 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:33260)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1juohE-0005Ij-1e
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 23:00:00 -0400
Received: by mail-qt1-f182.google.com with SMTP id 6so8969956qtt.0
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 19:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=sXp+09f9l+03e9oDkiVcNrRszEG6ArsRWLk1IzoC3cI=;
 b=liKN4FLGgqcaJeuu7qs2lvnPMyDJmSnosDJAKuu4Ud98XWk2vgLmdpoMUSirsnEIxo
 Efw897QYulX6KHHyu+u26l4Yo9xSyOqzAbnuzldc1CFlTiGw7Rorqb1Mo19jfeOy/qMl
 Th5wWWIcH12Azt7wz0BpTUeWrPTKGRaDku9NMXMpcE7/7fFl/LDJCIogm6tUlU6TAnsT
 B1Ukkg9Tg99O0RUKH0RFA/009mHzJgnSTVrl/s772tnNELuEUsBAJ1C3MpfFGC59HNcu
 z1TLCVTPjDCPbRhw6CdWorhjZ0rhscMxmAko5GEOBKdRa5hy4HAaZHqkueP9s/Lnkw5W
 N3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=sXp+09f9l+03e9oDkiVcNrRszEG6ArsRWLk1IzoC3cI=;
 b=sf4V5AZYaMiw8AxVJayzCFJGgmvg8OpgEpSYrRBh+Ahec+E4D3YOL+e8ILU4E6qMYQ
 doWNl/lUfDwv3yBlnj+YOD/1nTfcZoZKd6m528j3OvvDnmjIX7boZMGSLAHLn8ND+ZEc
 WbJWqC/yTH5QhvMocSL3/OBzAs1SJt7GTypC57QFqUfd+tUR9O8o5KsGrcqLtUbAO7i1
 SRYOjJ+yCD4FiarR5AbDuI9BOiaJA/ptX7nzl+JeJ0pesXs1yzvTIMw6SCWu8bQa/Mlh
 pI/EstoEKA4HH0Ify+WDwvrSNlCNCWYwFUXwZkTOPRiGSqIpr/VkLUFgJHCBybNpuvy9
 6Yrg==
X-Gm-Message-State: AOAM531HjljlLh8rTWGloEbSvWHHNPIUHMMowsewtOoWw0Rv2xEYr+zo
 oqxuXUOnNt3DH7ouvtJX1wN1RudMoPE=
X-Google-Smtp-Source: ABdhPJwoBpgsfZm+0jQGgR5sKTwmi4OVMIDVk+Ad9TYbPKSPu54AzrV2+rDxRtUpFwMv63wWMX/HIg==
X-Received: by 2002:ac8:2bba:: with SMTP id m55mr50906244qtm.214.1594609157768; 
 Sun, 12 Jul 2020 19:59:17 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id o10sm17112736qtq.71.2020.07.12.19.59.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 19:59:17 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jul 2020 22:59:16 -0400
Message-Id: <A2FF851F-5D41-4F17-8EF1-560BB2F141AF@gmail.com>
References: <5F0BC230.3060007@gmail.com>
Cc: usrp-users@lists.ettus.com
In-Reply-To: <5F0BC230.3060007@gmail.com>
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

TWFyY3VzCk9rIFRoYW5rcyBmb3IgdGhlIGluZm9ybWF0aW9uIE1hcmN1cy4gIEkgaGF2ZSBib3Ro
IGEgU3B5dmVydGVyIGFuZCBIYW0taXQtdXAgYWxyZWFkeS4gSSBtYXkgZ2V0IGFuIE4yMTAgZXZl
bnR1YWxseS4gVGhlIFggc2VyaWVzIHVuZm9ydHVuYXRlbHkgYXJlIG91dCBvZiBteSBmdW5kaW5n
IHJhbmdlLiBJIGFwcHJlY2lhdGUgeW91ciBleHBlcnRpc2UgYW5kIGFkdmljZS4gVGhhbmtzIQpM
YXJyeSwgSzRMRUQgCgo+IE9uIEp1bCAxMiwgMjAyMCwgYXQgMTA6MDggUE0sIE1hcmN1cyBELiBM
ZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IO+7v09uIDA3LzEyLzIw
MjAgMDk6NDIgUE0sIExhcnJ5IERvZGQgd3JvdGU6Cj4+IE1hcmN1cwo+PiBBY3R1YWxseSBJIGRv
buKAmXQgaGF2ZSB0aGUgQjIxMCBvciB0aGUgTEZSWCB5ZXQgYXMgSSBqdXN0IG9yZGVyZWQgdGhl
bSBidXQgdGhhdOKAmXMgYWxsIEkgb3JkZXJlZC4gRG8gSSBuZWVkIHRvIGNhbmNlbCB0aGUgb3Jk
ZXI/Cj4+IExhcnJ5LCBLNExFRAo+IFRoZSBMRlJYIHdpbGwgYmUgb2Ygbm8gdXNlIHRvIHlvdSB1
bmxlc3MgeW91IGhhdmUgYSBwbGF0Zm9ybSB0aGF0IGl0IGNhbiBwbHVnIGluIHRvLgo+IAo+IEkn
ZCBrZWVwIHRoZSBCMjEwIHBhcnQgb2YgdGhlIG9yZGVyLCBhbmQgb3JkZXIgYSBIYW1JdFVwIG9y
IFNweVZlcnRlciB1cGNvbnZlcnRlciBtb2R1bGUsIHdoaWNoIHVwLWNvbnZlcnRzIEhGIGZyZXF1
ZW5jaWVzIHRvCj4gIGEgaGlnaGVyIHJhbmdlIHRoYXQgdGhlIEIyMTAgY2FuIHR1bmUgdG8uCj4g
Cj4gSGFtaVR1cCBpcyBzb2xkIGJ5IE5vb0VsZWMsIGFuZCB0aGUgU3B5VmVydGVyIGlzIHNvbGQg
YnkgaHR0cHM6Ly9haXJzcHkuY29tL3NweXZlcnRlci1yMi8KPiAKPiBBZ2FpbiwgdGhlIExGUlgg
aXMgYSAiZGF1Z2h0ZXJjYXJkIiwgd2hpY2ggaXMgdXNlZCBpbiB2YXJpb3VzIFVTUlBTIHRoYXQg
dXNlIHRoZSBkYXVnaHRlci1jYXJkIGFyY2hpdGVjdHVyZSwgbGlrZSB0aGUgVVNSUDEsIFVTUlAy
LAo+ICBOMnh4LCBYM3h4LCBCMTAwLCBhbmQgRTEwMC4KPiAKPiBCdXQgdGhlIEIyMTAgaXMgYW4g
ZXhjZWxsZW50IG1hY2hpbmUsIGl0J3MganVzdCB0aGF0IGl0IGRvZXNuJ3QgdHVuZSBkb3duIHRv
IEhGIGZyZXF1ZW5jaWVzLiAgQnV0IHdpdGggdGhlIGFkZGl0aW9uIG9mIGEgKGZhaXJseSBjaGVh
cCwgSU1ITykKPiAgdXAtY29udmVydGVyLCB5b3UgY2FuIGV4cGxvcmUgdGhlIHRlcnJpdG9yeSB5
b3UncmUgaW50ZXJlc3RlZCBpbiBxdWl0ZSBuaWNlbHkuCj4gCj4gSW4gdGVybXMgb2Ygc29mdHdh
cmUsIGl0IHJlYWxseSBkZXBlbmRzIG9uIHdoYXQgeW91IHdhbnQgdG8gKmRvKi4gSWYgeW91IGp1
c3Qgd2FudCBhbiBpbnRlZ3JhdGVkIEZGVCBkaXNwbGF5IHRoYXQgY2FuIGNvdmVyIHlvdXIgMTVN
SHoKPiAgb2YgYmFuZHdpZHRoLCB5b3UgY2FuIHVzZSB0aGUgdWhkX2ZmdCBhcHBsaWNhdGlvbiwg
YW5kIGhhdmUgaXQgc2FtcGxlIGF0IDE1TXNwcy0tdGhpcyBhc3N1bWVzIHlvdXIgY29tcHV0ZXIg
aXMgYWJsZSB0byAia2VlcCB1cCIKPiAgYXQgdGhhdCByYXRlLS1hIGdvb2QgVVNCMyBjb250cm9s
bGVyIHdpbGwgYmUgcmVxdWlyZWQsIGFuZCBhIGdvb2QgbXVsdGktY29yZSBtYWNoaW5lIHRvIGdv
IHdpdGggaXQuCj4gCj4gCj4+Pj4gT24gSnVsIDEyLCAyMDIwLCBhdCA4OjA2IFBNLCBNYXJjdXMg
RCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4gCj4+PiDvu79UaGUg
QjIxMCBpcyBzZWxmIGNvbnRhaW5lZCBhbmQgdHVuZXMgZG93biB0byA1ME1oeiBhdCB0aGUgbG93
ZXN0LiBUaGUgTEZSWCBpcyBmb3Igb3RoZXIgdHlwZXMgb2YgVVNSUHMuIFNvIGZpcnN0IHRoaW5n
cyBmaXJzdCwgd2hhdCB0eXBlIG9mIFVTUlAgZG8geW91IGhhdmU/Cj4+PiAKPj4+IFNlbnQgZnJv
bSBteSBpUGhvbmUKPj4+IAo+Pj4+IE9uIEp1bCAxMiwgMjAyMCwgYXQgNzo0MyBQTSwgTGFycnkg
RG9kZCB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+
Pj4+IAo+Pj4+IO+7v0kgbmVlZCB0byBzZXQgdXAgYSBHTlUgSEYgc3BlY3RydW0gYW5hbHl6ZXIg
d2l0aCBhIHdhdGVyZmFsbCB1c2luZyBteSBCMjEwLCBMTkEsIGFuZCBMRlJYIGRhdWdodGVyIGJv
YXJkLiBUaGUgdGFyZ2V0IHdvdWxkIGJlIGEgMTUgdG8gMzAgTUh6IChvciB3aWRlcikgaW5zdGFu
dGFuZW91cyBzcGVjdHJ1bSBmb3IgUmFkaW8gQXN0cm9ub215IHdvcmsuIFJhdGhlciB0aGFuIHJl
LWNyZWF0aW5nIHNvbWV0aGluZyB0aGF0IGFscmVhZHkgZXhpc3RzIHdoZXJlIGNvdWxkIEkgZ2V0
IGEgc2ltaWxhciBHTlUgZmxvd2dyYXBoPyBTaW5jZSBJIGFtIGJyYW5kIG5ldyB0byBVU1JQIGFu
eSBhZHZpY2UgaXMgdmVyeSB3ZWxjb21lLgo+Pj4+IFRoYW5rcywKPj4+PiBMYXJyeSwgSzRMRUQK
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQo=
