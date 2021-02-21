Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE29A320A86
	for <lists+usrp-users@lfdr.de>; Sun, 21 Feb 2021 14:23:51 +0100 (CET)
Received: from [::1] (port=45392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDoiB-0002hi-0U; Sun, 21 Feb 2021 08:23:47 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:36416)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lDoi6-0002dB-SS
 for USRP-users@lists.ettus.com; Sun, 21 Feb 2021 08:23:42 -0500
Received: by mail-qk1-f176.google.com with SMTP id v206so10167829qkb.3
 for <USRP-users@lists.ettus.com>; Sun, 21 Feb 2021 05:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=blV46hFf1/NSAhriPR3doxMGirt1WezNvxtWVEPHu2c=;
 b=Cxu1KU5Adg8A6Gi5PAme/cC7/Qt5NitE7ntolgr/RKIGLJd0f4ihDrtsySsIfqbiup
 aP7oZAGZWmX1czIz7JlmXzVXvSs/qgVyMXUFBwc7jzFbvro89o+0/n4ZpvQ6s1Iq2h/P
 z3d3FzevCkbkJ5dt2NAa6Db9GE+8nHIZqjyf010wCA79UwMjVD1WzrTjIsyFHbmwWthy
 qwOE+gyvHzJmx+PQy825pYqGV5Fs8aUshP7kRurDz06gooah0t1QDbz1M1UVUVnxhQsM
 ZjMuZXyNrL00bMDZUj5K4hscxtDf0NC85n5/FHs7LoMgsSLZ7OlP5lKwncimkWa2+2hA
 DA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=blV46hFf1/NSAhriPR3doxMGirt1WezNvxtWVEPHu2c=;
 b=HbUK3WxZmBvx5kwShEOAJD4lxdrScIFBnILthnrpgjdDDnSNNjI9u/hKOgHAvnFF/H
 MIbntb6dmFlDom88phYUXh3AcgCP0FA043DFc3CGwF0+vZ+r3axXx9mjOzXL5o5w7PdY
 A1IXSIW6QFgHsvewoTbLN3FQzKkzce48otEV2yE6pErDHq3u5U2+SU6ZpPVcj5q5Gyxa
 XpipM9NbChCQgo52Epu89vidoDY/VGu25QkyOO76evE/KZI2MnGsNtbfpW40BIPL/8VN
 yJ40uGfr3nEN0jUw97ipLt0DJVYgxgpdluwpx3FDweMhKC2UOG7nXAg1s3VZwb5rdIuu
 rQyA==
X-Gm-Message-State: AOAM531O1G2T+TepJqFuGLQhROTNZBcriJu+xJDE2KNWstodmDT46tTv
 KZffVM548eYfVPQfjNhCILjFiORlLAw=
X-Google-Smtp-Source: ABdhPJz0qQmY9Kq1NT8kiYIRrUS9+AvWkoxRktk/yDJ+wtNUwpSr8X5CMAnMiiuC92N2McKMDDOywQ==
X-Received: by 2002:a37:6116:: with SMTP id v22mr17330303qkb.38.1613913781867; 
 Sun, 21 Feb 2021 05:23:01 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id
 o12sm10611427qko.117.2021.02.21.05.23.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Feb 2021 05:23:01 -0800 (PST)
Message-ID: <60325EB4.3000606@gmail.com>
Date: Sun, 21 Feb 2021 08:23:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Johannes Demel <demel@ant.uni-bremen.de>, 
 Rob Kossler <rkossler@nd.edu>
CC: usrp-users <USRP-users@lists.ettus.com>
References: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
 <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
 <CAB__hTRe+Emdpn55UF+Y=HHaHs+ESFk0iHT34_-wD6iKwZsEzQ@mail.gmail.com>
 <602FDA05.9060706@gmail.com>
 <15ac0b7a-4563-1b1b-b52a-1e27feede297@ant.uni-bremen.de>
In-Reply-To: <15ac0b7a-4563-1b1b-b52a-1e27feede297@ant.uni-bremen.de>
Subject: Re: [USRP-users] GPSDO fails to lock
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

