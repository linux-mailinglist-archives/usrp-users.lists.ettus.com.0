Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1495631FBFD
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 16:33:09 +0100 (CET)
Received: from [::1] (port=54898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD7mF-0004zp-AZ; Fri, 19 Feb 2021 10:33:07 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:33564)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lD7mB-0004vW-P2
 for USRP-users@lists.ettus.com; Fri, 19 Feb 2021 10:33:03 -0500
Received: by mail-qk1-f173.google.com with SMTP id b14so5880953qkk.0
 for <USRP-users@lists.ettus.com>; Fri, 19 Feb 2021 07:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=eccF3B1z14CpijXi6JgmzEYou3BeJf3HOKFbdnci7mo=;
 b=lmQP3lUhgfhxCdW1rXFgKHd0aB9omUSR5oP2mWRslBXmjbNe7a3P/T98jHfeM3Zx2U
 8gHY7Y8Ao7VVsmR+AVtLNgqUJ6xax6l9OPmDRoi+ZbHb9JWZjXqpV0Ylmnnqu8J6LcOi
 VapDS1ZrWBMM49Y8v2xOC6x1YuHF/O6vyWrAsTade9E0Pu9XIlvQQp5aZF8NMZSsegtW
 /0Esq6yWxCiX0HICWWH4wka9AfSCdSwhMJJkqfHt4+TXR2wRQqlqQ5lC7kQEx1IfR7Q3
 1GxZzQUuTHyHtjoZxYsieI3HLIUg4K1UNhcI3jzFXnvRQDCHQ7DcrVVuPotEdSEvpvXp
 yauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=eccF3B1z14CpijXi6JgmzEYou3BeJf3HOKFbdnci7mo=;
 b=DwQH/WTqRIzd+S9dS6EzNvTUokPw4EhKv793moMRGrEV0bwlojkGmyu847Z8PW09gL
 q+ynCDSbf6RVlceNLW4wT0s1dybEbIKumzBYJ+y97a0/4iPMMArYCZIY9sHhriQKr9wt
 GI1qgKMwV7IpNzp+KPwkDBcO/XP1XlUouoiTdpfklGWVRfVb5jrNx/wowi8BCe/2Rld3
 3ri2NeV6nFNVqYMuUbYym1JsQDUqf8q3HFvd2+qG3fh8sRI7S6PxXwr1unRUsaWvuU/g
 LaNrBLmt3oBZShas6k2w6HYkwHn023/iqCwUfzGZs+rqoGzdtkV7M6wlejiMyqT7I2zb
 LKwQ==
X-Gm-Message-State: AOAM530YZvuYPdXo9L2cTJgoI2j4uJKD+/HP/hkxRBHmYYEWRNmthYgR
 512XIKnjZR1w/HMgBxvoHTZgNcuJE3O9ng==
X-Google-Smtp-Source: ABdhPJz3P7F7g/ijOz7cQKWgyqk+36/J36moZ3ZodFu5/WWiDPxXCT4aXxBUuZKtatKhPrRZKx9qKA==
X-Received: by 2002:ae9:edc3:: with SMTP id c186mr10064377qkg.75.1613748742870; 
 Fri, 19 Feb 2021 07:32:22 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id t35sm1292083qth.64.2021.02.19.07.32.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Feb 2021 07:32:22 -0800 (PST)
Message-ID: <602FDA05.9060706@gmail.com>
Date: Fri, 19 Feb 2021 10:32:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>
References: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
 <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
 <CAB__hTRe+Emdpn55UF+Y=HHaHs+ESFk0iHT34_-wD6iKwZsEzQ@mail.gmail.com>
In-Reply-To: <CAB__hTRe+Emdpn55UF+Y=HHaHs+ESFk0iHT34_-wD6iKwZsEzQ@mail.gmail.com>
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
Cc: usrp-users <USRP-users@lists.ettus.com>
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

