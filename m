Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0864F1E3024
	for <lists+usrp-users@lfdr.de>; Tue, 26 May 2020 22:40:24 +0200 (CEST)
Received: from [::1] (port=44532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdgN1-0004PQ-Gu; Tue, 26 May 2020 16:40:19 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:44837)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jdgMx-0004KO-R7
 for USRP-users@lists.ettus.com; Tue, 26 May 2020 16:40:15 -0400
Received: by mail-qt1-f182.google.com with SMTP id c12so7493998qtq.11
 for <USRP-users@lists.ettus.com>; Tue, 26 May 2020 13:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=W1vkmLH2pHQFhmnf29RaLe9K/wI2/5ULcreDWi4eSvc=;
 b=t93uDhxWEEKpji9zDB8Owg/sVHa8DN2dzW21S3UDBBXAt8430Cw/R4JQ03J9mSLhGD
 SZ1jibjtC5e7qi5nH//EeAWt+Lg2TVH3AaM5VBTKyLMHA6EvHKHURCsVOdt4/4uPcIC5
 qFMLEtEZDjedDrLF7xxJNqgZBqnbecpdaYLS3lC/fnyUyaFmKB78F58n3jTh6Wz68nGB
 Jc18xGiNKmqU65vzQGPLRLHfQeo/osbXupUXQpTAs10yvYV/eZwww/O0FbLEnOtPtqWd
 2RZjMm9kLLVCc5dnCDrdBWr4QqXK+aPV6OqcfX5pFj5jTZ+0qU0ZGlY1ZA/7cOzR1AHB
 aZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=W1vkmLH2pHQFhmnf29RaLe9K/wI2/5ULcreDWi4eSvc=;
 b=haQDgb8A+ekjWnZ01dBXPK7WtNDcj/VIpMZDHm5H6htwCjPCnpJKl3te+wIDHQUDk7
 G5XG+ZckMc8kUxyDSbC4flBDMGPpRZX0mVwNeuqb9oryovo9b/+KQ/btEK2cKzp5B07n
 pxVopL0qMWHGCnAjLHTQInjCukdlSvMTboWsIBV5zOFp8qI0dkT6ovlEgzrgWU7stuOp
 ngJo2YTajPjVHcD8+vbKCEqgqOQ+Qu74cNeWfCZHsIDJpjJwUSysBLgO9seQoqwgNI+V
 CwCNsBfMajQwgy7SQb98qbDNxVDXBXfXjJCSEr2ldoR3JBhksC9lEoSZvlvqPDgGS1GR
 RdEg==
X-Gm-Message-State: AOAM5338mCtj8ZDwPhtRWg3v35h4nI2sngap3EtKUgRKNrxnAVpjsDLn
 4ojw07RkImCUa6bBQT4ZJG0ystxU4rY=
X-Google-Smtp-Source: ABdhPJyxpdKdoGM2iUp4iU0m7uKW0EqYfYy4tLXmtORefXHHqbzBlNwf5wXBDcl2nnKbw1Q5jrivAg==
X-Received: by 2002:ac8:1a6f:: with SMTP id q44mr724942qtk.372.1590525575225; 
 Tue, 26 May 2020 13:39:35 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.gmail.com with ESMTPSA id f7sm597981qtg.96.2020.05.26.13.39.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 13:39:34 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 26 May 2020 16:39:34 -0400
Message-Id: <44EDE2B8-D82E-407E-A08A-7A78A7FE2E3C@gmail.com>
References: <c6bbe610-24e3-af07-d54e-ca3158ae0e6c@softwareradiosystems.com>
In-Reply-To: <c6bbe610-24e3-af07-d54e-ca3158ae0e6c@softwareradiosystems.com>
To: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] B210 initialization error - device left unusable
 after some time
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
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

