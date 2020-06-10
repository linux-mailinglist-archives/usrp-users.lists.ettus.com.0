Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE191F5E81
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 01:02:48 +0200 (CEST)
Received: from [::1] (port=57428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jj9k5-0001y4-I5; Wed, 10 Jun 2020 19:02:45 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:33986)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jj9k2-0001uD-RM
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 19:02:42 -0400
Received: by mail-qk1-f178.google.com with SMTP id f18so3899229qkh.1
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 16:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=lKu37JXvrqJvept2iWipOzJVaX2WctwHn4QY3Fo86bw=;
 b=TU7Gcvve0KbbvyVB6/OWStRJoW/qbTUJAzFMchJY46jOfRQ8L7UcKO8/jZdNCSfPqm
 M2AKUuLyKGeJKYZiHRTOy6T1EBa51BLqnxjp4k2X4cdROKfApmVvukd5ugCpu9sHNTX7
 JjLdUcVlsXckK0GpVPNtNnnZfGnx7T0XDVeJ32cFmI9YkBn2HmuN1dgGqMH/YxwfRMMM
 9qwgod8u3DiauFXdsooi05InP2u9cFl9XqV3K+bQkCjCYMCGi8omewqT3JAUuAoHiYIb
 cxwH2KnStXH1mED7F2y/aBoDBQIujtaEeXj4MmLf5bka9dXbF/e6glliIeZ85AHVBEyp
 XDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=lKu37JXvrqJvept2iWipOzJVaX2WctwHn4QY3Fo86bw=;
 b=FKiJuAbLBPzaYSI4WYSxeyOVqRI965PwL8zq2UZkTw1uolaCayBY3KOh0JN1137U7L
 fIzyOoiE4RUx2OaFxws2lY+lJWI5wUxLa/Q2n82MWS4iYxZIeHsa1Mv8FFGyGiEjzXa0
 QlwBgNXnRaXdIgKEwxfcufsHq1it+Nur4lXR57Vr1ZUDnHeXKIXfgjRemU7UibC1xi9Q
 xLIgsq7afguUsurB8lLFr8cG61AcQm2ZJOgUJHfgbs2V90SYn0ihVBPqP0EocASYgfSz
 sjwu4vLoUDqw8TV47fru44HTAoW7aizUQ7xzxnGD8tOkA8txHwVoedxLTznAK5QRwx3M
 /b7g==
X-Gm-Message-State: AOAM530iJePgILKH0a0r78aewY7w4u+1+6/e4ZH5rYQEwOjaOD/e/73U
 EVpqoEEX3qmwgddChmKiRrVNG6l7w+g=
X-Google-Smtp-Source: ABdhPJyFYPuunwni1N/I5En3O1rKodfSCg+vED/r5EBbKuVrkX8WTiRCuA2GRpGfc+yxQb7VCAH/rA==
X-Received: by 2002:a05:620a:219c:: with SMTP id
 g28mr5558583qka.227.1591830121261; 
 Wed, 10 Jun 2020 16:02:01 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id d14sm937527qkg.25.2020.06.10.16.02.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 16:02:00 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 10 Jun 2020 19:01:59 -0400
Message-Id: <DA6717CB-DB19-41EF-B1FD-08F720F78EA4@gmail.com>
References: <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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