T24gMDIvMTkvMjAyMSAwOTo0OCBBTSwgUm9iIEtvc3NsZXIgd3JvdGU6Cj4gV2hlbiBJIGZpcnN0
IHN0YXJ0ZWQgdXNpbmcgVUhEIDQuMCB3aXRoIHRoZSBOMzEwICh0aGlzIHBhc3Qgc3VtbWVyKSwg
SQo+IG5vdGljZWQgd2hhdCBJIHRob3VnaHQgd2FzIGEgZGVncmFkYXRpb24gaW4gdGhlIGRldmlj
ZSdzIGFiaWxpdHkgdG8KPiBsb2NrLiBJIHdhcyBjb21wYXJpbmcgb25lIE4zMTAgcnVubmluZyBV
SEQgMy4xNSB0byBhbm90aGVyIHJ1bm5pbmcgVUhECj4gNC4wLiAgQm90aCBzeXN0ZW1zIHdlcmUg
bG9jYXRlZCBhIGZldyBmZWV0IGFwYXJ0IGZyb20gZWFjaCBvdGhlciB3aXRoCj4gdGhlIHNhbWUg
bW9kZWwgYW50ZW5uYSBzbyB0aGV5IHNob3VsZCBoYXZlIHByb2R1Y2VkIHNpbWlsYXIgcmVzdWx0
cywKPiBidXQgaXQgc2VlbWVkIHRoYXQgdGhlIDMuMTUgc3lzdGVtIGFjaGlldmVkIGxvY2sgbW9y
ZSBlYXNpbHkuICBJbiBhbnkKPiBjYXNlLCBJIG5ldmVyIHNwZW50IHRoZSB0aW1lIHRvICJwcm92
ZSB0aGUgY2FzZSIgYW5kIHRoZW4gZ290Cj4gZGlzdHJhY3RlZCBvbiBhbm90aGVyIGlzc3VlIGFu
ZCBuZXZlciByZXR1cm5lZCB0byBpdC4gTm90IHN1cmUgaWYgdGhpcwo+IGlzIHJlbGV2YW50IGlu
IHRoaXMgZGlzY3Vzc2lvbiwgYnV0IEkgdGhvdWdodCBJIHdvdWxkIG1lbnRpb24gaXQuCj4gUm9i
ClRoZSBOMzEwIHVzZXMgb25lIG9mIHRoZXNlIG1vZHVsZXM6CgpodHRwOi8vd3d3LmphY2tzb24t
bGFicy5jb20vaW5kZXgucGhwL3Byb2R1Y3RzL2x0ZV9saXRlCgpQcmV0dHkgc3VyZSB0aGF0IFVI
RDQuMC9VSEQzLjE1IHdvdWxkbid0IGFmZmVjdCB0aGUgb3BlcmF0aW9uIG9mIHRoYXQgCm1vZHVs
ZSwgYnV0LCB5b3UgbmV2ZXIga25vdy4KCgo+Cj4gT24gRnJpLCBGZWIgMTksIDIwMjEgYXQgOTox
MiBBTSBNYXJjdXMgRCBMZWVjaCB2aWEgVVNSUC11c2Vycwo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbT4gd3JvdGU6Cj4+IEFyZSB0aGUgYW50ZW5uYWUgc2l0dWF0ZWQgb3V0ZG9vcnM/Cj4+
Cj4+IEl0IGNhbiB0YWtlIGFsbW9zdCBhbiBob3VyIHRvIGFjaGlldmUgbG9jayBmcm9tIGEgY29s
ZCBzdGFydC4KPj4KPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pgo+Pj4gT24gRmViIDE5LCAyMDIx
LCBhdCA0OjE0IEFNLCBKb2hhbm5lcyBEZW1lbCA8ZGVtZWxAYW50LnVuaS1icmVtZW4uZGU+IHdy
b3RlOgo+Pj4KPj4+IO+7v0VhY2ggVVNSUCBoYXMgaXRzIG93biBHUFMgYW50ZW5uYS4gT25lIG9m
IHRob3NlIHlvdSBidXkgYXQgZXR0dXMuY29tIGFzIGEgcmVjb21tZW5kZWQgYWNjZXNzb3J5Lgo+
Pj4KPj4+PiBPbiAxOC4wMi4yMSAxNTowNSwgTWFyY3VzIEQgTGVlY2ggd3JvdGU6Cj4+Pj4gSG93
IGFyZSB5b3UgZGVsaXZlcmluZyB0aGUgR1BTIGFudGVubmEgc2lnbmFsIHRvIHRoZSBVU1JQcz8g
IFZpYSBhIHNwbGl0dGVyPyBEb2VzIHRoYXQgc3BsaXR0ZXIgcHJvdmlkZSBEQyBwYXNzLXRocm91
Z2g/Cj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+Pj4gT24gRmViIDE4LCAyMDIxLCBhdCA3
OjA3IEFNLCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20+IHdyb3RlOgo+Pj4+PiDvu79KdXN0IGEgcXVpY2sgZm9sbG93LXVwLiBUaGUgQjIx
MCBmaW5hbGx5IGdvdCBhIEdQUyBsb2NrLiAoSSBoYWQgdG8gd2FpdCBmb3IgfjJoKS4gVGhvdWdo
LCBhbGwgTjMxMHMgc3RpbGwgZG9uJ3QuCj4+Pj4+Cj4+Pj4+PiBPbiAxOC4wMi4yMSAxMDoxMiwg
Sm9oYW5uZXMgRGVtZWwgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+Pj4+PiBIaSBhbGwsCj4+Pj4+
PiBJIGhhdmUgc29tZSBOMzEwcyBhbmQgYSBCMjEwIHRoYXQgSSB0cnkgdG8gc3luYyB3aXRoIGEg
R1BTRE8uIEFsbCBvZiB0aGVtIHJlY29nbml6ZSB0aGVpciBHUFNET3MgYnV0IGZhaWwgdG8gbG9j
ay4KPj4+Pj4+IE15IHBob25lIGNhbiBzZWUgfjcgU2F0ZWxsaXRlcy4gV2UgaGF2ZSBhIFJQaSB3
aXRoIGEgR1BTIG1vZHVsZSB0aGF0IGxvY2tzIHRvIEdQUyBpbiB0aGUgc2FtZSBoYWxsLiBXZSBz
d2l0Y2hlZCBhbnRlbm5hcyBidXQgc3RpbGwsIHdlIGNhbid0IHN5bmMgYW55IG9mIHRoZSBVU1JQ
cyB0byBHUFMuCj4+Pj4+PiBJIHRyaWVkOgo+Pj4+Pj4gYGBgCj4+Pj4+PiBsaWIvdWhkL3V0aWxz
L3F1ZXJ5X2dwc2RvX3NlbnNvcnMKPj4+Pj4+IGBgYAo+Pj4+Pj4gYW5kCj4+Pj4+PiBgYGAKPj4+
Pj4+IGxpYi91aGQvZXhhbXBsZXMvc3luY190b19ncHMKPj4+Pj4+IGBgYAo+Pj4+Pj4gYnV0IGV2
ZW4gYWZ0ZXIgYSBkYXksIHRoZXkgYWx3YXlzIHJldHVybiAiR1BTIGRvZXMgbm90IGhhdmUgbG9j
ayIgYW5kICJXQVJOSU5HOiAgR1BTIG5vdCBsb2NrZWQgLSB0aW1lIHdpbGwgbm90IGJlIGFjY3Vy
YXRlIHVudGlsIGxvY2tlZCIuCj4+Pj4+PiBgZ3BzbW9uYCBvbiB0aGUgTjMxMHMgcmVwb3J0cyAw
IFNhdGVsbGl0ZXMuIEJ1dCBpdCBoYXMgYSBsaXN0IG9mIHNhdGVsbGl0ZXMuCj4+Pj4+PiBTaW5j
ZSB3ZSBoYXZlIHNldmVyYWwgZGV2aWNlcyBpbiB0aGF0IHJvb20gdGhhdCBhcmUgYWJsZSB0byBh
Y3F1aXJlIGEgbG9jayBidXQgbm9uZSBvZiBvdXIgVVNSUHMgd2l0aCB0aGVpciBHUFNET3MsIEkg
d29uZGVyIHdoYXQgaXMgZ29pbmcgb24uIERvIHRoZXkgbmVlZCBhIHZlcnkgc3Ryb25nIHNpZ25h
bD8KPj4+Pj4+IENoZWVycwo+Pj4+Pj4gSm9oYW5uZXMKPj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKPj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4gaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
