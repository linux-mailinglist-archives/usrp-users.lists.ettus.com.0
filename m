Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C27A021566F
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jul 2020 13:32:52 +0200 (CEST)
Received: from [::1] (port=45624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jsPMe-0004xj-Hu; Mon, 06 Jul 2020 07:32:48 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:37453)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jsPMa-0004sA-Fb
 for usrp-users@lists.ettus.com; Mon, 06 Jul 2020 07:32:44 -0400
Received: by mail-qt1-f174.google.com with SMTP id d27so28615415qtg.4
 for <usrp-users@lists.ettus.com>; Mon, 06 Jul 2020 04:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Z4vk43FLC04M6Z73/MLkgfsRZ6F1Ajq73dS4hetmHBU=;
 b=Rp8hCgsPbWi8S1LDXTpX9wc0wLOTPRT8JDPqsvepwGzGI/O8a/G6AqvGYqaxGcg7D1
 NUZH7F3gfttJYlMzZaFP6Nnjm4ATvjm+FghWrASQhAbIX4S0oG9bw+EP7kAyypeP+nzM
 QqZcsLIYYUxKkuKiaEKeDaZ6wkaaY7+ByOua8+P+qVwwTaTNXoY+yAq7/csSmfuVfnWq
 wBIOXmnJJrumV0aLZwj1JUBm4nI6MHxrXjODlhouZWP0xOetXteY5IFX89mYX7XCJ6Y+
 Vm0srHo7UxGAOkoWdg7Ssf/kTRiGWdpv998atXOAy9sHcgbEUvzpTxWIQNzkQ3nXterK
 A0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Z4vk43FLC04M6Z73/MLkgfsRZ6F1Ajq73dS4hetmHBU=;
 b=dgXc0lTqOHJG/4UTn5rvTKJpWqpyzNBMDEVSW9IRdBT9FEozfRvkm2h2h6XSR8QhzZ
 DGSvBbvezdPGMd93bdt9LPRuY+S+cxmfLtNWhrGG247dd9fqmXYCjKd/iHOv2bZ6YHLX
 7JQbSJmst8Odmy4OwA1q+38A6XHBe1gijbJmfid3XBGJTorSnJNkN95O/B1LquHmaw9f
 lJ++uNZLYxUuWk1o23hyyDBlREnLSxaT5NXY4sOkxPbYHfGFLvyVXdS0tXDzSOzY2Uo5
 90E2wl5CkdnScCraM74yDjujT3z2Gw838OPF7nmk8n7RDFL4dqL0o3EQp3JOPm7Zgm7l
 p0Og==
X-Gm-Message-State: AOAM531gcekcQlErymv3OBIXI9f0DlUNu2aZBczOdR2I0/74nqHfjX35
 6ffCXUBplKkSgpOamoCmKIydL9vG
X-Google-Smtp-Source: ABdhPJx5scsJ5oD5zUegJ0VtEmK0YT6fZKHdVKfGmUQ+E7sPxvJ3ahzan53O+4v2H/ayDARcRQvgGw==
X-Received: by 2002:aed:208c:: with SMTP id 12mr49184442qtb.286.1594035123669; 
 Mon, 06 Jul 2020 04:32:03 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id f54sm23445896qte.76.2020.07.06.04.32.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 04:32:02 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 6 Jul 2020 07:32:01 -0400