V2hhdCBzYW1wbGUgcmF0ZT8KCllvdSBjb3VsZCB0cnkgbnVtX3JlY3ZfZnJhbWVzPTEyOCBvciBo
aWdoZXIgZm9yIGhpZ2hlciBzYW1wbGUgcmF0ZXMuIAoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBP
biBNYXkgMjYsIDIwMjAsIGF0IDM6NTIgUE0sIEFuZHJlIFB1c2NobWFubiA8YW5kcmUucHVzY2ht
YW5uQHNvZnR3YXJlcmFkaW9zeXN0ZW1zLmNvbT4gd3JvdGU6Cj4gCj4g77u/SGV5IE1hcmN1cywK
PiAKPiB0aGFua3MgZm9yIHRoZSByZXNwb25zZS4KPiAKPj4gT24gMjUvNS8yMCAyMzo0NCwgTWFy
Y3VzIEQgTGVlY2ggd3JvdGU6Cj4+IE1pZ2h0IHNlZW0gc2lsbHkKPj4gQnV0IGhhdmUgeW91IHRy
aWVkIGEgZGlmZmVyZW50IFVTQiBjYWJsZSEKPj4gCj4+IERvZXMgaXQgZXhoaWJpdCB0aGlzIGJl
aGF2aW9yIGluIGEgZGlmZmVyZW50IGhvc3Q/Cj4+IAo+PiBJcyBpdCBqdXN0IHRoaXMgb25lIGRl
dmljZT8KPiAKPiBBY3R1YWxseSB3ZSBoYXZlIGFub3RoZXIgc2V0dXAgd2l0aCBhIGRpZmZlcmVu
dCBob3N0IGFuZCBkaWZmZXJlbnQgQjIxMAo+IHRoYXQgc2hvd3MgYSBzaW1pbGFyIGJlaGF2aW9y
Lgo+IAo+IEkgaGFkIHRoZSBmZWVsaW5nIHRoYXQgd2hlbiB1c2luZyAib3R3LWZvcm1hdD1zYzEy
IiBmb3Igc29tZSBvZiB0aGUKPiBjb25maWdzIHdlIGFyZSBydW5uaW5nLCB0aGUgcHJvYmxlbSBo
YXBwZW5zIHF1aWNrZXIuIEJ1dCBpdCdzIGp1c3QgYQo+IGZlZWxpbmcuIElzIHRoZXJlIGFueSBr
bm93biB1bnN1aXRhYmlsaXR5IG9yIGNhdmVhdCB3aGVuIHVzaW5nIHNjMTI/Cj4gCj4gSW4gYW55
IGNhc2UsIEknbGwgdHJ5IHRvIGFwcHJvYWNoIHRoZSBpc3N1ZSBhIGJpdCBtb3JlIHN5c3RlbWF0
aWMgb3Zlcgo+IHRoZSBjb21pbmcgZGF5cy93ZWVrcyBhbmQgY2FyZWZ1bGx5IHN3YXAgY2FibGUv
VVNSUHMvaG9zdHMgdG8gc2VlIGlmIHdlCj4gY2FuIGlkZW50aWZ5IGEgcGF0dGVybi4gVGhpcyBt
YXkgdGFrZSBhIHdoaWxlIHRob3VnaCBkdWUgdG8gdGhlIGN1cnJlbnQKPiBzaXR1YXRpb24gd2l0
aCBsYWIgYWNjZXNzLCBldGMuCj4gCj4gQW55d2F5LCBpZiB0aGVyZSBpcyBhbnl0aGluZyBlbHNl
IHRoYXQgSSBjb3VsZCB0cnksIGxldCBtZSBrbm93Lgo+IAo+IFRoYW5rcwo+IEFuZHJlCj4gCj4g
Cj4gCj4+IAo+PiAKPj4gCj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4gCj4+Pj4gT24gTWF5IDI1
LCAyMDIwLCBhdCA0OjU1IFBNLCBBbmRyZSBQdXNjaG1hbm4gdmlhIFVTUlAtdXNlcnMgPHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+IAo+Pj4g77u/SGV5IGd1eXMsCj4+PiAK
Pj4+IEkgYW0gZmFjaW5nIGEgd2VpcmQgaXNzdWUgd2l0aCBvbmUgb2YgdGhlIEIyMTAgd2UgdXNl
IGluIG91ciBDSSBzZXR1cC4KPj4+IEl0IHVzZWQgYWxsIGRheSBsb25nIHdpdGggc2hvcnRlciBh
bmQgbG9uZ2VyIHJ1bnMsIHdpdGggZGlmZmVyZW50Cj4+PiBiYW5kd2lkdGggY29uZmlndXJhdGlv
bnMsIG51bWJlciBvZiBjaGFubmVscywgc3RyZWFtIHBhcmFtZXRlcnMsIGV0Yy4KPj4+IAo+Pj4g
VGhhdCB3b3JrcyBmaW5lIGluIHByaW5jaXBsZSBidXQgYWZ0ZXIgYSB3aGlsZSB0aGUgZGV2aWNl
IHNpbXBseQo+Pj4gd291bGRuJ3Qgd29yayBhbnkgbG9uZ2VyLiBUaGUgYXBwIGlzIHVuYWJsZSB0
byBpbml0IHRoZSBkZXZpY2UuCj4+PiAKPj4+ICQgdWhkX3VzcnBfcHJvYmUKPj4+IFtJTkZPXSBb
VUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7Cj4+PiBVSERf
My4xNS4wLkhFQUQtMC1nYWVhMGUyZGUKPj4+IFtJTkZPXSBbQjIwMF0gTG9hZGluZyBmaXJtd2Fy
ZSBpbWFnZToKPj4+IC91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDBfZncuaGV4Li4uCj4+
PiBbRVJST1JdIFtVSERdIERldmljZSBkaXNjb3ZlcnkgZXJyb3I6IEVudmlyb25tZW50RXJyb3I6
IElPRXJyb3I6IENvdWxkCj4+PiBub3QgbG9hZCBmaXJtd2FyZToKPj4+IEVudmlyb25tZW50RXJy
b3I6IElPRXJyb3I6IGloZXhfcmVhZGVyOjpyZWFkKCk6IHJlY29yZCBoYW5kZXIgcmV0dXJuZWQK
Pj4+IGZhaWx1cmUgY29kZQo+Pj4gRXJyb3I6IExvb2t1cEVycm9yOiBLZXlFcnJvcjogTm8gZGV2
aWNlcyBmb3VuZCBmb3IgLS0tLS0+Cj4+PiBFbXB0eSBEZXZpY2UgQWRkcmVzcwo+Pj4gCj4+PiBU
cnlpbmcgdG8gcmVzZXQgZ2l2ZXMgdGhlIHNhbWUgZXJyb3I6Cj4+PiAKPj4+ICQgL3Vzci9saWIv
dWhkL3V0aWxzL2IyeHhfZngzX3V0aWxzIC1ECj4+PiBEZXZpY2Ugb3BlbmVkIChWSUQ9MHgyNTAw
LFBJRD0weDAwMjApCj4+PiBCMnh4IGRldGVjdGVkLi4uIENvbnRyb2wgb2YgQjJ4eCBncmFudGVk
Li4uCj4+PiAKPj4+IExvYWRpbmcgZmlybXdhcmUKPj4+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05V
IEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7Cj4+PiBVSERfMy4xNS4wLkhFQUQtMC1n
YWVhMGUyZGUKPj4+IFtJTkZPXSBbQjIwMF0gTG9hZGluZyBmaXJtd2FyZSBpbWFnZToKPj4+IC91
c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDBfZncuaGV4Li4uCj4+PiBFeGNlcHRpb24gd2hp
bGUgbG9hZGluZyBmaXJtd2FyZTogRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjogQ291bGQgbm90
Cj4+PiBsb2FkIGZpcm13YXJlOgo+Pj4gRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjogaWhleF9y
ZWFkZXI6OnJlYWQoKTogcmVjb3JkIGhhbmRlciByZXR1cm5lZAo+Pj4gZmFpbHVyZSBjb2RlCj4+
PiAKPj4+IAo+Pj4gQWZ0ZXIgdGhhdCBoYXBwZW5lZCB0aGUgb25seSB3YXkgdG8gcmVjb3ZlciB0
aGUgZGV2aWNlIGlzIHVucGx1ZyB0aGUKPj4+IFVTUlAuIEEgc2ltcGxlIHJlYm9vdCBkb2Vzbid0
IGhlbHAuIERtZXNnIGRvZXNuJ3Qgc2hvdyBhbnkgaXNzdWVzLgo+Pj4gCj4+PiBVSEQgaXMgMy4x
NSBjb21waWxlZCBmcm9tIHNvdXJjZSBvbiBhIHZhbmlsbGEgVWJ1bnR1IDE4LjA0IExURSAoc2lk
ZQo+Pj4gbm90ZTogdGhlcmUgYXJlIG5vIHByZS1idWlsdCBwYWNrYWdlcyBmb3IgMy4xNSBpbiB0
aGUgMTguMDQgUFBBKS4gU3lzdGVtCj4+PiBpcyBhIEludGVsIE5VQyBTa3VsbCBDYW55b24uIENh
YmxlcyBhcmUgc3RvY2sgb25lcy4gTGV0IG1lIGtub3cgaWYgeW91Cj4+PiBuZWVkIGFueSBmdXJ0
aGVyIGluZm9ybWF0aW9uIG9uIHRoZSBzZXR1cC4KPj4+IAo+Pj4gQW55IHBvaW50ZXJzIG9uIHdo
YXQgbWlnaHQgYmUgd3JvbmcgaGVyZSBhcmUgaGlnaGx5IGFwcHJlY2lhdGVkLgo+Pj4gCj4+PiBD
aGVlcnMKPj4+IEFuZHJlCj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4gVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KPj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAo+IAo+IC0tIAo+IEFuZHJlIFB1c2No
bWFubgo+IAo+IFNvZnR3YXJlIFJhZGlvIFN5c3RlbXMgKFNSUykKPiBodHRwOi8vd3d3LnNvZnR3
YXJlcmFkaW9zeXN0ZW1zLmNvbQo+IAo+IFBHUC9HbnVQRyBrZXk6IDZDNDJBQjMxCj4gZmluZ2Vy
cHJpbnQ6IDEzN0EgQUU0OSA3ODVCIEE0NDUgMjU3QyA4QUQ3IEQ4NzcgQTQ5OCA2QzQyIEFCMzEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
