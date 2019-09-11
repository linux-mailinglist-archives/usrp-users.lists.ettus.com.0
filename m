Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E98B01B2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 18:35:27 +0200 (CEST)
Received: from [::1] (port=47620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i85aV-0001Nd-TK; Wed, 11 Sep 2019 12:35:23 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:40494)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1i85aS-0001B2-4m
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 12:35:20 -0400
Received: by mail-ot1-f41.google.com with SMTP id y39so23184577ota.7
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 09:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=NIFXWQmeFwwUHIOvvjG4uZVkwRYkpNOW0myWo7EQdfg=;
 b=YgZ0pYwGvV9SR2lC/uSmxJEtVujWmNhzwOb5gsBNSTChzs9q/pYKH8Zunen9s1NWt6
 KgMaiu3E206zdBUONzL1wMuQ7mZiqs0BIr7ck7+Snh5NWM04zTQakTm6/hewPL6J6Jl9
 oz8rHJQYzdfQ1wMZ01UFA6G/AAtnJh7t9AzcrU/1itPpP1By9K/BU1YLCl9UgmoW72Zf
 vbuKhO4yq3rPKYo3F5rXWQmI6goDkoCwWK4JttruscS/4yK/yXxsyNucEtU9jAQD/ZF8
 O4DPjjWX95N1LBvA5rDu29hf6xVZRP9xvesRi50DMbr1SWT6+A9LMe1cTSu3FqaD/3aH
 COxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=NIFXWQmeFwwUHIOvvjG4uZVkwRYkpNOW0myWo7EQdfg=;
 b=lsN1JOAqcyR6giN6Vg+nNqBrqquW48kt6H8d+tfp7i0VoNOVf0LQaG4L1V8cbacyFC
 neBmkjtoZz2xheZbx7mpAfBZMl10vOT/wYyCVWxHNep5h0445qt9kn322m8OVOBH+Npm
 tdEWgcpACf41gCeohecL9pXLwYkRkOZsKs+Wjpbn5WZiXZnA+nxX/J3N5RxTn5bTEIMR
 EVIBHtXYQP/Dp8n1+mdoJT1S4wMB6Pvyl6mtEmkFXoWPJcrvP1UQncldhwVY2kf9hI/Q
 Yh3xMy7R+M6LKeMbB7L24bw6hs5IBv7fDvI1wb8JHh2jqwT8oVZQhGWsH3ZXqCOQYuEr
 JajQ==
X-Gm-Message-State: APjAAAUSalbrh/KSRoI86/SBKUvHC2YTmJC8sHCCLfpwU+r3wEgzD0AP
 QBjdhW876lfs1VV04Ay0EqCMWQE5JwRKxw==
X-Google-Smtp-Source: APXvYqx1p4lpn/o+ovzwqZmIGWCj6ZDqeAXJmhdZ5sIyaW5nNwTBExsHa0v1Ed7++C2PWhI4cHTM7w==
X-Received: by 2002:a9d:4c11:: with SMTP id l17mr30713594otf.138.1568219679166; 
 Wed, 11 Sep 2019 09:34:39 -0700 (PDT)
Received: from racer.ni.corp.natinst.com ([130.164.62.197])
 by smtp.gmail.com with ESMTPSA id a69sm6953242oib.14.2019.09.11.09.34.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 09:34:38 -0700 (PDT)
Message-ID: <a6d01ddb6d45fb692f7fcfc5a5cdf744a7ab17c1.camel@ettus.com>
To: "Quadri,Adnan" <adnan.quadri@louisville.edu>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Date: Wed, 11 Sep 2019 11:34:38 -0500
In-Reply-To: <DM6PR03MB37883E0264A559380EB5A1BFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
References: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
 ,<84a673b3ca7caa1721171d4b5494c2eee03b448e.camel@ettus.com>
 <DM6PR03MB37883E0264A559380EB5A1BFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC SVD Block
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

