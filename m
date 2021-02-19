Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6160B31FA5E
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 15:12:32 +0100 (CET)
Received: from [::1] (port=54202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD6WF-0000sA-8I; Fri, 19 Feb 2021 09:12:31 -0500
Received: from mail-qt1-f169.google.com ([209.85.160.169]:35793)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lD6WB-0000WV-1S
 for USRP-users@lists.ettus.com; Fri, 19 Feb 2021 09:12:27 -0500
Received: by mail-qt1-f169.google.com with SMTP id g24so3981144qts.2
 for <USRP-users@lists.ettus.com>; Fri, 19 Feb 2021 06:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=wEpShSG0K0ge+atlQjr8bTV3dOQt7/jiv725e3ld124=;
 b=tz+0l7j8ka5myGUxhMVvjKOXWkR/bX9liU0dTW5R0mw/c7jCrl6BIAbd4sXPQEAjOn
 xKJA9oczDdTAEcwJWvYfV4Xpcutd6dLOiG7hl7MN93XMtYeDhaYMQUNsK73tnPy4Tzyw
 MxoPeDnEvQ3UDpxRYZYI59zrTml2GqOKQ55pyeiBG0pdA/LahUXrQAK6Z3RMsoK3Qj1Q
 nWG9HTANUMDkyROXrUK01ND027h/jHaaI36ZVAO79EvKfhW4sA6fgGJrrHUfd26yF3x/
 CTToMgMIXKEoYdxJsksXoGP2oT5NWfMR0fBDb4XZVQc8AvZyrQzCJzUkIPLJwZRVyE7H
 i1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=wEpShSG0K0ge+atlQjr8bTV3dOQt7/jiv725e3ld124=;
 b=G+k4u7hwXzJtULVxR4xXpKn7igh3M25WA+ZylKrqMIloypWoEQv6VCcGswhzHTIclw
 Nm/Exy6yAiOuhoK7iOGBnZwnFACmBRoFKNP0JuXDjnkl/0PNPZLT7XrblsT12YhT8b3B
 WNkUk9E/Jw/L34U87aKcuWR9oE5dB26wL4ppstFEhX33YRvxEsToYpwiMKPAzHnO8z3v
 yzHkaO1Dse79yBrvp2xEvRBgtiVg15YoqcdXQiw119HklT9ETiQoWGwmsSZ01ElJCO2Y
 EJk1lGnuU1ZPkSu73bxZcEIcTx0SZcJNzaU/54xoDXBgZk9XfERLIq5awThXm4o2Jnsw
 VQ7w==
X-Gm-Message-State: AOAM5331F7WYhIft6TUaZGPSi7eRPv2NfoArJxhcgRmi2dhKx25GIJ50
 YdQ8+he+qsfYE/aaIj/LZt2ZXejd5vOEDQ==
X-Google-Smtp-Source: ABdhPJxDH7keINRugmHAFa/06unb8p9pyGHCuH98mC1JnNhKZ/0Ci8RxuPmI8ygPYYy7gEm/YgpxOA==
X-Received: by 2002:ac8:72c6:: with SMTP id o6mr8935487qtp.259.1613743906018; 
 Fri, 19 Feb 2021 06:11:46 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id a145sm6295068qkc.125.2021.02.19.06.11.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Feb 2021 06:11:45 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 19 Feb 2021 09:11:44 -0500
Message-Id: <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
References: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
To: Johannes Demel <demel@ant.uni-bremen.de>
X-Mailer: iPhone Mail (18D52)
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

QXJlIHRoZSBhbnRlbm5hZSBzaXR1YXRlZCBvdXRkb29ycz8KCkl0IGNhbiB0YWtlIGFsbW9zdCBh
biBob3VyIHRvIGFjaGlldmUgbG9jayBmcm9tIGEgY29sZCBzdGFydC4gCgpTZW50IGZyb20gbXkg
aVBob25lCgo+IE9uIEZlYiAxOSwgMjAyMSwgYXQgNDoxNCBBTSwgSm9oYW5uZXMgRGVtZWwgPGRl
bWVsQGFudC51bmktYnJlbWVuLmRlPiB3cm90ZToKPiAKPiDvu79FYWNoIFVTUlAgaGFzIGl0cyBv
d24gR1BTIGFudGVubmEuIE9uZSBvZiB0aG9zZSB5b3UgYnV5IGF0IGV0dHVzLmNvbSBhcyBhIHJl
Y29tbWVuZGVkIGFjY2Vzc29yeS4KPiAKPj4gT24gMTguMDIuMjEgMTU6MDUsIE1hcmN1cyBEIExl
ZWNoIHdyb3RlOgo+PiBIb3cgYXJlIHlvdSBkZWxpdmVyaW5nIHRoZSBHUFMgYW50ZW5uYSBzaWdu
YWwgdG8gdGhlIFVTUlBzPyAgVmlhIGEgc3BsaXR0ZXI/IERvZXMgdGhhdCBzcGxpdHRlciBwcm92
aWRlIERDIHBhc3MtdGhyb3VnaD8KPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+IE9uIEZlYiAx
OCwgMjAyMSwgYXQgNzowNyBBTSwgSm9oYW5uZXMgRGVtZWwgdmlhIFVTUlAtdXNlcnMgPHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+IAo+Pj4g77u/SnVzdCBhIHF1aWNrIGZv
bGxvdy11cC4gVGhlIEIyMTAgZmluYWxseSBnb3QgYSBHUFMgbG9jay4gKEkgaGFkIHRvIHdhaXQg
Zm9yIH4yaCkuIFRob3VnaCwgYWxsIE4zMTBzIHN0aWxsIGRvbid0Lgo+Pj4gCj4+Pj4gT24gMTgu
MDIuMjEgMTA6MTIsIEpvaGFubmVzIERlbWVsIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+IEhp
IGFsbCwKPj4+PiBJIGhhdmUgc29tZSBOMzEwcyBhbmQgYSBCMjEwIHRoYXQgSSB0cnkgdG8gc3lu
YyB3aXRoIGEgR1BTRE8uIEFsbCBvZiB0aGVtIHJlY29nbml6ZSB0aGVpciBHUFNET3MgYnV0IGZh
aWwgdG8gbG9jay4KPj4+PiBNeSBwaG9uZSBjYW4gc2VlIH43IFNhdGVsbGl0ZXMuIFdlIGhhdmUg
YSBSUGkgd2l0aCBhIEdQUyBtb2R1bGUgdGhhdCBsb2NrcyB0byBHUFMgaW4gdGhlIHNhbWUgaGFs
bC4gV2Ugc3dpdGNoZWQgYW50ZW5uYXMgYnV0IHN0aWxsLCB3ZSBjYW4ndCBzeW5jIGFueSBvZiB0
aGUgVVNSUHMgdG8gR1BTLgo+Pj4+IEkgdHJpZWQ6Cj4+Pj4gYGBgCj4+Pj4gbGliL3VoZC91dGls
cy9xdWVyeV9ncHNkb19zZW5zb3JzCj4+Pj4gYGBgCj4+Pj4gYW5kCj4+Pj4gYGBgCj4+Pj4gbGli
L3VoZC9leGFtcGxlcy9zeW5jX3RvX2dwcwo+Pj4+IGBgYAo+Pj4+IGJ1dCBldmVuIGFmdGVyIGEg
ZGF5LCB0aGV5IGFsd2F5cyByZXR1cm4gIkdQUyBkb2VzIG5vdCBoYXZlIGxvY2siIGFuZCAiV0FS
TklORzogIEdQUyBub3QgbG9ja2VkIC0gdGltZSB3aWxsIG5vdCBiZSBhY2N1cmF0ZSB1bnRpbCBs
b2NrZWQiLgo+Pj4+IGBncHNtb25gIG9uIHRoZSBOMzEwcyByZXBvcnRzIDAgU2F0ZWxsaXRlcy4g
QnV0IGl0IGhhcyBhIGxpc3Qgb2Ygc2F0ZWxsaXRlcy4KPj4+PiBTaW5jZSB3ZSBoYXZlIHNldmVy
YWwgZGV2aWNlcyBpbiB0aGF0IHJvb20gdGhhdCBhcmUgYWJsZSB0byBhY3F1aXJlIGEgbG9jayBi
dXQgbm9uZSBvZiBvdXIgVVNSUHMgd2l0aCB0aGVpciBHUFNET3MsIEkgd29uZGVyIHdoYXQgaXMg
Z29pbmcgb24uIERvIHRoZXkgbmVlZCBhIHZlcnkgc3Ryb25nIHNpZ25hbD8KPj4+PiBDaGVlcnMK
Pj4+PiBKb2hhbm5lcwo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+IFVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