T24gMDIvMjEvMjAyMSAwNzoxNSBBTSwgSm9oYW5uZXMgRGVtZWwgd3JvdGU6Cj4gVGhhbmtzIGZv
ciB5b3VyIGhpbnRzLiBUaGUgYW50ZW5uYWUgYW5kIGRldmljZXMgYXJlIGluZG9vcnMuIElzIHRo
ZXJlIAo+IGEgZGlmZmVyZW5jZSBpZiB0aGUgZGV2aWNlIHJlY2VpdmVzIGEgc2lnbmFsIGFuZCBs
b2NraW5nIG9udG8gdGhhdCAKPiBzaWduYWw/IGUuZy4gdGhlIGRldmljZXMgZGV0ZXJtaW5lcyB0
aGUgc2lnbmFsIHRvbyBkaXN0b3J0ZWQgdG8gbG9jaz8KaHR0cHM6Ly9pdHN0aWxsd29ya3MuY29t
L2RvZXNudC1ncHMtd29yay1pbnNpZGUtYnVpbGRpbmctMTg2NTkuaHRtbAoKPgo+IE9uIDE5LjAy
LjIxIDE2OjMyLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6Cj4+IE9uIDAyLzE5LzIwMjEgMDk6NDgg
QU0sIFJvYiBLb3NzbGVyIHdyb3RlOgo+Pj4gV2hlbiBJIGZpcnN0IHN0YXJ0ZWQgdXNpbmcgVUhE
IDQuMCB3aXRoIHRoZSBOMzEwICh0aGlzIHBhc3Qgc3VtbWVyKSwgSQo+Pj4gbm90aWNlZCB3aGF0
IEkgdGhvdWdodCB3YXMgYSBkZWdyYWRhdGlvbiBpbiB0aGUgZGV2aWNlJ3MgYWJpbGl0eSB0bwo+
Pj4gbG9jay4gSSB3YXMgY29tcGFyaW5nIG9uZSBOMzEwIHJ1bm5pbmcgVUhEIDMuMTUgdG8gYW5v
dGhlciBydW5uaW5nIFVIRAo+Pj4gNC4wLiAgQm90aCBzeXN0ZW1zIHdlcmUgbG9jYXRlZCBhIGZl
dyBmZWV0IGFwYXJ0IGZyb20gZWFjaCBvdGhlciB3aXRoCj4+PiB0aGUgc2FtZSBtb2RlbCBhbnRl
bm5hIHNvIHRoZXkgc2hvdWxkIGhhdmUgcHJvZHVjZWQgc2ltaWxhciByZXN1bHRzLAo+Pj4gYnV0
IGl0IHNlZW1lZCB0aGF0IHRoZSAzLjE1IHN5c3RlbSBhY2hpZXZlZCBsb2NrIG1vcmUgZWFzaWx5
LiBJbiBhbnkKPj4+IGNhc2UsIEkgbmV2ZXIgc3BlbnQgdGhlIHRpbWUgdG8gInByb3ZlIHRoZSBj
YXNlIiBhbmQgdGhlbiBnb3QKPj4+IGRpc3RyYWN0ZWQgb24gYW5vdGhlciBpc3N1ZSBhbmQgbmV2
ZXIgcmV0dXJuZWQgdG8gaXQuIE5vdCBzdXJlIGlmIHRoaXMKPj4+IGlzIHJlbGV2YW50IGluIHRo
aXMgZGlzY3Vzc2lvbiwgYnV0IEkgdGhvdWdodCBJIHdvdWxkIG1lbnRpb24gaXQuCj4+PiBSb2IK
Pj4gVGhlIE4zMTAgdXNlcyBvbmUgb2YgdGhlc2UgbW9kdWxlczoKPj4KPj4gaHR0cDovL3d3dy5q
YWNrc29uLWxhYnMuY29tL2luZGV4LnBocC9wcm9kdWN0cy9sdGVfbGl0ZQo+Pgo+PiBQcmV0dHkg
c3VyZSB0aGF0IFVIRDQuMC9VSEQzLjE1IHdvdWxkbid0IGFmZmVjdCB0aGUgb3BlcmF0aW9uIG9m
IHRoYXQgCj4+IG1vZHVsZSwgYnV0LCB5b3UgbmV2ZXIga25vdy4KPj4KPj4KPj4+Cj4+PiBPbiBG
cmksIEZlYiAxOSwgMjAyMSBhdCA5OjEyIEFNIE1hcmN1cyBEIExlZWNoIHZpYSBVU1JQLXVzZXJz
Cj4+PiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4+IEFyZSB0aGUgYW50
ZW5uYWUgc2l0dWF0ZWQgb3V0ZG9vcnM/Cj4+Pj4KPj4+PiBJdCBjYW4gdGFrZSBhbG1vc3QgYW4g
aG91ciB0byBhY2hpZXZlIGxvY2sgZnJvbSBhIGNvbGQgc3RhcnQuCj4+Pj4KPj4+PiBTZW50IGZy
b20gbXkgaVBob25lCj4+Pj4KPj4+Pj4gT24gRmViIDE5LCAyMDIxLCBhdCA0OjE0IEFNLCBKb2hh
bm5lcyBEZW1lbCAKPj4+Pj4gPGRlbWVsQGFudC51bmktYnJlbWVuLmRlPiB3cm90ZToKPj4+Pj4K
Pj4+Pj4g77u/RWFjaCBVU1JQIGhhcyBpdHMgb3duIEdQUyBhbnRlbm5hLiBPbmUgb2YgdGhvc2Ug
eW91IGJ1eSBhdCAKPj4+Pj4gZXR0dXMuY29tIGFzIGEgcmVjb21tZW5kZWQgYWNjZXNzb3J5Lgo+
Pj4+Pgo+Pj4+Pj4gT24gMTguMDIuMjEgMTU6MDUsIE1hcmN1cyBEIExlZWNoIHdyb3RlOgo+Pj4+
Pj4gSG93IGFyZSB5b3UgZGVsaXZlcmluZyB0aGUgR1BTIGFudGVubmEgc2lnbmFsIHRvIHRoZSBV
U1JQcz8gIFZpYSAKPj4+Pj4+IGEgc3BsaXR0ZXI/IERvZXMgdGhhdCBzcGxpdHRlciBwcm92aWRl
IERDIHBhc3MtdGhyb3VnaD8KPj4+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+Pj4+Pj4gT24g
RmViIDE4LCAyMDIxLCBhdCA3OjA3IEFNLCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2VycyAK
Pj4+Pj4+Pj4gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+Pj4+PiDvu79K
dXN0IGEgcXVpY2sgZm9sbG93LXVwLiBUaGUgQjIxMCBmaW5hbGx5IGdvdCBhIEdQUyBsb2NrLiAo
SSBoYWQgCj4+Pj4+Pj4gdG8gd2FpdCBmb3IgfjJoKS4gVGhvdWdoLCBhbGwgTjMxMHMgc3RpbGwg
ZG9uJ3QuCj4+Pj4+Pj4KPj4+Pj4+Pj4gT24gMTguMDIuMjEgMTA6MTIsIEpvaGFubmVzIERlbWVs
IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+Pj4+PiBIaSBhbGwsCj4+Pj4+Pj4+IEkgaGF2ZSBz
b21lIE4zMTBzIGFuZCBhIEIyMTAgdGhhdCBJIHRyeSB0byBzeW5jIHdpdGggYSBHUFNETy4gCj4+
Pj4+Pj4+IEFsbCBvZiB0aGVtIHJlY29nbml6ZSB0aGVpciBHUFNET3MgYnV0IGZhaWwgdG8gbG9j
ay4KPj4+Pj4+Pj4gTXkgcGhvbmUgY2FuIHNlZSB+NyBTYXRlbGxpdGVzLiBXZSBoYXZlIGEgUlBp
IHdpdGggYSBHUFMgbW9kdWxlIAo+Pj4+Pj4+PiB0aGF0IGxvY2tzIHRvIEdQUyBpbiB0aGUgc2Ft
ZSBoYWxsLiBXZSBzd2l0Y2hlZCBhbnRlbm5hcyBidXQgCj4+Pj4+Pj4+IHN0aWxsLCB3ZSBjYW4n
dCBzeW5jIGFueSBvZiB0aGUgVVNSUHMgdG8gR1BTLgo+Pj4+Pj4+PiBJIHRyaWVkOgo+Pj4+Pj4+
PiBgYGAKPj4+Pj4+Pj4gbGliL3VoZC91dGlscy9xdWVyeV9ncHNkb19zZW5zb3JzCj4+Pj4+Pj4+
IGBgYAo+Pj4+Pj4+PiBhbmQKPj4+Pj4+Pj4gYGBgCj4+Pj4+Pj4+IGxpYi91aGQvZXhhbXBsZXMv
c3luY190b19ncHMKPj4+Pj4+Pj4gYGBgCj4+Pj4+Pj4+IGJ1dCBldmVuIGFmdGVyIGEgZGF5LCB0
aGV5IGFsd2F5cyByZXR1cm4gIkdQUyBkb2VzIG5vdCBoYXZlIAo+Pj4+Pj4+PiBsb2NrIiBhbmQg
IldBUk5JTkc6ICBHUFMgbm90IGxvY2tlZCAtIHRpbWUgd2lsbCBub3QgYmUgYWNjdXJhdGUgCj4+
Pj4+Pj4+IHVudGlsIGxvY2tlZCIuCj4+Pj4+Pj4+IGBncHNtb25gIG9uIHRoZSBOMzEwcyByZXBv
cnRzIDAgU2F0ZWxsaXRlcy4gQnV0IGl0IGhhcyBhIGxpc3QgCj4+Pj4+Pj4+IG9mIHNhdGVsbGl0
ZXMuCj4+Pj4+Pj4+IFNpbmNlIHdlIGhhdmUgc2V2ZXJhbCBkZXZpY2VzIGluIHRoYXQgcm9vbSB0
aGF0IGFyZSBhYmxlIHRvIAo+Pj4+Pj4+PiBhY3F1aXJlIGEgbG9jayBidXQgbm9uZSBvZiBvdXIg
VVNSUHMgd2l0aCB0aGVpciBHUFNET3MsIEkgCj4+Pj4+Pj4+IHdvbmRlciB3aGF0IGlzIGdvaW5n
IG9uLiBEbyB0aGV5IG5lZWQgYSB2ZXJ5IHN0cm9uZyBzaWduYWw/Cj4+Pj4+Pj4+IENoZWVycwo+
Pj4+Pj4+PiBKb2hhbm5lcwo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4+PiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKPj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+IGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo=