VGhhbmtzISBJJ20gYWx3YXlzIGN1cmlvdXMgYWJvdXQgaG93IG91ciBoYXJkLSBhbmQgc29mdHdh
cmUKaW5mcmFzdHJ1Y3R1cmUgaXMgYmVpbmcgdXNlZCEKCkJ5IHRoZSB3YXksIGluIGNhc2UgeW91
IHdhbnQgdG8gdGVzdCBhIHZlcmlsb2cgU1ZEIGltcGxlbWVudGF0aW9uCndpdGhpbiBhIHNpZ25h
bCBwcm9jZXNzaW5nIGZyYW1ld29yazogQm93ZW4gSHUgZGlkIGEgdmVyeSBpbnRlcmVzdGluZwpH
b29nbGUgU3VtbWVyIG9mIENvZGUgcHJvamVjdCB0aGlzIHllYXIsIGluIHdoaWNoIGhlIG1hZGUg
aXQgcG9zc2libGUKdG8ganVzdCBkcm9wIGluIGEgVmVyaWxvZyBNb2R1bGUgaW4gYSBHTlUgUmFk
aW8gYmxvY2sgYW5kIHVzZSB0aGF0IHRvCmRvIHNpZ25hbCBwcm9jZXNzaW5nIGluIGEgcHVyZSBo
b3N0IGNvbXB1dGVyIHNpbXVsYXRpb24uIEhlJ2xsIGJlIGF0CkdSQ29uIHRoaXMgeWVhciEKCmh0
dHBzOi8vZ2l0aHViLmNvbS9CMFdFTi1IVS9nci12ZXJpbG9nCjwvc2hhbWVsZXNzX3BsdWc+CgpC
ZXN0IHJlZ2FyZHMsCk1hcmN1cwpPbiBXZWQsIDIwMTktMDktMTEgYXQgMTU6MTMgKzAwMDAsIFF1
YWRyaSxBZG5hbiB3cm90ZToKPiBIZWxsbywKPiAKPiBUaGFua3MgZm9yIHlvdXIgcHJvbXB0IHJl
c3BvbnNlIGFuZCBzb3JyeSBmb3IgbXkgZGVsYXllZCBvbmUuCj4gCj4gSSBoYXZlIHRob3VnaHQg
YWJvdXQgdGhlIGZpcnN0IG9wdGlvbiB5b3UgaGF2ZSBkaXNjdXNzZWQsIHdoaWNoIGlzIHRvCj4g
dXNlIGFscmVhZHkgaW1wbGVtZW50ZWQgU1ZEIGJ1dCBtb2RpZnkgaXQgdG8gZml0IHdpdGggdGhl
IG5vY3NoZWxsLgo+IAo+IEFzIHdlIGdvIGRvd24gdGhhdCB3YXksIEkgd2lsbCB1cGRhdGUgdGhp
cyB0aHJlYWQgd2l0aCBxdWVzdGlvbnMgb3IKPiBhbnkgc2lnbmlmaWNhbnQgZmluZGluZ3MuCj4g
Cj4gVGhhbmsgeW91LAo+IEFkbmFuCj4gRnJvbTogTWFyY3VzIE3DvGxsZXIgPG1hcmN1cy5tdWVs
bGVyQGV0dHVzLmNvbT4KPiBTZW50OiBGcmlkYXksIFNlcHRlbWJlciA2LCAyMDE5IDQ6MDAgUE0K
PiBUbzogUXVhZHJpLEFkbmFuIDxhZG5hbi5xdWFkcmlAbG91aXN2aWxsZS5lZHU+OyAKPiB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Cj4gU3Vi
amVjdDogUmU6IFtVU1JQLXVzZXJzXSBSRk5vQyBTVkQgQmxvY2sKPiAgCj4gSGVsbG8gQWRuYW4s
Cj4gCj4gSSdtIGN1cnJlbnRseSBub3QgYXdhcmUgb2YgYW55b25lIGRvaW5nIHRoYXQuCj4gCj4g
SG93ZXZlciwgc2luY2Ugb25lIG9mIHRoZSB0eXBpY2FsIGFwcGxpY2F0aW9ucyBvZiBiZWVmaWVy
IEZQR0FzIGlzCj4gbWF0aAo+IGFjY2VsZXJhdG9ycyBmb3IgbGluZWFyIGFsZ2VicmEgcHJvYmxl
bXMsIGl0J3MgbW9yZSB0aGFuIGxpa2VseQo+IHNvbWVvbmUKPiBkaWQgaW4gZmFjdCBpbXBsZW1l
bnQgYW4gU1ZEIGJlZm9yZSwgYW5kIHlvdSBtaWdodCBqdXN0IG5lZWQgdG8KPiBjb25uZWN0Cj4g
aXQgdG8gYSBub2NzaGVsbCB0byBtYWtlIGl0IHdvcmsgaW4gUkZOb0MuIFRoZXJlJ3MgYSBsb3Qg
b2YKPiBpbnRlcmVzdGluZwo+IHBhcGVycyBvdXQgdGhlcmUgb24gU1ZEIGltcGxlbWVudGF0aW9u
cyBmb3IgZml4ZWQgcG9pbnQgbWF0aCBvbgo+IEZQR0FzLAo+IEkgdGhpbmsgRHJleGVsIHVuaSBo
YWQgc29tZSBpbnRlcmVzdGluZyBzdHVmZiBmb3IgU1ZELWJhc2VkIGNoYW5uZWwKPiBlc3RpbWF0
aW9uIGZvciBPRkRNLiBJJ3ZlIG5vdCBzZWVuIGFueSBjb2RlIG9mIHRoZW0sIHRob3VnaC4uLgo+
IAo+IFNvLCBmcm9tIGFuIGFsZ29yaXRobWljIHBvaW50IG9mIHZpZXcsIGFuIFNWRCBpc24ndCB0
b28gaGFyZC4gSUlSQywKPiBzZXF1ZW50aWFsIGFsZ29yaXRobXMgY2FuIHdvcmsgaW4tcGxhY2Us
IGFuZCB0aHVzIChmb3IgYSBtw5duIG1hdHJpeCwKPiBuPm0pIGRvbid0IG5lZWQgbW9yZSB0aGFu
IG7CsiBzcGFjZSBmb3IgaW50ZXJtZWRpYXRlIGFuZCBmaW5hbCByZXN1bHQKPiAoKzJtIGZvciBp
bmRleCBhbmQgc2NhbGUgc3RvcmFnZSBpZiB5b3Ugd2FudCB0byBwaXZvdCBlbGVnYW50bHkpLgo+
IAo+IE5vdywgSSd2ZSBub3QgZXZlciBpbXBsZW1lbnRlZCBtb3JlIHRoYW4gYSBDKysgUVIgZGVj
b21wb3NpdGlvbgo+ICh3aGljaAo+IGlzIHRoZSBjb3JlIGFsZ29yaXRobSBmb3IgbW9zdCBFVkQg
cHJvYmxlbXMsIHdoaWNoIHlvdSB0eXBpY2FsbHkKPiBob3VzZWhvbGRlci10cmFuc2Zvcm0gYW4g
U1ZEIHByb2JsZW0gdG8pLCBzbyBJJ20gcmVhbGx5IG5vdCBjb21wZXRlbnQKPiB0byBjb21tZW50
IG9uIGhhcmR3YXJlIGltcGxlbWVudGF0aW9ucywgYnV0IGNoYW5jZXMgYXJlIHlvdSB3YW50IHRv
Cj4gY29tcHV0ZSBhIGxvdCBvZiByZXN1bHQgdmFsdWVzIGluIHBhcmFsbGVsIGlmIHlvdSdyZSBk
b2luZyBpdCBpbiB0aGUKPiBGUEdBIOKAkyBiZWNhdXNlIG90aGVyd2lzZSwgeW91J2QgYWJob3Ig
ZG9pbmcgbXVjaCB3b3JrIGluIGhhcmR3YXJlCj4gKHRoYXQKPiBiZWluZyBfaGFyZF8pIGluIGZh
dm9yIG9mIGRvaW5nIGl0IGVhc2llci10by1kZWJ1ZyBhbmQgYWxzbyBmcmVlLXRvLQo+IGhhdmUg
aW4gdGhlIHNoYXBlIG9mIExBUEFDSyBzb2Z0d2FyZS4gKFN1YnRleHQgbWVzc2FnZSwgbW9yZSBm
b3IKPiBmdXR1cmUKPiByZWFkZXJzIHRoYW4gZm9yIHlvdTogRXZhbHVhdGUgd2hldGhlciBzb21l
dGhpbmcgcmVhbGx5IHNob3VsZCBiZQo+IGRvbmUKPiBpbiBoYXJkd2FyZTsgaXQncyBub3QgaW5o
ZXJlbnRseSBiZXR0ZXIgdG8gZG8gdGhpbmdzIGluIGhhcmR3YXJlLikKPiBCdXQgdGhhdCBwYXJh
bGxlbGlzbSBtaWdodCBpbXBseSB0aGF0IGluLXBsYWNlIGlzIG5vdCBhIGZlYXNpYmxlIHdheQo+
IG9mCj4gY29tcHV0aW5nIHRoaW5ncywgYW5kIHlvdXIgbWVtb3J5IHJlcXVpcmVtZW50cyBtaWdo
dCBiZSBtdWNoIGxhcmdlci4KPiBEZXBlbmRpbmcgb24gdGhlIHNpemUgb2YgU1ZEIHlvdSdyZSBw
bGFubmluZyB0byBkbywgdGhhdCBtaWdodCBvcgo+IG1pZ2h0Cj4gbm90IGJlIGFuIGlzc3VlLgo+
IAo+IEJlc3QgcmVnYXJkcywKPiBNYXJjdXMKPiAKPiBPbiBGcmksIDIwMTktMDktMDYgYXQgMTk6
MDUgKzAwMDAsIFF1YWRyaSxBZG5hbiB2aWEgVVNSUC11c2VycyB3cm90ZToKPiA+IEhlbGxvLAo+
ID4gCj4gPiBXZSBhcmUgdHJ5aW5nIHRvIHBlcmZvcm0gc2luZ3VsYXIgdmVjdG9yIGRlY29tcG9z
aXRpb24uIFRoZSBpZGVhIGlzCj4gPiB0byB3b3JrIG9uIGFuIFJGTm9DIGJsb2NrIHRoYXQgdGFr
ZXMgaW4gc3VtbWF0aW9uIG9mIHNhbXBsZXMgZnJvbQo+IHRoZQo+ID4gUmFkaW8gc291cmNlIGFu
ZCB3aWxsIHBlcmZvcm0gU1ZELgo+ID4gCj4gPiBJcyBhbnlib2R5IHdvcmtpbmcgb24gc29tZXRo
aW5nIHNpbWlsYXI/IAo+ID4gQ3VycmVudGx5LCB0aGUgUkZOb0MgT0ZETSBzeW5jaHJvbml6ZXIg
YmxvY2sgaGFzIHRpbWluZyBjb25zdHJhaW50Cj4gPiBpc3N1ZXMgYW5kIGNhbid0IGJlIHVzZWQg
dG8gYnVpbGQgRlBHQSBpbWFnZS4KPiA+IAo+ID4gSnVzdCBhc2tpbmcgYXJvdW5kIHRvIGdldCBz
b21lIHN1Z2dlc3Rpb25zL2FkdmljZSBhbmQgaWRlYSBpZgo+IHdvcmtpbmcKPiA+IG9uIHRoYXQg
VmVyaWxvZyBpbXBsZW1lbnRhdGlvbiBvZiBTVkQgaXMgc29tZXRoaW5nIGRvYWJsZSBhbmQgaWYK
PiA+IGFueWJvZHkgdHJpZWQgYW55dGhpbmcgc2ltaWxhci4KPiA+IAo+ID4gVGhhbmsgeW91LAo+
ID4gQWRuYW4KPiA+IAo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiA+IFVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCj4gPiAKPiBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20v
djIvdXJsP3U9aHR0cC0zQV9fbGlzdHMuZXR0dXMuY29tX21haWxtYW5fbGlzdGluZm9fdXNycC0y
RHVzZXJzLTVGbGlzdHMuZXR0dXMuY29tJmQ9RHdJRGFRJmM9T0FHMUxRTkFDQkRndUd2QmVOajE4
U3docjlUTVRqUy14NE9fS3VhcFBnWSZyPUpvTmwzYjJQbjBNSGhzNjY4UXZqcGNTR2w2czNNRW10
SkxCeXBINngwMlUmbT1rMzdSMFJsX2c4MU5ILVM2SXREWnV6bVVCdzVMb1RWaEtpY29NczdRcXVJ
JnM9d05oLVR1R1RWRVl6UE5OMEdSekJqWWlCdUZLVlFmRzV2akNTZFlDRW5QWSZlPQo+ICAKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
