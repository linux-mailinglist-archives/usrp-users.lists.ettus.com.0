Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8F42AE71D
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 04:32:15 +0100 (CET)
Received: from [::1] (port=44186 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcgrk-0006Nw-HT; Tue, 10 Nov 2020 22:32:12 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:36876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kcgrg-0006HU-L7
 for USRP-users@lists.ettus.com; Tue, 10 Nov 2020 22:32:08 -0500
Received: by mail-qk1-f172.google.com with SMTP id t191so539850qka.4
 for <USRP-users@lists.ettus.com>; Tue, 10 Nov 2020 19:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ppt1GGewfH/Y997241sNMqTlVbPVoV7IopiFMLHJPb8=;
 b=jqDKXOO7kBWNjGkfY2tn3/DBz56cJX90fe41v+hTHrr+l8n79O7O6xlUhBWShr0pi7
 E1iVcqoZpvLw278QHwi0T+hMefcwuIjwRLDjRuP+9ynih+ndHaTZQ0XjtoMIuFlpBK+J
 nsR3m4ipuMYlTnyKwJ7G1RUcesgztMf1077JCCgddZRAvjt30KyY3sj3IXLvdzulBZiT
 4TLe+UguF8Vo2fIpIobagWCuR1PPcLDyuhN2B0gsZMvBGbN6Vq6lGvGKJe8pvoqqc0Yp
 qeaOa/iGoZFS913yJdoBID84FaWW195TlYedaxJow/RlvFX01d+UewNSi1Bn/UV0JYwo
 iDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ppt1GGewfH/Y997241sNMqTlVbPVoV7IopiFMLHJPb8=;
 b=A1Np5ut6ZCPU+Yjg9ZR/Xq8fXHAtwbNe77QBfPN1Z0JOfWlhcbfIMueW7uyWNWfLIC
 z9GW30wolbul4pFF07HmHebQGwIx8I9FuOry3BN2b39XqiprSKIR31zC9BrxS+hMU47p
 bF7MHAJr0TT4SGpboJgr18r0sxL/dk8ni8jTM/yjC/OO792ucOjfWUZOB82gXYpYjAAn
 HHTEkkqIYY60Mes4EQyYv7Vo6WafDyie2WwwvU1Z5s37XxhaGCg+28GFJczadwKJ2PZo
 TAO8SdXZ74A6coyShPeZ58GZRFvA6qnhJn3ppVi8aNFQUlEECNpVTlp7gBYwWIRyqA3O
 tLAA==
X-Gm-Message-State: AOAM5311cqRwWdKo+suYI/v5l5w9ZiIo8wk7Tgfcg56TrANuZrYV3rMS
 9bGQTbx7x47CT9qhqRhoelHVv5R/bE4=
X-Google-Smtp-Source: ABdhPJwf8k4kcTAl1tJUo/XzTtPed2t+mkoEMHIt2PROXJIXSeX4zCI41F7XT+CwcOYAHAKM81CNSQ==
X-Received: by 2002:a05:620a:4e5:: with SMTP id
 b5mr22217869qkh.255.1605065487918; 
 Tue, 10 Nov 2020 19:31:27 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id o125sm947014qke.56.2020.11.10.19.31.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 19:31:27 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 10 Nov 2020 22:31:26 -0500
Message-Id: <36DA0005-B768-40A3-84AA-3389DDB226AC@gmail.com>
References: <trinity-a3dc1e9f-488c-4bb8-96af-326a936e01e1-1605063685801@3c-app-gmx-bap23>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <trinity-a3dc1e9f-488c-4bb8-96af-326a936e01e1-1605063685801@3c-app-gmx-bap23>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
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

QmFjayB5b3VyIGJhc2ViYW5kIG1hZ25pdHVkZSBkb3duIHRvIDAuOSBhbmQgdHJ5IGFnYWluLiAK
ClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTm92IDEwLCAyMDIwLCBhdCAxMDowMiBQTSwgTHVr
YXMgSGFhc2UgPGx1a2FzaGFhc2VAZ214LmF0PiB3cm90ZToKPiAKPiDvu78qKiogKFNvIHNvcnJ5
IGZvciBzZW5kaW5nIHRoaXMgdHdpY2UsIEkgZm9yZ290IHRvIGF0dGFjaCB0aGUgc2NyZWVuc2hv
dCkgKioqCj4gCj4gSGkgTWFyY3VzLAo+IAo+Pj4gT24gMTEvMTAvMjAyMCAwNzowNiBQTSwgTHVr
YXMgSGFhc2UgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+PiAKPj4+IFRoZSByZWFzb24gd2h5IEkg
YW0gYXNraW5nIGFib3V0IHRoaXMgaXMgYmVjYXVzZSBJIHdvdWxkIGxpa2UgdG8gY3Jvc3MtY2hl
Y2sgbXkgbWVhc3VyZW1lbnRzLgo+Pj4gCj4+PiBNeSBvcmlnaW5hbCBxdWVzdGlvbiB3YXMgYWJv
dXQgUlggZ2FpbiBidXQgaXQgYWN0dWFsbHkgYWxzbyByZWxhdGVzIHRvIFRYIGdhaW4uCj4+PiAK
Pj4+IFdpdGggYW4gWDMxMCBhbmQgVUJYLTE2MCwgVFggR2Fpbj0wIGFuZCBzZW5kaW5nIG91dCBh
IGZ1bGwtc2NhbGUgc2ludXNvaWQgYXQgOTE1TUh6LCBJIG1lYXN1cmUgYXBwcm94LiAtMi41ZEJt
Lgo+Pj4gCj4+PiBUaGlzIGlzIG5vdCBjb25zaXN0ZW50IGF0IGFsbCB3aXRoIHRoZSBmaWxlIGFi
b3ZlIChhc3N1bWluZyBJIGludGVycHJldCBob3cgImdhaW4iIGlzIGRlZmluZWQgY29ycmVjdGx5
LCBoZW5jZSBteSBvcmlnaW5hbCBxdWVzdGlvbikuCj4+PiAKPj4+IFdvdWxkIGFueW9uZSB3aXRo
IGFuIFVCWC0xNjAgYmUgc28ga2luZCB0byBjb25maXJtL2Rpc2NvbmZpcm0gd2hpY2ggcG93ZXIg
bGV2ZWwgSSB3b3VsZCBleHBlY3QgdG8gc2VlPwo+Pj4gCj4+PiAoUHJlZmVyYWJseSBhdCA5MTVN
SHogd2l0aCBUWGdhaW49MCBhbmQgZnVsbC1zY2FsZSBzaW51c29pZCBidXQgSSdtIGhhcHB5IHdp
dGggYW55IG90aGVyIGNvbmZpZ3VyYXRpb24gdGhhdCBJIGNhbiB4LWNoZWNrKS4KPiAKPj4gU28s
IGFjY29yZGluZyB0byB0aGUgY2hhcnRzLCBhdCA5MDBNaHosIHlvdSdkIGV4cGVjdCBhYm91dCAt
OWRCbSB3aXRoIGEKPj4gMGRCIGdhaW4gc2V0dGluZywgd2l0aCBhIGZ1bGwtc2NhbGUgYmFzZWJh
bmQgc2lnbmFsLgo+PiAKPj4gU28sIHRoZXJlJ3MgYSBkaXNjcmVwYW5jeSBvZiBhYm91dCA2LjVk
Qi4KPiAKPiBFeGFjdGx5LiBUaGF0J3MgYSBiaXQgdG9vIG11Y2ggZm9yIG15IHRhc3RlIGFuZCBo
ZW5jZSBtYXliZSBteSBtZWFzdXJlbWVudCBpcyB3cm9uZy4KPiAKPj4gSG93IGRpZCB5b3UgbWVh
c3VyZSB0aGUgcG93ZXIKPj4gbGV2ZWw/ICAgSSBjb3VsZCBlYXNpbHkgZXhwZWN0IGEgY291cGxl
IG9mCj4+IGRCIGRpc2NyZXBhbmN5IGp1c3QgZHVlIHRvIGNvbXBvbmVudCBiYXRjaC10by1iYXRj
aCB2YXJpYWJpbGl0eS4KPj4gU28sIGhvdyB3YXMgdGhlIHBvd2VyIG1lYXN1cmVkPwo+IAo+IEkg
a25vdywgaWRlYWxseSB5b3UnZCB1c2UgYSBwb3dlcm1ldGVyIGZvciB0aGF0LiBCdXQgSSBkb24n
dCBoYXZlIG9uZS4gSW5zdGVhZCBJIGhhdmUgYSBWTkEgKEFnaWxlbnQgRTUwODBBKSB3aGljaCBp
cyBmcmVzaGx5IGNhbGlicmF0ZWQgYW5kIGhlbmNlIHRoZSBwb3dlciBtZWFzdXJlbWVudCBpcyB2
ZXJ5IGFjY3VyYXRlICg8PDAuNWRCKS4KPiAKPiBJIHNldCB0aGUgbWVhc3VyZW1lbnQgYXMgIkIg
U291cmNlIFBvcnQgMSIgd2hpY2ggZ2l2ZXMgZGlyZWN0bHkgdGhlIHJlY2VpdmVkIHNpZ25hbCBp
biBkQm0uIEkgcGljayBhICJyZWFzb25hYmxlIiBJRiBiYW5kd2lkdGggKDUwa0h6KSwgMTAweCBh
dmVyYWdpbmcsIHNhdmUgdGhlIGRCbS9mIHRyYWNlIHRvIGEgQ1NWIGZpbGUgYW5kIGltcG9ydCBp
bnRvIE1BVExBQi4gVGhlbiBJIGludGVncmF0ZSBvdmVyIHRoZSBmcmVxdWVuY3k6Cj4gCj4gZGVs
dGFGID0gZnJlcXVlbmNpZXMoMiktZnJlcXVlbmNpZXMoMSk7Cj4gUHRvdCA9IDEwKmxvZzEwKHRy
YXB6KDEwLl4oUFNELzEwKS9SQlcpKmRlbHRhRik7Cj4gCj4gSSBjYW4gdmVyaWZ5IHRoYXQgdGhl
IGludGVncmF0ZWQgcG93ZXIgaXMgcm91Z2hseSB0aGUgc2FtZSBhcyB0aGUgbWFya2VyIG9uIHRo
ZSBmcmVxdWVuY3kuCj4gCj4gSGF2aW5nIHNhaWQgdGhhdCwgSSBqdXN0IHJlYWxpemVkIHNvbWV0
aGluZyB2ZXJ5LCB2ZXJ5IHdlaXJkOiBXaXRoIHRoZSBVQlgtMTYwIEkgc2V0OiBmY2VudGVyPTkx
NU1Ieiwgc2FtcF9yYXRlPTVlNiwgVFhnYWluPTAgYW5kIHNlbmQgYSBmdWxsIHNjYWxlLCBjb21w
bGV4IHNpbnVzb2lkIHdpdGggMU1Iei4gSGVuY2UgSSB3b3VsZCBleHBlY3QgdG8gc2VlIG9uZSB0
b25lIGF0IDkxNk1IeiBhbmQgYSBzbWFsbCBvbmUgKGR1ZSB0byBJL1EgbWlzbWF0Y2gpIGF0IDkx
NE1Iei4gSG93ZXZlciwgaW5zdGVhZCBJIGdldCB0aGUgc3BlY3RydW0gYXR0YWNoZWQuIFRoZXJl
IGlzIGFub3RoZXIgdG9uZSBhdCA5MTAgTUh6IGFuZCB0aGUgc3BlY3RydW0gaXMgY2VudGVyZWQg
YXQgOTEzIE1IeiAoc2hvdWxkIGJlIDkxNSkuCj4gCj4gVGhhdCBtYWtlcyBubyBzZW5zZSEgV2hh
dCBjb3VsZCBiZSBnb2luZyBvbiBoZXJlPwo+IAo+IFRoYW5rcywKPiBMdWthcwo+IAo+IDxFNTA4
MEFfVUJYMTYwX091dHB1dC5QTkc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20K