VGhlIHN0YW5kYXJkIGFwcHJvYWNoIGZvciBkZWJ1Z2dpbmcgRlBHQSBsb2dpYyBpcyB0aGUgSlRB
RyBwb3J0LiBUaGlzIGlzIHRydWUgb2YgbW9zdCBGUEdBIGJhc2VkIGRldmljZXMsIG5vdCBqdXN0
IFVTUlBzLiBJZiBuZXZlciBkb25lIHRoYXQgYmVjYXVzZSBJ4oCZbSBub3QgYW4gRlBHQSBndXku
IAoKQnV0IEkgd291bGQgc3VnZ2VzdCB0aGF0IHlvdSBsb29rIGludG8gdGhhdCBzdHlsZSBvZiDi
gJxsb29raW5nIGludG8gdGhlIGJsYWNrIGJveOKAnSBpZiB0aGF04oCZcyB3aGF0IG5lZWRzIHRv
IGJlIGRvbmUuCgpJdCBoYXMgYmVlbiBteSBvYnNlcnZhdGlvbiBvdmVyIHRoZSBsYXN0IDQwIG9k
ZCB5ZWFycyBvZiBteSB0ZWNoIGRldmVsb3BtZW50IGNhcmVlciB0aGF0IGRlYnVnZ2luZyBlbnZp
cm9ubWVudHMgdGVuZCB0byBiZSB1c2VmdWwgdG8gZGVidWcgcHJvYmxlbXMgb2YgYSB0aGUgc2Ft
ZSBjbGFzcyB0aGF0IHByb21wdGVkIHRoZSBkZXZlbG9wbWVudCBvZiB0aGUgZGVidWdnaW5nIGVu
dmlyb25tZW50IGluIHRoZSBmaXJzdCBwbGFjZS4gVGhhdCBpbmV2aXRhYmx5IGxlYWRzIHRvIGZy
dXN0cmF0aW9uIHdoZW4gdGhpbmdzIGJlY29tZSDigJxzdWJ0bGXigJ0gd2hpY2ggc2VlbXMgdG8g
YmUgd2hhdCB5b3XigJlyZSBleHBlcmllbmNpbmcuIAoKVGhlIEZQR0EgY29kZSBkb2VzbuKAmXQg
bmVjZXNzYXJpbHkgaGF2ZSBhIGxvdCBvZiBkZWJ1Z2dpbmcg4oCcaG9va3PigJ0gaW4gaXQgYmVj
YXVzZSB0aGF0IHdvdWxkIGNvbnN1bWUgcmVhbCBlc3RhdGUgdGhhdCBjb3VsZCBiZSB1c2VkIGZv
ciBvdGhlciB0aGluZ3MsIGxpa2UgYmV0dGVyIGZpbHRlcnMgb3IgY3JpdGljYWwgZmVhdHVyZXMs
IGV0Yy4gV2hlbiB5b3UgYXJlIGNvbWluZyBmcm9tIHRoZSBwdXJlIHNvZnR3YXJlIHNpZGUgb2Yg
dGhlIGhvdXNlLCB5b3UgbWF5IG5vdCBoYXZlIGFueSB2aXNjZXJhbCBhcHByZWNpYXRpb24gb2Yg
aG93IGNvbnN0cmFpbmVkIHRoZSBGUEdBIHVuaXZlcnNlIGlzIGNvbXBhcmVkIHRvIGEgbW9kZXJu
IGFwcGxpY2F0aW9uIGxheWVyIHBpZWNlIG9mIHNvZnR3YXJlIHJ1bm5pbmcgb24gYSBtb2Rlcm4g
T1Mgb24gYSBtb2Rlcm4gY29tcHV0ZXIuIAoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBKdW4g
MTAsIDIwMjAsIGF0IDQ6NDcgUE0sIEx1a2FzIEhhYXNlIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/SnVzdCBzb21lIGFkZGl0aW9uYWwg
aW5mbzogSSBlbmFibGVkIHRoZSBtYXhpbXVtIHBvc3NpYmxlIGRlYnVnIG9uIHRoZSBob3N0IChV
SERfTE9HX0NPTlNPTEVfTEVWRUw9dHJhY2UgYW5kIGRlYnVnX2xldmVsID0gZGVidWcgaW4gLmdu
dXJhZGlvL2NvbmZpZy5jb25mKSBhbmQgc2VudCBib3RoIHZlcnNpb25zIHRvIGEgZmlsZS4KPiBB
Z2FpbiwgdGhlIGRpZmYgaXMgaWRlbnRpY2FsIQo+IChUaGlzIGRlYnVnIGNvbnRhaW5zIHRoZSBk
ZWJ1ZyBtZXNzYWdlcyBmcm9tIGdyLXVoZCBidXQgdWhkIGl0c2VsZiBkb2VzIG5vdCBzZWVtIHRv
IGdlbmVyYXRlIGFueSBkZWJ1Zy90cmFjZSBtZXNzYWdlcyBmb3IgdGltZWQgY29tbWFuZHMpLgo+
IAo+IElzIHRoZXJlIGEgd2F5IHRvIHNvbWVob3cgcmVwb3J0IGJhY2sgdG8gdGhlIGhvc3Qgd2hl
biB0aGUgY29tbWFuZCBxdWV1ZSBvdmVyZmxvd3Mgb3IgYSB0aW1lZCBjb21tYW5kIGNvdWxkIG5v
dCBiZSBwcm9jZXNzZWQgYXQgdGhlIHBsYW5uZWQgdGltZSAobGF0ZSBjb21tYW5kKT8KPiAKPiBB
Y2NvcmRpbmcgdG8gaHR0cHM6Ly9rYi5ldHR1cy5jb20vU3luY2hyb25pemluZ19VU1JQX0V2ZW50
c19Vc2luZ19UaW1lZF9Db21tYW5kc19pbl9VSEQgIkFuIG92ZXJmbG93IG9mIHRoZSBjb21tYW5k
IHF1ZXVlIHdpbGwgcmVzdWx0IGluIGEgc3lzdGVtIGhhbHQgYW5kIG9mdGVuIHJlcXVpcmVzIGEg
cGh5c2ljYWwgcmVzZXQgb2YgdGhlIEZQR0EuIi4gIFRoaXMgZG9lcyBub3Qgc291bmQgc29tZXRo
aW5nIHRoYXQgc2hvdWxkIGp1c3QgYmUgc2lsZW50bHkgZHJvcHBlZCEKPiAKPiBUaGlzIHdvcmtz
IGZvciBkYXRhIHN0cmVhbXMgc28gc2hvdWxkbid0IGl0IHdvcmsgZm9yIHRpbWVkIGNvbW1hbmRz
IHRvbz8KPiAKPiBUaGUgVVNSUCBmZWVscyBsaWtlIGEgYmxhY2sgYm94IC4uLiBjb21tYW5kcyBh
cmUgYmVpbmcgc2VudCBidXQgSSBoYXZlIG5vIGlkZWEgd2hhdCBoYXBwZW5zIGluc2lkZSBvciBp
ZiB0aGV5IGFyZSBldmVuIGV4ZWN1dGVkIChleGNlcHQsIG9mIGNvdXJzZSwgdGhpbmdzIGFyZSAi
bm90IHdvcmtpbmciKQo+IAo+IAo+PiBHZXNlbmRldDogTWl0dHdvY2gsIDEwLiBKdW5pIDIwMjAg
dW0gMDI6MzAgVWhyCj4+IFZvbjogIkx1a2FzIEhhYXNlIiA8bHVrYXNoYWFzZUBnbXguYXQ+Cj4+
IEFuOiAiVVNSUC11c2Vyc2xpc3RzLmV0dHVzLmNvbSIgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPgo+PiBCZXRyZWZmOiBIb3cgdG8gZGVidWcgdGltZWQgY29tbWFuZHMgb24gRlBHQSBzaWRl
Pwo+PiAKPj4gSGVsbG8sCj4+IAo+PiBJcyB0aGVyZSBhbnkgKHNvbWV3aGF0IHN0cmFpZ2h0IGZv
cndhcmQpIHdheSB0byBkZWJ1ZyB0aW1lZCBjb21tYW5kcyBvbiB0aGUgRlBHQT8KPj4gSW4gcGFy
dGljdWxhciwgSSB3YW50IHRvIGtub3c6Cj4+IDEuKSBpZiBhbnkgdGltZWQgY29tbWFuZCBpcyBu
b3QgZXhlY3V0ZWQgYXMgdGltZWQgY29tbWFuZCBidXQgcmlnaHQgYXdheSAoYmVjYXVzZSBpdCBo
YWQgYSB0aW1lc3RhbXAgYnV0IHRoZSBjb21tYW5kIHdhcyBsYXRlIHNvIGl0IHdhcyBleGVjdXRl
ZCByaWdodCBhd2F5KQo+PiAyLikgaWYgYW55IGNvbW1hbmQgcXVldWUgb3ZlcnJ1bnMKPj4gMy4p
IEFueSBvdGhlciBzb3J0IG9mIGluZm9ybWF0aW9uIHRoYXQgY2F1c2VzIHRpbWVkIGNvbW1hbmRz
IHRvIG1pc2JlaGF2ZQo+PiAKPj4gSSB1c2UgInR4X2NvbW1hbmQiIGZvciBVU1JQIFNpbmsgdG8g
c2VuZCB0aW1lZCBjb21tYW5kcy4gVGhlICJ0eF9jb21tYW5kIiB0YWdzIGFyZSBpbmplY3RlZCB3
aXRoIGFuIGVtYmVkZGVkIHB5dGhvbiBibG9jay4gSSB1c2UgIlRhZyBEZWJ1ZyIgYW5kIHNhdmUg
YWxsIHRhZ3MgdG8gYSB0ZXh0IGZpbGUuIFdvcmtzLgo+PiBUaGVuLCBpbiBleGFjdGx5IHRoZSBz
YW1lIGJsb2NrIGRpYWdyYW0sIEkgcmVwbGFjZSB0aGUgZW1iZWRkZWQgcHl0aG9uIGJsb2NrIHdp
dGggbXkgQysrIGltcGxlbWVudGF0aW9uIHRoYXQgZ2VuZXJhdGVzIHRhZ3MuCj4+IFN1ZGRlbmx5
LCBzb21lIHRpbWVkIGNvbW1hbmRzIGRvIG5vdCBleGVjdXRlIGF0IHRoZSByaWdodCBtb21lbnQg
YW55IG1vcmUgKHRoZXNlIGFyZSBqdXN0IGZldyBhbmQgY29uc2lzdGVudCBhY3Jvc3MgcmUtcnVu
cyBhbmQgcmVib290cykuCj4+IAo+PiBIb3dldmVyLCB0aGUgdGFncyBnZW5lcmF0ZWQgYnkgYm90
aHMgYmxvY2tzIGFyZSBhYnNvbHV0ZWx5IElERU5USUNBTCEgQSBkaWZmIGJldHdlZW4gdGhlICJ0
eF9jb21tYW5kIiBvdXRwdXRzIHJlc3VsdHMgaW4gTk8gZGlmZmVyZW5jZXMuIEhlbmNlIEkgbmVl
ZCB0byBrbm93IHdoYXQgdGhlIEZQR0EgYWN0dWFsbHkgcHJvY2Vzc2VzIGluIGJvdGggY2FzZXMu
Cj4+IAo+PiBUaGFua3MKPj4gTHVrYXMKPj4gCj4+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