Message-Id: <FC46AC97-47DC-4E7F-889A-61BBB9ACE5E6@gmail.com>
References: <2a02590f-947d-781d-4b84-bc6a83011d21@cttc.cat>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <2a02590f-947d-781d-4b84-bc6a83011d21@cttc.cat>
To: Pol Henarejos <pol.henarejos@cttc.es>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] USRP x300 & LFTX/LFRX
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhlcmUgYXJlIG9ubHkgdHdvIGRhdWdodGVyIGNhcmQgc2xvdHMgaW4gZWFjaCBkaXJlY3Rpb24s
IGFuZCBvbmx5IDQgREFDIGNoYW5uZWxzLCBzbywgNCB3b3VsZCBiZSB0aGUgbGltaXQuIAoKU2Vu
dCBmcm9tIG15IGlQaG9uZQoKPiBPbiBKdWwgNiwgMjAyMCwgYXQgNjoyNSBBTSwgUG9sIEhlbmFy
ZWpvcyB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+
IAo+IO+7v0RlYXIgYWxsLAo+IAo+IElzIGl0IHBvc3NpYmxlIHRvIHVzZSBMRlRYL0xGUlggZGF1
Z2h0ZXJib2FyZHMgd2l0aCBVU1JQIHgzMDA/IFNpbmNlIGVhY2ggTEZUWCBoYXMgMiBpbmRlcGVu
ZGVudCBUWCByZWFsIHNpZ25hbHMsIEkgYW0gd29uZGVyaW5nIGlmIGl0IGlzIHBvc3NpYmxlIHRv
IHRyYW5zbWl0IDggaW5kZXBlbmRlbnQgcmVhbCBCQiBzaWduYWxzIHdpdGgganVzdCAxIFVTUlAg
eDMwMC4KPiAKPiBUaGFuayB5b3UuCj4gCj4gLS0gCj4gRHIuIFBvbCBIZW5hcmVqb3MKPiBTZW5p
b3IgUmVzZWFyY2hlcgo+IEFycmF5IGFuZCBNdWx0aS1TZW5zb3IgUHJvY2Vzc2luZyBEZXBhcnRt
ZW50LCBDb21tdW5pY2F0aW9uIFN5c3RlbXMgRGl2aXNpb24KPiBwb2wuaGVuYXJlam9zQGN0dGMu
Y2F0Cj4gCj4gQ2VudHJlIFRlY25vbMOyZ2ljIGRlIFRlbGVjb211bmljYWNpb25zIGRlIENhdGFs
dW55YSAoQ1RUQykKPiBBdi4gQ2FybCBGcmllZHJpY2ggR2F1c3MsIDcKPiAwODg2MCBDYXN0ZWxs
ZGVmZWxzLCBCYXJjZWxvbmEgKFNwYWluKQo+IFRlbDogKzM0IDkzIDY0NSAyOSAwMCAgRXh0OiAy
MTc3Cj4gd3d3LmN0dGMuY2F0Cj4gCj4gWW91ciBpZGVudGlmaWNhdGlvbiBkYXRhIGFuZCB0aGUg
ZGF0YSBjb250YWluZWQgaW4gdGhlIGVtYWlscyBhbmQgYXR0YWNoZWQgZmlsZXMgY2FuIGJlIGlu
Y29ycG9yYXRlZCBpbnRvIG91ciBkYXRhYmFzZXMsIGluIG9yZGVyIHRvIG1haW50YWluIHByb2Zl
c3Npb25hbCBhbmQgLyBvciBjb21tZXJjaWFsIHJlbGF0aW9uc2hpcHMsIGFuZCB0aGF0IGl0IHdp
bGwgYmUgcHJlc2VydmVkIHRocm91Z2hvdXQgdGhlIHJlbGF0aW9uc2hpcC4gWW91IGNhbiBleGVy
Y2lzZSB5b3VyIHJpZ2h0IHRvIGFjY2VzcywgcmVjdGlmaWNhdGlvbiwgZXJhc3VyZSwgcmVzdHJp
Y3Rpb24gb2YgcHJvY2Vzc2luZywgdG8gcG9ydGFiaWxpdHkgYW5kIHRvIG9iamVjdCBieSBzZW5k
aW5nIGFuIGVtYWlsIHRvIGRwb0BjdHRjLmNhdC4KPiBUaGlzIG1lc3NhZ2UgYW5kIGFueSBhdHRh
Y2hlZCBkb2N1bWVudCwgd2hlcmUgYXBwcm9wcmlhdGUsIG1heSBiZSBjb25maWRlbnRpYWwgYW5k
IGludGVuZGVkIGZvciB0aGUgb3JpZ2luYWwgcmVjaXBpZW50IG9ubHkuCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
